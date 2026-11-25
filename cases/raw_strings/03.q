-- a pattern with quantifiers needs no doubled braces or backslashes
let year = r"^[0-9]{4}-[0-9]{2}$"
print(regex.matches("2026-11", year))
print(regex.matches("26-11", year))
print(regex.find("on 2026-11-25", r"\d{4}"))
print(regex.replace_all("a1 b22", r"\d+", "#"))
