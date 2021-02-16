class Persona < Struct.new(:name, :age)
    
    def self.suggested_names
        ["ash","red","satoshi"]
    end

   
end

persona = Persona.new("ash", 10)
puts persona.name
puts persona.age
