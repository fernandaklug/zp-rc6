***Settings***

Resource        ../../resources/services.robot

***Test Cases***
New Customer

    Create Session      zp-api      ${base_api_url}

    ${token}=       Get Session Token

    &{payload}=     Create Dictionary       name=Flea   cpf=777.777.777-77  address=Rua dos Bugs, 1000  phone_number=11977777777
    &{headers}=     Create Dictionary       content-type=application/json   authorization=${token}

    Delete Request      zp-api      /customers/${payload['cpf']}    headers=${headers}

    ${resp}=        Post Request        zp-api      /customers      data=${payload}     headers=${headers}

    Status Should Be        200     ${resp}

Name is required

    Create Session      zp-api      ${base_api_url}

    ${token}=       Get Session Token

    &{payload}=     Create Dictionary       cpf=777.777.777-77  address=Rua dos Bugs, 1000  phone_number=11977777777
    &{headers}=     Create Dictionary       content-type=application/json   authorization=${token}

    ${resp}=        Post Request        zp-api      /customers      data=${payload}     headers=${headers}

    Status Should Be        400     ${resp}
    Should Be Equal         ${resp.json()['message']}       "name" is required


Cpf is required

    Create Session      zp-api      ${base_api_url}

    ${token}=       Get Session Token

    &{payload}=     Create Dictionary       name=Fulado de Tal  address=Rua dos Bugs, 1000  phone_number=11977777777
    &{headers}=     Create Dictionary       content-type=application/json   authorization=${token}

    ${resp}=        Post Request        zp-api      /customers      data=${payload}     headers=${headers}

    Status Should Be        400     ${resp}
    Should Be Equal         ${resp.json()['message']}       "cpf" is required

Address is required

    Create Session      zp-api      ${base_api_url}

    ${token}=       Get Session Token

    &{payload}=     Create Dictionary       name=Fulado de Tal  cpf=777.777.777-77  phone_number=11977777777
    &{headers}=     Create Dictionary       content-type=application/json   authorization=${token}

    ${resp}=        Post Request        zp-api      /customers      data=${payload}     headers=${headers}

    Status Should Be        400     ${resp}
    Should Be Equal         ${resp.json()['message']}       "address" is required

Phone is required

    Create Session      zp-api      ${base_api_url}

    ${token}=       Get Session Token

    &{payload}=     Create Dictionary       name=Fulano de Tal  cpf=777.777.777-77  adress=Rua dos Bugs, 1000
    &{headers}=     Create Dictionary       content-type=application/json   authorization=${token}

    ${resp}=        Post Request        zp-api      /customers      data=${payload}     headers=${headers}

    Status Should Be        400     ${resp}
    Should Be Equal         ${resp.json()['message']}       "phone_number" is required
