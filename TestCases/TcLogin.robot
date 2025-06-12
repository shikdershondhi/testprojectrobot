*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://nsdev24.neustring.com/
${username}     shikder
${Password}     Asdasd123!


*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Login To Application
#    Close Browser
    [Teardown]    Close Browser


*** Keywords ***
Login To Application
    Input Text    xpath=//*[@id="id_username"]    ${username}
    Input Password    xpath=//*[@id="id_password"]    ${Password}
    Click Button    xpath=//*[@id="loginBtn"]

    Capture Element Screenshot    xpath=//*[@id="id_username"]    screenshots/uesername_field.png
    Capture Element Screenshot    xpath=//*[@id="id_password"]    screenshots/password_field.png
    Capture Page Screenshot    screenshots/login_page.png
