struct P
public n: int
end
impl As<string> for P
public fun convert(self) -> string
"P#{self.n}"
end
end
impl As<int> for P
public fun convert(self) -> int
self.n
end
end
let p = P { n: 4 }
print(p as string)
print(p as int + 1)
print(p)
print("v={p}")
print([p])
