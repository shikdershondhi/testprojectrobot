*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://demowebshop.tricentis.com/register


*** Test Cases ***
Testing Radio button Button with speed test
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains    Register
    # Simple Radio Button
    Select Radio Button    Gender    M
    Input Text    name:FirstName    shikder
    Input Text    name:LastName    shondhi
    Input Text    name:Email    ahatesham@yapmail.com
    Input Text    name:Password    12345678
    Input Text    name:ConfirmPassword    12345678
