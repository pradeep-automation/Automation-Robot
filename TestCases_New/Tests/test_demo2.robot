#*** Settings ***
#Documentation    To validate the login form
#Resource    ../Resources/resource.robot
#Test Setup    Open the browser with the orangehrm URL
#Suite Setup   Suite set-up
#Test Teardown    Close Browsing Session
#Test Template    Validate Login with parameters
#
#*** Test Cases ***      ${user}       ${password}
#Invalid username        adren           admin123
#Invalid Password        Admin           adren123
#Correct creds           Admin           admin123
#*** Keywords ***
#Validate Login with parameters
#    [Arguments]                     ${user}     ${password}
#    Provide the login details       ${user}     ${password}
#    Wait until error message is displayed
#    Verify error message is correct


*** Settings ***
Documentation    To validate the login form
Resource    ../Resources/resource.robot
Test Setup    Open the browser with the orangehrm URL
Suite Setup    Suite set-up
Test Teardown    Close Browsing Session
#Test Template    Validate Login with parameters

*** Test Cases ***
Invalid username    adren    admin123
    [Template]    Validate Login with parameters

Invalid Password    Admin    adren123
    [Template]    Validate Login with parameters

Correct creds       Admin    admin123
    [Template]    Validate Login with parameters

*** Keywords ***
Validate Login with parameters
    [Arguments]    ${user}    ${password}
    Provide the login details    ${user}    ${password}
    Wait until error message is displayed
    Verify error message is correct
