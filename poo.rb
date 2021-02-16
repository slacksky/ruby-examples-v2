class Persona
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def self.suggested_names
        ["ash","red","satoshi"]
    end

   
end

persona = Persona.new("ash", 10)
puts persona.name
puts persona.age
