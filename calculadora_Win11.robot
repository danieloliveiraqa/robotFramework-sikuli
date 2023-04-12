*** Settings ***
Documentation     Sikuli Library Click In Example
Suite Setup       Run Keywords          Start Sikuli Process        AND     Iniciar imagens
Test Teardown     Stop Remote Server
Library           SikuliLibrary
Library           OperatingSystem
Library           Process

*** Variables ***
${BOTAO_WIN}          botao_win.png
${BARRA}              barra.png
${PESQUISAR}          pesquisar.png
${CALCULADORA}        calculadora.png

*** Test Cases ***
Abrir Calculadora
    CLicar no botao do windows
    clicar na barra de pesquisa
    digitar no campo
    clicar na calculadora


*** Keywords ***
Iniciar imagens
    SikuliLibrary.Add Image Path    ${CURDIR}${/}tests

CLicar no botao do windows
    SikuliLibrary.Click     ${BOTAO_WIN}

clicar na barra de pesquisa
    SikuliLibrary.Click    ${BARRA}

digitar no campo
    SikuliLibrary.Input Text        ${PESQUISAR}        calculadora

clicar na calculadora
    SikuliLibrary.Click   ${CALCULADORA}    #z