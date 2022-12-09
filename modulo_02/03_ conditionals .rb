# Estrutura condicional ternária

gender = "M"

#if sexo == "M"
#   puts "Masculino"
#else
#   puts "Feminino"
#end

gender == "M" ? (puts "Masculino") : (puts "Feminino")

#case

print "Digite uma idade:"
idade = gets.chomp.to_i

case idade
when 0..2
    puts "Bebê"
when 3..12
    puts "Criança"
when 12..18
    puts "Adolescente"
else
    puts "Adulto"
end

#unless

print "Digite uma número:"
num = gets.chomp.to_i

unless num >= 2
    puts "Maior que 2"
else 
    puts "Menor que 2"
end

#if

print "Digite uma número:"
num = gets.chomp.to_i

if num > 2
    print "num maior que 2"
end

