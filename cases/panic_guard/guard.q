fun boom(x: int) -> int
  assert_eq(x, 3)
  x
end
let failure = Panic.guard(fun() boom(1) end)
if failure != none then
  print(failure.code)
  print(failure.message.contains("assert_eq failed"))
  print(failure.places.len() >= 2)
end
print(Panic.guard(fun() boom(3) end) == none)
let zero = Panic.guard(fun() 1 div 0 end)
if zero != none then
  print(zero.code)
end
