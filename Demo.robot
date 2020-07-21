*** Settings ***
Library    Selenium2Library     

*** Variables ***    
@{browsers}    Chrome    Firefox    Edge
@{credentials}    adm.spass.srph@gmail.com    1q2w3e4R!   

*** Test Cases ***
NavigateToSamsungAccountLoginAdmin
    [Tags]    Regression1_Happy path
    Open Browser    https://dev-admin.samsungpass.com/#/login    ${browsers}[0]
    Set Browser Implicit Wait    10s 
    Click Button    id=loginSignInBtn    
    Sleep    2s
    Input Text    //*[@id="iptLgnPlnID"]    ${credentials}[0]
    Sleep    2s    .
    Input Text    //*[@id="iptLgnPlnPD"][1]    ${credentials}[1]    
    Sleep    2s    
    Click Button    id=signInButton        
    Sleep    5s
    Wait Until Element Is Visible    id=lnbAccountManagementLink    
    Click Element    id=lnbAccountManagementLink
    Sleep    2s   
    Close Browser
    
NavigateToSamsungPassPortal
    [Tags]    Regression1_Happy path
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Set Browser Implicit Wait    10s 
    Sleep    5s    
    Close Browser
    
NavigationMenu
    [Tags]     Regression1_Happy path
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Maximize Browser Window
    Set Browser Implicit Wait    10s 
    Sleep    2s
    Wait Until Element Is Visible    id=lnbAccountManagementLink    
    Click Element    id=lnbAccountManagementLink
    Sleep    2s
    Wait Until Element Is Visible    id=lnbAccountLink
    Click Element    id=lnbAccountLink
    Sleep    2s
    Wait Until Element Is Visible    id=lnbPendingLink    
    Click Element    id=lnbPendingLink
    Sleep    2s    
    Wait Until Element Is Visible    id=lnbPartnerLink    
    Click Element    id=lnbPartnerLink
    Sleep    2s
    Wait Until Element Is Visible    id=lnbRoleManagementLink
    Click Element    id=lnbRoleManagementLink
    Sleep    2s
    Wait Until Element Is Visible    id=lnbRoleManagementRoleGroupLink
    Click Element    id=lnbRoleManagementRoleGroupLink
    Sleep    2s
    # Account Management
    Wait Until Element Is Visible    id=lnbAppManagementLink
    Click Element    id=lnbAppManagementLink    
    Sleep    2s    
    Wait Until Element Is Visible    id=lnbSpassApplicationFrameworkLink   
    Click Element    id=lnbSpassApplicationFrameworkLink    
    Sleep    2s   
    Wait Until Element Is Visible    id=lnbSpassApplicationNoticeLink  
    Click Element    id=lnbSpassApplicationNoticeLink
    Sleep    2s
    Wait Until Element Is Visible    id=lnbSpassApplicationTermsLink    
    Click Element    id=lnbSpassApplicationTermsLink
    Sleep    2s    
    Wait Until Element Is Visible    id=lnbPartnerManagementLink  
    Click Element    id=lnbPartnerManagementLink
    Sleep    2s    
    Wait Until Element Is Visible    id=lnbPartnerManagementAppListLink    
    Click Element    id=lnbPartnerManagementAppListLink
    Sleep    2s
    Wait Until Element Is Visible    id=lnbPartnerManagemenSiteListLink 
    Click Element    id=lnbPartnerManagemenSiteListLink
    Sleep    2s    
    Wait Until Element Is Visible    id=lnbModelManagementLink
    Click Element    id=lnbModelManagementLink
    Sleep    2s    
    Click Element    //*[@id="lnbModelManagementLink"][2]    # use xpath as locator and add the index/location of the element
    Sleep    2s
    # App Management
    Wait Until Element Is Visible    id=lnbPartnerPortalMgmtLink
    Click Element    id=lnbPartnerPortalMgmtLink    
    Sleep    2s    
    Wait Until Element Is Visible    id=lnbPartnerPortalMgmtFaqLink
    Click Element    id=lnbPartnerPortalMgmtFaqLink
    Sleep    2s
    Wait Until Element Is Visible    id=lnbPartnerPortalMgmtPrivacyPolicyLink 
    Click Element    id=lnbPartnerPortalMgmtPrivacyPolicyLink
    Sleep    2s    
    Wait Until Element Is Visible    id=lnbPartnerPortalMgmtQALink  
    Click Element    id=lnbPartnerPortalMgmtQALink
    Sleep    2s    
    Wait Until Element Is Visible    id=lnbPartnerPortalMgmtCategoryMgmtLink  
    Click Element    id=lnbPartnerPortalMgmtCategoryMgmtLink
    Sleep    2s    
    # Partner Portal Management
    Wait Until Element Is Visible    id=lnbSystemMgmtLink 
    Click Element    id=lnbSystemMgmtLink    
    Sleep    2s    
    Click Element    //*[@id="lnbSystemMgmtLink"][2]    
    Sleep    2s    
    # System Management
    Close Browser    
    Log To Console    %{username} ran this test on %{os}. Successfully displayed all working Menus!
    # Not yet completed!
    
AppManagementSearchList
    [Tags]    Demo1_Happy path
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Maximize Browser Window
    Set Browser Implicit Wait    10s 
    Sleep    2s
    
    # Search for a Version ID
    Wait Until Element Is Visible    id=lnbAppManagementLink    # Apps tab
    Click Element    id=lnbAppManagementLink   
    Sleep    2s
    Wait Until Element Is Visible    class=css-1n9d5gc    # Search version field
    Input Text    class=css-1n9d5gc    11.11.11.11
    Click Element    class=css-doaywb    # Apply button
    Capture Page Screenshot       
    Sleep    2s
    
    # Check the Version Detail modal
    Click Element    class=css-7fddae    # Version ID
    Sleep    2s
    Page Should Contain    Version
    Page Should Contain    Download URL
    Page Should Contain    Activation
    Page Should Contain    Forced Update
    Page Should Contain    Status
    Sleep    2s
    Click Element    id=dialogCancel    # Close button
    Sleep    2s    
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    2s

    # Filter Activation status 
    Click Element    (//*[text()='Activation'])[1]
    Sleep    2s
    

    
       
    
    


