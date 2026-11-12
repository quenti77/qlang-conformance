-- the error of read<T> goes through `?` into a function that returns a Result<_, Error>
fun double() -> Result<int, Error>
  let n = read<int>("n? ")?
  Ok(n * 2)
end
print(double().unwrap())
print(double().is_err())
