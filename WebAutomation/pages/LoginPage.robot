*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
Library      SeleniumLibrary
Resource     ../config/config.robot
Resource    ../tests/1_Login_feature.robot
Resource    ../tests/2_Cadastro_feature.robot
Resource    ../tests/3_Consulta_feature.robot
Resource    ../tests/4_CenarioCompleno_feature.robot
Resource    ../pages/LoginPage.robot

*** Variables ***

${UserName}        //input[contains(@name,'username')]
${PassWord}        //input[contains(@type,'password')]

*** Keywords ***

Dado que acesso a home do site https://opensource-demo.orangehrmlive.com/
    Go To    url=${BASE_URL}
Quando digitar User incorreto
    Input Text    locator=//input[contains(@name,'username')]    text=Paulo
Quando digitar senha
    Input Password    locator=//input[contains(@type,'password')]    password=admin123
E clicar em logar 
    Click Button    locator=//button[@type='submit'][contains(.,'Login')]

Então Vejo a mensagem de required 
    Page Should Contain    Required
Quando digitar apenas o login
    Input Text    locator=//input[contains(@name,'username')]    text=Admin

Quando informar minha credeciais invalidadas
    Quando digitar User incorreto
    Quando digitar senha
    
Então Vejo a mensagem de '${Mensagem_cred_invalida}'
    Wait Until Element Is Visible    locator=//p[contains(.,'Invalid credentials')]

Informar credeciais validas
    Input Text    locator=//input[contains(@name,'username')]    text=Admin
    Input Password    locator=//input[contains(@type,'password')]    password=admin123
    Click Button    locator=//button[@type='submit'][contains(.,'Login')]