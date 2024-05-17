*** Settings ***
Library   SeleniumLibrary



*** Variables ***
#Launch Application BIRTH
${IMPNOTICE}      id=ImpNotice
${BIRTHDIV}       xpath=//div[@class='box div_Birth div_IconHome']


#Accept Terms and Conditions BIRTH
${CHECKBOX1}      //*[@class="overview-condition-chkbox"]
${CHECKBOX2}      //*[@class="overview-condition-chkbox2"]
${TERMSUBMIT}     //*[@id="termsSubmit"]

#Accept Questions BIRTH
${YESBUTTON}      id=yes
${YESBUTTON2}     xpath=//span[@id='no']/following::span[2]
${NAVIGATOR}      xpath=//button[@class='btn btn-navigation Nxtbtn']

#Request Details BIRTH
${CHILDLNAME}     id=txtChildLastName
${CHILDFNAME}     id=txtChildFirstName
${PROVINCE1}      //select[@id='birthProvince']
${MUNCIPALCITY}   //select[@id='birthCity']
${BIRTHDATE}     xpath=//input[@id='BirthDate']
${BIRTHMONTH}    xpath=//select[@class='ui-datepicker-month']
${BIRTHYEAR}     xpath=//select[@class='ui-datepicker-year']
${BIRTHDATE1}     xpath=//a[@class='ui-state-default'][1]
${BIRTHSEX}      xpath=//span[@class='text radio-lable']
${BIRTHFATHERLNAME}     id=txtBCCDFatherLastName
${BIRTHFATHERFNAME}     id=txtBCCDFatherFirstName
${BIRTHMOTHERLNAME}     id=txtBCCDMotherLastName
${BIRTHMOTHERFNAME}     id=txtBCCDMotherFirstName
${RELATION}   //*[@id="simplewizardstep1"]/div[15]/div/div/select
${AFPNEXTBUTTON}   //*[@id="nextBtn"]
${EMBASSYRADIO}   xpath=//span[@class='text radio-lable']/following::span[12]
${EMBASSYRADIO1}   //span[@class='text radio-lable']/following::span[11]
${DELIVERYTO}   //*[@id="DeliveryToComboBx"]
${REFNO}   //*[@id="simplewizardstep1"]/div[16]/div/div[4]/div/input
${CASENO}   //*[@id="simplewizardstep1"]/div[17]/div[1]/div/input
${INTERVIEWDATE}   //*[@id="InterviewDate"]
${PURPOSE}   id=ddlSupplier
${ABROAD}   //*[@id="simplewizardstep1"]/div[19]/div/div[2]/div/select
${PARTICULARS}   //*[@id="simplewizardstep1"]/div[19]/div/div[2]/div/input
${BIRTHNEXTBUTTON}   xpath=//button[@id='nextBtn']
${CALLBACK}   //span[@id='btnRightCallBack']
${BIRTHCOUNTRY}  id=birthCountry
${SERVICEABLE}   //*[@id="simplewizardstep4"]/div[3]/div/div[5]/p/a
${REQUESTCANCEL}   //*[@id="cancel"]
${CANCELYES}   //*[@id="confirm1"]/div[2]/div[2]/button[1]
${CANCELNO}   //*[@id="confirm1"]/div[2]/div[2]/button[2]
${HOMEDIV}   //*[@id="home"]/a
${PREVIOUSBTN}  //*[@id="previousBtn"]
${FINDITBTN}   //*[@id="simplewizardstep2"]/div[11]/div[2]/div/p/a
#Requester Details  BIRTH
${REQUESTERLNAME}   //*[@id="txtRequesterLastName"]
${REQUESTERFNAME}   //*[@id="txtRequesterFirstName"]
${REQUESTERMNAME}   //*[@id="txtRequesterMiddleName"]
${REQEMAIL}   //input[@placeholder='Email Address']
${REQMOBILE}    //input[@placeholder='Mobile Number']
${LBCRADIO}   //*[@id="pickupDiv"]/div[2]/label[2]/span
${LBCPROVINCE}   //*[@id="LCRDiv"]/div[2]/div/select[1]
${LBCCITY}   //*[@id="LCRDiv"]/div[3]/div/Select[1]
${LBCBRANCH}   //*[@id="LCRDiv"]/div[4]/div/Select[1]
${DELPROVINCE}   //*[@id="simplewizardstep2"]/div[7]/div[2]/div/select
${DELCITY}       //*[@id="simplewizardstep2"]/div[7]/div[3]/div/select
${DELBARANGAY}   //*[@id="simplewizardstep2"]/div[8]/div[1]/div/select
${DELADDRESS1}   //input[@placeholder='House/Apartment/Unit/Floor No., Building Name, Company Name (if office), Street Name']
${DELADDRESS2}   //*[@id="simplewizardstep2"]/div[9]/div/div/input[1]
${DELADDRESS3}   //*[@id="simplewizardstep2"]/div[10]/div/div/input[1]
${DELZIPCODE}   id=zipCode
${DELNEXTBUTTON}   //button[text()='NEXT']
${FORIEGNCOUNTRY}   //*[@id="simplewizardstep2"]/div[7]/div[1]/div/select[1]
${FEDEXPOPUP}   //*[@id="FedexPopUp"]/div/div/div[2]/div/button[2]
${ACCEPT}   //*[@id="addDHLButton"]
${DHLACCEPT}   //*[@id="dhldiv"]/div/div[3]/button[2]
${REQUESTERSEDIT}   //*[@id="simplewizardstep3"]/div[2]/div/div/table/tbody/tr/td[4]/a/i
${ACKNOWLEDGEPRINT}   //*[@id="printBtn"]
${ADDNEWRESUEST1}   //*[@id="addNewReqBtn"]
${OKPOPUP}   //*[@id="AlertButton"]
${ADDCENOMAR}   //*[@id="Cenomar"]/span
${ADDBIRTH}   //*[@id="Birth"]
${ADDDEATH}   //*[@id="Death"]
${ADDDMARRIAGE}   //*[@id="Marriage"]
#SUMMARY BIRTH
${SCROLLCONFIRMTN}   //button[text()='CONFIRM']
${SCROLLAFP}   //*[@id="btnTemp"]
${CONFCONFBTN}   //button[text()='CONFIRM']
${CONSENTEDIT}   //*[@id="editBtn"]
${SUMMARYCANCEL}   //*[@id="cancel"]
${CONFNEXTBTN}   //button[text()='NEXT']
${Deliveryradio}   //*[@id="pickupDiv"]/div[2]/label[1]/span
${Summarycheckbox1}    //*[@id="dynamicCheckboxContainer"]/label[1]/input
${Summarycheckbox2}    //*[@id="dynamicCheckboxContainer"]/label[2]/input
${Summarycheckbox3}    //*[@id="dynamicCheckboxContainer"]/label[3]/input
${Summarycheckbox4}    //*[@id="dynamicCheckboxContainer"]/label[4]/input
${Summarycheckbox5}    //*[@id="dynamicCheckboxContainer"]/label[5]/input
${Summarycheckbox6}     //*[@id="checkOthers"]
${Summarycheckbox6TEXT}   //*[@id="checkOtherstxt"]
${SummaryNextbutton}    //*[@id="btnSubmitpopup"]
${REQUESTEDIT}   //*[@id="simplewizardstep3"]/div[1]/div/div/table/tbody/tr/td[7]/a[1]/i
${REQUESTDELETE}   //*[@id="simplewizardstep3"]/div[1]/div/div/table/tbody/tr/td[7]/a[2]/i
${DELETENO}   //*[@id="confirm1"]/div[2]/div[2]/button[2]
${DELYES}   //*[@id="btnRightCallBack"]
${CENOMAREDIT}   //*[@id="cenomarpopup"]/div/div/div/div/div[3]/button[1]
${DHLTEXTBOX}   //*[@placeholder='Piece Number']
${DHLTEXTBOX1}   //*[@placeholder='Confirmation number']
${DHLSUBMIT}   //*[@id="dhlExpressSubmit"]
${SERSUBMIT}   //*[@id="dhldetailsPopUp"]/div/div/div[2]/div[5]/button[2]
${ADDDHL}   //*[@id="dhldiv"]/div/div[2]/button[2]
#Acknowledgement    BIRTH
${SCROLLPAYONLINE}   id=payOnlineBtn
${PAYONLINEBTN}   id=payOnlineBtn
${TERMSCANCEL}   //*[@id="skrollr-body"]/div[1]/div/div[2]/a
${QUESTIONCANCEL}   //*[@id="QuestionAnswersModal"]/div/div/div/div/div[4]/a

