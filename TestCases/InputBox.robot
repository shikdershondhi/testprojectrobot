*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://nsdev24.neustring.com/


*** Test Cases ***
Testing Input Box
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    NeuString Online
    ${Username}    Set Variable    id_username
    Element Should Be Visible    ${Username}
    Element Should Be Enabled    ${Username}

    Input Text    ${Username}    shikder
    Sleep    2
    Clear Element Text    ${Username}
    Sleep    2
    Close Browser
