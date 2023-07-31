*** Settings ***
Documentation    A resource file with reusable keywords and variables
...
...             The system specific keywords created here form our own
...             domain specific language. They utilizes keywords provided by
...             the imported selenium library

Library         SeleniumLibrary
Library         OperatingSystem
Library         Collections

*** Variables ***
${Error_Msg_Locator}            xpath://div[contains(@class,'--error')]//p
${username}                     Admin
${invalid_password}             admin23
${valid_password}               admin123
${Base_URL}                     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${main_menu_list_locator}       css:.oxd-main-menu-item>span
${main_menu_admin_locator}      xpath://a//span[text()='Admin']

*** Keywords ***
Suite set-up
    log    This is suite set up keyword impl

Close browsing session
     close browser

Open the browser with the orangehrm URL
    create webdriver    Chrome
    go to               ${Base_URL}
    maximize browser window
    sleep    3

Provide the login details
    [Arguments]    ${user}      ${pass}
    input text          name:username                      ${user}
    input password      name:password                      ${pass}
    click button        xpath://button[@type='submit']
    sleep    1

Wait until error message is displayed
    wait until page contains element    ${Error_Msg_Locator}

Verify error message is correct
#    ${result}=  get text          ${Error_Msg_Locator}
#    should be equal as strings    ${result}     Invalid credentials
     element text should be    ${Error_Msg_Locator}     Invalid credentials
    sleep    3

Verify inner text of the main menu items
    ${expectedlist}=   create list    Admin     PIM    Leave   Time    Recruitment     My Info     Performance     Dashboard   Directory   Maintenance   Claim   Buzz
    @{elements}=     Get WebElements    ${main_menu_list_locator}
    ${actuallist}=  create list
    FOR    ${element}   IN    @{elements}
            append to list      ${actuallist}         ${element.text}
    END
    sleep    3
    lists should be equal    ${expectedlist}    ${actuallist}

Select the menu item
    [Arguments]    ${menu}
    click element      ${menu}







