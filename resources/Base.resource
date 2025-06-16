*** Settings ***
Documentation    Tudo se inicia aqui.
Library    Browser

*** Variables ***
${URL}    https://front.serverest.dev/login

*** Keywords ***
Abrir navegador
    New Browser    headless=${False}
    New Context
    New Page    ${URL}

Fechar navegador
    Take Screenshot
    Close Browser