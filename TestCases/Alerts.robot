*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Testing alert box
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click button    xpath://div/button[2]

    ${user_name} =   Set Variable    Pradeep
    alert should be present    Press a button!
#    handle alert    ACCEPT
#    handle alert    DISMISS
#    handle alert    LEAVE
#    page should contain    You pressed OK!
    sleep   2
    click button    xpath://div/button[3]

    input text into alert      ${user_name}
    sleep   1
#    handle alert    ACCEPT
    sleep   1
    close browser


*** Keywords ***

