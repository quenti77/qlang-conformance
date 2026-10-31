let a: array<int> = []
for i in 0..2000 do
a[] = (i * 7919) mod 2003
end
a.sort()
print(a[0])
print(a[1999])
let ok = true
for i in 1..2000 do
if a[i - 1] > a[i] then ok = false end
end
print(ok)
