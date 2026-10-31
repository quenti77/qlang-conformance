let m: map<int, string> = {}
m[5] = "e"
m[1] = "a"
m[9] = "i"
m.remove(1)
m[7] = "g"
print(m.keys())
print(m[9])
print(m[7])
print(m[5])
