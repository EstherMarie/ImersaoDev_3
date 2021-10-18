let carta1 = {
	nome: 'Bulbasauro',
	imagem:
		'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.QaP-3QjKyNxi3k9U910tAAHaHa%26pid%3DApi&f=1',
	atributos: {
		ataque: 7,
		defesa: 8,
		magia: 6,
	},
};

let carta2 = {
	nome: 'Darth Vader',
	imagem:
		'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.H6b323y-OF7cp_nuSUMMugHaFj%26pid%3DApi&f=1',
	atributos: {
		ataque: 9,
		defesa: 8,
		magia: 2,
	},
};

let carta3 = {
	nome: 'Shiryu de dragão',
	imagem:
		'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.TPYaa8B1trpeRyuDIw0PogHaIB%26pid%3DApi&f=1',
	atributos: {
		ataque: 5,
		defesa: 9,
		magia: 10,
	},
};

let cartas = [carta1, carta2, carta3];

let cartaMaquina;
let cartaJogador;

function sortearCarta() {
	let numeroCartaMaquina = parseInt(Math.random() * 3);
	cartaMaquina = cartas[numeroCartaMaquina];

	let numeroCartaJogador = parseInt(Math.random() * 3);
	while (numeroCartaMaquina == numeroCartaJogador) {
		numeroCartaJogador = parseInt(Math.random() * 3);
	}
	cartaJogador = cartas[numeroCartaJogador];
	console.log(cartaJogador);

	document.getElementById('btnSortear').disabled = true;
	document.getElementById('btnJogar').disabled = false;

	exibirCartaJogador();
}

function obtemAtributoSelecionado() {
	let radioAtributos = document.getElementsByName('atributo');

	for (let i = 0; i < radioAtributos.length; i++) {
		if (radioAtributos[i].checked) {
			return radioAtributos[i].value;
		}
	}
}

function jogar() {
	let atributoSelecionado = obtemAtributoSelecionado();
	let divResultado = document.getElementById('resultado');
	let valorCartaJogador = cartaJogador.atributos[atributoSelecionado];
	let valorCartaMaquina = cartaMaquina.atributos[atributoSelecionado];

	if (valorCartaJogador > valorCartaMaquina) {
		htmlResultado = `<p class="resultado-final">Venceu</p>`;
	} else if (valorCartaJogador < valorCartaMaquina) {
		htmlResultado = `<p class="resultado-final">Perdeu</p>`;
	} else {
		htmlResultado = `<p class="resultado-final">Empatou</p>`;
	}

	divResultado.innerHTML = htmlResultado;

	document.getElementById('btnJogar').disabled = true;

	exibirCartaMaquina();
}

function exibirCartaJogador() {
	let divCartaJogador = document.getElementById('carta-jogador');
	divCartaJogador.style.backgroundImage = `url(${cartaJogador.imagem})`;
	let moldura =
		'<img src="https://www.alura.com.br/assets/img/imersoes/dev-2021/card-super-trunfo-transparent-ajustado.png" style="width: inherit; height: inherit; position: absolute" alt=""/>';

	let opcoesTexto = '';

	for (let atributo in cartaJogador.atributos) {
		opcoesTexto += `<input type="radio" name="atributo" value="${atributo}"> ${atributo} ${cartaJogador.atributos[atributo]}<br>`;
		console.log(atributo);
	}

	let tagHTML = `<div id="opcoes" class="carta-status">${opcoesTexto}</div>`;
	let nome = `<p class="carta-subtitle">${cartaJogador.nome}</p>`;

	divCartaJogador.innerHTML = moldura + nome + tagHTML;
}

function exibirCartaMaquina() {
	let divCartaMaquina = document.getElementById('carta-maquina');
	divCartaMaquina.style.backgroundImage = `url(${cartaMaquina.imagem})`;
	let moldura =
		'<img src="https://www.alura.com.br/assets/img/imersoes/dev-2021/card-super-trunfo-transparent-ajustado.png" style="width: inherit; height: inherit; position: absolute" alt=""/>';

	let opcoesTexto = '';

	for (let atributo in cartaMaquina.atributos) {
		opcoesTexto += `<p name="atributo" value="${atributo}"> ${atributo} ${cartaMaquina.atributos[atributo]}</p>`;
		console.log(atributo);
	}

	let tagHTML = `<div id="opcoes" class="carta-status">${opcoesTexto}</div>`;
	let nome = `<p class="carta-subtitle">${cartaMaquina.nome}</p>`;

	divCartaMaquina.innerHTML = moldura + nome + tagHTML;
}

// Para o botão do alerta

function fecharAlerta() {
  document.querySelector('.info').style.display = 'none'
}
