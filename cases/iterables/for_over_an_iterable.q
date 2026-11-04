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

for x in Count { n: 0, max: 3 } do
    print(x)
end
for i, x in Count { n: 0, max: 2 } do
    print("{i}:{x}")
end
for x in Count { n: 0, max: 9 } do
    if x == 4 then
        break
    end
    print(x)
end
