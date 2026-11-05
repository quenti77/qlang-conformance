let now = datetime.of(2026, 11, 5, 12, 0, 0)
for loc in ["es", "de", "it", "pt", "nl"] do
    print(now.add_days(-3).humanize(now, loc))
    print(now.add_hours(2).humanize(now, loc))
    print(datetime.of(2026, 3, 1).format_in("dddd D MMMM", loc))
end
print(now.add_days(-3).humanize(now))
print(now.add_days(-3).humanize(now, "fr"))
