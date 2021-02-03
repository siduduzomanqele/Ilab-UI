*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             RequestsLibrary
Library             FakerLibrary
Library             String
Library             JSONLibrary
Library             Collections
Library             DatabaseLibrary
Resource                  ../resources/common.robot
Resource                  ../resources/ilab.robot
Resource                  ../resources/csv.robot
Resource                  ../resources/environment.robot
Suite Setup    Run Keywords  Open Browser  ${I_URL}  ${BROSWER}   AND  Maximize Browser Window

*** Test Case ***
Careers
    [Tags]  SendEmail
    ilab.Access careers



