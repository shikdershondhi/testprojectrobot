*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://testautomationpractice.blogspot.com/


*** Test Cases ***
Testing alart Button
    ${PageTitle}=    launchBrowser    ${url}    ${browser}
    Log To Console    ${PageTitle}
    # Simple Alert
    Click Element    xpath=//*[@id="HTML9"]/div[1]/button
    Handle Alert    accept

    # Handle Alert    dismiss

    # Handle Alert    leave


*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    Open Browser    ${appurl}    ${appbrowser}
    Maximize Browser Window
    ${title}=    Get Title
    RETURN    ${title}
