*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
TabbedWindowsTest
    open browser    https://demo.automationtesting.in/Windows.html      chrome
    #click link    xapth://a[contains(text(),'Open New Tabbed Windows')]
    click button    click
    sleep    3
    switch window    title=Selenium
    sleep   3
    # switch window uses locaters
    switch window    title=Frames & windows
    # switch browser users index
    #Browser related keywords
    go to
    go back
    get location
    sleep   2
    capture element screenshot    #locator  #location to store
    capture page screenshot    #location to store
    open context menu
    double click element
    execute javascript    window.scrollTo(0,2500)
    scroll element into view    #locator
    execute javascript    window.scrollTo(0, document.body.scrollHeight)
    execute javascript    window.scrollTo(0, -document.body.scrollHeight)




