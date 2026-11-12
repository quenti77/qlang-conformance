# Changelog

## 1.4.0

New area `read_input` for `read(message)` and `read<T>(message)` (qlang 1.4): the prompt without a new line, `int`, `float`, `bool` and `string` answers, a line that is not a `T` and the end of the input as errors of the `Result` (`ReadError`), `?`, and `T242` for a type that is not readable. The runner gives a case its standard input from `name.in`. 5 cases added, none changed or removed.

## 1.3.0

New areas for what qlang 1.3 adds or promotes to stable: `result_covariance` (a `Result` whose value or error is a child type is usable where the parent is expected: assignment, argument, return, `?` and `Ok(child)`/`Err(child)` against a wider expected type) and `compile_result_covariance` (`T282` for an error type with no link to the function's, `T002` for `array` and for a narrower `Result`), and two cases in `durations` (`calendar_parts_and_small_totals`, `small_differences`) for the methods of `Duration` and `datetime` that no case used. 8 cases added, none changed or removed.

## 1.2.0

New areas for the arbitrary-precision numbers and the dates of qlang 1.2: `big_numbers` (`BigInt`: factorial, powers, products past the `int` range; `BigDecimal`: exact sums, scales, comparisons) and `datetime_parse_with` (`datetime.parse_with` with an offset, `datetime.from_unix`, `Duration.parse`, `d.each`). `zones` (`Zone`: offsets, abbreviations, wall clock, local time, a gap), `archives` (`Gzip`, `Zip`, `Tar` round trips and their protections) and `panic_guard` (`Panic.guard`). 10 cases added (also `dates_and_times`: `Date`, `Time` and five more languages; `zoned`), none changed or removed.

## 1.1.0

New areas for variadic parameters and the spread operator `...` (qlang 1.1 promotes them from provisional to stable): `variadics` (collecting the arguments, fixed and default parameters before the variadic one, spread in a call, an array and a map, generics, methods, anonymous functions and function types), `compile_variadics` (`T240`, `T264`, `T266`, `T267`, `P044`, `P046`) and `runtime_variadics` (`R018`). 13 cases added, none changed or removed.

New areas for the small library modules that qlang 1.1 promotes from provisional to stable: `encodings` (`Base64`, `Hex`, `Url`), `hashes` (`Hash`), `regex`, `path` (`Path`), `format` (`Format`) and `identifiers` (`uuid`, `ulid`: what is not random). 12 cases added, none changed or removed.

New areas for what qlang 1.1 promotes from provisional to stable: `operator_overloading` (every overloadable operator, compound assignment, `Index`, `IndexSet`, `Push`, `As<T>`), `type_aliases` and `compile_type_aliases` (`T122`, `P002`, `T230`), `annotations` and `compile_annotations` (`T001`, `T290`, `T292`, `T293`, `T002`), `any_values` and `compile_any` (`T303`, `T005`). 19 cases added, none changed or removed.

New areas for `T.zero()` and `Self`: `generic_statics` (a static method called through a type parameter, in a function and in an `impl`, `Self` in traits and impls, `Zero` and `One`, the sum of an empty array) and `compile_generic_statics` (`T161`, `T171`, `T001`). 11 cases added.

New areas for `Iterable` (qlang 1.1, provisional): `iterables` (`for` and `...` over a type of the program, a keyed iterable, an element that is `none`, the lazy `map`, `filter`, `take`, `skip`, `collect`, `count`, `first`, a bounded generic function) and `compile_iterables` (`T190`). 9 cases added.
New areas for `Duration` and the richer `datetime` (qlang 1.1, provisional): `durations` (adding, totals, `normalize`, differences, comparisons), `datetime_periods` (`start_of_*`, `end_of_*`, `with`, weekdays), `datetime_format` (format tokens, `format_in`, `humanize`, text forms, Unix time) and `runtime_datetime` (`R066`). 9 cases added.

## 1.0.0

The suite that qlang 1.0 promises (see `docs/stability.md` in qlang): every line of that page names the cases that cover it. 224 + 1 cases, none added, changed or removed since 0.78.0. qlang 1.0 runs all of them.

## 0.78.0

New areas: `json` (parse, `Json.of`, `Json.to`), `modules` (import, export, alias, a name that is not exported: `T113`) and `inheritance` (`extends`, `override`). The runner skips the files whose name starts with `_` (helpers a case imports). 224 + 1 cases. No case changed.

## 0.75.0

First suite: 219 cases (arithmetic, strings, arrays, maps, sets, tuples, optionals, `Result` and `?`, structs, traits,
enums, generics, closures, regex, and the compile-time and run-time error codes they hit).
