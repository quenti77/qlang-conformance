let fs: array<fun() -> int> = []
for i, x in [5, 6] do
fs[] = fun() -> int
i * 100 + x
end
end
for f in fs do
write("{f()} ")
end
print("")
