***Settings***
Documentation       Login_tentativa
Resource        ../resources/base.robot

# Test setup: executa uma ou mais keyword antes da execução de todos os steps de cada caso de teste
# Suite setup: executa uma ou mais keywords somente uma vez antes de todos os casos de testes
Suite Setup      Start Session

# test teardown: executa uma ou mais keywords após a execução de todos os steps de cada caso de teste
# suite teardown: executa uma ou mais keywords uma única vez após finalizar todos os casos de testes

Suite Teardown       Finish Session

Test Template       Tentativa de login

***Keywords***
Tentativa de login
    [Arguments]     ${input_email}      ${input_senha}      ${output_mensagem}

    Acesso a página Login
    Submeto minhas credenciais      ${input_email}      ${input_senha}
    Devo ver um toaster com a mensagem        ${output_mensagem}

***Test Cases***
Senha incorreta              admin@zepalheta.com.br      abc123     Ocorreu um erro ao fazer login, cheque as credenciais.
Senha em branco              admin@zepalheta.com.br      ${EMPTY}   O campo senha é obrigatório!
Email em branco              ${EMPTY}                    123456     O campo email é obrigatório!
Email e senha em branco      ${EMPTY}                    ${EMPTY}   Os campos email e senha não foram preenchidos!
