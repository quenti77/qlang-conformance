export double, Counter, LIMIT

const LIMIT = 10

fun double(n: int) -> int
  n * 2
end

fun hidden() -> int
  99
end

struct Counter
  public n: int
end
