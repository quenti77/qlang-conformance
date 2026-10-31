struct P
public x: int
end
let m = { "p": P { x: 1 } }
let p = m["p"]
if p != none then print(p.x) end
print({ 1: P { x: 2 } }[1] != none)
