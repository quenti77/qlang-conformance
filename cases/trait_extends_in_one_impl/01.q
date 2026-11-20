trait Named
  fun name(self) -> string
end
trait Greeter extends Named
  fun greet(self) -> string
end
struct Cat
  public label: string
end
impl Greeter for Cat
  fun greet(self) -> string
    "mew " + self.name()
  end
  fun name(self) -> string
    self.label
  end
end
fun hello(g: Greeter) -> string
  g.greet() + " / " + g.name()
end
fun named(n: Named) -> string
  n.name()
end
let c = Cat { label: "tom" }
print(hello(c))
print(named(c))
