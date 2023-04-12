*** Settings ***
Library       SeleniumLibrary

*** Variable ***
${HOME_PAGE}       https://www.facebook.com/
${LOGIN_PAGE}      https://web.facebook.com/?sk=welcome

*** Test Cases ***
Pesquisar no Google
    Open Main Page Using Chrome Browser

*** Keywords ***
Open Main Page Using Chrome Browser
    Open Browser    ${HOME_PAGE}    Chrome
    Maximize Browser Window
    Close Browser