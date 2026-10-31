# qlang-conformance

What the [qlang](https://github.com/quenti77/qlang) language promises, written as programs and their expected
result, independent of the interpreter's internals. Any build of `qlang` (a release, a branch, another
implementation of the same language) can be checked with it.

```sh
QLANG=qlang qlang run --allow-process run.q              # every case
qlang run --allow-process run.q -- strings               # the cases whose path contains "strings"
QLANG=../qlang/target/release/qlang qlang run --allow-process run.q   # another build
```

The runner (`run.q`) is itself a qlang program: it starts `qlang run --seed 0 <case>` for each case and compares.
Exit code 1 when a case fails.

## A case

`cases/<area>/<name>.q` and next to it:

| File | Meaning |
| --- | --- |
| `name.out` | the exact standard output of a run that must succeed |
| `name.error` | a code (`T002`, `P001`, `R011`…): the run must fail with `error[CODE]` on the error output, exit code 1 for `P`/`T` (compile) codes and 2 for `R` (run time) codes |
| `name.exit` | the exit code of a run that must succeed (0 when absent) |

Error **codes** are checked, never their wording: the stability policy of qlang
([docs/stability.md](https://github.com/quenti77/qlang/blob/main/docs/stability.md)) promises that a published code keeps
its meaning and does not promise the text of messages.

## What is covered, and what is not

Covered: the language and its prelude (values, strings, arrays, maps, sets, tuples, optionals, `Result` and `?`,
structs, inheritance, traits, enums and `match`, generics, closures, JSON, modules, errors with their codes). The
list of what qlang's 1.0 will freeze, line by line with the areas of `cases/` that cover it, is in
[docs/stability.md](https://github.com/quenti77/qlang/blob/main/docs/stability.md#ce-que-la-10-promettra-proposition). Programs run with the default
limits and `--seed 0`.

Not covered here: the command line (`serve`, `fmt`, `test`, `doc`, `lsp`…), the editor extension, `qlang-std` (its
`_test.q` files stay with it), performance (the benchmarks live in `qlang`). They are tested in their own repositories.

## Versions

A tag `vX.Y.Z` of this repository is the suite for qlang `X.Y.Z`: a release of qlang passes the tag of the same
version, and a case is only removed or changed in a version that says so in its `CHANGELOG`. The CI of `qlang` runs the
tag named in its `conformance.ref` file against the program it just built; the CI of this repository runs `main`
against the latest release of `qlang`.

## Adding a case

Write `cases/area/name.q`, run it (`qlang run name.q`), check by hand that the output is what the language **should**
give (not just what it gives), save it as `name.out`, or the code as `name.error`. Most cases here started as
assertions of the Rust test suite of `qlang` and were moved as programs.
