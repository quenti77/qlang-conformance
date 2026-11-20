trait Named
  fun name(self) -> string
end
trait Greeter extends Named
end
struct Cat
end
impl Named for Cat
  fun name(self) -> string
    "x"
  end
end
impl Greeter for Cat
  fun name(self) -> string
    "y"
  end
end
