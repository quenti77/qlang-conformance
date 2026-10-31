let a = [1, 2, 3, 4, 5]
print(a.slice(1, 3))
print(a.slice(0, 0))
let b = a.slice(2, 5)
b[0] = 99
print(a[2])
