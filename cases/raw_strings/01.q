-- braces are plain characters, there is no interpolation
let n = 3
let a = r"a{b}"
print(a)
print(a.len())
print(r"{n}")
print(r"{n}" + "{n}")
let j = r"{[1, 2]}"
print(j)
print(j.len())
