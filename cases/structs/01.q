struct Point
  public x: int
  public y: int
end
impl Point
  public fun add(self, o: Point) -> Point
    Point { x: self.x + o.x, y: self.y + o.y }
  end
end
let p = Point { x: 1, y: 2 }.add(Point { x: 10, y: 20 })
print("{p.x},{p.y}")
let o = Point { x: 0, y: 0 }
print(o.add(p).x)
