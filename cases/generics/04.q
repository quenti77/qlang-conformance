fun sum<T: Add>(a: T, b: T) -> T
a + b
end
print(sum(1, 2))
print(sum("a", "b"))
print(sum(1.5, 2.5))
