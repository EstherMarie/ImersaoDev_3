function adicionarFilme() {
	let filmeFavorito = document.getElementById('filme').value;
	if (filmeFavorito.endsWith('.jpg')) {
		listarFilmesNaTela(filmeFavorito);
	} else {
		console.error('Endereço inválido');
	}

	// Outra forma:
	// let img = document.createElement('img');
	// img.src = filmeFavorito;
	// elementoListaFilmes.appendChild(img);

	document.getElementById('filme').value = '';
}

function listarFilmesNaTela(filme) {
	let elementoFilmeFavorito = `<img src="${filme}">`;
	let elementoListaFilmes = document.getElementById('listaFilmes');
	elementoListaFilmes.innerHTML += elementoFilmeFavorito;
}
