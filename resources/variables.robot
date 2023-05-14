*** Variables ***
${URL}                     https://www.amazon.com.br/
${LOGO}                    //a[contains(@class,'nav-logo-link nav-progressive-attribute')]
${MENU_ELETRONICOS}        //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS_INFORMATICA}    //span[@dir='auto'][contains(.,'Computadores e Informática')]
${SEARCH_BAR}              //input[contains(@type,'text')]
${BTN_SEARCH}              //input[contains(@type,'submit')]
${HEADER_PLASTATION}       (//span[@class='a-size-base a-color-base'][contains(.,'PlayStation')])[5]
${TITULO_HOME_PAGE}                  Amazon.com.br | Tudo pra você, de A a Z.
${TITULO_PAGE_ELETRONICOS}           Eletrônicos e Tecnologia | Amazon.com.br
${HEADER_COMPUTADOR_INFORMATICA}     //span[@class='nav-a-content'][contains(.,'Computadores e Informática')]