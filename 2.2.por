/*
 * Monte um algoritmo em que se informa a quantidade de hóspedes e, para
cada hóspede, leia o número do quarto e o valor da diária. Mostre na tela
a mensagem “Quarto [numero]: R$ [valor]”. Ao final, mostre o total de
diárias. Não usar vetor ou listas.
 */

programa
{
	
	funcao inicio()
	{

		inteiro quantidadeHospedes, numeroDoQuarto
		real valorDiaria, totalDiarias = 0
		
		escreva("Digite o número de hospedes:\n")
		leia(quantidadeHospedes)
		
		para (real i = 0; i < quantidadeHospedes; i++) {
			escreva("\nDigite o número do quarto:\n")
			leia(numeroDoQuarto)

			escreva("\nDigite o valor da diária:\n")
			leia(valorDiaria)

			totalDiarias += valorDiaria
			
			escreva("\nQuarto ", numeroDoQuarto, ": R$ ", valorDiaria, "\n")
		}
		
		escreva("\n\nTotal de diárias: R$ ", totalDiarias, "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */