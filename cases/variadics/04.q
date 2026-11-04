let a = [1, 2]
let b = [0, ...a, 3, ...a]
print(b)
let none_at_all: array<int> = [...[], ...[]]
print(none_at_all.len())

let base = { "width": 80, "height": 24 }
let size = { ...base, "height": 50, "depth": 3 }
print(size)
