struct Animal
    public name: string
end
struct Chien extends Animal end

let chiens: array<Chien> = [Chien { name: "rex" }]
let betes: array<Animal> = chiens
