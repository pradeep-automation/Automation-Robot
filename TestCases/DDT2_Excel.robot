*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver       ../TestData/LoginData.xlsx       sheet_name=LoginData

Suite Setup        open my browser
Suite Teardown     close my browser
Test Template    Invalid login

*** Test Cases ***
Login page test with Excel using ${username} And ${password}


*** Keywords ***
Invalid login
    [Arguments]    ${username}      ${password}
    Input username    ${username}
    input password    ${password}
    click on login button
    Error message should be visible
