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
fun twice(s: string) -> Result<int, DomainError>
  Ok(s.len() * 2)
end
print(get(1).and_then(twice).unwrap())
print(get(2).and_then(twice).is_err())
print(get(2).and_then(twice).unwrap_err().message)
