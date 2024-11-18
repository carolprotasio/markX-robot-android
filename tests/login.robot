*** Settings ***
Documentation    Testes de Login

Resource    ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***

Deve logar com sucesso  
     
    Do a Success login
    Wait Until Page Contains    Minhas tarefas    5

Não deve logar com IP errado  
    [Tags]    login
    Wrong IP login
    Sleep    10
    Wait Until Page Contains    O IP informando não responde    20

    

                    