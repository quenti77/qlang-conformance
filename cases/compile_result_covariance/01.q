struct NotAnError
    public message: string
end

fun a() -> Result<int, NotAnError>
    Err(NotAnError { message: "x" })
end

fun b() -> Result<int, Error>
    a()?
    Ok(0)
end
