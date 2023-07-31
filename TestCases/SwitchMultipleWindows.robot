*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Switch Between Multiple Windows
    open browser    https://demo.automationtesting.in/Windows.html      chrome
    maximize browser window
    click link    xpath://a[@href='#Seperate']

    click button    xpath://div[@id='Seperate']/button[contains(text(), 'click')]
    switch window    title=Selenium
    maximize browser window
    click element    xpath://*[@id="navbarDropdown"]
    sleep   3
    press keys    None    ARROW_DOWN
    sleep    1
    press keys    None    RETURN
    sleep   2
    switch window    title=Frames & windows
    sleep    2
    click link    xpath://a[@href='#Multiple']
    sleep    2
    close all browsers




*** Keywords ***
