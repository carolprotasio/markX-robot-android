*** Settings ***
Documentation    Elementos e ações da tela de login

Library    AppiumLibrary

*** Variables ***
${API_IP}            192.168.56.1
${BAD_IP}            192.168.56.2

*** Keywords ***
Do a Success login
    Input Text       xpath=//*[@resource-id="apiIp"]    ${API_IP}
    Click Element    xpath=//*[@resource-id="signInButton"]
    
Wrong IP login     

    Input Text       xpath=//*[@resource-id="apiIp"]    ${BAD_IP}   
    Click Element    xpath=//*[@resource-id="signInButton"]
    Click Element    xpath=//*[@resource-id="signInButton"]
