fun count<T>(...items: T) -> int
    items.len()
end

fun collect<T>(name: string, ...values: T) -> map<string, array<T>>
    { name: values }
end

print(count(1, 2, 3))
print(count("a"))
print(collect("a", 1, 2))
print(collect("b", "x"))