#Proceed To Payment BIRTH
${PAYNOW}   //button[@id='payNow']
${PROCEED}   //button[text()='PROCEED']
${VISABTN}   //img[@alt='Visa']
${CARDNUMBER}   //input[@id='cardNo2']
${PAYMONTH}   id=epMonth2
${PAYYEAR}   id=epYear2
${CARDHOLDER}   //input[@name='cardHolder2']
${SECURITYCODE}   //input[@name='securityCode2']
${HOLDEREMAIL}   //input[@name='holderEmail2']
${PAYSUBMIT}   //input[@name='submit-b']
${PAYCONTINUE}   //input[@value='Continue']


#Requester Detail Death
${DEATHDIV}   //div[@class='box div_Death div_IconHome']
${WARNINGMSG}   //*[@id="Errorbox"]/div/p
${DECEASEDLNAME}     id=txtDeceasedLastName
${DECEASEDFNAME}     id=txtDeceasedFirstName
${DPROVINCE1}      //select[@id='deathProvince']
${DMUNCIPALCITY}   //select[@id='deathCity']
${DEATHDATE}     xpath=//input[@id='DeathDate']
${BIRTHSEX}      xpath=//span[@class='text radio-lable']
${BIRTHFATHERLNAME}     id=txtBCCDFatherLastName
${BIRTHFATHERFNAME}     id=txtBCCDFatherFirstName
${BIRTHMOTHERLNAME}     id=txtBCCDMotherLastName
${BIRTHMOTHERFNAME}     id=txtBCCDMotherFirstName
${DEATHCOUNTRY}  id=deathCountry

