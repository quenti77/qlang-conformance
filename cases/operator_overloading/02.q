struct Version
    public major: int
    public minor: int
end

impl Eq for Version
    public fun eq(self, other: Version) -> bool
        self.major == other.major and self.minor == other.minor
    end
end

impl Ord for Version
    public fun cmp(self, other: Version) -> int
        if self.major != other.major then
            return self.major - other.major
        end
        self.minor - other.minor
    end
end

let a = Version { major: 1, minor: 2 }
let b = Version { major: 1, minor: 10 }
let c = Version { major: 1, minor: 2 }
print(a == c)
print(a != b)
print(a < b)
print(a <= c)
print(b > a)
print(a >= b)

fun newest<T: Ord>(x: T, y: T) -> T
    if x > y then x else y end
end
print(newest(a, b))
