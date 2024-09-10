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

${UserName}                //input[contains(@name,'username')]
${PassWord}                //input[contains(@type,'password')]
${SUCCESS_MESSAGE}        Cadastro realizado com sucesso
${NAME_FILD}              (//input[@placeholder='Type for hints...'])[1]
${SAVE_BUTTON}            //button[@type='submit']
${INPUT_NAME}             (//input[contains(@placeholder,'Type for hints...')])[1]
${SEARCH_BUTTON}           //button[contains(.,'Search')]
${CHECK_BOX}               (//i[@class='oxd-icon bi-check oxd-checkbox-input-icon'])[1]
${LIXEIRA}                //i[@class='oxd-icon bi-trash']
${COMFIRMAR_EXCLUIR}      //button[@type='button'][contains(.,'Yes, Delete')]
${BUTTON_EDITAR}          //i[@class='oxd-icon bi-pencil-fill']
${FIRST_NAME}              //input[@name='firstName']

*** Keywords ***
Dado que estou na tela de Employee List
    Informar credeciais validas
    Sleep    2s
    Click Element    locator=//a[contains(.,'PIM')]
    Click Element    locator=//a[contains(.,'Employee List')]
    Sleep    2s
Quando buscar por "${name}"
    Input Text    ${NAME_FILD}    ${name}
Então clico Search
    Click Button    ${SEARCH_BUTTON}
    Sleep    3s

E consulto o "${name}" na tela de consultar
    Click Element    locator=//a[contains(.,'PIM')]
    Click Element    locator=//a[contains(.,'Employee List')]
    Sleep    2s
    Quando buscar por "${name}"
    Então clico Search

Então faço a exclusão do "Fulano" na tela de excluir
    Click Element    ${CHECK_BOX}
    Click Element    ${LIXEIRA}
    Click Element    ${COMFIRMAR_EXCLUIR}
    Sleep    3s

Então faço a edição do "Beltrano" na tela de excluir
    Click Element    ${BUTTON_EDITAR}
    Sleep    3s
    Double Click Element    ${FIRST_NAME}
    Press Key    ${FIRST_NAME}    DELETE
    Input Text    ${FIRST_NAME}    text=Paulo
    Click Button    locator=(//button[contains(.,'Save')])[1]
    Sleep    3s