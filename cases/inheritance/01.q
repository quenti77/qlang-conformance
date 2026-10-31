struct Animal
  public name: string
end
impl Animal
  public fun speak(self) -> string
    "{self.name} makes a sound"
  end
end
struct Dog extends Animal
  public tricks: int
end
impl Dog
  public override fun speak(self) -> string
    "{self.name} barks"
  end
end
let a = Animal { name: "thing" }
let d = Dog { name: "rex", tricks: 2 }
print(a.speak())
print(d.speak())
print(d.tricks)
