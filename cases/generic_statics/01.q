trait Zero
    fun zero() -> Self
end

impl Zero for int
    fun zero() -> Self
        0
    end
end

impl Zero for float
    fun zero() -> Self
        0.0
    end
end

fun zero_of<T: Zero>() -> T
    T.zero()
end

fun twice<T: Zero>() -> array<T>
    [zero_of<T>(), zero_of<T>()]
end

print(zero_of<int>())
print(zero_of<float>())
print(twice<int>())
