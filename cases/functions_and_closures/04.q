fun twice(f: fun(int) -> int, x: int) -> int
f(f(x))
end
print(twice(fun(n: int) -> int
n + 3
end, 1))
