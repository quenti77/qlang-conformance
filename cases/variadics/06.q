struct Logger
    public prefix: string
end

impl Logger
    public fun line(self, ...parts: string) -> string
        self.prefix + parts.join(" ")
    end
end

let logger = Logger { prefix: "> " }
print(logger.line())
print(logger.line("a", "b"))

let total = fun(...xs: int) -> int
    let t = 0
    for x in xs do
        t += x
    end
    t
end
print(total(1, 2, 3))

fun apply(f: fun(int, ...int) -> int, a: int) -> int
    f(a, a, a)
end
print(apply(fun(first: int, ...rest: int) -> int first + rest.len() end, 10))
