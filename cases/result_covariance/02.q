struct Animal
    public name: string
end
struct Chat extends Animal end

fun show(r: Result<Animal, Error>)
    print(r)
end

fun make() -> Result<Animal, Error>
    Ok(Chat { name: "tom" })
end

let wide: Result<Animal, Error> = Ok(Chat { name: "felix" })
show(Ok(Chat { name: "rex" }))
show(Err(Error { message: "bad" }))
print(wide)
print(make())
