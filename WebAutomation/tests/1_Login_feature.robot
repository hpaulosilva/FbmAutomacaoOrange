*** Settings ***
Library    SeleniumLibrary
Test Setup    Start Test
Test Teardown    Finish Test

Resource    ../pages/commons/hooks.pages.commons.robot
Resource    ../pages/LoginPage.robot
Resource    ../pages/Cadastro.robot



*** Test Cases ***

Caso de teste 1 - Login com user em branco
    Dado que acesso a home do site https://opensource-demo.orangehrmlive.com/
    Quando digitar senha
    E clicar em logar 
    Então Vejo a mensagem de required

Caso de teste 2 - Login com pass em branco
    Dado que acesso a home do site https://opensource-demo.orangehrmlive.com/
    Quando digitar apenas o login
    E clicar em logar 
    Então Vejo a mensagem de required

Caso de teste 3 - Login com credeciais invalidas 
    Dado que acesso a home do site https://opensource-demo.orangehrmlive.com/
    Quando informar minha credeciais invalidadas 
    E clicar em logar 
    Então Vejo a mensagem de 'Invalid credentials'

Caso de teste 4 - Cadastro de Usuário Fulano
    Dado que estou na tela de addEmployee
    Quando preencho os campos com "Fulano", "Bigos", e "One"
    Então clico em salvar
    
Caso de teste 5 - Cadastro de Usuário Ciclano
    Dado que estou na tela de addEmployee
    Quando preencho os campos com "Ciclano", "Bigos", e "Two"
    Então clico em salvar


Caso de teste 6 - Cadastro de Usuário Beltrano
    Dado que estou na tela de addEmployee
    Quando preencho os campos com "Beltrano", "Bigos", e "Three"
    Então clico em salvar
    