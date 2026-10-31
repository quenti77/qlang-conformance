fun shift(s: string, k: int) -> string
let out = ""
for c in s do
let base = 97
out += ((c.code() - base + k) mod 26 + base).char()
end
out
end
print(shift("hello", 3))
