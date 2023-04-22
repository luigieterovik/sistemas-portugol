/*
 * Escreva um algoritmo que receba o valor padrão de uma diária. Em
seguida, receba vários nomes de hóspedes e suas idades. Caso o
hóspede seja menor que 4 anos, ele não paga hospedagem – nesses
casos mostre na tela “(Nome do hóspede) possui gratuidade”; hóspedes
com mais de 80 anos pagam metade – mostre na tela “(Nome do
hóspede) paga meia”. O usuário informará hóspedes até digitar a palavra
“PARE”, que interrompe a entrada de dados. Ao fim, mostre a quantidade
de gratuidades, a quantidade de meias hospedagens e o valor total,
considerando todos os hóspedes informados.
 */

programa
{
	
	funcao inicio()
	{
		cadeia nomeHospede = "Inicializar variável"
		real valorPadraoDiaria, valorTotal = 0
		inteiro idadeHospede, gratuidades = 0, meias = 0


		escreva("\nDigite o valor padrão da diária:\n")
		leia(valorPadraoDiaria)

		enquanto (nomeHospede != "PARE") {
			escreva("\nDigite o nome do hóspede:\n")
			leia(nomeHospede)

			se (nomeHospede == "PARE") {
				pare
			}
			
			escreva("\nDigite a idade do hóspede:\n")
			leia(idadeHospede)

			se (idadeHospede >= 0 e idadeHospede <= 4) {
				escreva("\n", nomeHospede, " possui gratuidade.\n\n")

				gratuidades++
			}

			se (idadeHospede >= 5 e idadeHospede <= 79) {
				valorTotal += valorPadraoDiaria
			}

			se (idadeHospede >= 80 e idadeHospede <= 130) {
				escreva("\n", nomeHospede, " paga meia.\n\n")

				meias++
				valorTotal += valorPadraoDiaria / 2
			} 		
		}

		escreva("\n\nValor total das hospedagens: R$", valorTotal, "\nGratuidades: ", gratuidades, ". \nMeias:", meias, ". \n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 579; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */