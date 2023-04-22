/*
 * Desenvolva um algoritmo que receba o valor de uma diária no hotel e a
quantidade de dias de hospedagem. Valide as informações, ou seja,
impeça que o usuário informe dados inválidos, de maneira que o valor da
diária não seja negativo e que a quantidade de dias não seja negativa
nem maior que 30. Em caso de informação inválida escreva na tela “Valor
Inválido” e solicite novo valor. Ao final de tudo escreva “Fim do programa”.
 */

programa
{
	
	funcao inicio()
	{
	
		real valorDiaria
		inteiro numeroDeDias


		escreva("Digite o valor da diária:\n")
		leia(valorDiaria)

		enquanto (valorDiaria < 1) {
			escreva("Valor inválido.\n")

			escreva("Digite o valor da diária:\n")
			leia(valorDiaria)
		}


		escreva("Digite o numero de dias de hospedagem:\n")
		leia(numeroDeDias)

		enquanto (numeroDeDias < 1 ou numeroDeDias > 30) {
			escreva("Valor inválido.\n")

			escreva("Digite o numero de dias de hospedagem:\n")
			leia(numeroDeDias)
		}

		escreva("\nO valor da diária é R$ ", valorDiaria, ". \nE o número de dias de hospedagem é de ", numeroDeDias, " dias.\n")
		escreva("\nFim do programa.\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */