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

fun total<I: Iterable<int>>(c: I) -> int
    let s = 0
    for x in c do
        s += x
    end
    s
end

print(total(Count { n: 0, max: 4 }))
print(total([5, 6]))
