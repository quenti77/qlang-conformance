trait Named
  fun name(self) -> string
end
struct Dog
  public age: int
end
struct Cat
  public age: int
end
impl Named for Dog
  public fun name(self) -> string
    "dog {self.age}"
  end
end
impl Named for Cat
  public fun name(self) -> string
    "cat {self.age}"
  end
end
fun greet(n: Named) -> string
  "hello " + n.name()
end
print(greet(Dog { age: 3 }))
print(greet(Cat { age: 5 }))
