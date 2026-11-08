let fixed = Duration.of(days: 2, hours: 3)
let calendar = Duration.of(months: 1)

print(fixed.has_calendar_parts())
print(calendar.has_calendar_parts())

print(fixed.total_days())
print(fixed.total_seconds())
print(Duration.of(hours: 36).total_days())
print(Duration.of(minutes: 2, seconds: 30).total_seconds())
print(calendar.total_days().is_err())
print(calendar.total_seconds().is_err())
