trait Named
  fun name(self) -> string
end
trait Greeter extends Named
end
struct Cat
end
impl Greeter for Cat
end
impl Named for Cat
  fun name(self) -> string
    "cat"
  end
end
fun hello(g: Greeter) -> string
  g.name()
end
print(hello(Cat {}))
