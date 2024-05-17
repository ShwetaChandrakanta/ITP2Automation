*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library    DateTime
Library   String
Library   DatabaseLibrary
Library    XML
Resource    C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1LocatorsShwetaC.robot
Variables   C:/Users/ChandrS1/PycharmProjects/ITP1SMOKETESTING/Resource/ITP1TestDataShwetaC.yml

*** Variables ***

*** Keywords ***
#BIRTH
Launch Application BIRTH
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${BIRTHDIV}
    Sleep   3S

Request Details Birth

    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CHILDLNAME}     ${lastname}
    Input Text    ${CHILDFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    SELF
    Click Element    ${EMBASSYRADIO}
    Select From List By Label    ${PURPOSE}   CLAIM BENEFITS / LOAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

Request Details Cancel Button
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    ${Part1}   First Name
    Input Text    ${CHILDLNAME}     ${lastname}
    Input Text    ${CHILDFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    SELF
    Click Element    ${EMBASSYRADIO}
    Select From List By Label    ${PURPOSE}   CLAIM BENEFITS / LOAN
    Click Button    ${REQUESTCANCEL}
    Sleep    2s
    Click Button    ${CANCELYES}
    Sleep   3s
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Input Text    ${HUSBANDLNAME}     ${lastname}
    Input Text    ${HUSBANDFNAME}    ${firstname}
    Input Text    ${WIFELNAME}    ${flastname}
    Input Text    ${WIFEFNAME}   ${ffirstname}
    Select From List By Label    ${MPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${MARRIAGEDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    OTHERS
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   AFP Pension and Gratuity Management Center
    Click Button    ${REQUESTCANCEL}
    Sleep    2s
    Click Button    ${CANCELYES}
    Sleep    3s
    Launch Application DEATH
    Accept Terms and Conditions
    Accept Questions
    Input Text    ${DECEASEDLNAME}     ${lastname}
    Input Text    ${DECEASEDFNAME}    ${firstname}
    Select From List By Label    ${DPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${DMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${DEATHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Element   ${BIRTHSEX}
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    FATHER
    Click Element    ${EMBASSYRADIO}
    Select From List By Label    ${PURPOSE}   OTHERS
    Input Text    ${PARTICULARS}   ${Part1}
    Click Button    ${REQUESTCANCEL}
    Sleep    2s
    Click Button    ${CANCELYES}
    Launch Application CENOMAR
    Accept Terms and Conditions
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Click Element    ${EMBASSYRADIO}
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${REQUESTCANCEL}
    Sleep    2s
    Click Button    ${CANCELNO}





Request Details Birth-AFP
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CHILDLNAME}     ${lastname}
    Input Text    ${CHILDFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    SELF
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   AFP Pension and Gratuity Management Center
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

Request Details Birth - CGSM
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CHILDLNAME}     ${lastname}
    Input Text    ${CHILDFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    SELF
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   Consulate General of Spain Manila
    Input Text   ${REFNO}  2023-TRQWETR
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

Request Details Birth - USM
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CHILDLNAME}     ${lastname}
    Input Text    ${CHILDFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    SELF
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   U.S. Embassy Manila
    Input Text    ${CASENO}   ${firstname}
    Input Text    ${INTERVIEWDATE}   ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

#DEATH

Launch Application DEATH
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${DEATHDIV}
    Sleep   3S

Request Details DEATH
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    ${Part1}   First Name
    Input Text    ${DECEASEDLNAME}     ${lastname}
    Input Text    ${DECEASEDFNAME}    ${firstname}
    Select From List By Label    ${DPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${DMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${DEATHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Element   ${BIRTHSEX}
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    FATHER
    Click Element    ${EMBASSYRADIO}
    Select From List By Label    ${PURPOSE}   OTHERS
    Input Text    ${PARTICULARS}   ${Part1}
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

Request Details DEATH -AFP
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    ${Part1}   First Name
    Input Text    ${DECEASEDLNAME}     ${lastname}
    Input Text    ${DECEASEDFNAME}    ${firstname}
    Select From List By Label    ${DPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${DMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${DEATHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Element   ${BIRTHSEX}
    Sleep   5S
    Execute Javascript  window.scrollTo(0,2000)
    Sleep   2s
    Select From List By Label    ${RELATION}    FATHER
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   AFP Pension and Gratuity Management Center
    Sleep   5s
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

Request Details DEATH -CGSM
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    ${Part1}   First Name
    Input Text    ${DECEASEDLNAME}     ${lastname}
    Input Text    ${DECEASEDFNAME}    ${firstname}
    Select From List By Label    ${DPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${DMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${DEATHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Element   ${BIRTHSEX}
    Sleep   5S
    Execute Javascript  window.scrollTo(0,2000)
    Sleep   2s
    Select From List By Label    ${RELATION}    FATHER
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   Consulate General of Spain Manila
    Input Text   ${REFNO}  2023-TRQWETR
    Sleep   5s
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}


Request Details DEATH - USM
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    ${Part1}   First Name
    Input Text    ${DECEASEDLNAME}     ${lastname}
    Input Text    ${DECEASEDFNAME}    ${firstname}
    Select From List By Label    ${DPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${DMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${DEATHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Element   ${BIRTHSEX}
    Sleep   5S
    Execute Javascript  window.scrollTo(0,2000)
    Sleep   2s
    Select From List By Label    ${RELATION}    FATHER
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   U.S. Embassy Manila
    Input Text    ${CASENO}   ${firstname}
    Sleep   5s
    Input Text    ${INTERVIEWDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep   5s
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

#MARRIAGE

Launch Application MARRIAGE
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${MARRIAGEDIV}
    Sleep   3S

Request Details MARRIAGE
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${HUSBANDLNAME}     ${lastname}
    Input Text    ${HUSBANDFNAME}    ${firstname}
    Input Text    ${WIFELNAME}    ${flastname}
    Input Text    ${WIFEFNAME}   ${ffirstname}
    Select From List By Label    ${MPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${MARRIAGEDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    OTHERS
    Click Element    ${EMBASSYRADIO}
    Select From List By Label    ${PURPOSE}   EMPLOYMENT (ABROAD)
    Select From List By Label    ${ABROAD}   AFGHANISTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

Request Details MARRIAGE - AFP
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${HUSBANDLNAME}     ${lastname}
    Input Text    ${HUSBANDFNAME}    ${firstname}
    Input Text    ${WIFELNAME}    ${flastname}
    Input Text    ${WIFEFNAME}   ${ffirstname}
    Select From List By Label    ${MPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${MARRIAGEDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    OTHERS
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   AFP Pension and Gratuity Management Center
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

Request Details MARRIAGE - CGSM
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${HUSBANDLNAME}     ${lastname}
    Input Text    ${HUSBANDFNAME}    ${firstname}
    Input Text    ${WIFELNAME}    ${flastname}
    Input Text    ${WIFEFNAME}   ${ffirstname}
    Select From List By Label    ${MPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${MARRIAGEDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    OTHERS
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   Consulate General of Spain Manila
    Input Text   ${REFNO}  2023-TRQWETR
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}

Request Details MARRIAGE - USM
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${HUSBANDLNAME}     ${lastname}
    Input Text    ${HUSBANDFNAME}    ${firstname}
    Input Text    ${WIFELNAME}    ${flastname}
    Input Text    ${WIFEFNAME}   ${ffirstname}
    Select From List By Label    ${MPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${MARRIAGEDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    OTHERS
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   U.S. Embassy Manila
    Input Text    ${CASENO}   ${firstname}
    Input Text    ${INTERVIEWDATE}   ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CALLBACK}



#CENOMAR

Launch Application CENOMAR
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${CENOMARDIV}
    Sleep   3S

Request Details CENOMAR
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Sleep   5s
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Click Element    ${EMBASSYRADIO}
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}

Request Details CENOMAR-Multiple
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CENOMARLNAME}     S
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    S
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Click Element    ${EMBASSYRADIO}
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${rnumber}   Phone Number
    ${raddress}   Address
    Input Text    ${REQUESTERLNAME}   S
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERMNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${Contact.c_email}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label    ${DELPROVINCE}    ${WithinPH.ph_province}
    Select From List By Label    ${DELCITY}    ${WithinPH.ph_city}
    Select From List By Label    ${DELBARANGAY}    ${WithinPH.ph_barangay}
    Input Text    ${DELADDRESS1}   ${raddress}
    Input Text    ${DELZIPCODE}    342
    Click Element    ${DELNEXTBUTTON}
    Sleep    2S

Request Details CENOMAR - AFP
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   AFP Pension and Gratuity Management Center
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}

Request Details CENOMAR - CGSM
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   Consulate General of Spain Manila
    Input Text   ${REFNO}  2023-TRQWETR
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}

Request Details CENOMAR - USM
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Click Element    ${EMBASSYRADIO1}
    Select From List By Label    ${DELIVERYTO}   U.S. Embassy Manila
    Input Text    ${CASENO}   ${firstname}
    Input Text    ${INTERVIEWDATE}   ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}

Accept Terms and Conditions

    Execute JavaScript    document.body.style.zoom = '80%'
    Sleep   5s
    Execute Javascript     document.getElementById("iAgree").click()
    Execute Javascript     document.querySelectorAll('#iAgree')[1].click();
    Execute Javascript     document.getElementById("termsSubmit").click()



Accept Questions
    Set Selenium Speed    2sec
    Execute Javascript     document.getElementById("yes").click()
    Execute JavaScript    document.querySelector('.text.secondQuestion').click()
    Execute JavaScript    document.querySelector('.btn.btn-navigation.Nxtbtn').click()
    

Requester Details WITHIN PH
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}    Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Sleep  5s
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERMNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label    ${DELPROVINCE}    ${WithinPH.ph_province}
    Select From List By Label    ${DELCITY}    ${WithinPH.ph_city}
    Select From List By Label    ${DELBARANGAY}    ${WithinPH.ph_barangay}
    Input Text    ${DELADDRESS1}   ${raddress}
    Input Text    ${DELZIPCODE}    342
    Click Element    ${DELNEXTBUTTON}
    Sleep    2S

Requester Details EMBASSY YES
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Sleep   10s
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERFNAME}   ${rrmname}
    Input Text    ${REQEMAIL}     shwetasepu4910@gmail.com
    Input Text    ${REQMOBILE}    777
    Sleep    5S
    Scroll Element Into View    ${DELNEXTBUTTON}
    Click Element    ${DELNEXTBUTTON}
    Sleep   5s
    Scroll Element Into View    ${SCROLLAFP}
    Sleep    2s
    Click Button    ${SCROLLAFP}

Requester Cancel Yes -USM
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERFNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Sleep    2S
    Click Button    ${REQUESTCANCEL}
    Sleep    2s
    Click Button    ${CANCELYES}
    Sleep    5s

Requester Cancel NO -WithinPH
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERMNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label    ${DELPROVINCE}    ${WithinPH.ph_province}
    Select From List By Label    ${DELCITY}    ${WithinPH.ph_city}
    Select From List By Label    ${DELBARANGAY}    ${WithinPH.ph_barangay}
    Input Text    ${DELADDRESS1}   ${raddress}
    Input Text    ${DELZIPCODE}    342
    Sleep    2s
    Click Button    ${REQUESTCANCEL}
    Sleep    2s
    Click Button    ${CANCELNO}
    Sleep    5s

Requester Cancel Yes -Serviceable
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Street Address
    ${raddress1}   Address
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERFNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Sleep   2s
    Click Element    ${Deliveryradio}
    Select From List By Label   ${FORIEGNCOUNTRY}   ${FOREIGNC.F_5}
    Execute Javascript  window.scrollTo(0,2000)
    Input Text    ${DELADDRESS2}  ${FOREIGNC.ADD_1}
    Input Text    ${DELADDRESS3}   ${raddress1}
    Input Text    ${DELZIPCODE}    342
    Sleep    2s
    Click Button    ${REQUESTCANCEL}
    Sleep    2s
    Click Button    ${CANCELYES}
    Sleep    5s

Requester Cancel Yes -NONServiceale
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Street Address
    ${raddress1}   Address
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERFNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label   ${FORIEGNCOUNTRY}   ${FOREIGNC.F_1}
    Execute Javascript  window.scrollTo(0,2000)
    Input Text    ${DELADDRESS2}  ${raddress}
    Input Text    ${DELADDRESS3}   ${raddress1}
    Input Text    ${DELZIPCODE}    342
    Sleep    2s
    Click Button    ${REQUESTCANCEL}
    Sleep    2s
    Click Button    ${CANCELYES}
    Sleep    5s

Requester Details Cancel Button
    Sleep   5S
    Requester Cancel Yes -USM
    Launch Application CENOMAR
    Accept Terms and Conditions
    Request Details CENOMAR
    Requester Cancel Yes -Serviceable
    Launch Application MARRIAGE
    Accept Terms and Conditions
    Accept Questions
    Request Details MARRIAGE
    Requester Cancel Yes -NONServiceale
    Launch Application BIRTH
    Accept Terms and Conditions
    Accept Questions
    Request Details Birth
    Requester Cancel NO -WithinPH

CONSENT EDIT BUTTON
    Scroll Element Into View    ${SCROLLCONFIRMTN}
    Click Button    ${CONSENTEDIT}

Summary Cancel Button
    Scroll Element Into View    ${SCROLLCONFIRMTN}
    Click Button    ${CONFCONFBTN}
    Execute Javascript  window.scrollTo(0,2000)
    #Click Button    ${SUMMARYCANCEL}
    Execute Javascript     document.getElementById("cancel").click()
    Sleep    2s
    Execute Javascript     document.getElementById("btnRightCallBack").click()
    #Click Element    ${DELYES}





Summary
    Scroll Element Into View    ${SCROLLCONFIRMTN}
    Click Button    ${CONFCONFBTN}
    Scroll Element Into View    ${CONFNEXTBTN}
    Sleep   2s
    Execute Javascript     document.getElementById("nextBtn").click()
    Sleep    2s
    Click Element    ${Summarycheckbox1}
    Click Button    ${SummaryNextbutton}


Multiple Records
    Scroll Element Into View    ${SCROLLCONFIRMTN}
    Click Button    ${CONFCONFBTN}
    Sleep   5s
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDCENOMAR}
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CENOMARLNAME}     S
    Input Text    ${CENOMARFNAME}     ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    S
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}
    Sleep    3s
    Scroll Element Into View    ${ADDNEWRESUEST1}
    Sleep    3s
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDCENOMAR}
    Input Text    ${CENOMARLNAME}     S
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}   S
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}
    Sleep   5s
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDCENOMAR}
    Input Text    ${CENOMARLNAME}     S
    Input Text    ${CENOMARFNAME}     ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    S
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}
    Sleep    3s
    Scroll Element Into View    ${ADDNEWRESUEST1}
    Sleep    3s
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDCENOMAR}
    Input Text    ${CENOMARLNAME}     S
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}   S
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}
    Sleep   5s
    Scroll Element Into View    ${ADDNEWRESUEST1}
    Sleep    3s
    Execute Javascript     document.getElementById("nextBtn").click()
    Sleep    2s
    Click Element    ${Summarycheckbox1}
    Click Button    ${SummaryNextbutton}



    
Summary ADDNEWREQUEST
    Scroll Element Into View    ${SCROLLCONFIRMTN}
    Click Button    ${CONFCONFBTN}
    Sleep   5s
    Scroll Element Into View    ${CONFNEXTBTN}
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDCENOMAR}
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}
    Sleep    3s
    Scroll Element Into View    ${ADDNEWRESUEST1}
    Sleep    3s
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDCENOMAR}
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}
    Sleep   5s
    #Scroll Element Into View    ${ADDNEWRESUEST1}
    #Execute Javascript     document.getElementById("nextBtn").click()
    #Sleep    3s
    #Click Element    ${OKPOPUP}
    #Sleep    3S
    Click Element    ${REQUESTDELETE}
    Sleep    5s
    Click Element    ${DELYES}
    Sleep    2s
    Scroll Element Into View    ${ADDNEWRESUEST1}
    Sleep    2s
    Execute Javascript     document.getElementById("nextBtn").click()
    Sleep    2s
    Click Element    ${Summarycheckbox1}
    Click Button    ${SummaryNextbutton}


Summary REQUESTER'S-EDIT
    ${rrlname}   Last Name
    ${rrfname}   First Name
    Sleep   5s
    Click Button    ${CONFCONFBTN}
    Sleep   5s
    Scroll Element Into View    ${REQUESTERSEDIT}
    Click Element    ${REQUESTERSEDIT}
    Clear Element Text    ${REQUESTERLNAME}
    Clear Element Text    ${REQUESTERFNAME}
    Sleep   2s
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Sleep    2s
    Click Element    ${DELNEXTBUTTON}



Summary REQUEST-EDIT
    ${lastname}   Last Name
    ${firstname}   First Name
    Scroll Element Into View    ${SCROLLCONFIRMTN}
    Click Button    ${CONFCONFBTN}
    Sleep   5s
    Click Element    ${REQUESTEDIT}
    Sleep   5s
    Clear Element Text   ${HUSBANDLNAME}
    Clear Element Text   ${HUSBANDLNAME}
    Sleep    5s
    Input Text    ${HUSBANDLNAME}     ${lastname}
    Input Text    ${HUSBANDFNAME}     ${firstname}
    Sleep   5s
    Click Button    ${BIRTHNEXTBUTTON}


Summary Request Delete
    Scroll Element Into View    ${SCROLLCONFIRMTN}
    Click Button    ${CONFCONFBTN}
    Sleep   5s
    Click Element    ${REQUESTDELETE}
    Sleep    5s
    Click Element    ${DELYES}
    Sleep  5S
    Execute Javascript     document.getElementById("nextBtn").click()

Summary EMBASSY
    Scroll Element Into View    ${CONFNEXTBTN}
    Execute Javascript     document.getElementById("nextBtn").click()
    Sleep   5s
    Click Element    ${Summarycheckbox1}
    Click Element    ${Summarycheckbox2}
    Click Element    ${Summarycheckbox3}
    Click Element    ${Summarycheckbox4}
    Click Element    ${Summarycheckbox5}
    Click Button    ${SummaryNextbutton}




Acknowledgement
    Scroll Element Into View    ${SCROLLPAYONLINE}
    Sleep    3S
    Click Button    ${PAYONLINEBTN}
    
Acknowledgement Print
    Scroll Element Into View    ${SCROLLPAYONLINE}
    Sleep    3S
    Click Element    ${ACKNOWLEDGEPRINT}
    Sleep    2s
    Click Button    ${PAYONLINEBTN}

Acknowledgement Serviceable
    Scroll Element Into View    ${SCROLLPAYONLINE}
    Sleep    3S
    Click Element    ${SERVICEABLE}
    Sleep   5s
    Click Button    ${FEDEXPOPUP}
    Sleep   5s
    Click Element    ${DHLACCEPT}
    Sleep    5s
    Input Text    ${DHLTEXTBOX}   ${DHLPOPUP.PIECENO}
    Sleep   5s
    Input Text    ${DHLTEXTBOX1}   ${DHLPOPUP.CONFNO}
    Sleep   5s
    Click Button   ${SERSUBMIT}
    Sleep    5s
    Scroll Element Into View    ${SCROLLPAYONLINE}
    Sleep    3S
    Click Button    ${PAYONLINEBTN}

Proceed To Payment
    Sleep    2S
    Click Element    ${PAYNOW}
    Sleep    2S
    Click Button    ${PROCEED}
    Sleep    2S
    Click Element   ${VISABTN}
    Sleep    10S
    Input Text    ${CARDNUMBER}    4918914107195005
    Select From List By Value    ${PAYMONTH}    07
    Select From List By Value    ${PAYYEAR}  2030
    Input Text    ${CARDHOLDER}    Juan Dela Cruz
    Input Text    ${SECURITYCODE}    123
    Input Text    ${HOLDEREMAIL}    shwetasepu4910@gmail.com
    Click Element    ${PAYSUBMIT}
    Sleep    2S
    Handle Alert    accept
    Sleep   5S
    #Click Element    ${PAYCONTINUE}

Requester Details FOREIGN
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Street Address
    ${raddress1}   Address
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERFNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label   ${FORIEGNCOUNTRY}   ${FOREIGNC.F_4}
    Execute Javascript  window.scrollTo(0,2000)
    Input Text    ${DELADDRESS2}  ${raddress}
    Input Text    ${DELADDRESS3}   ${raddress1}
    Input Text    ${DELZIPCODE}    342
    Click Element    ${DELNEXTBUTTON}
    Sleep    2S

Requester Details NON-SERVICEABLE
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Street Address
    ${raddress1}   Address
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERFNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label   ${FORIEGNCOUNTRY}   ${FOREIGNC.F_1}
    Execute Javascript  window.scrollTo(0,2000)
    Input Text    ${DELADDRESS2}  ${raddress}
    Input Text    ${DELADDRESS3}   ${raddress1}
    Input Text    ${DELZIPCODE}    342
    Click Element    ${DELNEXTBUTTON}
    Sleep    2S

Avail Popup
    Scroll Element Into View    ${SCROLLCONFIRMTN}
    Click Button    ${CONFCONFBTN}
    Sleep   5s
    Click Button    ${FEDEXPOPUP}
    Sleep   5s
    Click Element   ${ADDDHL}
    Scroll Element Into View    ${CONFNEXTBTN}
    Execute Javascript     document.getElementById("nextBtn").click()
    Sleep    2s
    Click Element   ${Summarycheckbox1}
    Click Element   ${Summarycheckbox2}
    Click Button    ${SummaryNextbutton}

DHLEXPRESSPOPUP
    Sleep    5s
    Input Text    ${DHLTEXTBOX}   ${DHLPOPUP.PIECENO}
    Sleep  5s
    Input Text    ${DHLTEXTBOX1}   ${DHLPOPUP.CONFNO}
    Click Element    ${DHLSUBMIT}

Requester Details Serviceable
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Street Address
    ${raddress1}   Address
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERFNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label   ${FORIEGNCOUNTRY}   ${FOREIGNC.F_5}
    Execute Javascript  window.scrollTo(0,2000)
    Input Text    ${DELADDRESS2}  ${FOREIGNC.ADD_1}
    Input Text    ${DELADDRESS3}   ${raddress1}
    Input Text    ${DELZIPCODE}    342
    Click Element    ${DELNEXTBUTTON}
    Sleep    2S

Requester Previous Buton
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERMNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label    ${DELPROVINCE}    ${WithinPH.ph_province}
    Select From List By Label    ${DELCITY}    ${WithinPH.ph_city}
    Select From List By Label    ${DELBARANGAY}    ${WithinPH.ph_barangay}
    Input Text    ${DELADDRESS1}   ${raddress}
    Input Text    ${DELZIPCODE}    342
    Sleep    2s
    Click Element    ${PREVIOUSBTN}

Requester ZIPCODE FINDIT BUTTON
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERMNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label    ${DELPROVINCE}    ${WithinPH.ph_province}
    Select From List By Label    ${DELCITY}    ${WithinPH.ph_city}
    Select From List By Label    ${DELBARANGAY}    ${WithinPH.ph_barangay}
    Scroll Element Into View    ${FINDITBTN}
    Input Text    ${DELADDRESS1}   ${raddress}
    Input Text    ${DELZIPCODE}    342
    Sleep    2s
    Click Element    ${FINDITBTN}

Request Details CENOMAR-EDIT BUTTON
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Click Element    ${EMBASSYRADIO}
    Select From List By Label    ${PURPOSE}   PASSPORT / TRAVEL
    Select From List By Label    ${ABROAD}   BHUTAN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element    ${CENOMAREDIT}

Togetcurrentdateinmmddyyyyformat
    ${CurrentDate}=  Get Current Date  result_format=%m/%d/%Y
    [return]    ${CurrentDate}

Terms and Condition Cancel Button
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${BIRTHDIV}
    Sleep   3S
    Execute JavaScript    document.body.style.zoom = '80%'
    Sleep   5s
    Execute Javascript     document.getElementById("iAgree").click()
    Execute Javascript     document.querySelectorAll('#iAgree')[1].click();
    Sleep  2s
    Execute JavaScript    document.querySelector('.btn.btn-primary.btn-cancel').click()
    #Click Element       ${TERMSCANCEL}
    Execute Javascript     document.getElementById("ImpNotice").click()
    #Click Element       ${IMPNOTICE}

Questionnery Cancel Button
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${BIRTHDIV}
    Sleep   3S
    Accept Terms and Conditions
    Sleep   3S
    Execute Javascript      document.getElementById("yes").click()
    Execute JavaScript      document.querySelector('.text.secondQuestion').click()
    Sleep    3S
    Execute JavaScript      document.querySelector('.btn.btn-cancel').click()

Launch AFPPGMC ECOPY BIRTH
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${AFPPGMC}
    Sleep   3S
    Click Element   ${AFPPGMCBIRTH}

Launch AFPPGMC ECOPY Cenomar
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${AFPPGMC}
    Sleep   3S
    Click Element   ${AFPPGMCCENOMAR}

Launch AFPPGMC ECOPY Death
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${AFPPGMC}
    Sleep   3S
    Click Element   ${AFPPGMCDEATH}

Launch AFPPGMC ECOPY Marriage
    Click Element       ${IMPNOTICE}
    Sleep   3S
    Click Element       ${AFPPGMC}
    Sleep   3S
    Click Element   ${AFPPGMCMARRIAGE}

REQUESTAFPPGMC ECOPYBIRTH
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CHILDLNAME}     ${lastname}
    Input Text    ${CHILDFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    SELF
    Click Element    ${AFPNEXTBUTTON}
    Sleep  5s
    Click Button    ${CANCELYES}

REQUESTAFPPGMC Marriage
     [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${HUSBANDLNAME}     ${lastname}
    Input Text    ${HUSBANDFNAME}    ${firstname}
    Input Text    ${WIFELNAME}    ${flastname}
    Input Text    ${WIFEFNAME}   ${ffirstname}
    Select From List By Label    ${MPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${MARRIAGEDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    OTHERS
    Click Element    ${AFPNEXTBUTTON}
    Sleep  5s
    Click Button    ${CANCELYES}


REQUESTAFPPGMC Death
   [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    ${Part1}   First Name
    Input Text    ${DECEASEDLNAME}     ${lastname}
    Input Text    ${DECEASEDFNAME}    ${firstname}
    Select From List By Label    ${DPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${DMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${DEATHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Element   ${BIRTHSEX}
    Sleep   5S
    Execute Javascript  window.scrollTo(0,2000)
    Sleep   2s
    Select From List By Label    ${RELATION}    SELF
    Click Element    ${AFPNEXTBUTTON}
    Sleep  5s
    Click Button    ${CANCELYES}

REQUESTAFPPGMC Cenomar
    [Arguments]
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Sleep    5S
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}    ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    ${mlastname}
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    SELF
    Click Element    ${AFPNEXTBUTTON}
    Sleep  5s
     Click Element   ${CENOMARCONFIRM}

Requester Details LBC
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}    Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Sleep  5s
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERMNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element   ${LBCRADIO}
    Sleep  2s
    Select From List By Label   ${LBCPROVINCE}   ${LBCPH.LBC_PROVINCE}
    Select From List By Label    ${LBCCITY}   ${LBCPH.LBC_CITY}
    Select From List By Label    ${LBCBRANCH}   ${LBCPH.LBC_BRANCH}
    Click Element    ${DELNEXTBUTTON}
    Sleep    2S

Requester Details LBCMETROMANILA
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}    Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Sleep  5s
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERMNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element   ${LBCRADIO}
    Sleep  2s
    Select From List By Label   ${LBCPROVINCE}   ${LBCMETROMANILA.LBC_METROPROVINCE}
    Select From List By Label    ${LBCCITY}   ${LBCMETROMANILA.LBC_METROCITY}
    Select From List By Label    ${LBCBRANCH}   ${LBCMETROMANILA.LBC_METROBRANCH}
    Click Element    ${DELNEXTBUTTON}
    Sleep    2S

Requester Details NONSERVICEABLEWITHIN PH
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}    Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Sleep  5s
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERMNAME}   ${rrmname}
    Input Text    ${REQEMAIL}    ${remail}
    Input Text    ${REQMOBILE}    ${rnumber}
    Click Element    ${Deliveryradio}
    Select From List By Label    ${DELPROVINCE}    ${NONSERVICEABLEBARANGAY.NONSERVICEABLEPROVINCE}
    Select From List By Label    ${DELCITY}    ${NONSERVICEABLEBARANGAY.NONSERVICEABLECITYMUNCIPALITY}
    Select From List By Label    ${DELBARANGAY}    ${NONSERVICEABLEBARANGAY.NONSERVICEABLEBARANGAY}
    Input Text    ${DELADDRESS1}   ${raddress}
    Input Text    ${DELZIPCODE}    342
    Sleep    5s
    ${elementExists} =    Element Should Be Visible    //*[@id="Errorbox"]/div
    Sleep     5s
    Run Keyword If    ${elementExists}  Click Button    //*[@id="nextBtn"]
    Click Button    //*[@id="nextBtn"]
    Sleep  10S


Summary NONSERVICEABLEWITHINPH
    Scroll Element Into View    ${SCROLLCONFIRMTN}
    Click Button    ${CONFCONFBTN}
    Scroll Element Into View    ${CONFNEXTBTN}
    Execute Javascript     document.getElementById("nextBtn").click()
    Sleep    2s
    Click Element   ${Summarycheckbox6}
    Sleep  5s
    Input Text      ${Summarycheckbox6TEXT}   ${SUMMARYTEXT.SUMMARYDETAIL}
    Sleep    2s
    Click Button    ${SummaryNextbutton}

Summary QuestionPopup
    Scroll Element Into View    ${SCROLLAFP}
    Sleep    2s
    Click Button    ${SCROLLAFP}
    Scroll Element Into View    ${CONFNEXTBTN}
    Execute Javascript     document.getElementById("nextBtn").click()
    Sleep   5s
    Click Element    ${Summarycheckbox1}
    Click Element    ${Summarycheckbox2}
    Click Element    ${Summarycheckbox3}
    Click Element    ${Summarycheckbox4}
    Click Element    ${Summarycheckbox5}
    Click Element   ${Summarycheckbox6}
    Sleep  5s
    Input Text      ${Summarycheckbox6TEXT}   ${SUMMARYTEXT.SUMMARYDETAIL}
    Sleep    2s
    Click Element    ${Summarycheckbox1}
    Click Element    ${Summarycheckbox2}
    Click Element    ${Summarycheckbox3}
    Click Element    ${Summarycheckbox4}
    Click Element    ${Summarycheckbox5}
    Click Element   ${Summarycheckbox6}
    Sleep   5s
    Click Element    ${Summarycheckbox1}
    Click Element    ${Summarycheckbox2}
    Click Element    ${Summarycheckbox3}
    Click Element    ${Summarycheckbox4}
    Click Element    ${Summarycheckbox5}
    Click Element   ${Summarycheckbox6}
    Sleep  5s
    Input Text      ${Summarycheckbox6TEXT}   ${SUMMARYTEXT.SUMMARYDETAIL}
    Sleep    2s
    Click Button    ${SummaryNextbutton}

AFP Summary ADDNEWREQUEST
    FOR    ${counter}    IN RANGE    1    25
    Scroll Element Into View    ${ADDNEWRESUEST1}
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDCENOMAR}
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${CENOMARLNAME}     S
    Input Text    ${CENOMARFNAME}     ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    S
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Click Button    ${BIRTHNEXTBUTTON}
    Sleep    2S
    Click Element   ${CENOMARCONFIRM}
    Sleep    3s
    Log    ${counter}
    END

AFP Summary ADDNEWREQUEST BIRTH
    FOR    ${counter}    IN RANGE    1    25
    Scroll Element Into View    ${ADDNEWRESUEST1}
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDBIRTH}
    Accept Questions
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Sleep    2s
    Input Text    ${CENOMARLNAME}     ${lastname}
    Input Text    ${CENOMARFNAME}     ${firstname}
    Select From List By Label    ${PROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${BIRTHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep    3s
    Click Element   ${BIRTHSEX}
    Input Text    ${BIRTHFATHERLNAME}    ${flastname}
    Input Text    ${BIRTHFATHERFNAME}   ${ffirstname}
    Input Text    ${BIRTHMOTHERLNAME}    S
    Input Text    ${BIRTHMOTHERFNAME}    ${mfirstname}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    COUSIN
    Click Element    ${AFPNEXTBUTTON}
    Sleep  5s
    Click Button    ${CANCELYES}
    Log    ${counter}
    END

AFP Summary ADDNEWREQUEST DEATH
    FOR    ${counter}    IN RANGE    1    98
    Scroll Element Into View    ${ADDNEWRESUEST1}
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDDEATH}
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    ${Part1}   First Name
    Input Text    ${DECEASEDLNAME}     ${lastname}
    Input Text    ${DECEASEDFNAME}    ${firstname}
    Select From List By Label    ${DPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${DMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${DEATHDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Click Element   ${BIRTHSEX}
    Sleep   5S
    Execute Javascript  window.scrollTo(0,2000)
    Sleep   2s
    Select From List By Label    ${RELATION}    SELF
    Click Element    ${AFPNEXTBUTTON}
    Sleep  5s
    Click Button    ${CANCELYES}
    Log    ${counter}
    END

AFP Summary ADDNEWREQUEST MARRIAGE
    FOR    ${counter}    IN RANGE    1    98
    Scroll Element Into View    ${ADDNEWRESUEST1}
    Click Element    ${ADDNEWRESUEST1}
    Sleep    2s
    Click Element    ${ADDDMARRIAGE}
    ${lastname}     Last Name
    ${firstname}    First Name
    ${flastname}    Last Name
    ${ffirstname}   First Name
    ${mlastname}    Last Name
    ${mfirstname}   First Name
    Input Text    ${HUSBANDLNAME}     ${lastname}
    Input Text    ${HUSBANDFNAME}    ${firstname}
    Input Text    ${WIFELNAME}    ${flastname}
    Input Text    ${WIFEFNAME}   ${ffirstname}
    Select From List By Label    ${MPROVINCE1}   ${WithinPH.ph_province}
    Select From List By Label   ${MMUNCIPALCITY}   ${WithinPH.ph_city}
    Sleep    3s
    ${Currentdate}=   Togetcurrentdateinmmddyyyyformat
    Input Text    ${MARRIAGEDATE}    ${Currentdate}
    Click Element   ${BIRTHDATE1}
    Sleep   2s
    Scroll Element Into View   ${BIRTHNEXTBUTTON}
    Sleep   2s
    Select From List By Label    ${RELATION}    OTHERS
    Click Element    ${AFPNEXTBUTTON}
    Sleep  5s
    Click Button    ${CANCELYES}
    Log    ${counter}
    END

Requester Details EMBASSY YES SAME EMAIL
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Sleep   10s
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERFNAME}   ${rrmname}
    Input Text    ${REQEMAIL}     ${Contact.c_MS}
    Input Text    ${REQMOBILE}    ${rnumber}
    Sleep    5S
    Scroll Element Into View    ${DELNEXTBUTTON}
    Click Element    ${DELNEXTBUTTON}
    Sleep   5s
    Scroll Element Into View    ${SCROLLAFP}
    Sleep    2s
    Click Button    ${SCROLLAFP}

Requester Details EMBASSY YES SAME MOBILENUMBER
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Sleep   10s
    Input Text    ${REQUESTERLNAME}   ${rrlname}
    Input Text    ${REQUESTERFNAME}   ${rrfname}
    Input Text    ${REQUESTERFNAME}   ${rrmname}
    Input Text    ${REQEMAIL}     shwetasepu4910@gmail.COM
    Input Text    ${REQMOBILE}    99
    Sleep    5S
    Scroll Element Into View    ${DELNEXTBUTTON}
    Click Element    ${DELNEXTBUTTON}
    Sleep   5s
    Scroll Element Into View    ${SCROLLAFP}
    Sleep    2s
    Click Button    ${SCROLLAFP}
Requester Details EMBASSY YES SAME FIRSTNAME AND LASTNAME
    ${rrlname}      Last Name
    ${rrfname}      First Name
    ${rrmname}      First Name
    ${remail}   Email
    ${rnumber}   Phone Number
    ${raddress}   Address
    Sleep   10s
    Input Text    ${REQUESTERLNAME}   Sirses
    Input Text    ${REQUESTERFNAME}   SEPUsirses
    Input Text    ${REQUESTERMNAME}    M
    Input Text    ${REQEMAIL}     Sepusirse88190@gmail.com
    Input Text    ${REQMOBILE}    94481131244
    Sleep    5S
    Scroll Element Into View    ${DELNEXTBUTTON}
    Click Element    ${DELNEXTBUTTON}
    Sleep   5s
    Scroll Element Into View    ${SCROLLAFP}
    Sleep    2s
    Click Button    ${SCROLLAFP}