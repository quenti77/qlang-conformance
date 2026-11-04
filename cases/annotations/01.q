#[annotation]
struct Route
    path: string
    method: string = "GET"
end

#[annotation]
struct Min
    value: int
end

#[Route("/users", method: "POST")]
fun create_user() -> int
    1
end

struct Form
    #[Min(0)]
    public age: int
end

fun check(#[Min(1)] n: int) -> int
    n
end

print(create_user())
print(Form { age: 3 }.age)
print(check(2))
