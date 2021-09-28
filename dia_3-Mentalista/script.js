let numeroSecreto = parseInt(Math.random() * 11);

function chutar() {
	let resultado = document.getElementById('resultado');
	let chute = parseInt(document.getElementById('valor').value);

	if (chute == numeroSecreto) {
		resultado.innerHTML = 'Acertou';
	} else if (chute > 10 || chute < 0) {
		resultado.innerHTML = 'Você deve digitar um número de 0 a 10';
	} else {
		resultado.innerHTML = 'Errou';
	}
}
