*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Test Mouse Actions
    open browser        https://www.youtube.com/        chrome
    open context menu

*** Keywords ***
