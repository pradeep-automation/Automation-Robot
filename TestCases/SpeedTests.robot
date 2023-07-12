*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    select radio button    Gender   M
    get selenium speed
    get selenium timeout
    input text          xpath://input[@id='FirstName']        Eva
    input text          xpath://input[@id='LastName']         Ramola
    input text          xpath://input[@id='Email']            pradeepramola162@gmail.com
    input password      xpath://input[@id='Password']     Pass@1234
    input password      xpath://input[@id='ConfirmPassword']    Pass@1234
    click element       xpath://input[@value='Register']
    sleep    3
    close browser
#    wait until page contains

*** Keywords ***
