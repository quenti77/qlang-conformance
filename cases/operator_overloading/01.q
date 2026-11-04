struct Money
    public cents: int
end

impl Add for Money
    public fun add(self, other: Money) -> Money
        Money { cents: self.cents + other.cents }
    end
end

impl Sub for Money
    public fun sub(self, other: Money) -> Money
        Money { cents: self.cents - other.cents }
    end
end

impl Mul<int> for Money
    public fun mul(self, k: int) -> Money
        Money { cents: self.cents * k }
    end
end

impl Div<int> for Money
    public fun divide(self, k: int) -> float
        self.cents / k
    end
end

impl IntDiv<int> for Money
    public fun int_div(self, k: int) -> Money
        Money { cents: self.cents div k }
    end
end

impl Mod<int> for Money
    public fun modulo(self, k: int) -> Money
        Money { cents: self.cents mod k }
    end
end

impl Pow<int> for Money
    public fun pow(self, k: int) -> Money
        Money { cents: self.cents ** k }
    end
end

impl Neg for Money
    public fun neg(self) -> Money
        Money { cents: 0 - self.cents }
    end
end

let a = Money { cents: 700 }
let b = Money { cents: 250 }
print(a + b)
print(a - b)
print(a * 3)
print(a / 4)
print(a div 4)
print(a mod 4)
print(b ** 2)
print(-a)
