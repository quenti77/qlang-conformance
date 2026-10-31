let fs: array<fun() -> int> = []
for i in 0..3 do
fs[] = fun() -> int
i * 10
end
end
for f in fs do
write("{f()} ")
end
print("")
