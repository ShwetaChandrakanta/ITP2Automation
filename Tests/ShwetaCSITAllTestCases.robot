*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  OperatingSystem
Library    FakerLibrary
Resource   ../Resource/ITP1KeywordsShwetaC.robot
Resource    C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1LocatorsShwetaC.robot
Variables   C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1TestDataShwetaC.yml



*** Variables ***
${url}   https://serbilis-sit.psaserbilis.com.ph/
${browser}  Chrome


*** Test Cases ***
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth-AFP
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth - CGSM
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE FOREIGN
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester Details FOREIGN
    Avail Popup
    Acknowledgement
    DHLEXPRESSPOPUP
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE FOREIGN
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester Details NON-SERVICEABLE
    Avail Popup
    Acknowledgement
    DHLEXPRESSPOPUP
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester Details Serviceable
    Summary
    Acknowledgement Serviceable
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth - USM
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester Details WITHIN PH
    Summary
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-CENOMAR CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR - AFP
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-CENOMAR CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR - CGSM
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-CENOMAR CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR
    Requester Details FOREIGN
    Avail Popup
    Acknowledgement
    DHLEXPRESSPOPUP
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-CENOMAR CERTIFICATE WITHIN PH
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
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-CENOMAR CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR
    Requester Details Serviceable
    Summary
    Acknowledgement Serviceable
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-CENOMAR CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR - USM
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-CENOMAR CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR
    Requester Details WITHIN PH
    Summary
    Acknowledgement
    Proceed To Payment
    Sleep   5s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Request Details DEATH -AFP
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    5s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Request Details DEATH -CGSM
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    5s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE FOREIGN
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Request Details DEATH
    Requester Details FOREIGN
    Avail Popup
    Acknowledgement
    DHLEXPRESSPOPUP
    Proceed To Payment
    Sleep    5s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE FOREIGN
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Request Details DEATH
    Requester Details NON-SERVICEABLE
    Avail Popup
    Acknowledgement
    DHLEXPRESSPOPUP
    Proceed To Payment
    Sleep    5s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Request Details DEATH
    Requester Details Serviceable
    Summary
    Acknowledgement Serviceable
    Proceed To Payment
    Sleep    5s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE WITHIN PH
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
    Sleep    10s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Request Details DEATH
    Requester Details WITHIN PH
    Summary
    Acknowledgement
    Proceed To Payment
    Sleep    10s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-MARRIAGE CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE - AFP
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    10s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-MARRIAGE CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE - CGSM
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    10s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-MARRIAGE CERTIFICATE FOREIGN
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE
    Requester Details FOREIGN
    Avail Popup
    Acknowledgement
    DHLEXPRESSPOPUP
    Proceed To Payment
    Sleep    10s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-MARRIAGE CERTIFICATE FOREIGN
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE
    Requester Details NON-SERVICEABLE
    Avail Popup
    Acknowledgement
    DHLEXPRESSPOPUP
    Proceed To Payment
    Sleep    10s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE
    Requester Details Serviceable
    Summary
    Acknowledgement
    Proceed To Payment
    Sleep    10s
    Close Browser
Sample Test2
    [Documentation]     ENCODE-MARRIAGE CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE - USM
    Requester Details EMBASSY YES
    Summary EMBASSY
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-MARRIAGE CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE
    Requester Details WITHIN PH
    Summary
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-MARRIAGE CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Questionnery Cancel Button
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Terms and Condition Cancel Button
    Close Browser
Sample Test2
    [Documentation]     ENCODE-MARRIAGE CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE
    Requester Details WITHIN PH
    Summary Request Delete
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Cancel Button
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Request Details DEATH - USM
    Requester Details Cancel Button
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester Previous Buton
    Close Browser
Sample Test2
    [Documentation]     ENCODE-MARRIAGE CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE
    Requester Details WITHIN PH
    Summary REQUEST-EDIT
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester Details WITHIN PH
    Summary REQUESTER'S-EDIT
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester ZIPCODE FINDIT BUTTON
    Close Browser
Sample Test2
    [Documentation]     ENCODE-DEATH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Request Details DEATH
    Requester Details WITHIN PH
    Summary
    Acknowledgement Print
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-CENOMAR CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR
    Requester Details WITHIN PH
    Summary ADDNEWREQUEST
    Acknowledgement
    Proceed To Payment
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester Details Serviceable
    Summary Cancel Button
    Sleep    10S
    Close Browser
Sample Test2
    [Documentation]     ENCODE-CENOMAR CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR-EDIT BUTTON
    Close Browser
Sample Test2
    [Documentation]     ENCODE-BIRTH CERTIFICATE WITHIN PH
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester Details Serviceable
    CONSENT EDIT BUTTON
    Close Browser










