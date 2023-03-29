programa
{
	cadeia convidados[50], nome
	inteiro opcao = 100
	funcao inicio()
	{ // Código principal
		enquanto (opcao != 0) {
			menu()
			se (opcao == 1) {
				inserir_nome()
				}
			se (opcao == 2) {
				listar_convidados()
				}
			se (opcao == 3) {
				remover_nome()
				}
			se (opcao == 4) {
				pagamento()
				}
			se (opcao == 0) {
				pare
				}
			se (opcao > 4) {
				escreva("Opção inválida.")
				}
			se (opcao < 0) {
				escreva("Opção Inválida.")
				}
			}
	}
	funcao menu() { // Função que puxa o menu e gera o input opção 
		 escreva("MENU DE OPÇÕES\n\n")
        escreva("1- Inserir nome\n")
        escreva("2- Listar convidados\n")
        escreva("3- Remover nome\n")
        escreva("4- Pagamento\n")
        escreva("0- Sair\n\n")
        leia(opcao)
		}
	funcao inserir_nome() { // Função que insere um nome no Vetor
		cadeia c 
		escreva("\n", "Digite o nome:")
		para(inteiro i=0; i < 50; i++) {
			se (convidados[i] == "") {
				leia(convidados[i])
			
				}
			escreva("Deseja continuar? s/n")
			leia(c)
			se (c == "n") {
				pare
				}
			}
		}
	funcao listar_convidados() { // Função que lista os convidados presentes no vetor
		para(inteiro i=0; i < 50; i++) {
			se (convidados[i] != "") {
				escreva("\n", convidados[i], "\n")
				}
			}
		}
	funcao remover_nome() { // Função que remove um nome da lista
		escreva("\n", "Digite o nome que você quer remover:")
		leia(nome)
		para(inteiro i=0; i < 50; i++) {
			se (convidados[i] == nome) {
				convidados[i] = ""
				pare
				}
			}
		}
	funcao pagamento() { // Função que gera um total a se pagar por todos os convidados presentes na lista
		contador = 0
		para(inteiro i=0; i < 50; i++) {
			se (convidados[i] != "") {
				contador = contador + 1
				}
			}
		escreva("\n\n", "O total a pagar por convidados é: ", contador * 120, "\n")
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 60; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */