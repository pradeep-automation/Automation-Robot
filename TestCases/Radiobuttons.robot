*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${BASE_URL}     https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Radio button Validations
    open browser    ${BASE_URL}     ${BROWSER}
    maximize browser window
#    ${radio_male}   set variable      //input[@value='Male']
#    ${radio_female}   set variable    //input[@value='Female']
#    page should contain radio button
#    radio button should be set to       sex      ${None}
    radio button should not be selected    sex
    sleep   1
    select radio button       sex      Male
    sleep    2
    select radio button       sex      Female
    close all browsers





*** Keywords ***
