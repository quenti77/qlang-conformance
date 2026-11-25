-- ok_or turns a nullable into a Result
let name: string? = "ann"
let nobody: string? = none
let found = name.ok_or("missing")
let lost = nobody.ok_or("missing")
print(found.is_ok())
print(found.unwrap())
print(lost.is_err())
print(lost.unwrap_err())

fun double_first(xs: array<int>) -> Result<int, string>
    let v = xs.first().ok_or("empty")?
    Ok(v * 2)
end
print(double_first([4, 5]).unwrap())
print(double_first([]).unwrap_err())
