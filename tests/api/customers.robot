***Settings***

Resource        ../../resources/services.robot

***Test Cases***
New Customer

    &{payload}=     Create Dictionary       name=Flea   cpf=777.777.777-77  address=Rua dos Bugs, 1000  phone_number=11977777777

    Delete Customer     ${payload['cpf']}
    ${resp}=            Post Customer  ${payload}
    
    Status Should Be        200     ${resp}

Name is required

    &{payload}=     Create Dictionary       cpf=777.777.777-77  address=Rua dos Bugs, 1000  phone_number=11977777777

    ${resp}=        Post Customer  ${payload}

    Status Should Be        400     ${resp}
    Should Be Equal         ${resp.json()['message']}       "name" is required


Cpf is required

    &{payload}=     Create Dictionary       name=Fulado de Tal  address=Rua dos Bugs, 1000  phone_number=11977777777

    ${resp}=        Post Customer  ${payload}

    Status Should Be        400     ${resp}
    Should Be Equal         ${resp.json()['message']}       "cpf" is required

Address is required

    &{payload}=     Create Dictionary       name=Fulado de Tal  cpf=777.777.777-77  phone_number=11977777777

    ${resp}=        Post Customer  ${payload}

    Status Should Be        400     ${resp}
    Should Be Equal         ${resp.json()['message']}       "address" is required

Phone is required

    &{payload}=     Create Dictionary       name=Fulano de Tal  cpf=777.777.777-77  adress=Rua dos Bugs, 1000

    ${resp}=        Post Customer  ${payload}

    Status Should Be        400     ${resp}
    Should Be Equal         ${resp.json()['message']}       "phone_number" is required

