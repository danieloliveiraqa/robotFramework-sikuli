*** Settings ***
Documentation    Teste de busca no Google
Library          SeleniumLibrary

*** Variables ***
${BROWSER}       Chrome
${URL}           https://www.google.com/

*** Test Cases ***
Pesquisar no Google
    Abrir o navegador
    Fazer uma pesquisa

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}

Fazer uma pesquisa
    [Arguments]    ${texto} = robot framework
    Input Text    name=q    ${texto}
    Press Keys    name=q    RETURN
    Wait Until Page Contains Element    css=.g
