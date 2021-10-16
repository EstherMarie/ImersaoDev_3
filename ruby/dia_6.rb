rafa = {
	nome: 'Rafa',
	vitorias: 2,
	empates: 1,
	derrotas: 1,
	pontos: 0
}

paulo = {
	nome: 'Paulo',
	vitorias: 1,
	empates: 1,
	derrotas: 2,
	pontos: 0
}

# Observação: 
# Neste caso estamos utilizando símbolos como chaves.
# Seria o mesmo que: rafa = {:nome=>"Rafa", :vitorias=>2, :empates=>1 :derrotas=>1}
# Para acessar o valor dessas chaves: ex: rafa[:vitorias]

# Se as chaves fossem strings:
# rafa = {"nome"=>"Rafa", "vitorias"=>2, "empates"=>1, "derrotas"=>1
# Para acessar: rafa["vitorias"]

def calculaPontos(jogador) 
    pontos = jogador[:vitorias] * 3 + jogador[:empates]
    return pontos
end

rafa[:pontos] = calculaPontos(rafa)
paulo[:pontos] = calculaPontos(paulo)

# puts rafa
# puts paulo

jogadores = [rafa, paulo]

def exibeJogadoresNaTela(jogadores)
    for jogador in jogadores do
        puts "\n"

        jogador.each do | atributo |
            puts "#{atributo[0]}: #{atributo[1]}"
        end
    end
end

exibeJogadoresNaTela(jogadores)
