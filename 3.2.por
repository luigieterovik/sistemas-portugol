/*
 * Escreva um algoritmo que receba os nomes e sexos de 5 hóspedes.
Depois disso, mostre, separadamente, primeiro todos os nomes dos
hóspedes do sexo feminino e depois todos os nomes das hóspedes do
sexo masculino.
 */

programa
{
	
	funcao inicio()
	{
		cadeia feminino[5], masculino[5], nome[5]
		caracter sexo

		para(inteiro i = 0; i < 5; i++) {
			escreva("\nDigite o nome do hóspede: ")
			leia(nome[i])

			escreva("\nDigite o sexo do hóspede (M/F): ")
			leia(sexo)

			se(sexo == 'f' ou sexo == 'F') {
				feminino[i] = nome[i]
			}

			se(sexo == 'm' ou sexo == 'M') {
				masculino[i] = nome[i]
			}

		}

		para(inteiro i = 0; i < 5; i++) {
			se (feminino[i] != "") {
				escreva("\n", feminino[i])		
			}
		}

		para(inteiro i = 0; i < 5; i++) {
			se (masculino[i] != "") {
				escreva("\n", masculino[i])		
			}
		}

		escreva("\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 216; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */