enum Shape
  Circle(radius: float)
  Rect(w: float, h: float)
  Empty
end
let shapes = [Shape.Circle(2.0), Shape.Rect(1.0, 2.0), Shape.Empty]
for s in shapes do
  match s
    case Circle(r) then print("circle {r}")
    case Rect(w, h) then print("rect {w * h}")
    case Empty then print("empty")
  end
end
