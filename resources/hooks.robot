
***Keywords***
Start Session
    Open Browser    about:blank      chrome
    Maximize Browser Window

Finish Session
    Close Browser

Login Session

    Start Session

    Go to           ${base_url}
    Login With      ${admin_user}     ${admin_pass} 

    # Input Text          id:txtEmail                        admin@zepalheta.com.br
    # Input Text          css:input[placeholder=Senha]        pwd123
    # Click Element       xpath://button[text()='Entrar']
