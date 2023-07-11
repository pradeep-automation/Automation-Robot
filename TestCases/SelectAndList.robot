*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}=        https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${BROWSER}=    chrome

*** Test Cases ***
Select from Dropdown and the List Box
    open browser      ${URL}      ${BROWSER}
    set selenium speed    1 seconds
    maximize browser window
    input text                 name:firstname        Pradeep
    input text                 name:lastname         Ramola
    select radio button        sex          Male
    select radio button        exp         7
    input text                 xpath://tbody/tr[5]/td[2]/input[1]      26/06/2023

    select checkbox            Automation Tester
    select checkbox            Selenium Webdriver
    select from list by label   continents      Africa
    select from list by index    continents     5
    #select from list by value    continents     Antartica

    # Select/unselect from the list box
    select from list by label    selenium_commands      Navigation Commands
    select from list by label    selenium_commands      Wait Commands
    unselect from list by label    selenium_commands      Navigation Commands
    sleep   2
    # handle alert
    select frame
    close browser

*** Keywords ***

