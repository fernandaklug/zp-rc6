***Settings***

Documentation       Elementos do menu lateral

***Variables***
${NAV_CUSTOMERS}     css:a[href$=customers]
${NAV_EQUIPOS}       css:a[href$=equipos]

***Keywords***
Go To Customers
    Wait Until Element Is Visible       ${NAV_CUSTOMERS}      5
    Click Element                       ${NAV_CUSTOMERS}
    