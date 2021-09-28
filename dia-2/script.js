function converter() {
	let valorElemento = document.getElementById('valor').value;
	let valorEmDolar = parseFloat(valorElemento);

	let valorEmReal = valorEmDolar * 5;
	console.log(valorEmReal);

	let elementoValorConvertido = document.getElementById('valorConvertido');
	let valorConvertido = 'O resultado em real é R$ ' + valorEmReal;
	elementoValorConvertido.innerHTML = valorConvertido;
}
