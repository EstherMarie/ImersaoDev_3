## loop

contador_1 = 0
loop do
    puts "contador_1 = #{contador_1}"
    i+=1
    break if contador_1 == 5
end

## while

i = 0
while i < 5
    puts "#{i} é menor que 5"
    i += 1
end

## for

# Inclui todos os items
for numero in 0..5 do
    puts "#{numero}"
end

# Exclui o último item
for numero in 0...5 do
    puts "#{numero}"
end

## times

5.times { puts "Olá!" }

5.times do |num|
    puts "#{num}"
end

## until

j = 0
until j >= 5
    puts "#{j} ainda não é maior ou igual a 5"
    j += 1
end

## upto & downto

# Progressivo
0.upto(5) { |num| puts "#{num}" }

# Regressivo
10.downto(5) { |num| puts "#{num}" }