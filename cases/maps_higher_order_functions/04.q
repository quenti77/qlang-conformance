let m = { "a": 1, "b": 2 }
print(m.map_values(fun(k: string, v: int) -> string "{k}={v}" end))
