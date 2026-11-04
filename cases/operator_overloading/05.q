struct Point
    public x: int
    public y: int
end

impl As<string> for Point
    public fun convert(self) -> string
        "({self.x}, {self.y})"
    end
end

impl As<int> for Point
    public fun convert(self) -> int
        self.x + self.y
    end
end

let p = Point { x: 1, y: 2 }
print(p as string)
print(p as int)
print("{p}")
print(p)
