let first = ulid.at(1000)
let second = ulid.at(2000)
print(first < second)
print(first.time())
print(second.time())
print(ulid.parse("nope"))
let again = ulid.parse("{first}")
print(again == first)
let orders: map<ulid, string> = {}
orders[first] = "first"
orders[second] = "second"
print(orders.len())
