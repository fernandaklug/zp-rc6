***Settings***
Documentation       Cadastro de equipamentos

Resource    ../resources/base.robot

Suite Setup          Login Session
Suite Teardown       Finish Session

***Test Cases***
Novo Equipamento
    Dado que acesso o formulário de cadastro de equipamentos
    E que eu tenho o seguinte equipamento:      Guitarra    100.00
    Quando faço a inclusão desse equipamento
    Então devo ver a notificação:   Equipo cadastrado com sucesso!

Nome Obrigatório
    [Template]      Validação de Campos
    ${EMPTY}        100.00     Nome do equipo é obrigatório

Valor Obrigatório
    [Template]      Validação de Campos
    Guitarra        ${EMPTY}     Diária do equipo é obrigatória

Equipamento Duplicado
    Dado que acesso o formulário de cadastro de equipamentos
    E que eu tenho o seguinte equipamento:  Violão      50.00
    Mas esse equipo já existe no sistema
    Quando faço a inclusão desse equipamento
    Então devo ver a notificação de erro:   Erro na criação de um equipo

***Keywords***
Validação de Campos
    [Arguments]     ${nome}     ${valor}    ${saida}

     Dado que acesso o formulário de cadastro de equipamentos
     E que eu tenho o seguinte equipamento:  ${nome}    ${valor}
     Quando faço a inclusão desse equipamento
     Então devo ver o texto:     ${saida}
