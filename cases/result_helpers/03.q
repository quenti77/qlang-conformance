struct DomainError
  public message: string
end
fun get(id: int) -> Result<string, DomainError>
  if id == 1 then
    Ok("abc")
  else
    Err(DomainError { message: "missing" })
  end
end
print(get(1).unwrap_or("x"))
print(get(2).unwrap_or("x"))
print(get(1).ok())
print(get(2).ok())
let v = get(1).ok()
if v != none then
  print(v.upper())
end
