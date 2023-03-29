programa
{
	cadeia nome[5]
	real altura[5]
	funcao inicio()
	{
		para(inteiro i=0; i < 5; i++) {
			escreva("Digite o nome da ", i + 1, "# pessoa:")
			leia(nome[i])
			escreva("Digite o altura da ", i + 1, "# pessoa:")
			leia(altura[i])
			se (altura[i] <= 0) {
				enquanto (altura[i] <= 0) {
					escreva("Por favor, digite uma altura válida:")
					leia(altura[i])
					}
				}
			}
		 para(inteiro i=0; i < 5; i++) {
		 	escreva("\nPessoa #", i + 1, "--> ", nome[i], ":", altura[i])
		 	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 420; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */