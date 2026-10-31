struct V
public x: int
end
impl Mul<V> for int
public fun mul(self, v: V) -> V
V { x: self * v.x }
end
end
impl Mul<int> for V
public fun mul(self, k: int) -> int
self.x * k
end
end
print((3 * V { x: 4 }).x)
print(V { x: 4 } * 5)
