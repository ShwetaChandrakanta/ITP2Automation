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
    [Documentation]     Verify AddNew Button in Summary Page
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
      # Zoom in by 20%
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR
    Requester Details WITHIN PH
    Summary ADDNEWREQUEST
    Acknowledgement
    Proceed To Payment
    Close Browser








