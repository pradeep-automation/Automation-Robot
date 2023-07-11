*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database      pymysql     ${DbName}       ${DbUser}       ${DbPass}       ${DbHost}       ${DbPort}
Suite Teardown      Disconnect From Database

*** Variables ***
${DbName}    mydb
${DbUser}    root
${DbPass}    root
${DbHost}    127.0.0.1
${DbPort}    3306



*** Test Cases ***
