enum C
A
B
end
let c = C.B
print(match c
case C.A then 1
case C.B then 2
end)
print(C.A == C.A)
print(C.A != C.B)
print(c)
