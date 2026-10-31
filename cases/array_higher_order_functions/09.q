let log: array<int> = []
[1, 2, 3].each(fun(x: int) log.push(x * 10) end)
print(log)
