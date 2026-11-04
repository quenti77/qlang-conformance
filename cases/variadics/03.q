fun sum(...numbers: int) -> int
    let total = 0
    for n in numbers do
        total += n
    end
    total
end

fun add(a: int, b: int, ...rest: int) -> string
    "{a} {b} {rest}"
end

let xs = [1, 2, 3]
print(sum(...xs))
print(sum(10, ...xs, 20))
print(sum(...xs, ...xs))
print(add(...[1, 2, 3, 4]))
print(add(...[1, 2]))
print(add(1, ...[2, 3]))
