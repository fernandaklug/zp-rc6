***Settings***
Documentation       Login
Resource        ../../resources/base.robot

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
    [Tags]      smoke
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pwd123
    Devo ver a área logada
