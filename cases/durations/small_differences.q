let a = datetime.of(2026, 1, 1, 10, 0, 0)
let b = datetime.of(2026, 1, 1, 10, 5, 30)

print(a.diff_in_minutes(b))
print(b.diff_in_minutes(a))
print(a.diff_in_seconds(b))
print(b.diff_in_seconds(a))
