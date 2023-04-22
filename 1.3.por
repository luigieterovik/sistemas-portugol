/*
 * Ainda relativo ao atendimento de eventos, o hotel necessita de uma
funcionalidade que indique qual de seus dois auditórios é o mais
adequado para um evento. O auditório Alfa conta com 150 lugares e
espaço para até 70 cadeiras adicionais. O auditório Beta conta com 350
lugares, sem espaço para mais cadeiras. Desenvolva um algoritmo que
receba o número de convidados do evento e faça uma verificação sobre
a quantidade: se for maior que 350 ou se for menor que zero, mostre a
mensagem “Número de convidados inválido”. Se o valor informado é
válido, mostre na tela qual dos auditórios é o mais adequado. No caso do
auditório Alfa, calcule ainda quantas cadeiras adicionais serão
necessárias, observando o limite citado acima.
 */

programa
{
	
	funcao inicio()
	{
		inteiro quantidadeConvidados, cadeirasAdicionaisTotal, cadeirasAdicionaisNecessario 

		cadeirasAdicionaisTotal = 70

		escreva ("Digite quantos convidados estarão na festa:\n")
		leia (quantidadeConvidados)


		se (quantidadeConvidados < 1 ou quantidadeConvidados > 350) {
			escreva ("Número de convidados inválido.\n")
		}

		se (quantidadeConvidados > 0 e quantidadeConvidados <= 150) {
			
			escreva ("O auditório Alfa é o mais apropriado para ", quantidadeConvidados, " convidados. Não será necessário cadeiras adicionais.\n")
		}

		se (quantidadeConvidados > 150 e quantidadeConvidados <= 220) {
			
			cadeirasAdicionaisNecessario = quantidadeConvidados - 150
		
			escreva ("O auditório Alfa é o mais apropriado para ", quantidadeConvidados, " convidados. Contudo, será necessário utilizar ", cadeirasAdicionaisNecessario," cadeiras adicionais.\n")
		}

		se (quantidadeConvidados > 220 e quantidadeConvidados <= 350) {

			escreva ("O auditório Beta é o mais apropriado para ", quantidadeConvidados, " convidados.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 730; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */