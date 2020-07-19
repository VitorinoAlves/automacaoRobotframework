***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinheiro amador
...                 Quero cadastrar neus melhores pratos
...                 Para que eu possa cozinha-los para outras pessoas

Resource        ../resources/base.robot

Test Setup      Login Session       carlos@gmail.com
Test Teardown   Close Session

***Variables***
&{nhoque}       nome=Nnhoque molho paprica      tipo=Massas     preco=20.00     img=nhoque.jpg

***Test Cases***
Novo prato
    Dado que "${nhoque}" e um dos meus pratos
    Quando faco o cadastro desse item
    Entao devo ver este prato no meu dashboard