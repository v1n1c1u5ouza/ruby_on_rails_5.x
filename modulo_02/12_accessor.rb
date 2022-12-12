class Accessor
    attr_accessor :name
end

a = Accessor.new
a.name = "Vinicius"
puts a.name