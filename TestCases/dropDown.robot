*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://testautomationcentral.com/demo/dropdown.html


*** Test Cases ***
Testing Dropdown Button
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    # Simple Dropdown
    Click Button    xpath=/html/body/div[2]/main/div/div[1]/button[1]
    Select From List By Label    xpath=//*[@id="simple-dropdown"]/select    Option 2
    Sleep    2
    Select From List By Value    xpath=//*[@id="simple-dropdown"]/select    option3
    Sleep    2
    Select From List By Index    xpath=//*[@id="simple-dropdown"]/select    0
    Sleep    2
    # Styled Dropdown
    Click Button    xpath=/html/body/div[2]/main/div/div[1]/button[2]
    Select From List By Label    xpath=//*[@id="styled-dropdown"]/select    Styled Option 2
    Sleep    2
    Select From List By Value    xpath=//*[@id="styled-dropdown"]/select    option3
    Sleep    2
    Select From List By Index    xpath=//*[@id="styled-dropdown"]/select    0
    Sleep    2
    # Multiple Select Dropdown
    Click Button    xpath=/html/body/div[2]/main/div/div[1]/button[3]
    Select From List By Label    xpath=//*[@id="multi-select-dropdown"]/select    Option 2
    Sleep    2
    Select From List By Value    xpath=//*[@id="multi-select-dropdown"]/select    option3
    Sleep    2
    Select From List By Index    xpath=//*[@id="multi-select-dropdown"]/select    0
    Sleep    2
    Unselect From List By Value    xpath=//*[@id="multi-select-dropdown"]/select    option3
    Sleep    2
