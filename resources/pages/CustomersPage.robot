***Settings***
Documentation       Elementos da página de cadastro de clientes

***Variables***
${CUSTUMERS_FORM}       css:a[href$=register]
${LABEL_NAME}           css:label[for=name]
${LABEL_CPF}            css:label[for=cpf]
${LABEL_ADDRESS}        css:label[for=address]
${LABEL_PHONE}          css:label[for=phone_number]

***Keywords***
Register new Customer
    [Arguments] 	${name}		${cpf}		${address}	${phone_number}
   
    Input Text	    id:name		${name}
    Input Text	    id:cpf		${cpf}
    Input Text	    id:address	${address}
    Input Text	    id:phone_number		${phone_number}
    
    Click Element   xpath://button[text()='CADASTRAR']
