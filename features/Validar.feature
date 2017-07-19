#language: pt
#utf-8

Funcionalidade: Validar resultado

 	@validar
	Cenário: Validar
		Quando exibir o conteudo 'api/films'
		Então validar os dados do'api/films'


 	@contar
	Cenário: Obter o valor do count
		Quando obter um valor aleatorio 
		Então validar o status-code e a mensagem exibida


	@variavel
	Cenário: Validar lista de diretores
		Quando obter a lista de filmes
		Então validar quais filmes aparecem o George Lucas e Rick McCallum