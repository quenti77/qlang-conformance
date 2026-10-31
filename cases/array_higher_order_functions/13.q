print([1, 2, 3, 4, 5].filter(fun(x: int) -> bool x mod 2 == 0 end).map(fun(x: int) -> int x * x end))
