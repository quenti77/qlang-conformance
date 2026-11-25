-- unwrap_or_else: the fallback is computed from the error, and only for an error
fun parse(s: string) -> Result<int, string>
    let n = s.to_int()
    if n == none then Err("bad {s}") else Ok(n) end
end

let calls = 0
let on_error = fun(e: string) -> int
    calls = calls + 1
    e.len()
end
print(parse("4").unwrap_or_else(on_error))
print(calls)
print(parse("xyz").unwrap_or_else(on_error))
print(calls)
print(parse("x").unwrap_or_else(fun(e: string) -> int -1 end))
