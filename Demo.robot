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
    
AppManagement
    [Tags]    Demo
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Maximize Browser Window
    Set Browser Implicit Wait    10s 
    Sleep    2s
    
    # Verify proper navigation to App Management > Apps > List
    Wait Until Element Is Visible    id=lnbAppManagementLink    # Apps tab
    Click Element    id=lnbAppManagementLink   
    Sleep    3s
    
    # Verify column headers
    Page Should Contain    Version
    Page Should Contain    Activation    
    Page Should Contain    Forced Update    
    Page Should Contain    Updated Date
    Page Should Contain    Deleted    
    Page Should Contain    Status   
    Sleep    2s
    
    # Verify Search function for existing Version
    Wait Until Element Is Visible    class=css-1n9d5gc    # Search version field
    Input Text    class=css-1n9d5gc    11.11.11.11
    Click Element    class=css-doaywb    # Apply button
    Sleep    3s
    Capture Page Screenshot       
    Sleep    5s
    
    # Verify Detail view modal
    Click Element    class=css-7fddae    # Version ID
    Sleep    2s
    Page Should Contain    Version
    Page Should Contain    Download URL
    Page Should Contain    Activation
    Page Should Contain    Forced Update
    Page Should Contain    Status
    Sleep    5s
    Capture Page Screenshot   
    Click Element    id=dialogCancel    # Close button
    Sleep    2s    
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    2s
    
    # Verify Search function for non-existing Version
    Wait Until Element Is Visible    class=css-1n9d5gc    # Search version field
    Input Text    class=css-1n9d5gc    00.00.00.99
    Click Element    class=css-doaywb    # Apply button
    Page Should Contain    No Results Found
    Sleep    3s   
    Capture Page Screenshot
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    5s

    # Verify Filter panel and selection
    # Activation field
    Click Element    (//*[text()='Activation'])[1]
    Sleep    1s
    Click Element    //*[@id="undefined_0"]    
    Sleep    2s
    Click Element    class=css-doaywb    # Apply button
    Capture Page Screenshot
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    2s
    
    Click Element    (//*[text()='Activation'])[1]
    Sleep    1s
    Click Element    //*[@id="undefined_1"]
    Sleep    2s    
    Click Element    class=css-doaywb    # Apply button
    Capture Page Screenshot  
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    2s
    
    Click Element    (//*[text()='Activation'])[1]
    Sleep    1s
    Click Element    //*[@id="undefined_2"]
    Sleep    2s    
    Click Element    class=css-doaywb    # Apply button
    Capture Page Screenshot  
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    2s
    
    # Forced Updated field
    Click Element    (//*[text()='Forced Update'])[1]   
    Capture Page Screenshot
    Sleep    2s
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    2s

    # Status field
    Click Element    (//*[text()='Status'])[1]
    Capture Page Screenshot
    Sleep    2s
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    2s
    
    # Deleted field
    Click Element    (//*[text()='Deleted'])[1] 
    Capture Page Screenshot
    Sleep    2s
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    5s
    
    # From & TO date fields
    Click Element    (//*[text()='From'])[1]
    Sleep    2s
    Click Element    //*[@id="spassAppsFilterForm"]/div/div[2]/div[3]/div[2]/div/div/div[2]/div[2]/div[1]/div[4]      
    Sleep    1s
    Click Element    (//*[text()='To'])[1]    
    Sleep    2s
    Click Element    //*[@id="spassAppsFilterForm"]/div/div[2]/div[4]/div[2]/div/div/div[2]/div[2]/div[4]/div[4]    
    Sleep    2s
    Click Element    class=css-doaywb    # Apply button
    Capture Page Screenshot  
    Sleep    2s
    Click Element    class=rc-pagination-next    # *//li[@class='rc-pagination-next']
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=rc-pagination-next
    Sleep    2s
    Click Element    class=css-1ymwrj5    # Clear All button
    
    # Verify Register button function
    Wait Until Element Is Visible    id=spassAppsRegisterBtn
    Sleep    2s
    Click Element    id=spassAppsRegisterBtn    
    Sleep    3s
    Wait Until Element Is Visible    id=spassAppsRegisterForm  
    Capture Page Screenshot  
    Sleep    5s
    
    # Verify error message when clicking Request button with empty required fields
    Click Element    class=css-frtf5
    Page Should Contain    This field is required
    Capture Page Screenshot
    Sleep    3s
    
    # Verify error message for invalid inputs
    Input Text    //*[@name="firstAppVer"]    aa
    Input Text    //*[@name="midAppVer"]    qq
    Input Text    //*[@name="lastAppVer"]    11
    Input Text    //*[@name="fourthAppVer"]    22
    Sleep    2s
    Input Text    //*[@name="downloadUrl"]    www.com
    Click Element    class=css-frtf5
    Capture Page Screenshot
    Sleep    5s
    Reload Page    
       
    # Verify error message when Version name is already taken
    Input Text    //*[@name="firstAppVer"]    88
    Sleep    2s
    Input Text    //*[@name="midAppVer"]    88
    Sleep    2s
    Input Text    //*[@name="lastAppVer"]    88
    Sleep    2s
    Input Text    //*[@name="fourthAppVer"]    03
    Sleep    2s
    Input Text    //*[@name="downloadUrl"]    www.testrobot.com
    Sleep    1s
    Click Element   class=css-frtf5    # Click Request button
    Page Should Contain    Version name taken. Please try another name    
    Capture Page Screenshot
    Sleep    5s
    Reload Page
    
    # Verify successful App Registration
    Input Text    //*[@name="firstAppVer"]    88
    Sleep    2s
    Input Text    //*[@name="midAppVer"]    88
    Sleep    2s
    Input Text    //*[@name="lastAppVer"]    88
    Sleep    2s
    Input Text    //*[@name="fourthAppVer"]    04
    Sleep    2s
    Input Text    //*[@name="downloadUrl"]    www.testrobot.com
    Sleep    1s
    Click Element   class=css-frtf5    # Click Request button
    Capture Page Screenshot
    Sleep    5s
    
    # Verify successful display of the newly registered App
    Input Text    class=css-1n9d5gc    88.88.88.04
    Click Element    class=css-doaywb    # Apply button
    Capture Page Screenshot       
    Sleep    5s
    Click Element    class=css-1ymwrj5    # Clear All button
    Sleep    2s
    
    # Verify successful Export to Excel function
    Wait Until Element Is Visible    id=btnAppsListExport
    Sleep    2s
    Click Element    id=btnAppsListExport
    Sleep    3s
    Log To Console    %{username} ran this test on %{os}. Test Execution completed with no errors.
    Close Window

    
    
    


