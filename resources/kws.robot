***Settings***

Resource    components/Toaster.robot
Resource    components/Sidebar.robot
Resource    pages/LoginPage.robot
Resource    pages/CustomersPage.robot

***Keywords***
Acesso a página Login   
    Go To       ${base_url}
Submeto minhas credenciais
    [Arguments]     ${email}    ${password}

    Login With      ${email}    ${password}

Devo ver a área logada
    Wait Until Page Contains    Aluguéis     5         
    #Wait Until Element is Visible   //strong[text()='Sair']     5

Devo ver um toaster com a mensagem
    [Arguments]     ${expect_message}

    Wait Until Element Contains     ${TOASTER_ERROR}      ${expect_message}


#Cadastro de clientes

Dado que acesso o formulário de cadastro de clientes
	Wait Until Element is Visible   ${NAV_CUSTOMERS}     5
    Click Element	                ${NAV_CUSTOMERS}
    Wait Until Element is Visible   ${CUSTUMERS_FORM}    5
	Click Element	${CUSTUMERS_FORM}

Quando faço a inclusão desse cliente:
    [Arguments]      ${name}		${cpf}		${address}	${phone_number}

    #db.py
    Remove Customer By Cpf      ${cpf}

	Register New Customer       ${name}		${cpf}		${address}	${phone_number}
Então devo ver a notificação:
    [Arguments]	    ${expect_notice}
	Wait Until Element Contains	    ${TOASTER_SUCCESS}    ${expect_notice}

Então ver mensagens informando que os campos do cadastro de cliente são obrigatórios
    [Arguments]     ${expect_message}
    Wait Until Page Contains    ${expect_message}          5
