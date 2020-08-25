***Settings***
Documentation       Elementos da página de cadastro de clientes

***Variables***
${CUSTUMERS_FORM}     css:a[href$=register]    
#xpath://a[text()='CADASTRAR']


***Keywords***
Register new Customer
    [Arguments] 	${name}		${cpf}		${address}	${phone_number}
   
    Input Text	    id:name		${name}
    Input Text	    id:cpf		${cpf}
    Input Text	    id:address	${address}
    Input Text	    id:phone_number		${phone_number}
    
    Click Element   xpath://button[text()='CADASTRAR']
