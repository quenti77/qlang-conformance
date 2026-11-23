fun find(i: int) -> string?
  if i == 1 then "a" else none end
end
print(find(1).unwrap())
print(find(2).unwrap())
print("never")
