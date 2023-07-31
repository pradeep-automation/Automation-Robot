*** Settings ***
Library    SeleniumLibrary
*** Variables ***


*** Test Cases ***
Choose file Successfully
    open browser    https://demo.automationtesting.in/Register.html     chrome
    element attribute value should be    //form[@id="basicBootstrapForm"]/div[1]/div[1]/input       placeholder     First Name
    choose file    //input[@id="imagesrc"]      C:/Users/pradeep.ramola/Downloads/images/11001496.jpg
    sleep    3


*** Keywords ***
