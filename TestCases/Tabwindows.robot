*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://demo.automationtesting.in/Windows.html


*** Test Cases ***
Testing tab switch
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element
    ...    xpath=//a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    Switch Window    title=Selenium
    ${title}=    Get Title
    Should Be Equal    ${title}    Selenium
    Click Element    xpath=//span[normalize-space()='Downloads']
    ${title}=    Get Title
    Log To Console    message=The title of the new window is: ${title}
    Switch Window    title=Frames & windows
    ${title}=    Get Title
    Log To Console    message=The title of the original window is: ${title}
    Close All Browsers
