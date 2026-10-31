fun make() -> fun() -> int
let n = 0
fun() -> int
n += 1
n
end
end
let a = make()
let b = make()
a()
a()
print(a())
print(b())
