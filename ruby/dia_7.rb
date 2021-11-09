carta1 = {
  nome: 'Bulbasauro',
	atributos: {
		ataque: 7,
		defesa: 8,
		magia: 6,
	},
};

carta2 = {
  nome: 'Darth Vader',
	atributos: {
		ataque: 9,
		defesa: 8,
		magia: 2,
	},
};

carta3 = {
  nome: 'Shiryu de dragão',
	atributos: {
		ataque: 5,
		defesa: 9,
		magia: 10,
	},
}

$cartas = [carta1, carta2, carta3]

$cartaMaquina;
$cartaJogador;

def sortearCarta
  $numeroCartaMaquina = (rand() * 3).to_i;
  $cartaMaquina = $cartas[$numeroCartaMaquina];

  $numeroCartaJogador = (rand() * 3).to_i;
  while($numeroCartaMaquina == $numeroCartaJogador)
    $numeroCartaJogador = (rand() * 3).to_i;
  end

  $cartaJogador = $cartas[$numeroCartaJogador];
  puts "Esta é a sua carta:\n\n"

  exibirOpcoes();
end

def exibirOpcoes
  puts "Nome: #{$cartaJogador[:nome]}"
  $cartaJogador[:atributos].each { |key, value| puts "#{key}: #{value}" };

  puts "\nDigite 1 para ataque, 2 para defesa ou 3 para magia:"
  $escolhaJogador = gets.chomp.to_i;

  $valorAtributoEscolhido = case $escolhaJogador
    when 1
      $atributoEscolhido = 'ataque';
	    $valorCartaMaquina = $cartaMaquina[:atributos][:ataque];
      $cartaJogador[:atributos][:ataque];
    when 2
      $atributoEscolhido = 'defesa';
	    $valorCartaMaquina = $cartaMaquina[:atributos][:defesa];
      $cartaJogador[:atributos][:defesa];
    else
      $atributoEscolhido = 'magia';
	    $valorCartaMaquina = $cartaMaquina[:atributos][:magia];
      $cartaJogador[:atributos][:magia];
  end

  puts "\nSua escolha foi: #{$atributoEscolhido.capitalize} #{$valorAtributoEscolhido}";
  puts "A carta do oponente era: #{$cartaMaquina[:nome]} | #{$atributoEscolhido.capitalize} #{$valorCartaMaquina}";

  jogar()
end

def jogar
  if ($valorAtributoEscolhido > $valorCartaMaquina)
    puts "\nVocê venceu!"
  elsif ($valorAtributoEscolhido < $valorCartaMaquina)
    puts "\nVocê perdeu"
  else
    puts "\nEmpate"
  end
end

sortearCarta()
