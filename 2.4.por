/*
 * Expanda o algoritmo anterior para que, ao final, mostre o nome e a idade
do hóspede mais velho e também o nome e a idade do mais jovem.
Também adapte para que, ao invés de encerrar com a palavra “PARE”,
pergunte ao usuário se ele deseja continuar a informar os dados (“S” ou
“N”) e, caso digite “N”, encerre a execução.
 */

programa
{
	
	funcao inicio()
	{
		caracter continuar = 's'
		cadeia nomeHospede = "", nomeMaior = "", nomeMenor = ""
		real valorPadraoDiaria, valorTotal = 0
		inteiro idadeHospede, gratuidades = 0, meias = 0, contador = 0, maiorIdade = 0, menorIdade = 0


		escreva("\nDigite o valor padrão da diária:\n")
		leia(valorPadraoDiaria)

		enquanto (continuar == 'S' ou continuar == 's') {
			escreva("\nDigite o nome do hóspede:\n")
			leia(nomeHospede)
			
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


				se (contador == 0) {
					maiorIdade = idadeHospede
					menorIdade = idadeHospede
					
					nomeMenor = nomeHospede
					nomeMaior = nomeHospede

					contador++
				}

				se (idadeHospede < menorIdade) {
					menorIdade = idadeHospede
					nomeMenor = nomeHospede
				} 

 				se (idadeHospede > maiorIdade){
					maiorIdade = idadeHospede
					nomeMaior = nomeHospede
				} 
				
			
			escreva ("\nDeseja continuar? (S/N)\n")
			leia(continuar)
			
			se (continuar == 'N' ou continuar == 'n') {
				pare
			}
			
		}

		escreva("\n\nValor total das hospedagens: R$", valorTotal, "\nGratuidades: ", gratuidades, ". \nMeias:", meias, ". \n\n")

		escreva("O hospede mais novo é ", nomeMenor, ", com ", menorIdade, " ano(s) de idade.\n")	
		escreva("O hospede mais velho é ", nomeMaior, ", com ", maiorIdade, " anos de idade.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 325; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */