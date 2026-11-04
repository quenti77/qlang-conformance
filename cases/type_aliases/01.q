type Names = array<string>
type Handler = fun(int) -> int
type Pair = (string, int)

fun first(names: Names) -> string
    names[0]
end

fun apply(h: Handler, x: int) -> int
    h(x)
end

fun make() -> Pair
    ("a", 1)
end

let names: array<string> = ["ann", "bob"]
print(first(names))
let doubled: Handler = fun(n: int) -> int n * 2 end
print(apply(doubled, 21))
let n: Names = names
print(n.len())
print(make())

let type = 3
print(type)
