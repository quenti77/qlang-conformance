struct Money
    public cents: int
end

impl Zero for Money
    public fun zero() -> Self
        Money { cents: 0 }
    end
end

struct Pair<T>
    public a: T
    public b: T
end

impl<T: Zero> Zero for Pair<T>
    public fun zero() -> Self
        Pair { a: T.zero(), b: T.zero() }
    end
end

fun zero_of<T: Zero>() -> T
    T.zero()
end

print(zero_of<Money>())
print(zero_of<Pair<int>>())
print(zero_of<Pair<Pair<int>>>())
