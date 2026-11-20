trait Named
  fun name(self) -> string
end
trait Greeter extends Named
end
struct Cat
end
impl Greeter for Cat
  fun name(self) -> string
    "x"
  end
  fun nothing(self) -> string
    "y"
  end
end
