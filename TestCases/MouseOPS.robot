*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://swisnl.github.io/jQuery-contextMenu/demo


*** Test Cases ***
Testing mouse operations
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    # right clickt
    Open Context Menu    xpath=//span[@class='context-menu-one btn btn-neutral']
    Sleep    2

    # Double click action
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    double Click Element    xpath=//button[normalize-space()='Copy Text']
    Sleep    2

    # Mouse deag & drop
    Go To    https://practice.expandtesting.com/drag-and-drop
    Maximize Browser Window
    Drag And Drop    xpath=//div[@id='column-a']    xpath=//div[@id='column-b']
    Sleep    2
