*** Settings ***
Library    SeleniumLibrary
Test Setup    Start Test
Test Teardown    Finish Test

Resource    ../pages/commons/hooks.pages.commons.robot
Resource    ../pages/LoginPage.robot
Resource    ../pages/Cadastro.robot
Resource    ../pages/Consulta.robot




*** Test Cases ***

Caso de teste 1 - Consulta de Usuário Fulano
    Dado que estou na tela de Employee List
    Quando buscar por "Fulano"
    Então clico Search
    
Caso de teste 2 - Cadastro de Usuário Ciclano
    Dado que estou na tela de Employee List
    Quando buscar por "Ciclano Bigos Two"
    Então clico Search


Caso de teste 3 - Cadastro de Usuário Beltrano
   Dado que estou na tela de Employee List
    Quando buscar por "Beltrano Bigos Three"
    Então clico Search