fun f(x: int?) -> int
if x == none then
return -1
end
x * 2
end
print(f(none))
print(f(4))
