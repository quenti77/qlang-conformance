fun big<T: Ord>(a: T, b: T) -> T
if a > b then a else b end
end
print(big(2, 7))
print(big(2.5, 1.5))
