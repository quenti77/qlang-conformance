let s: string? = none
print(match s
case none then "empty"
case v then v.upper()
end)
