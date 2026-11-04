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

let evens = Count { n: 0, max: 1000000000 }.filter(fun(x: int) -> bool x % 2 == 0 end)
print(evens.map(fun(x: int) -> int x * x end).skip(1).take(3).collect())
print(Count { n: 0, max: 5 }.count())
print(Count { n: 0, max: 0 }.first())
print([1, 2, 3].iter().map(fun(x: int) -> int x + 1 end).collect())
print("ab".iter().collect())
print({ "a": 1 }.iter_keyed().collect())
