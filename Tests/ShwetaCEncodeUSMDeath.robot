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
    [Documentation]     ENCODE-DEATH CERTIFICATE USM
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Request Details DEATH - USM
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Close Browser
