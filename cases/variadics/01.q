fun sum(...numbers: int) -> int
    let total = 0
    for n in numbers do
        total += n
    end
    total
end

print(sum())
print(sum(4))
print(sum(1, 2, 3))
let empty: array<int> = []
print(sum(...empty))
