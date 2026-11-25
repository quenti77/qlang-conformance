let r: Result<int, string> = Ok(1)
let v = r.unwrap_or_else(fun(e: string) -> string e end)
