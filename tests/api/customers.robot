***Settings***

Resource        ../../resources/services.robot

***Test Cases***
New Customer

    Create Session      zp-api      ${base_api_url}

    &{payload}=     Create Dictionary       name=Flea   cpf=777.777.777-77  address=Rua dos Bugs, 1000  phone_number=11977777777
    &{headers}=     Create Dictionary       content-type=application/json   authorization=Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1OTk3ODU0OTksImV4cCI6MTU5OTg3MTg5OSwic3ViIjoiN2I1ZjZiODYtNGQ0Zi00OTMxLWJhOTAtYzVhOTgzYmMwNjRhIn0.M4IlFZemeCwYH3yi_5CdCUhRiPts6w6QAREoQLONBJc

    Delete Request      zp-api      /customers/${payload['cpf']}    headers=${headers}

    ${resp}=        Post Request        zp-api      /customers      data=${payload}     headers=${headers}

    Status Should Be        200     ${resp}
