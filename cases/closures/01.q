fun counter() -> fun() -> int
  let n = 0
  fun() -> int
    n += 1
    n
  end
end
let c = counter()
print(c())
print(c())
let d = counter()
print(d())
