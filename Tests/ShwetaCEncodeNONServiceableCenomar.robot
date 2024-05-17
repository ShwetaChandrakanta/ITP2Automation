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
    [Documentation]     ENCODE-CENOMAR CERTIFICATE NON-SERVICEABLE
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR
    Requester Details NON-SERVICEABLE
    Avail Popup
    Acknowledgement
    DHLEXPRESSPOPUP
    Proceed To Payment
    Close Browser








