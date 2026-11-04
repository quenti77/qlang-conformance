# Changelog

## 1.1.0

New areas for variadic parameters and the spread operator `...` (qlang 1.1 promotes them from provisional to stable): `variadics` (collecting the arguments, fixed and default parameters before the variadic one, spread in a call, an array and a map, generics, methods, anonymous functions and function types), `compile_variadics` (`T240`, `T264`, `T266`, `T267`, `P044`, `P046`) and `runtime_variadics` (`R018`). 13 cases added, none changed or removed.

New areas for `T.zero()` and `Self`: `generic_statics` (a static method called through a type parameter, in a function and in an `impl`, `Self` in traits and impls, `Zero` and `One`, the sum of an empty array) and `compile_generic_statics` (`T161`, `T171`, `T001`). 10 cases added.

## 1.0.0

The suite that qlang 1.0 promises (see `docs/stability.md` in qlang): every line of that page names the cases that cover it. 224 + 1 cases, none added, changed or removed since 0.78.0. qlang 1.0 runs all of them.

## 0.78.0

New areas: `json` (parse, `Json.of`, `Json.to`), `modules` (import, export, alias, a name that is not exported: `T113`) and `inheritance` (`extends`, `override`). The runner skips the files whose name starts with `_` (helpers a case imports). 224 + 1 cases. No case changed.

## 0.75.0

First suite: 219 cases (arithmetic, strings, arrays, maps, sets, tuples, optionals, `Result` and `?`, structs, traits,
enums, generics, closures, regex, and the compile-time and run-time error codes they hit).
