--" The conformance runner: every case of `cases/` is run with the `qlang` program and its result is
compared with what the case says.

  qlang run --allow-process run.q                 -- all the cases
  qlang run --allow-process run.q -- strings      -- the cases whose path contains "strings"
  QLANG=target/release/qlang qlang run --allow-process run.q   -- another qlang to test

A case `cases/area/name.q` comes with:
  name.out    the exact standard output (a run that must succeed)
  name.error  a code such as `T002` or `R011`: the run must fail with `error[CODE]` on the error
              output (exit code 1 for `P` and `T` codes, 2 for `R` codes)
  name.exit   the exit code of a run that must succeed (0 when absent)
--"

fun read_or(path: string, fallback: string) -> string
  match fs.exists(path)
    case Ok(true) then
      match fs.read(path)
        case Ok(text) then text
        case Err(e) then fallback
      end
    case Ok(false) then fallback
    case Err(e) then fallback
  end
end

fun check(qlang: string, path: string) -> string?
  let base = path.substring(0, path.len() - 2)
  let ran = Process.run(qlang, ["run", "--seed", "0", path])
  match ran
    case Err(e) then
      "cannot start {qlang}: {e.message}"
    case Ok(o) then
      let code = read_or(base + ".error", "").trim()
      if code != "" then
        let want = if code.starts_with("R") then 2 else 1 end
        if o.status != want then
          "expected exit code {want} with {code}, got {o.status}"
        elseif not o.stderr.contains("error[{code}]") then
          "expected error[{code}], stderr was:\n{o.stderr}"
        else
          none
        end
      else
        let want_exit = int.parse(read_or(base + ".exit", "0").trim()) ?? 0
        let want_out = read_or(base + ".out", "")
        if o.status != want_exit then
          "expected exit code {want_exit}, got {o.status}; stderr:\n{o.stderr}"
        elseif o.stdout != want_out then
          "output differs\n--- expected\n{want_out}--- got\n{o.stdout}"
        else
          none
        end
      end
  end
end

let qlang = env.get("QLANG") ?? "qlang"
let args = env.args()
let filter = if args.len() > 0 then args[0] else "" end
let paths: array<string> = []
match fs.glob("cases/**/*.q")
  case Ok(found) then
    paths = found
  case Err(e) then
    print("cannot list the cases: {e.message}")
    exit(2)
end
let passed = 0
let failed = 0
for path in paths do
  -- files whose name starts with `_` are helpers a case imports, not cases
  let is_helper = path.contains("/_")
  if not is_helper and (filter == "" or path.contains(filter)) then
    let result = check(qlang, path)
    if result == none then
      passed += 1
    else
      failed += 1
      print("FAIL {path}\n{result}")
    end
  end
end
print("{passed} passed, {failed} failed")
if failed > 0 then
  exit(1)
end
