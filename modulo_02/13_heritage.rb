class Person 
    attr_accessor :name, :email
end

class PhysicalPerson < Person
    attr_accessor :cpf

   def speak(text)
        text
   end
end

class LegalPerson < Person
    attr_accessor :cnpj

    def pay_supplier
     "Pagando fornecedor...." 
    end
end

p1 = Person.new
#setters
p1.name = "Vinicius"
p1.email = "vinicius@vinicius@gmail.com"

#getters
puts p1.name
puts p1.email
puts "--------------------"

p2 = PhysicalPerson.new
#setters
p2.name = "Pedro"
p2.email = "pedro@pedro@gmail.com"
p2.cpf = "919191919191"

#getters
puts p2.name
puts p2.email
puts p2.cpf

puts p2.speak("Hello!")
puts "--------------------"

p3 = LegalPerson.new
#setters
p3.name = "Clear"
p3.email = "clear@clear@gmail.com"
p3.cnpj = "919191919191-0001"

#getters
puts p3.name
puts p3.email
puts p3.cnpj

puts p3.pay_supplier
puts "--------------------"


