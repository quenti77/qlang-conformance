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

struct Letters
    public last: int
end

impl Iterator<(string, int)> for Letters
    public fun next(self) -> Step<(string, int)>
        Step<(string, int)>.End
    end
end

impl KeyedIterable<string, int> for Letters
    public fun iter_keyed(self) -> Iterator<(string, int)>
        [("a", 1), ("b", 2)].iter()
    end
end

for k, v in Letters { last: 0 } do
    print("{k}={v}")
end
print({ ...Letters { last: 0 }, "z": 0 })
