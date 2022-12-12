class Person
        
    def speak # método de instância / precisa intanciar
        "Olá, pessoal"
    end

    def self.gritar(text) # método de classe / NÂO precisa instanciar
        "#{text}!!!!"
    end
end

p = Person.new
puts p.speak

puts Person.gritar("Hello")
