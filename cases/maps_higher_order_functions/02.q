let m = { "a": 1, "b": 2, "c": 3 }
print(m.filter(fun(k: string, v: int) -> bool v > 1 end))
