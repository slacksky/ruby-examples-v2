class Persona
    def initialize(name, age)
        @name = name
        @age = age
    end

    def self.suggested_names
        ["ash","red","satoshi"]
    end

    def name 
        @name
    end
    def age 
        @age
    end

    #persona.name = "peter"
    #(persona.name = "peter").age = 7
    def name=(name)
       @name = name
       self#return of the variable
    end

    def age=(age)
        @age = age
        self#return of the variable
     end

end

persona = Persona.new("ash", 10)
puts persona.name
puts persona.age