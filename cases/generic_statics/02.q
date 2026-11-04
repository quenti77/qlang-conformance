struct Point<T>
    public x: T
    public y: T
end

impl<T: Zero> Point<T>
    public fun origin() -> Point<T>
        Point { x: T.zero(), y: T.zero() }
    end
end

print(Point<int>.origin())
let p: Point<float> = Point.origin()
print(p)
