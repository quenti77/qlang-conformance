struct P
private x: int
end
impl P
public fun new() -> P
P { x: 1 }
end
end
let p = P.new()
print(p.x)
