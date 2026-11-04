trait Animal
    fun name(self) -> string
end

struct Dog
    public label: string
end

impl Animal for Dog
    public fun name(self) -> string
        self.label
    end
end

struct User
    public id: int
end

let dog = Dog { label: "rex" }
let services: map<string, Any> = { "dog": Any.of(dog), "user": Any.of(User { id: 7 }) }
let d = services["dog"]
if d != none then
    print(d.as<Dog>())
    print(d.as<Animal>())
    print(d.as<User>())
end
let u = services["user"]
if u != none then
    print(u.as<User>())
end
print(services["missing"])
let xs: array<int> = []
print(Any.of(xs).type_name())
