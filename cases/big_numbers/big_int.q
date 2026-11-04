let f = BigInt.one()
for i in 1..101 do
    f = f * i
end
print(f)
print(BigInt.pow(2, 200))
let a = BigInt.parse("123456789012345678901234567890").unwrap()
print(a * a)
print(a + 1)
print(a - a)
print(-a)
