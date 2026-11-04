# Changelog

## 1.1.0

New areas for the small library modules that qlang 1.1 promotes from provisional to stable: `encodings` (`Base64`, `Hex`, `Url`), `hashes` (`Hash`), `regex`, `path` (`Path`), `format` (`Format`) and `identifiers` (`uuid`, `ulid`: what is not random). 12 cases added, none changed or removed.

## 1.0.0

The suite that qlang 1.0 promises (see `docs/stability.md` in qlang): every line of that page names the cases that cover it. 224 + 1 cases, none added, changed or removed since 0.78.0. qlang 1.0 runs all of them.

## 0.78.0

New areas: `json` (parse, `Json.of`, `Json.to`), `modules` (import, export, alias, a name that is not exported: `T113`) and `inheritance` (`extends`, `override`). The runner skips the files whose name starts with `_` (helpers a case imports). 224 + 1 cases. No case changed.

## 0.75.0

First suite: 219 cases (arithmetic, strings, arrays, maps, sets, tuples, optionals, `Result` and `?`, structs, traits,
enums, generics, closures, regex, and the compile-time and run-time error codes they hit).
