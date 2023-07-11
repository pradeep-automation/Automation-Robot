*** Settings ***
Documentation    This is practice Test suite
Library    SeleniumLibrary
*** Variables ***
${BASE_URL}=    https://demo.nopcommerce.com
${BROWSER}=     chrome

*** Test Cases ***
LoginTest
    [Documentation]    This is info about the test case Tc1
#    create webdriver    chrome    executable_path=<location of the driver>
    open browser        ${BASE_URL}     ${BROWSER}
    click link      //a[@class='ico-login']
    LoginToApplication
    sleep   3
    close browser


*** Keywords ***
LoginToApplication
    input text    id:Email      pradeepramola162@gmail.com
    input text    id:Password   Test@123
    click button    xpath://button[contains(text(),'Log in')]
