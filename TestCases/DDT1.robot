*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup         open my browser
Suite Teardown      close my browser

#Test Template    Invalid login
Test Template    Valid login



*** Test Cases ***              username                    password
Right user empty password       admin@yourstore.com         ${EMPTY}
Right user wrong password       admin@yourstore.com         xyz
wrong user right password       admin@mystore               admin
Right user right password       admin@yourstore.com         admin




*** Keywords ***
Invalid login
    [Arguments]    ${username}      ${password}
    Input username    ${username}
    input password    ${password}
    click on login button

    Error message should be visible

Valid login
    [Arguments]    ${username}      ${password}
    Input username    ${username}
    input password    ${password}
    click on login button
    Dashboard page should be visible





