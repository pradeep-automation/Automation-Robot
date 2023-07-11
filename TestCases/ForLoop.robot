*** Settings ***

*** Test Cases ***

Forloop1
    FOR    ${i}    IN RANGE    1   10
     log to console    ${i}
    END


