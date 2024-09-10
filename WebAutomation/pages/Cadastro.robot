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
${FIRST_NAME_FIELD}       //input[contains(@class,'oxd-input oxd-input--active orangehrm-firstname')]
${MIDDLE_NAME_FIELD}      //input[contains(@class,'oxd-input oxd-input--active orangehrm-middlename')]
${LAST_NAME_FIELD}        //input[contains(@class,'oxd-input oxd-input--active orangehrm-lastname')]
${SAVE_BUTTON}            //button[@type='submit']



*** Keywords ***
Dado que estou na tela de addEmployee
    Informar credeciais validas
    Sleep    2s
    Click Element    locator=//a[contains(.,'PIM')]
    Click Element    locator=//a[contains(.,'Add Employee')]
    Sleep    2s

Quando preencho os campos com ${first_name}, ${middle_name}, e ${last_name}
    Input Text    ${FIRST_NAME_FIELD}    ${first_name}
    Input Text    ${MIDDLE_NAME_FIELD}    ${middle_name}
    Input Text    ${LAST_NAME_FIELD}    ${last_name}

    Sleep    3s
Então clico em salvar
    Click Button    ${SAVE_BUTTON}