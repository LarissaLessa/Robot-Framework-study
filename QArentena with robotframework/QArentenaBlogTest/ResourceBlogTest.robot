*** Settings ***
Library    SeleniumLibrary 

*** Variables ***
${URL}    http://robotizandotestes.blogspot.com/

${BROWSER}    Chrome

${BTN_PESQUISAR} css=button.search-expand.touch-icon-button

${INPUT_PESQUISAR} name=q

${SUBMIT_PESQUISAR} input.search-action.flat-button


*** keywords ***
Acessar a página do blog
    Open Browser    url=${URL}  browser=${BROWSER}
    Title Should Be     Robotizando Testes

Pesquisar por um post com "${TEXTO_PESQUISA}"
    Wait Until Element Is Visible locator=${BTN_PESQUISAR}
    Click Button    ${BTN_PESQUISAR}
    Input Text     ${INPUT_PESQUISAR}   ${TEXTO_PESQUISA}   
    Click Element ${SUBMIT_PESQUISAR}

Conferir mensagem de pesquisa por pesquisa "${MSG_DESEJADA}"
    Page Should Contain text=${MSG_DESEJADA}

Fechar Navegador
    Close Browser
    