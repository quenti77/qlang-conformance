struct Holes
    public at: int
end

impl Iterator<int?> for Holes
    public fun next(self) -> Step<int?>
        if self.at >= 3 then
            return Step<int?>.End
        end
        self.at += 1
        Step<int?>.Item(none)
    end
end

let n = 0
for x in Holes { at: 0 } do
    n += 1
end
print(n)
