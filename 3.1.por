/*
 * Considerando que o hotel tenha 20 quartos, desenvolva um algoritmo
para marcar a ocupação de cada quarto. No início todos os quartos estão
livres. O usuário informará então o número do quarto (de 1 a 20); o
sistema questionará “O quarto está livre ou ocupado? (L/O)”; o usuário
informará L ou O e o sistema registrará essa escolha para o quarto. Caso
o usuário informe “O”, mas o quarto já está marcado como ocupado,
mostre na tela “Quarto já está ocupado”. Pergunte ao usuário se ele
deseja continuar e caso positivo, repita a operação. Ao fim, mostre o
status de cada quarto.
 */

programa
{
	
	funcao inicio()
	{
		cadeia quarto[21]
		inteiro numeroQuartoRecebido
		caracter livreOcupado, continuarParar = 's'


		para (inteiro i = 1; i < 21; i++) {
			quarto[i] = "livre"
		}

		enquanto (continuarParar == 'S' ou continuarParar == 's') {
			escreva("\nDigite o número do quarto (1-20): ")
			leia(numeroQuartoRecebido)

			se (numeroQuartoRecebido > 20 ou numeroQuartoRecebido < 1) {
				escreva("\nValor inválido! \nDigite um número de 1 a 20: ")
				leia(numeroQuartoRecebido)
			}


			escreva("\nO quarto está livre ou ocupado? (L/O) ")
			leia(livreOcupado)
	
			se (livreOcupado == 'O' ou livreOcupado == 'o') {
				se (quarto[numeroQuartoRecebido] == "ocupado") {
					escreva("\nO quarto já está ocupado.\n")
				}

				senao {
					quarto[numeroQuartoRecebido] = "ocupado"
				}	
			} 
		
			se (livreOcupado == 'L' ou livreOcupado == 'l') {
				quarto[numeroQuartoRecebido] = "livre"
			}

			se (livreOcupado != 'l' e livreOcupado != 'L' e livreOcupado != 'o' e livreOcupado != 'O') {
				escreva("\nInválido!\nDigite O para marcar o quarto como ocupado ou L para livre.\n")		
			}

			escreva("\nDeseja continuar? (S/N) ")
			leia(continuarParar)

			se (continuarParar == 'n' ou continuarParar == 'N') {
				para (inteiro i = 1; i < 21; i++) {
					escreva("\n", i, " - ", quarto[i])
				}
			}			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 583; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */