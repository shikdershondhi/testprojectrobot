*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Get All Links
    [Documentation]    This test case retrieves all links from a webpage and prints them.
    Open Browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
    Maximize Browser Window
    ${AllLinksCount}=    Get Element Count    xpath://a
    Log To Console    ${AllLinksCount} links found on the page.

    @{LinkItems}=    create list
    FOR    ${i}    IN RANGE    1    ${AllLinksCount}+1
        ${Link}=    Get Text    xpath://a[${i}]
        Log To Console    ${Link}
    END
