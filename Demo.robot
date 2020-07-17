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
    [Tags]    PASSPORTAL-1476    # sample JIRA ticket no.
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Set Browser Implicit Wait    10s 
    Sleep    5s
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
    Wait Until Element Is Visible    /*[@id="lnbModelManagementLink"][2]
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
    Wait Until Element Is Visible    //*[@id="lnbSystemMgmtLink"][2]      
    Click Element    //*[@id="lnbSystemMgmtLink"][2]    
    Sleep    2s    
    # System Management
    Close Browser    
    Log To Console    %{username} ran this test on %{os}. Successfully displayed all working Menus!
    # Not yet completed!
    
AccountManagement
    [Tags]    PASSPORTAL-1476    # not sure yet, just assuming of the scope JIRA ticket no.
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
    # Use this for the actual module of spass demo


    


