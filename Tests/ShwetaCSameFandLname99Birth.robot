*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  OperatingSystem
Library    FakerLibrary
Resource   ../Resource/ITP1KeywordsShwetaC.robot
Resource    C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1LocatorsShwetaC.robot
Variables   C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1TestDataShwetaC.yml



*** Variables ***
${url}   https://serbilis-sit.psaserbilis.com.ph/#!
${browser}  Chrome


*** Test Cases ***
Sample Test2
    [Documentation]     AFPPGMC ECOPY BIRTH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch AFPPGMC ECOPY BIRTH
    Sleep   5s
    FOR    ${counter}    IN RANGE    1    99
    Click Element       ${AFPPGMC}
    Sleep   3S
    Click Element   ${AFPPGMCBIRTH}
    Accept Terms and Conditions
    Accept Questions
    REQUESTAFPPGMC ECOPYBIRTH
    Requester Details EMBASSY YES SAME FIRSTNAME AND LASTNAME
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    5s
    Log    ${counter}
    END
    #Close Browser








