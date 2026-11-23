let a = [5, 3, 8, 1, 9, 2]
print(a.filter(fun(x: int) -> bool x > 1 end).sorted().reversed().take(3))
print(a.sorted().drop(2))
print(a.map(fun(x: int) -> int x * 2 end).sorted_by(fun(x: int, y: int) -> int y - x end).take(2))
let words = ["pear", "apple", "fig"]
print(words.sorted())
print(words.reversed())
print(words)
a.sort()
print(a)
