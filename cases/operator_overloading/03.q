struct Point
    public x: int
    public y: int
end

impl Add for Point
    public fun add(self, other: Point) -> Point
        Point { x: self.x + other.x, y: self.y + other.y }
    end
end

impl Mul<int> for Point
    public fun mul(self, k: int) -> Point
        Point { x: self.x * k, y: self.y * k }
    end
end

impl Mul<Point> for int
    public fun mul(self, p: Point) -> Point
        p * self
    end
end

let p = Point { x: 1, y: 2 }
print(p * 3)
print(3 * p)
let q = p
q += Point { x: 10, y: 10 }
print(q)
q *= 2
print(q)
print(p)
