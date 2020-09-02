***Settings***
Library     SeleniumLibrary

Library     libs/db.py

Resource    kws.robot
Resource    hooks.robot

Resource    components/Toaster.robot
Resource    components/Sidebar.robot
Resource    pages/LoginPage.robot
Resource    pages/CustomersPage.robot
Resource    pages/EquiposPage.robot

***Variables***
#simples
# ${nome}       Fernanda

#Lista
# @{carros} civic   lancer

#Dicionário
# &{cliente}    nome=bom jovi   cpf=00000001406

${base_url}     http://zepalheta-web:3000/
${admin_user}   admin@zepalheta.com.br
${admin_pass}   pwd123