*** Settings ***
Library    Selenium2Library     

*** Variables ***    
@{browsers}    Chrome    Firefox    Edge   

*** Test Cases ***
NavigateToSamsungPassPortal
    [Tags]    Regression1
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Set Browser Implicit Wait    10s 
    Sleep    5s    
    Close Browser
    
NavigationMenu
    [Tags]    Regression2
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Set Browser Implicit Wait    10s 
    Sleep    5s
    Click Element    id=lnbAccountManagementLink
    Sleep    2s
    Click Element    id=lnbAccountLink
    Sleep    2s
    Click Element    id=lnbPendingLink
    Sleep    2s    
    Click Element    id=lnbPartnerLink
    Sleep    2s
    Click Element    id=lnbRoleManagementLink
    Sleep    2s
    Click Element    id=lnbRoleManagementRoleGroupLink
    Sleep    2s
    # Account Management
    Click Element    id=lnbAppManagementLink    
    Sleep    2s    
    Click Element    id=lnbSpassApplicationFrameworkLink    
    Sleep    2s    
    Click Element    id=lnbSpassApplicationNoticeLink
    Sleep    2s    
    Click Element    id=lnbSpassApplicationTermsLink
    Sleep    2s    
    Click Element    id=lnbPartnerManagementLink
    Sleep    2s    
    Click Element    id=lnbPartnerManagementAppListLink
    Sleep    2s    
    Click Element    id=lnbPartnerManagemenSiteListLink
    Sleep    2s    
    Click Element    id=lnbModelManagementLink
    Sleep    2s    
    Click Element    //*[@id="lnbModelManagementLink"][2]    # use xpath as locator and add the index/location of the element
    Sleep    2s
    # App Management
    Click Element    id=lnbPartnerPortalMgmtLink    
    Sleep    2s    
    Click Element    id=lnbPartnerPortalMgmtFaqLink
    Sleep    2s
    Click Element    id=lnbPartnerPortalMgmtPrivacyPolicyLink
    Sleep    2s    
    Click Element    id=lnbPartnerPortalMgmtQALink
    Sleep    2s    
    Click Element    id=lnbPartnerPortalMgmtCategoryMgmtLink
    Sleep    2s    
    # Partner Portal Management
    Click Element    id=lnbSystemMgmtLink    
    Sleep    2s
    Click Element    //*[@id="lnbSystemMgmtLink"][1]    
    Sleep    2s    
    Click Element    id=lnbSystemMgmtServerMgmtLink
    Sleep    2s
    Click Element    //*[@id="lnbSystemMgmtLink"][1]
    Sleep    2s    
    Click Element    id=lnbSystemMgmtFunctionSettingLink
    Sleep    2s    
    # System Management
    Close Browser    
    Log To Console    %{username} ran this test on %{os}. Successfully displayed all working Menus!
    # Not yet completed!
    
AccountManagement
    [Tags]    Demo1
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Set Browser Implicit Wait    10s 
    Sleep    5s
    Click Element    id=lnbAccountManagementLink
    Sleep    2s
    Click Element    id=lnbAccountLink
    Sleep    2s
    Click Element    id=lnbPendingLink
    Sleep    2s    
    Click Element    id=lnbPartnerLink
    Sleep    2s
    Click Element    id=lnbRoleManagementLink
    Sleep    2s
    Click Element    id=lnbRoleManagementRoleGroupLink
    Sleep    2s
    Close Browser    
    Log To Console    %{username} ran this test on %{os}. Successfully displayed all working Account Management menus.

    

    


