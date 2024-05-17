*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  OperatingSystem
Library    FakerLibrary
Resource   ../Resource/ITP1KeywordsShwetaC.robot
Resource    C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1LocatorsShwetaC.robot
Variables   C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1TestDataShwetaC.yml



*** Variables ***
${url}   https://serbilis-uat.psaserbilis.com.ph/#!
${browser}  Chrome


*** Test Cases ***
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE AFP
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth-AFP
    Requester Details EMBASSY YES
    AFP Summary ADDNEWREQUEST BIRTH
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    5s
    #Close Browser








