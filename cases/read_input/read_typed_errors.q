-- a line that is not a T, and no more input, are errors of the Result: never a default
let bad = read<int>("")
print(bad.is_err())
print(bad.unwrap_err().text)
print(bad.unwrap_err().message)
let none_left = read<int>("")
print(none_left.unwrap_err().message)
