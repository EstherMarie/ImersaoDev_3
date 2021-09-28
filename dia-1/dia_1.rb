puts "Digite Seu nome:"
nome = gets.chomp

puts "Digite a nota do 1º bimestre"
notaDoPrimeiroBimestre = gets.chomp.to_f

puts "Digite a nota do 2º bimestre"
notaDoSegundoBimestre = gets.chomp.to_f

puts "Digite a nota do 3º bimestre"
notaDoTerceiroBimestre = gets.chomp.to_f

puts "Digite a nota do 4º bimestre"
notaDoQuartoBimestre = gets.chomp.to_f

notaFinal = (notaDoPrimeiroBimestre + notaDoSegundoBimestre + notaDoTerceiroBimestre + notaDoQuartoBimestre) / 4
notaFixada = notaFinal.round(1)

puts "Olá, #{nome}!"
puts "A sua nota Final é: #{notaFixada}"

if notaFixada >= 7
    puts "Aprovado(a)!"
elsif notaFixada >= 5 && notaFixada <7
    puts "Prova Final"
else
    puts "Reprovado(a) :("
end