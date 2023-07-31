*** Settings ***
Library    SeleniumLibrary
Library    String


*** Variables ***
${my_string}        I am pradeep ramola and you can connect at pradeepramola162@gmail.com

*** Keywords ***

*** Test Cases ***
Checking string
    @{my_l}=   split string    ${my_string}    at
    FOR    ${ele}   IN      @{my_l}
    ${el}=  strip string    ${ele}
    log    ${el}
    END
    ${my_str}=      convert to title case    it's an OK iPhone!     exclude= a, an, the
    log     ${my_str}
    should be equal    It's an OK iPhone!      ${my_str}







