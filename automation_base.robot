*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}               http://automationpractice.com/index.php
${button_login}      class: icon-lock
${email}             id:email              
${password}          id:passwd
${name}              Teste
${lastname}          Joao
${login}             css: input[id=email]
${sign}              class:login

*** Keywords ***
Sessão inicial
    Open Browser    ${url}      chrome
    Maximize Browser Window

Sessão final
    Capture Page Screenshot
    Close Browser