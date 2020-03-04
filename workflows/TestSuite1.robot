*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/sampleresource.robot
Resource    ../resources/searchflights_resource.robot    

Force Tags    login

*** Variables ***
${url}    https://www.cleartrip.com/
${browser}    chrome


*** Test Cases ***
 google serach test1
    [Tags]    smoke    login    reg
   Launch Browser    ${url}    ${browser}
   Maximize Browser Window
   select roundtrip
   Sleep    3    
   Click Element    OneWay
   Input Text    //*[@id="FromTag"]    Hyderabad, IN - Rajiv Gandhi International (HYD)    
   Input Text    ToTag    Tirupati, IN - Tirupati (TIR)   
   Click Element    //*[@id="ORtrip"]/section[2]/div[1]/dl/dd/div/a/i     
   Click Element    //*[@id="ui-datepicker-div"]/div[1]/table/tbody/tr[4]/td[4]/a 
   Select From List By Index    Adults    3  
   Click Element    SearchBtn    
   Close Browser
   Close Browser
   
 google serach test2
    [Tags]    smoke    login    reg
   Launch Browser    ${url}    ${browser}
   Maximize Browser Window
   select roundtrip
   Sleep    3    
   Click Element    OneWay
   Input Text    //*[@id="FromTag"]    Hyderabad, IN - Rajiv Gandhi International (HYD)    
   Input Text    ToTag    Tirupati, IN - Tirupati (TIR)   
   Click Element    //*[@id="ORtrip"]/section[2]/div[1]/dl/dd/div/a/i     
   Click Element    //*[@id="ui-datepicker-div"]/div[1]/table/tbody/tr[4]/td[4]/a 
   Select From List By Index    Adults    3  
   Click Element    SearchBtn    
   Close Browser
   Close Browser
