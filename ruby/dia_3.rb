$numeroSecreto = rand(10)
$tentativas = 5

def chutar
    chute = gets.chomp.to_i

    if chute == $numeroSecreto
        puts "Acertou!"
	elsif chute > 10 || chute < 0
        puts "Você deve digitar um número de 0 a 10"
	elsif chute > $numeroSecreto
		$tentativas -= 1
		puts "O número é maior que o número secreto | Tentativas: #{$tentativas}"
	else
		$tentativas -= 1
		puts "O número é menor que o número secreto | Tentativas: #{$tentativas}"
	end

	while $tentativas > 0 && chute != $numeroSecreto do
		chutar
	end
end

puts "Digite um número de 0 a 10"
chutar 