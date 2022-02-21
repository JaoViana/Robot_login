*** Settings ***
Resource        automation_base.robot
Resource        Page Objects/automation_logwith.robot

Test Setup      Sessão inicial
Test Teardown   Sessão final

*** Variables ***

*** Test Cases ***
Login with wrong account
    [tags]                  wronglogin
    Flow
    Login with              joao.brisa258@gmail.com    jarvis! 
    Page Should Contain     There is 1 error

Login with existing account
    [tags]                  login
    Flow  
    Login with              teste.joao@teste.com       joaobrisa1210       
    Verificacion  

Logout                      
    [tags]                  logout
    Flow
    Login with              teste.joao@teste.com       joaobrisa1210
    Verificacion
    Sleep                   2
    Click Element           class:logout


