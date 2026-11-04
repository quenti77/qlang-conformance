struct Box<T>
    public v: T
end

impl<T: Zero> Box<T>
    public fun empty() -> Box<T>
        Box { v: T.zero() }
    end
end

let b = Box.empty()
