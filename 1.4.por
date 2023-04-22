/*
 * Ainda em relação aos eventos, o hotel oferece reserva de seu restaurante
caso o contratante necessite. O restaurante está disponível para reservas
de segunda a sexta das 7hs às 23hs; sábados e domingos apenas das
7hs às 15hs. Monte um algoritmo que receba o dia da semana (em texto)
(observação: na entrada de dados para dia da semana, desconsidere
acentos e use letra minúscula. Não é necessário validação para isso no
código). Também receba a hora (número inteiro) e diga se o restaurante
está indisponível ou disponível. Quando disponível, receba ainda o nome
da empresa e mostre na tela a mensagem “Restaurante reservado para
(nome da empresa): (dia da semana) às (horas)hs”
 */

programa
{
	
	funcao inicio()
	{
		inteiro hora
		cadeia diaRecebido, empresa

		escreva("Que dia da semana gostaria de reservar nosso serviço de restaurante?\n")
		leia (diaRecebido)

		escreva("Que horário?\n")
		leia (hora)

		escreva("Qual o nome de sua empresa?\n")
		leia (empresa)

		se (diaRecebido == "sabado" ou diaRecebido == "domingo") {
			se (hora >= 7 e hora <= 15) {
				escreva ("Restaurante reservado para ", empresa, ": ", diaRecebido, ", às ", hora, " horas.\n")
			}
			
			senao escreva("Horário indisponível.\n")
		}		

		senao {
			se (hora >= 7 e hora <= 23) {
				escreva ("Restaurante reservado para ", empresa, ": ", diaRecebido, ", às ", hora, " horas.\n")
			}
			
			senao escreva("Horário indisponível.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 684; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */