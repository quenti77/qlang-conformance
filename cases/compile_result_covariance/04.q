struct Animal
    public name: string
end
struct Chien extends Animal end

fun fail() -> Result<int, Error>
    Err(Error { message: "x" })
end

fun narrow() -> Result<int, Chien>
    fail()?
    Ok(0)
end
