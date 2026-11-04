let caps = regex.captures("2026-10-13", "(\\d+)-(\\d+)-(\\d+)")
if caps != none then
    print(caps[0])
    print(caps[1])
    print(caps[3])
end
print(regex.captures("abc", "(\\d+)"))
let optional = regex.captures("ac", "a(b)?c")
if optional != none then
    print(optional[1])
end
