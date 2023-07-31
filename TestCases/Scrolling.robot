*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://en.wikipedia.org/wiki/Gallery_of_sovereign_state_flags
${BROWSER}      chrome


*** Test Cases ***
Scroll The Web Page
    [Setup]    Open the browser
    scroll element into view    xpath://*[@id="mw-content-text"]/div[1]/h2[9]
    capture page screenshot    C:/Development/robot-scripts/Autoamtion Robot/Results/scrolled.png
    sleep   2

    [Teardown]    close browser


*** Keywords ***
Open the browser
    open browser        ${URL}      ${BROWSER}
    maximize browser window

Close the browser
    close browser