*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}=    https://demo.nopcommerce.com
${BROWSER}=     chrome
${PAGE_TITLE}=    nopCommerce demo store

*** Test Cases ***
TestingInputBox
    open browser    ${BASE_URL}     ${BROWSER}
    maximize browser window
    title should be    ${PAGE_TITLE}
    click link      xpath://a[@class='ico-login']
    ${email_txt}    set variable    id:Email
    element should be visible    ${email_txt}
    element should be enabled    ${email_txt}
    input text    ${email_txt}      John.snow@testing.com
    sleep    3
    clear element text      ${email_txt}
    sleep    2
    close browser



*** Keywords ***
