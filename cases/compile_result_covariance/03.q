struct Animal
    public name: string
end
struct Chien extends Animal end

fun animal() -> Result<Animal, string>
    Ok(Animal { name: "a" })
end

let chien: Result<Chien, string> = animal()
