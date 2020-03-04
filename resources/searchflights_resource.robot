*** Settings ***
Library    SeleniumLibrary 

*** Variables ***
${radio_roundtrip}    RoundTrip   

*** Keywords ***
select roundtrip
    Click Element    ${radio_roundtrip}    


    