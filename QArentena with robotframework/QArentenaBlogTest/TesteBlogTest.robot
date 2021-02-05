*** Settings ***
Resource    ResourceBlogTest.robot

*** Test Cases ***
Caso de Teste 01: Pesquisar um post
    Acessar a página do blog
    Pesquisar por um post com "Season Premiere: Introdução ao Robot Framework"
    Conferir mensagem de pesquisa por pesquisa "Mostrando postagens que correspodem a pesquisa por Season Premiere: Introdução ao Robot Framework"
    Fechar Navegador