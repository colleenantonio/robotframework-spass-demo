*** Settings ***
Library    Selenium2Library     

*** Variables ***    
@{browsers}    Chrome    Firefox    Edge   

*** Test Cases ***
NavigateToSamsungPassPortal
    [Tags]    Regression
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Set Browser Implicit Wait    10s 
    Sleep    5s    
    Close Browser
    
Menus
    [Tags]    Regression
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Set Browser Implicit Wait    10s 
    Sleep    5s
    Click Element    class=css-u99vxg
    Sleep    2s
    Close Browser
    
    


    

    


