*** Settings ***
Library    SeleniumLibrary
Test Setup    Start Test
Test Teardown    Finish Test

Resource    ../pages/commons/hooks.pages.commons.robot
Resource    ../pages/LoginPage.robot
Resource    ../pages/Cadastro.robot



*** Test Cases ***

Caso de teste 1 - Cadastro de Usuário Fulano
    Dado que estou na tela de addEmployee
    Quando preencho os campos com "Fulano", "Bigos", e "One"
    Então clico em salvar
    
Caso de teste 2 - Cadastro de Usuário Ciclano
    Dado que estou na tela de addEmployee
    Quando preencho os campos com "Ciclano", "Bigos", e "Two"
    Então clico em salvar


Caso de teste 3 - Cadastro de Usuário Beltrano
    Dado que estou na tela de addEmployee
    Quando preencho os campos com "Beltrano", "Bigos", e "Three"
    Então clico em salvar