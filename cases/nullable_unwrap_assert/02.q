fun find(i: int) -> string?
  if i == 1 then "a" else none end
end
let y = find(1)
assert(y != none)
print(y.upper())
let z = find(1)
assert(z != none, "z must exist")
print(z.len())
