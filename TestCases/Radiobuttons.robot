*** Settings ***
Library    SeleniumLibrary

Suite Setup        Starting the validation
Suite Teardown     Ending the validation


*** Variables ***
${BROWSER}      chrome
${BASE_URL}     https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Radio button Validations
#    ${radio_male}   set variable      //input[@value='Male']
#    ${radio_female}   set variable    //input[@value='Female']
#    page should contain radio button
#    radio button should be set to       sex      ${None}
    radio button should not be selected    sex
    sleep   1
    select radio button       sex      Male
    sleep    2
    select radio button       sex      Female


Testing Checkbox
    [Tags]    checkbox
    select checkbox     Automation Tester
    select checkbox     Manual Tester
    unselect checkbox    Automation Tester





*** Keywords ***
Starting the validation
    open browser    ${BASE_URL}     ${BROWSER}
    maximize browser window
    set selenium speed    2seconds

Ending the validation
    close all browsers
