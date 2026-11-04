let d = Duration.parse("P1Y2M3DT4H5M6S").unwrap()
print(d.years)
print(d.days)
print(Duration.parse("P2W").unwrap().days)
print(Duration.parse("1D").is_err())
for t in datetime.of(2026, 1, 31).each(Duration.of(months: 1), until: datetime.of(2026, 5, 1)) do
    print(t.format("YYYY-MM-DD"))
end
