v = [[11,12,13],[21,22,23],[31,32,33]]

v.each do |externo|
    externo.each do |interno|
        puts interno
    end
end

puts "==================="

v = [15,16,17,18]
puts v

puts "==================="

v = Array.new
v.push(15)
v.push(62)
puts v[1]