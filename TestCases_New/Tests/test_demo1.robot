*** Settings ***
Documentation    To validate the login form
Resource    ../Resources/resource.robot
Test Setup    Open the browser with the orangehrm URL
Suite Setup   Suite set-up
Test Teardown    Close Browsing Session

*** Test Cases ***
Validate unsuccessful Login
    Provide the login details       ${username}     ${invalid_password}
    Wait until error message is displayed
    Verify error message is correct

Validate successful Login
    [Tags]    success
    Provide the login details       ${username}     ${valid_password}
    title should be     OrangeHRM
    Verify inner text of the main menu items
    Select the menu item    ${main_menu_admin_locator}
    sleep    3

validate tab switching
    [Tags]    switch
    Provide the login details       ${username}     ${valid_password}
    title should be     OrangeHRM
    click link    css:.oxd-layout-footer>p>a
    switch window   NEW
    sleep   3
    mouse over    //a[text()='Company']
    mouse down    //li/a[text()='About Us']
    mouse up      //li/a[text()='About Us']
    sleep    3






