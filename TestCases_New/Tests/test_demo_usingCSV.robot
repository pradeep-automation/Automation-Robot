*** Settings ***
Library    SeleniumLibrary
Library    DataDriver       file=../Resources/data.csv      encoding=utf_8
Documentation    To validate the login form
#Resource    ../Resources/resource.robot
Suite Setup    Open the browser with the orangehrm URL
#Suite Setup   Suite set-up
#Test Teardown    Close Browsing Session
Test Template    Validate Login with parameters

*** Variables ***
${Base_URL}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Login with user ${uname} and password ${pwd}    Default    UserData


*** Keywords ***
Validate Login with parameters
    [Arguments]         ${uname}                           ${pwd}
    input text          name:username                      ${uname}
    input password      name:password                      ${pwd}
    click button        xpath://button[@type='submit']
    sleep    1
    log many            ${uname}     ${pwd}


Provide the login details
    [Arguments]    ${uname}      ${pwd}
    input text          name:username                      ${uname}
    input password      name:password                      ${pwd}
    click button        xpath://button[@type='submit']
    sleep    1

Open the browser with the orangehrm URL
    create webdriver    Chrome
    go to               ${Base_URL}
    maximize browser window
    sleep    3
