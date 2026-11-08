struct FileError extends Error end
struct OpenFileError extends FileError end
struct ReadAccessFileError extends FileError end

struct Animal
    public name: string
end
struct Chat extends Animal end

fun open_file() -> Result<int, OpenFileError>
    Err(OpenFileError { message: "open" })
end

fun read_file() -> Result<string, ReadAccessFileError>
    Err(ReadAccessFileError { message: "read" })
end

fun handle() -> Result<int, FileError>
    open_file()?
    read_file()?
    Ok(0)
end

fun handle_read_only() -> Result<int, Error>
    read_file()?
    Ok(0)
end

fun direct() -> Result<int, FileError>
    Err(OpenFileError { message: "direct" })
end

fun chat() -> Result<Chat, string>
    Ok(Chat { name: "tom" })
end

let animal: Result<Animal, string> = chat()

print(handle())
print(handle_read_only())
print(direct())
print(animal)
match handle()
    case Err(e) then print(e.message)
    else print("ok")
end
