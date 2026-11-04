trait Numeric extends Add<Self>, Zero
    fun double(self) -> Self
end

impl Numeric for int
    public fun double(self) -> Self
        self + self
    end
end

fun sum_all<T: Numeric>(xs: array<T>) -> T
    let t = T.zero()
    for x in xs do
        t = t + x.double()
    end
    t
end

print(sum_all([1, 2, 3]))
print(sum_all<int>([]))
