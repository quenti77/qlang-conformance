let ages = {"ana": 31, "bob": 27}
ages["cy"] = 40
for name, age in ages do
  print("{name}={age}")
end
print(ages.len())
print(ages.get("zed", -1))
