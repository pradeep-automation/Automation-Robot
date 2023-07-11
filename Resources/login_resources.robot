*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://admin-demo.nopcommerce.com/
${BROWSER}          chrome

*** Keywords ***
open my browser
    open browser    ${LOGIN URL}        ${BROWSER}
    maximize browser window

close my browser
    close all browsers

open login page
    go to    ${LOGIN URL}


Input username
    [Arguments]    ${username}
    input text    xpath://input[@type='email']      ${username}

input password
    [Arguments]    ${password}
    input text    xpath://input[@type='password']      ${password}

click on login button
    click element    xpath://button[@type='submit']

click on logout button
    click link    xpath://div[@id='navbarText']//li[@class='nav-item']/a[@class='nav-link']

Error message should be visible
    wait until page contains    Login was unsuccessful

Dashboard page should be visible
    page should contain    Dashboard

