/*
 * Monte um algoritmo em que o usuário poderá cadastrar e pesquisar
hóspedes. O algoritmo deve oferecer um menu com três opções ao
usuário: 1- cadastrar; 2- pesquisar; 3- sair. A opção “cadastrar” deve
permitir que o usuário informe um nome de hóspede, gravando-o em
memória (máximo de 15 cadastros; caso atinja essa quantidade, mostre
“Máximo de cadastros atingido”). A opção “pesquisar” deve permitir que o
usuário informe um nome e, caso seja encontrado um nome exatamente
igual, mostre a mensagem “Hospede (nome) foi encontrado no índice
(índice onde foi cadastrado)”. Se o nome não foi encontrado mostre
“Hóspede não encontrado”. O algoritmo deve permitir que o usuário
realize essas operações repetidas vezes, até que use a opção “3”, que
encerra o algoritmo.
 */

programa
{
	
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
				escreva("\nDigite o nome do hóspede para registrá-lo: ")
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

				para(inteiro i = 0; i < 16; i++) {
					se(menu[1][i] == nomeHospede) {
						escreva("\nHóspede ", nomeHospede, " encontrado(a) no índice ", i, ".\n")
						pare
					}

					se(menu[1][15] != nomeHospede e i == 15) {
						escreva("\nHóspede não encontrado(a). Verifique o nome enviado ou se o hóspede foi registrado e tente novamente.\n")
					}
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
			} // Sair do programa
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 768; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {menu, 21, 22, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */