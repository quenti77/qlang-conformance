let m = { 1: 10, 2: 20, 3: 30 }
for k, v in m do
if k == 1 then continue end
m.remove(3)
write("{k}:{v} ")
if k == 2 then break end
end
print(m.len())
