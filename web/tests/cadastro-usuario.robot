***Settings***
Documentation   Suite dos testes de cadastro

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Cadastro simples
    Dado que acesso a pgina principal
    Quando submeto o email "carlos@gmail.com"
    Entao deve ser autenticado

Email incorreto
    Dado que acesso a pgina principal
    Quando submeto o email "joao&yahoo.com"
    Entao devo ver a mensagem "Oops. Informe um email válido!"

Email nao informado
    Dado que acesso a pgina principal
    Quando submeto o email "${EMPTY}"
    Entao devo ver a mensagem "Oops. Informe um email válido!"