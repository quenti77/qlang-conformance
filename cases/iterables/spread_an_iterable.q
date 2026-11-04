struct Count
    public n: int
    public max: int
end

impl Iterator<int> for Count
    public fun next(self) -> Step<int>
        if self.n >= self.max then
            return Step<int>.End
        end
        self.n += 1
        Step<int>.Item(self.n)
    end
end

impl Iterable<int> for Count
    public fun iter(self) -> Iterator<int>
        Count { n: 0, max: self.max }
    end
end

fun add3(a: int, b: int, c: int) -> int
    a + b + c
end

fun total(...xs: int) -> int
    xs.sum()
end

print([...Count { n: 0, max: 2 }, 9])
print(add3(...Count { n: 0, max: 3 }))
print(total(...Count { n: 0, max: 4 }))
print([...Set.of([3, 3, 4])])
