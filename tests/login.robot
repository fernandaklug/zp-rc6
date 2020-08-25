***Settings***
Documentation       Login
Resource        ../resources/base.robot

# Comportamento (Dado, Quando, Então)
# BDD só é BDD se o desenvolvedor ler a especificação e desenvolver orientado a ela
# ATDD (Desenvolvimento guiado por teste de aceitação)
# ATDD só é ATDD se o desenvolvedor ler a especificação e desenvolver orientado a ela

# executa uma ou maus keyword antes da execução de todos os steps de cada caso de teste
Test Setup      Start Session

# executa uma ou mais keywords após a execução de todos os steps de cada caso de teste
Test Teardown       Finish Session

***Test Cases***
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais      admin@zepalheta.com.br      pwd123
    Devo ver a área logada

# # Senha incorreta
# #     [tags]      inv_login
# #     #Tags servem para executar o cenário específico
# #     #robot -i inv_pass tests\
# #     Acesso a página Login
# #     Submeto minhas credenciais      admin@zepalheta.com.br      abc123
# #     Devo ver um toaster com a mensagem      Ocorreu um erro ao fazer login, cheque as credenciais.

# Senha em branco
#     [tags]      inv_login
#     Acesso a página Login
#     Submeto minhas credenciais      admin@zepalheta.com.br      ${EMPTY}
#     Devo ver um toaster com a mensagem      O campo senha é obrigatório!

# Email em branco
#     [tags]      inv_login
#     Acesso a página Login
#     Submeto minhas credenciais      ${EMPTY}        123456
#     Devo ver um toaster com a mensagem      O campo email é obrigatório!

# Email e senha em branco
#     [tags]      inv_login
#     Acesso a página Login
#     Submeto minhas credenciais      ${EMPTY}        ${EMPTY}
#     Devo ver um toaster com a mensagem      Os campos email e senha não foram preenchidos!