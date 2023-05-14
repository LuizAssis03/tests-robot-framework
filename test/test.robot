
*** Settings ***
Documentation          Essa suite testa o site da Amazon.com.br
Resource               ../resources/test_resources.robot
Suite Setup            Abrir o navegador
Suite Teardown         Fechar o navegador

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu Eletrônicos do site da Amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    
    [Tags]             menus
    
    Dado que estou na home page da Amazon.com.br
    E limpo os dados de cookies
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página


Caso de teste 02 - Pesquisa de um produto
    [Documentation]    Esse teste verifica a busca de um produto

    [Tags]             busca_produtos

    Dado que acesso a home page da Amazon.com.br
    Quando realizo a pesquisa do produto "PlayStation 5"
    Então o título da página deve ficar "Amazon.com.br : PlayStation 5"
    E um produto da linha "PlayStation" deve ser mostrado na página

Caso de teste 03 - Adicionar um produto no carrinho
    [Documentation]    Esse teste verifica a adição de itens do carrinho

    [Tags]             carrinho

    Dado que estou na página inicial da Amazon.com.br
    Quando busco pelo produto "Playstation 5"
    E seleciono o produto desejado
    E verifico se o produto está disponível
    E clico no botão "Adicionar ao carrinho"
    Então o produto é adicionado ao carrinho com sucesso

