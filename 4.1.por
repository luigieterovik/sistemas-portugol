/*
 * A manutenção dos ares condicionados no hotel são realizadas por
empresas terceirizadas que, em alguns casos, oferecem desconto
quando o serviço é realizado em uma quantidade determinada de
aparelhos. A partir desse contexto:
a. Crie uma função ou procedimento que receba o nome da empresa,
o valor do serviço por aparelho, a quantidade de aparelhos em
manutenção, o percentual de desconto (que pode ser zero) e a
quantidade mínima de aparelhos para que o desconto seja dado.
b. Calcule nessa função/procedimento o valor total do serviço a partir
do valor por aparelho e da quantidade de aparelhos. Aplique sobre
esse valor o desconto, caso a quantidade de aparelhos seja maior
que a mínima informada para que haja desconto. Ao fim mostre a
mensagem “O serviço de [nome da empresa] custará R$ [total
calculado]”.
c. Concluída a função ou procedimento, monte um algoritmo que
permita que o usuário informe várias empresas e os outros dados
necessários para o cálculo, usando a função/procedimento para
mostrar o total orçado de cada empresa. Termine o algoritmo
quando o usuário responder ‘N’ à mensagem “Deseja informar
novos dados? (S/N)”.
 */

programa
{
	
	funcao inicio()
	{
	
	cadeia empresa, empresasRegistradas[][]
	real valorServicoPorAparelho = 0.0
	inteiro quantidadeAparelhos = 0, percentualDesconto = 0, quantidadeMinimaDesconto = 0
	caracter continuar = 's'

	enquanto (continuar == 's' ou continuar == 'S'){
			escreva("\nNome da empresa: ")
			leia(empresa)

			escreva("\nValor do serviço por aparelho: ")
			leia(valorServicoPorAparelho)

			escreva("\nQuantidade de aparelhos para manutenção: ")
			leia(quantidadeAparelhos)

			escreva("\nPercentual de desconto: ")
			leia(percentualDesconto)

			escreva("\nQuantidade mínima de aparelhos para desconto: ")
			leia(quantidadeMinimaDesconto)
		
			calculoValor(empresa, valorServicoPorAparelho, quantidadeAparelhos, percentualDesconto, quantidadeMinimaDesconto)
			
			escreva("\n\nDeseja informar novos dados? (S/N): ") 
			leia(continuar)

			se (continuar == 'n' ou continuar == 'N') {
				pare
			}

			enquanto (continuar != 'n' e continuar != 'N' e continuar != 's' e continuar != 'S') {
				escreva("\nValor inválido! Digite S para continuar ou N para parar.\n")
		
				escreva("\nDeseja informar novos dados? (S/N): ") 
				leia(continuar)
			}
	}
	
	
	}
		funcao calculoValor(cadeia &empresa, real &valorServicoPorAparelho, inteiro &quantidadeAparelhos, inteiro &percentualDesconto, inteiro &quantidadeMinimaDesconto) {
			se(quantidadeAparelhos < quantidadeMinimaDesconto) {
				percentualDesconto = 0
			}
		
			real valorServicoCalculado = valorServicoPorAparelho * quantidadeAparelhos
			real descontoCalculado = (valorServicoCalculado * percentualDesconto) /100
			real valorTotal = valorServicoCalculado - descontoCalculado

			escreva("\n\nO serviço da empresa ", empresa, " custará R$ ", valorTotal)
		}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1145; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */