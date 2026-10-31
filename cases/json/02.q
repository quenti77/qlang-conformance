struct User
  public name: string
  public age: int
end
let u = Json.to<User>(Json.parse("\{\"name\": \"bob\", \"age\": 27\}").unwrap()).unwrap()
print("{u.name} {u.age}")
let bad = Json.to<User>(Json.parse("\{\"name\": \"bob\"\}").unwrap())
print(bad.is_err())
print(Json.of(u).to_text())
