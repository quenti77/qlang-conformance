fun fib(n: int) -> int
if n < 2 then return n end
fib(n - 1) + fib(n - 2)
end
print(fib(15))
