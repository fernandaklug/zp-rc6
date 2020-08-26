***Settings***
Documentation       cadastro_cliente_obrigatorio
Resource        ../resources/base.robot

Suite Setup         Login Session
Suite Teardown      Finish Session

Test Template       Campos Obrigatorios

***Keywords***
Campos Obrigatorios
    [Arguments]   	${name}		${cpf}		${address}	${phone_number}     ${expect_message}
    
    Dado que acesso o formulário de cadastro de clientes
	Quando faço a inclusão desse cliente:
	... 	${name}		${cpf}		${address}	${phone_number}
	Então ver mensagens informando que os campos do cadastro de cliente são obrigatórios        ${expect_message}  

***Test Cases***  
Nome é obrigatório          ${EMPTY}    00000014141		Rua dos bugs, 1000	    11999999999     Nome é obrigatório  
CPF é obrigatório           Bon Jovi	${EMPTY}  	    Rua dos bugs, 1000	    11999999999     CPF é obrigatório
Endereço é obrigatório      Bon Jovi	00000014141		${EMPTY}  	            11999999999     Endereço é obrigatório 
Telefone é obrigatório      Bon Jovi	00000014141		Rua dos bugs, 1000	    ${EMPTY}        Telefone é obrigatório 
