trait Named
fun name(self) -> string
end
struct T
end
impl Named for T
public fun name(self) -> string
"t"
end
end
fun hi<N: Named>(n: N) -> string
"hi " + n.name()
end
print(hi(T { }))
