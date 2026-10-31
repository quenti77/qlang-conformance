struct Box<T>
public v: T
end
impl<T> Box<T>
public fun new(v: T) -> Box<T>
Box { v }
end
public fun get(self) -> T
self.v
end
end
let b = Box.new(5)
print(b.get() + 1)
let c = Box<string>.new("x")
print(c.get() + "y")
