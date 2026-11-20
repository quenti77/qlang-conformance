let div = 17
fun twice(div: int) -> int
    div * 2
end
struct Ratio
    public div: int
end
let r = Ratio { div: 3 }
print(twice(div))
print(r.div)
print(div // 5)
