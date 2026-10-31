fun d(n: int) -> int
if n == 0 then return 0 end
1 + d(n - 1)
end
print(d(900))
