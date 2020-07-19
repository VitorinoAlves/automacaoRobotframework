***Settings***
Documentation       Aqui teremos todas as keywords do projeto de automacao dos comportamentos

***Keywords***
Dado que acesso a pgina principal
    Go To       ${base_url}

Quando submeto o email "${email}"
    Input Text      ${CAMPO_EMAIL}    ${email}
    Click Element   ${BOTAO_ENTRAR}

Entao deve ser autenticado
    Wait Until Page Contains Element    ${DIV_DASHBOARD}

Entao devo ver a mensagem "${expect_message}"
    Wait Until Element Contains     ${DIV_ALERT}     ${expect_message}

#Cadastro de pratos
Dado que "${produto}" e um dos meus pratos
    Set Test Variable       ${produto}

Quando faco o cadastro desse item
    Wait Until Element Is Visible               ${BOTAO_ADD}   5
    Click Element       ${BOTAO_ADD}
    Choose File         ${IMAGEM}               ${EXECDIR}/resources/images/${produto['img']}
    Input Text          ${CAMPO_NOME}           ${produto['nome']}
    Input Text          ${CAMPO_TIPO}           ${produto['tipo']}
    Input Text          ${CAMPO_PRECO}          ${produto['preco']}
    Click Element       ${BOTAO_SALVAR}

Entao devo ver este prato no meu dashboard
    Wait Until Element Contains         ${DIV_LIST_PROD}      ${produto['nome']}