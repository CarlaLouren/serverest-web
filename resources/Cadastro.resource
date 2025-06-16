*** Settings ***
Documentation    Acoes tela de cadastro
Library    Browser
Library    AppiumLibrary
Library    String



*** Keywords ***
 Acessar tela de cadastro
    Sleep    3
    Click    css=a[type="button"]
    Sleep    5

Preencher campos na tela de cadastro
    Sleep    3
    Should Be String    Cadastro    
    Fill Text    css=input[name="nome"]    Carla Cristina 
    Fill Text    css=input[id="email"]    carla027@gmail.com
    Sleep    3
    Fill Text    css=input[id="password"]    123321
    Click    css=input[data-testid="checkbox"]
    Sleep    5

Clicar no botao cadastrar
    Sleep    3
    Click    css=button[type="submit"]
    Sleep    10


Preencher credenciais
    Fill Text    css=input[id="email"]    carla027@gmail.com
    Sleep    3
    Fill Text    css=input[id="password"]    123321
    Sleep    10
Clicar no botao entrar
    Click    css=button[data-testid="entrar"]

Clicar no botao cadastrar novo usuario
    Sleep    5
    Click    css=a[data-testid="cadastrarUsuarios"]

Preencher credenciais do novo usuario
    Sleep    5
    Fill Text    css=input[name="nome"]    Monica Luz
    Sleep    3
    Fill Text    css=input[id="email"]    Monica058@gmail.com
    Sleep    3
    Fill Text    css=input[id="password"]    123321
    Click    css=button[data-testid="cadastrarUsuario"]
    Sleep    3
    Click    text=Monica058@gmail.com
    Highlight Elements    text=Monica058@gmail.com

    
Clicar em listar
    Click    css=a[data-testid="listarUsuarios"]
    Sleep    3


Clicar para sair
    Sleep    4
    Click    css=button[data-testid="logout"]
   

Clicar no botao cadastrar produto
    Sleep    3
    Click    css=a[data-testid="cadastrarProdutos"]


Preencher campos para cadastar produto
    Sleep    5
    Fill Text    css=input[name="nome"]    MacBook S28
    Sleep    3
    Fill Text    css=input[name="price"]    2000.00
    Sleep    3
    Fill Text    css=textarea[data-testid="descricao"]    Superleve e com pouco mais de 1 cm de espessura, o MacBook Air se encaixa facilmente na correria da sua rotina e na sua mochila. O modelo com M4 é feito com mais de 50% de materiais reciclados e o alumínio da estrutura resistente também é reciclado.
    Sleep    2
    Fill Text    css=input[data-testid="quantity"]    2

Clicar no botao cadastrar produto com sucesso
    Sleep    3
    Click    css=button[type="submit"]
    Sleep    5
    Click    text= MacBook S28
    Highlight Elements    text= MacBook S28