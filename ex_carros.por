programa 
{
	inteiro vetor[30], opcao = 100
	funcao inicio()
	{	zerar(vetor)
		enquanto (opcao != 4) { // código principal

			menu()
			
			se (opcao == 1) {
				entrada_veiculo()
				}
			se (opcao == 2) {
				esvaziar_vaga()
				}
			se (opcao == 3) {
				mostrar_vagas(vetor)
				}
			}
	}
	funcao menu() { // Função do menu interativo
			escreva("\n 1 --> Reservar vaga.")
			escreva("\n 2 --> Remover veículo.")
			escreva("\n 3 --> Listar vagas.")
			escreva("\n 4 --> Sair\n")
			leia(opcao)
			enquanto (opcao > 4 ou opcao <= 0) {
				escreva("\nOpção inválida!\n")
				escreva("Digite novamente:\n")
				leia(opcao)
				limpa()
				}
			
	}
			
	funcao zerar(inteiro v[]) {
		para (inteiro i=0; i < 30; i++) {
			vetor[i] = 0
			}
		}
	funcao mostrar_vagas(inteiro v[]) {
		para (inteiro i=0; i < 30; i++) {
			escreva(vetor[i], " ")
			se ((i + 1)%5 == 0) {
				escreva("\n")
				}
			}
		}
	funcao entrada_veiculo() {
		inteiro a
		escreva("Digite o número da vaga:\n")
		leia(a)
		enquanto (a - 1 < 0 ou a > 30) {
			escreva("Número inválido!\n")
			escreva("Digite novamente:\n")
			leia(a)
			}
		se (vetor[a - 1] == 1) {
			escreva("Vaga indisponível :(\n")
			escreva("Voltando ao menu.\n")
			}
		senao {
			vetor[a - 1] = 1
			escreva("\nVaga registrada!\n")
			}
		}
	funcao esvaziar_vaga() {
		inteiro a
		escreva("Digite o número da vaga")
		leia(a)
		enquanto (a - 1 < 0 ou a > 30) {
			escreva("Número inválido!\n")
			escreva("Digite novamente:\n")
			leia(a)
			}
		se (vetor[a - 1] == 0) {
			escreva("Vaga já está vazia!\n")
			escreva("Voltando ao menu.\n")
			}
		senao {
			vetor[a - 1] = 0
			escreva("\nVaga esvaziada!\n")
			}
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 122; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */