*** Settings ***
Library        SeleniumLibrary
Library        OperatingSystem
Library    Process
Resource       ../varibles/variables.robot

*** Keywords ***
Abrir o navegador
    Open Browser        browser=firefox
    Delete All Cookies
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Delete All Cookies
    Close Browser    

#Caso de teste 01 - Acesso ao menu "Eletrônicos"
Dado que estou na home page da Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO}
    Title Should Be                  title=${TITULO_HOME_PAGE}
E limpo os dados de cookies
    Delete All Cookies

Quando acessar o menu "Eletrônicos"
    Wait Until Page Contains         text=Eletrônicos
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
    Click Element                    locator=${MENU_ELETRONICOS}

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Title Should Be    title=${TITULO_PAGE_ELETRONICOS}
    

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Wait Until Page Contains    text=Eletrônicos e Tecnologia

E a categoria "Computadores e Informática" deve ser exibida na página
    Wait Until Element Is Visible    locator=${HEADER_COMPUTADOR_INFORMATICA}
    
#Caso de teste 02 - Pesquisa de um produto
Dado que acesso a home page da Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO}

Quando realizo a pesquisa do produto "PlayStation 5"
    Wait Until Element Is Visible    locator=${SEARCH_BAR}
    Click Element    locator=${SEARCH_BAR}
    Input Text    locator=${SEARCH_BAR}    text=Playstation 5
    Click Button    locator=${BTN_SEARCH}

Então o título da página deve ficar "Amazon.com.br : PlayStation 5"
    Title Should Be    title=Amazon.com.br : Playstation 5
    

E um produto da linha "PlayStation" deve ser mostrado na página
    Wait Until Element Is Visible    locator=${HEADER_PLASTATION}


#Caso de teste 03 - Adicionar um produto no carrinho
Dado que estou na página inicial da Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO}

Quando busco pelo produto "Playstation 5"
    Wait Until Element Is Visible    locator=${SEARCH_BAR}
    Click Element    locator=${SEARCH_BAR}
    Input Text    locator=${SEARCH_BAR}    text=Playstation 5
    Click Button    locator=${BTN_SEARCH}

E seleciono o produto desejado
    Wait Until Element Is Visible    locator=${PRODUTO_PLAYSTATION}
    Click Element    locator=${PRODUTO_PLAYSTATION}

E verifico se o produto está disponível
    Title Should Be    title=Console PlayStation 5 | Amazon.com.br
    Wait Until Element Is Visible    locator=${BTN_COMPRAR}

E clico no botão "Adicionar ao carrinho"
    Wait Until Element Is Visible    locator=${BTN_CARRINHO}
    Click Button    locator=${BTN_CARRINHO}

Então o produto é adicionado ao carrinho com sucesso
    Title Should Be    title=Carrinho de compras da Amazon.com
    Wait Until Element Is Visible    locator=${BTN_COMPRAS}
    Wait Until Page Contains    text=Console PlayStation 5