#Requester Detail Marriage
${MARRIAGEDIV}   //div[@class='box div_Marriage div_IconHome']
${HUSBANDLNAME}     id=txtHusbandLastName
${HUSBANDFNAME}     id=txtHusbandFirstName
${WIFELNAME}    id=txtWifeLastName
${WIFEFNAME}    id=txtWifeFirstName
${MPROVINCE1}      //select[@id='marriageProvince']
${MMUNCIPALCITY}   //select[@id='marriageCity']
${MARRIAGEDATE}     xpath=//input[@id='MarriageDate']
${MCOUNTRY}   id=marriageCountry


#Requester Detail Cenomar
${CENOMARDIV}   //*[@id="thumbNailDivView"]/div[2]/div[2]
${CENOMARCONFIRM}  //*[@id="cenomarpopup"]/div/div/div/div/div[3]/button[2]
${CENOMARLNAME}   //*[@id="txtCENOMARChildLastName"]
${CENOMARFNAME}   //*[@id="txtCENOMARChildFirstName"]

#AFPPGMC ECOPY-BIRTH
${AFPPGMC}       //*[@id="afppgmcecopy"]
${AFPPGMCBIRTH}  //*[@id="afppgmcecopy"]/ul/li[1]/a
${AFPPGMCDEATH}  //*[@id="afppgmcecopy"]/ul/li[2]/a
${AFPPGMCMARRIAGE}   //*[@id="afppgmcecopy"]/ul/li[3]/a
${AFPPGMCCENOMAR}   //*[@id="afppgmcecopy"]/ul/li[4]/a




