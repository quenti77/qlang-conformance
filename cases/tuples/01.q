fun minmax(xs: array<int>) -> (int, int)
  let lo = xs[0]
  let hi = xs[0]
  for x in xs do
    if x < lo then lo = x end
    if x > hi then hi = x end
  end
  (lo, hi)
end
let (a, b) = minmax([3, 9, 1, 4])
print("{a} {b}")
let t = (1, "x", true)
print(t.0)
print(t.1)
print(t)
