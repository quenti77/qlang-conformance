struct Money
    public cents: int
end

impl Add for Money
    public fun add(self, other: Money) -> Money
        Money { cents: self.cents + other.cents }
    end
end

impl Zero for Money
    public fun zero() -> Self
        Money { cents: 0 }
    end
end

fun total<T: Add + Zero>(xs: array<T>) -> T
    xs.sum()
end

let nothing: array<Money> = []
print(nothing.sum())
print([Money { cents: 2 }, Money { cents: 3 }].sum())
print(total<Money>([]))
print(total<int>([]))
