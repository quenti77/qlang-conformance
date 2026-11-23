fun find(i: int) -> string?
  if i == 1 then "a" else none end
end
print(find(1).unwrap().len())
print(find(1).expect("need a"))
let y = find(1)
print(y.unwrap() + "!")
