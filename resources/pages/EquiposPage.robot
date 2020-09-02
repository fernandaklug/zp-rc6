***Settings***
Documentation       Elementos da página de cadastro de equipos

***Variables***
${EQUIPOS_FORM}       css:a[href$=register]
${LABEL_NAME}         css:label[for=equipo-name]
${LABEL_PRICE}        css:label[for=daily_price]

***Keywords***
Register new Equipo
    [Arguments] 	${name}		${price}
   
    Input Text	    id:equipo-name  	${name}
    Input Text	    id:daily_price		${price}
    
    Click Element   xpath://button[text()='CADASTRAR']