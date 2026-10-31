fun add(m: map<string, int>)
m["k"] = 1
end
let m: map<string, int> = {}
add(m)
print(m)
let n = m
n["j"] = 2
print(m.len())
