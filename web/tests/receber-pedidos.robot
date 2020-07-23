***Settings***
Documentation   Suite dos testes de Receber pedidos
...             Sendo um cozinheiro que possui produtos no dashboard
...             Quero receber solicitação de preparo dos meus produtos
...             Para que eu possa envia-los aos meus clientes

Resource        ../resources/base.robot

Library     Collections


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


