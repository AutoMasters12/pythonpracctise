*** Settings ***
Library    SeleniumLibrary   

*** Keywords ***
Launch Browser
    [Documentation]    launch browser
    [Arguments]    ${url}    ${browserName}    
    Open Browser    ${url}    ${browserName}

    


