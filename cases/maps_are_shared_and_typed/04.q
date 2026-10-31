let nested = { "xs": [1, 2], "ys": [3] }
print(nested["xs"])
let inner = nested["ys"]
if inner != none then print(inner.len()) end
