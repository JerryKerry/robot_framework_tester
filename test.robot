*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.saucedemo.com/
${Browser}    Chrome


*** Test Cases ***

My Open Browser Case
    open browser    ${URL}    ${Browser}
    maximize browser window
    input text  id:user-name     standat_user
    input text    xpath:*//input[@id='password']    secret_sauce
    click button  *//input[@id='login-button']


    close browser
