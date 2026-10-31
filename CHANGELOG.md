# Changelog

## 0.78.0

New areas: `json` (parse, `Json.of`, `Json.to`), `modules` (import, export, alias, a name that is not exported: `T113`) and `inheritance` (`extends`, `override`). The runner skips the files whose name starts with `_` (helpers a case imports). 224 + 1 cases. No case changed.

## 0.75.0

First suite: 219 cases (arithmetic, strings, arrays, maps, sets, tuples, optionals, `Result` and `?`, structs, traits,
enums, generics, closures, regex, and the compile-time and run-time error codes they hit).
