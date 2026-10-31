struct P
public x: int
public y: int
end
impl P
public fun new(x: int, y: int) -> P
P { x, y }
end
public fun show(self) -> string
"{self.x},{self.y}"
end
end
let p = P.new(y: 2, x: 1)
print(p.show())
