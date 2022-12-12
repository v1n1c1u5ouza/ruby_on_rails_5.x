class Instance
    def initialize(given_name = "Indigente")
        @name = given_name
    end

    def print_name
        @name
    end
end

i1 = Instance.new
puts i1.print_name

i2 = Instance.new("Vinicius")
puts i2.print_name
