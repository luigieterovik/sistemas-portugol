/*
Quando uma empresa contrata o hotel para abrigar eventos, o hotel
oferece garçons para servir os convidados. Considerando que cada
garçom custa R$ 10,50 por hora, escreva um algoritmo que recebe o
número de garçons necessários e o total de horas do evento. Depois
calcule o custo total que o hotel terá com a contratação desses
profissionais e mostre na tela o resultado. 
*/

programa
{
	
	funcao inicio()
	{
		inteiro garconsQuantidade, horasEvento
		real garcomPorHora, custoTotal

		garcomPorHora = 10.50

		escreva("Digite a quantidade de garçon:\n")
		leia(garconsQuantidade)

		escreva("Digite a quantidade de horas do evento:\n")
		leia(horasEvento)

		custoTotal = garcomPorHora * garconsQuantidade * horasEvento
		
		escreva("O custo total para a contratação dos garçons será de R$", custoTotal, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */