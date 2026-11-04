struct Bag
    public items: array<int>
end

impl Index<int> for Bag
    public fun index(self, i: int) -> int
        self.items[i]
    end
end

impl IndexSet<int, int> for Bag
    public fun set_index(self, i: int, v: int)
        self.items[i] = v
    end
end

impl Push<int> for Bag
    public fun push(self, v: int)
        self.items[] = v
    end
end

let bag = Bag { items: [10, 20] }
print(bag[1])
bag[0] = 5
bag[] = 6
print(bag.items)
let xs = [1, 2]
xs[] = 3
print(xs)
