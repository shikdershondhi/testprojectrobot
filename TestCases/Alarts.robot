*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://testautomationpractice.blogspot.com/


*** Test Cases ***
Testing alart Button
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    # Simple Alert
    Click Element    xpath=//*[@id="HTML9"]/div[1]/button
    Handle Alert    accept

    # Handle Alert    dismiss

    # Handle Alert    leave
