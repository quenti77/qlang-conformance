fun half(n: int) -> Result<int, Error>
  if n mod 2 != 0 then
    return Err(Error { message: "odd" })
  end
  Ok(n div 2)
end
fun quarter(n: int) -> Result<int, Error>
  let h = half(n)?
  half(h)
end
print(quarter(8).unwrap())
match quarter(6)
  case Ok(v) then print("ok {v}")
  case Err(e) then print("err {e.message}")
end
