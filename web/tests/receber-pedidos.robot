***Settings***
Documentation   Suite dos testes de Receber pedidos
...             Sendo um cozinheiro que possui produtos no dashboard
...             Quero receber solicitação de preparo dos meus produtos
...             Para que eu possa envia-los aos meus clientes

Resource        ../resources/base.robot

Library     Collections
Library     RequestsLibrary

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Receber novo pedido
    Dado que "carlos@gmail.com" é minha conta de cosinheiro
    E "fernando@bol.com.br" é o email do meu cliente
    E que "Nhoque ao Sugo" está cadastrado no meu dashboard
    Quando o cliente solicita o preparo desse prato
    Entao devo receber uma notificação de pedido
    E posso aceitar ou rejeitar esse pedido

***Keywords***
Dado que "${email_cozinheiro}" é minha conta de cosinheiro
    Set Test Variable       ${email_cozinheiro}
    
    &{headers}=     Create Dictionary       Content-Type=application/json
    &{payload}=     Create Dictionary       email=${email_cozinheiro}

    Create Session    api               http://ninjachef-api-qaninja-io.umbler.net
    ${resp}=          Post Request      api         /sessions       data=${payload}         headers=${headers}            
    Status Should Be  200               ${resp}

    Log To Console      ${resp.json()['_id']}

E "${email_cliente}" é o email do meu cliente
    Set Test Variable       ${email_cliente}

E que "${produto}" está cadastrado no meu dashboard
    Set Test Variable       ${produto}