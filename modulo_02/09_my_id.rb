class My_id
    def my_id
        "Meu id é o : #{self.object_id}"
    end
end

m = My_id.new
puts m.my_id    