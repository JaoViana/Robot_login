*** Settings ***
Library     SeleniumLibrary

***Keywords***
Flow
    [Arguments]            
    Go To                   http://automationpractice.com/index.php      
    Click Element           class:login                                 
Login with
    [Arguments]             ${login}                               ${password}
    Input Text              css:input[id=email]                    ${login}
    Input Text              id:passwd                              ${password}
    Click Element           class: icon-lock
Verificacion
    [Arguments]
    Page Should Contain     My account

