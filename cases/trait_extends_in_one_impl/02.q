trait A
  fun a(self) -> int
end
trait B extends A
  fun b(self) -> int
end
trait C extends B
  fun c(self) -> int
end
struct S
end
impl C for S
  fun a(self) -> int
    1
  end
  fun b(self) -> int
    20
  end
  fun c(self) -> int
    300
  end
end
fun total<T: C>(x: T) -> int
  x.a() + x.b() + x.c()
end
print(total(S {}))
