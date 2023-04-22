/*
 * Modifique o algoritmo anterior para que seja possível obter os diferentes
valores orçados e verificar o menor valor. Mostre ao final a mensagem “O
orçamento de menor valor é o de (nome da empresa) por R$ (menor
valor)”. 
 */

programa
{
	
	funcao inicio()
	{
	
	cadeia empresa, empresasRegistradas[1000], menorEmpresa = ""
	real valorServicoPorAparelho = 0.0, valorEmpresas[1000], menorValor = 0.0
	inteiro quantidadeAparelhos = 0, percentualDesconto = 0, quantidadeMinimaDesconto = 0, j = 0, k = j++
	caracter continuar = 's'

	enquanto (continuar == 's' ou continuar == 'S'){
		para(inteiro i = 0; continuar == 's' ou continuar == 'S'; i++) {
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
		
			real valorEmpresa = calculoValor(empresa, valorServicoPorAparelho, quantidadeAparelhos, percentualDesconto, quantidadeMinimaDesconto)
			valorEmpresas[i] = valorEmpresa
			menorValor = valorEmpresas[i]
			
			empresasRegistradas[i] = empresa
			menorEmpresa = empresasRegistradas[i]
			
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
		para (j = 0; empresasRegistradas[j] != ""; j++) {
			se (empresasRegistradas[j] == "") {
				pare
			}

			se(empresasRegistradas[k] == "") {
				se(valorEmpresas[j] < menorValor) {
					menorValor = valorEmpresas[j]
				}

				pare
			}

			se (valorEmpresas[j] < valorEmpresas[k]) {
				menorEmpresa = empresasRegistradas[j]
				menorValor = valorEmpresas[j]
			}
		}
		
		escreva("\n\nO orçamento de menor valor é o de ", menorEmpresa, " por R$ ", menorValor, ".\n\n")
	}
	
		funcao real calculoValor(cadeia &empresa, real &valorServicoPorAparelho, inteiro &quantidadeAparelhos, inteiro &percentualDesconto, inteiro &quantidadeMinimaDesconto) {
			se(quantidadeAparelhos < quantidadeMinimaDesconto) {
				percentualDesconto = 0
			}
		
			real valorServicoCalculado = valorServicoPorAparelho * quantidadeAparelhos
			real descontoCalculado = (valorServicoCalculado * percentualDesconto) /100
			real valorTotal = valorServicoCalculado - descontoCalculado

			escreva("\n\nO serviço da empresa ", empresa, " custará R$ ", valorTotal)

			retorne valorTotal
		}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 226; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {empresasRegistradas, 14, 17, 19}-{valorEmpresas, 15, 37, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */