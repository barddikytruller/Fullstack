programa
{
	inteiro matriz[10][12], opcao = 100

	funcao inicio()
	{	zerar()
		enquanto (opcao != 3) {
			menu()
			se (opcao == 1) {
				reservar_acento()
				}
			se (opcao == 2) {
				acentos()
				}
			
			}
	}
	funcao zerar() { // Função que atribui valor zero a todos os acentos
		 // linha
		para (inteiro i=0; i < 10; i++) {
			// coluna
			para (inteiro j=0; j < 12; j++) {
				matriz[i][j] = 0
				}
			}
		}
		funcao acentos() { // Função que lista os acentos
			 // linha
		para (inteiro i=0; i < 10; i++) {
			// coluna
			para (inteiro j=0; j < 12; j++) {
				escreva(matriz[i][j], " ")
				se (j == 11) {
					escreva("\n")
					}
				}
			}
		}
		funcao menu() { // Função do menu interativo
			escreva("\n 1 --> Reservar acento.")
			escreva("\n 2 --> Listar acentos.")
			escreva("\n 3 --> Sair.", "\n")
			leia(opcao)
			se (opcao > 3 ou opcao < 0) {
				escreva("\n\nOpção inválida!")
				escreva("\nPor favor, tente novamente.", "\n")
				leia(opcao)
				}
			limpa()
		}
		funcao reservar_acento(){ // Função que reserva o acento desejado
			inteiro f
			inteiro a
			escreva("Digite a fileira do acento:")
			leia(f)
			enquanto (f > 9 ou f < 0) {
				escreva("\nNúmero de fileira inválido!")
				escreva("\nPor favor, digite novamente.", "\n")
				leia(f)
				}
			escreva("Digite o número do acento:")
			leia(a)
			enquanto (a > 11 ou a < 0) {
				escreva("\nNúmero de acento inválido!")
				escreva("\nPor favor, digite novamente.", "\n")
				leia(a)
				}
			se (matriz[f][a] == 1) {
				escreva("\nAcento ocupado :(")
				escreva("\nVoltando ao menu!", "\n")
				}
			senao {
				matriz[f][a] = 1
				escreva("\nAcento reservado!")
				escreva("\nVoltando ao menu!", "\n")
			}
		}
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1477; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */