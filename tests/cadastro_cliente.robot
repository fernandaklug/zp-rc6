***Settings***

Documentation       Cadastro de Clientes

Resource        ../resources/base.robot

Test Setup      Login Session
Test Teardown   Finish Session

***Test Cases***
Novo Cliente
    Dado que acesso o formulário de cadastro de clientes
	Quando faço a inclusão desse cliente:
	... 	Bon Jovi		00000014141	    Rua dos bugs, 1000		11999999999
	Então devo ver a notificação:		Cliente cadastrado com sucesso!