*** Settings ***
Library    SeleniumLibrary
Test Setup    Start Test
Test Teardown    Finish Test

Resource    ../pages/commons/hooks.pages.commons.robot
Resource    ../pages/LoginPage.robot
Resource    ../pages/Cadastro.robot
Resource    ../pages/Consulta.robot



*** Test Cases ***

Caso de teste 1 - Cadastrar consultar e excluir usuario
    Dado que estou na tela de addEmployee
    Quando preencho os campos com "Fulano", "Bigos", e "One"
    Então clico em salvar
    E consulto o "Fulano" na tela de consultar
    Então faço a exclusão do "Fulano" na tela de excluir

Caso de teste 2 - Cadastrar consultar e editar usuario
    Dado que estou na tela de addEmployee
    Quando preencho os campos com "Beltrano", "Bigos", e "One"
    Então clico em salvar
    E consulto o "Beltrano" na tela de consultar
    Então faço a edição do "Beltrano" na tela de excluir
