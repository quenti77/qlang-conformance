trait Describe
    fun describe(self) -> string
    fun twin(self) -> Self
        self
    end
    fun label(self) -> string
        let me: Self = self
        "<{me.describe()}>"
    end
end

struct Dog
    public name: string
end

impl Describe for Dog
    public fun describe(self) -> string
        self.name
    end
end

let d = Dog { name: "rex" }
print(d.twin().describe())
print(d.label())
