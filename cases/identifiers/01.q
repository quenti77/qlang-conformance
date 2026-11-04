let a = uuid.parse("550e8400-e29b-41d4-a716-446655440000")
if a != none then
    print(a)
    print(a.version())
end
print(uuid.parse("550E8400-E29B-41D4-A716-446655440000") == a)
print(uuid.parse("not a uuid"))
print(uuid.NIL)
print(uuid.v4().version())
print(uuid.v7().version())
