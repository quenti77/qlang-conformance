fun total<T: Add + Zero>(xs: array<T>) -> T
    let t = T.zero()
    for x in xs do
        t = t + x
    end
    t
end

fun product<T: Mul + One>(xs: array<T>) -> T
    let t = T.one()
    for x in xs do
        t = t * x
    end
    t
end

print(total([1, 2, 3]))
print(total([1.5, 2.5]))
print(total<int>([]))
print(product([2, 3, 4]))
print(product<float>([]))
