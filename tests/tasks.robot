*** Settings ***
Documentation    Testes de cadastro de tarefas

Resource    ${EXECDIR}/resources/base.resource

Test Setup       Start session
Test Teardown    Finish session


*** Test Cases ***

Deve cadastrar uma nova tarefa     
    ${task}    Set Variable    Study QA++
    Remove task from database    ${task}
    
    Do a Success login
    Create a new task     ${task}
    Should have task      ${task}

Deve remover uma tarefa      

    ${task}    Set Variable    Study Robot
    Remove task from database    ${task}
    
    Do a Success login
    Create a new task     ${task}
    Should have task      ${task}

    Remove a task by name               ${task}
    Wait Until Page Does Not Contain    ${task}

Deve poder cocluir uma tarefa    
    [Tags]    remove

    ${task}    Set Variable    Workout
    Remove task from database    ${task}
    
    Do a Success login
    Create a new task     ${task}
    Should have task      ${task}
    Finish a task         ${task}
    Task should be done   ${task}

 








    

                    