struct C
public cb: fun(int) -> int
end
let c = C { cb: fun(n: int) -> int
n * 2
end }
print(c.cb(4))
