*** Settings ***
Library    Browser
Resource    ../resources/Cadastro.resource
Resource    ../resources/Base.resource

*** Test Cases ***
Caso de teste 01: Deve realizar o cadastro com sucesso
    [Documentation]    CT01 - Deve realizar o cadastro com sucesso
    [Tags]    cadastro-com-sucesso    

    Abrir navegador
    Acessar tela de cadastro
    Preencher campos na tela de cadastro
    Clicar no botao cadastrar
    Take Screenshot

Caso de teste 02: Deve realizar o login com sucesso
    [Documentation]    CT02 -  Deve realizar o login com sucesso
    [Tags]    login-com-sucesso    
    
    Abrir navegador
    Preencher credenciais
    Clicar no botao entrar
    Clicar para sair
Caso de teste 03: Deve cadastrar um novo usuário
    [Documentation]    CT03 -  Deve cadastrar e listar um novo usuário
    [Tags]    cadastrar-novo-usuario  

    Abrir navegador
    Preencher credenciais
    Clicar no botao entrar
    Clicar no botao cadastrar novo usuario
    Preencher credenciais do novo usuario
    Clicar para sair
Caso de teste 04: Deve cadastrar um produto com sucesso
    [Documentation]    CT04 -  Deve cadastrar um produto com sucesso
    [Tags]    cadastrar-produto    
    
    Abrir navegador
    Preencher credenciais
    Clicar no botao entrar
    Clicar no botao cadastrar produto
    Preencher campos para cadastar produto
    Clicar no botao cadastrar produto com sucesso
    Clicar para sair
    Fechar navegador
