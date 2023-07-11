*** Settings ***


*** Test Cases ***
TC1 User Reg test
    [Tags]    sanity
    log to console    \n This is user reg test
    log to console    User reg test is over

TC2 Login test
    [Tags]    sanity
    log to console    \n This is login test
    log to console    Login test is over

TC3 Change user settings
    [Tags]    Regression
    log to console    \n This is changing user settings test
    log to console    Change user settings test is over

Tc4 Logout test
    [Tags]    Regression
    log to console    \n This is log out
    log to console    Logout test is over


TC5 No Tag Test
    log to console    \n This is no tag test
    log to console    No tag test is over
