fun log(level: string, ...pieces: string) -> string
    level + ":" + pieces.join("|")
end

print(log("info"))
print(log("info", "a", "b"))
print(log(level: "warn"))

fun greet(greeting: string = "hello", ...names: string) -> string
    "{greeting} {names}"
end

print(greet())
print(greet("hi"))
print(greet("hi", "ann", "bob"))
