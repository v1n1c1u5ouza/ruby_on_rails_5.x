require_relative 'payment'

include Payment

puts "Digite a bandeira do cartão:"
    b = gets.chomp
puts "Digite a número do cartão:"
    n = gets.chomp
puts "Digite a valor da compra:"
    v  = gets.chomp

puts pay(b, n, v)
puts Payment::pay(b, n, v)