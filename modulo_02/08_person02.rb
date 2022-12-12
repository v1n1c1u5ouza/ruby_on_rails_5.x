class Person
    def initialize
            puts "Inicializando.... "
    end

    def speak(text = "Olá, pessoal!")
        text
    end

    def speak2(name = "pessoal")
        "Olá #{name}!"
    end

    def speak3(text1 = "Olá", text2 = "Hello!")
        "#{text1} - #{text2}!" 
    end
end

p = Person.new
puts p.speak("Olá!")
puts p.speak2("Jackson")
puts p.speak3("Oie", "Yes")