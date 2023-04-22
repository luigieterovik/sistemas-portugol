/*
 * O hotel oferece café, água e salgadinhos para cada um dos convidados
de um evento alocado em suas dependências. A quantidade de café, em
litros, é calculada como 0,2 litro para cada convidado; a quantidade de
água é calculada como 0,5 litro para cada convidado; são oferecidos 7
salgadinhos por pessoa. Faça um algoritmo que receba a quantidade de
convidados e valide se o número de pessoas excede 350 (a capacidade
máxima do salão), mostrando, nesse caso, a mensagem “quantidade de
convidados superior à capacidade máxima”. Caso a quantidade seja
válida, calcule a quantidade de água, café e salgadinhos para o evento,
mostrando na tela esses valores.
 */

programa
{
	
	funcao inicio()
	{
		inteiro salgadinhosPorPessoa, pessoas, salgadinhosNecessario
		real cafePorPessoa, aguaPorPessoa, cafeNecessario, aguaNecessario
	
		cafePorPessoa = 0.2 
		aguaPorPessoa = 0.5 
		salgadinhosPorPessoa = 7

		escreva("Digite o número de convidados:\n")
		leia(pessoas)
		
		se (pessoas > 350) {
			escreva("Quantidade de convidados superior à capacidade máxima!\n")
		}

		senao {
			cafeNecessario = cafePorPessoa * pessoas 
			aguaNecessario = aguaPorPessoa * pessoas 
			salgadinhosNecessario = salgadinhosPorPessoa * pessoas

			escreva("A quantidade de café necessário para o evento é de ", cafeNecessario, " litros. \nA quantidade de água necessária para o evento é de ", aguaNecessario, " litros. \nA quantidade de salgadinhos necessários para o evento é de ", salgadinhosNecessario, "\n")
		}


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 658; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */