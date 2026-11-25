-- no escape either: a backslash is a backslash, and the string ends at the next quote
print(r"back\slash")
print(r"back\slash".len())
print(r"line\n".len())
print(r"".len())
let multi = r"one
two"
print(multi.len())
print(multi.lines().len())
print(r"é{}".len())
