*** Settings ***
Library    Collections

*** Variables ***
@{ls}   apple   banana      cherry


*** Test Cases ***

List appending
#    ${ls}=     set list value    [1,2,3,4]
#    append to list      ${ls}       [5,6]
    log    ${ls}
    append to list    ${ls}     orange
    log    ${ls}
    ${x}=   get slice from list   ${ls}     0       1
    log    ${x}
    get from list
    get index from list