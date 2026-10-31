fun first<T>(xs: array<T>) -> T?
  if xs.is_empty() then
    return none
  end
  xs[0]
end
print(first([7, 8]) ?? 0)
print(first(["a", "b"]) ?? "-")
let empty: array<int> = []
print(first(empty) ?? -1)
