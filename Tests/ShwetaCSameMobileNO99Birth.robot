*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  OperatingSystem
Library    FakerLibrary
Resource   ../Resource/ITP1KeywordsShwetaC.robot
Resource    C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1LocatorsShwetaC.robot
Variables   C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1TestDataShwetaC.yml



*** Variables ***
${url}  http://ustr-erl2-3644.na.uis.unisys.com:9401/
${browser}  Chrome


*** Test Cases ***
Sample Test2
    [Documentation]     AFPPGMC ECOPY BIRTH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    FOR    ${counter}    IN RANGE    1    98
    Launch AFPPGMC ECOPY BIRTH
    Sleep   5s
    Accept Terms and Conditions
    Accept Questions
    REQUESTAFPPGMC ECOPYBIRTH
    Requester Details EMBASSY YES SAME MOBILENUMBER
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    5s
    Log    ${counter}
    END
    #Close Browser








