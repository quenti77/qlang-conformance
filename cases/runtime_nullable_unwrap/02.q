fun find(i: int) -> string?
  if i == 1 then "a" else none end
end
print(find(2).expect("no value"))
