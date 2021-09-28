let nome = 'Jasmin';
let notaDoPrimeiroSemestre = 9.3235434;
let notaDoSegundoBimestre = 7.435653;
let notaDoTerceiroBimestre = 4.4;
let notaDoQuartoBimestre = 6.54;

let notaFinal =
	(notaDoPrimeiroSemestre +
		notaDoSegundoBimestre +
		notaDoTerceiroBimestre +
		notaDoQuartoBimestre) /
	4;

let notaFixada = notaFinal.toFixed(1);

console.log('Bem vinda, ' + nome);
console.log(notaFixada);
