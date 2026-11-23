struct DomainError
  public message: string
end
struct HttpError
  public code: int
end
fun to_http(e: DomainError) -> HttpError
  HttpError { code: 404 }
end
fun get(id: int) -> Result<string, DomainError>
  if id == 1 then
    Ok("abc")
  else
    Err(DomainError { message: "missing" })
  end
end
print(get(1).map(fun(s: string) -> int s.len() end).unwrap())
print(get(2).map(fun(s: string) -> int s.len() end).is_err())
print(get(2).map_err(to_http).unwrap_err().code)
print(get(1).map_err(to_http).unwrap())
