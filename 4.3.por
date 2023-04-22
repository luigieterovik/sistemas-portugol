/*
 * Retome o Algoritmo 3 da Atividade 3. Aplique no código a biblioteca
“Texto” de Portugol para permitir que o usuário pesquise por parte do
nome do hóspede, ao invés do nome exato. Veja abaixo um exemplo de
como usar a função “posicao_texto()” da biblioteca.
 */

programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		cadeia nomeHospede, menu[3][16]
		inteiro opcaoEscolhida = 0
		caracter sair = 'n'

		menu[0][0] = "1 - Cadastrar\n"
		menu[1][0] = "2 - Pesquisar\n"
		menu[2][0] = "3 - Sair\n"

		
		enquanto (sair != 's' ou sair != 'S') {
			escreva("\n", menu[0][0], menu[1][0], menu[2][0], "\nEscolha uma opção digitando seu número: ")
			leia(opcaoEscolhida)

			se(opcaoEscolhida == 1) {
				escreva("\n\nDigite o nome do hóspede para registrá-lo: ")
				leia(nomeHospede)

				para(inteiro i = 0; i < 16; i++) {	
					se(menu[1][i] == "") {
						menu[1][i] = nomeHospede
						pare
					}

					se(menu[1][15] != "") {
						escreva("\n\nMáximo de cadastros atingidos.\n\n")
						pare
					}
				}
				
			} // Registrar hóspedes

			se(opcaoEscolhida == 2) {
				escreva("\nDigite o nome do hóspede para pesquisá-lo: ")
				leia(nomeHospede)

				inteiro posicaoHospede = -1
				logico encontrado = falso
				
				para(inteiro i = 1; i < 16; i++) {	
					inteiro j = i + 1

					posicaoHospede = txt.posicao_texto (nomeHospede, menu[1][i], 0)


					se (posicaoHospede != -1) {
						encontrado = verdadeiro
						inteiro indiceHospede = i
						escreva("\nNome do hóspede encontrado no índice ", indiceHospede, ", na posição ", posicaoHospede, ".\n")
					}


						
					se (i == 15 ou menu[1][j] == "") {
						se(encontrado == verdadeiro) {
							posicaoHospede = 0
						}
						
					pare
					}
				}	

				se (posicaoHospede == -1) {
						escreva("\nHóspede não encontrado(a). Verifique o nome enviado ou se o hóspede foi registrado e tente novamente.\n")
				}
			} // Pesquisar hóspedes

			
			se(opcaoEscolhida == 3) {
				escreva("\nDeseja sair? (S/N): ")
				leia(sair)

				se(sair == 's' ou sair == 'S') {
					escreva("\n\nPrograma encerrado.\n\n")
					pare
				}

				senao {
					
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
 * @POSICAO-CURSOR = 262; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {menu, 14, 22, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */