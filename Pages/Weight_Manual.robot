*** Settings ***
Library             AppiumLibrary
Resource            ..\\Utils\\AppiumUtils.robot

*** Variables *** 
${Weight_Manual}     //android.widget.ImageView[@content-desc="บันทึกชั่งรับวัตถุดิบ Manual"]  
${index}             1
${index1}            0
${index2}            0
${Value}             //android.view.View[@index="3"]  
${Weight20-25}       //android.view.View[@index="2"] 
${Weight25-30}       //android.view.View[@index="4"] 
${Back}              //android.view.View[@bounds="[22,88][132,198]"]
${Weight}            //android.widget.EditText[@text="0.00"]
${Accept}            //android.view.View[@content-desc="Accept"] 
${Confirm}           //android.view.View[@content-desc="Confirm received"] 
${YesBtn}            //android.widget.Button[@content-desc="Yes"] 

*** Keywords ***
Weight Manual Test
    Click Element with Appium -> ${Weight_Manual} timeout 10 sec.
    sleep     4
    Swipe down ${index} in range 10 time
    Click Element with Appium -> ${Value} timeout 10 sec.
    sleep    2 
    Click Element with Appium -> ${Weight20-25} timeout 10 sec.
    Click Element with Appium -> ${Weight} timeout 10 sec.
    sleep     2
    :FOR    ${index1}    IN RANGE    10 
    \    sleep     0.5
    \    Press Keycode    9
    \    Press Keycode    7
    \    Click Element with Appium -> ${Accept} timeout 10 sec.
    Click Element with Appium -> ${Back} timeout 10 sec. 
    sleep     2
    Click Element with Appium -> ${Weight25-30} timeout 10 sec.
    Click Element with Appium -> ${Weight} timeout 10 sec.
    :FOR    ${index2}    IN RANGE    10 
    \    sleep     0.5
    \    Press Keycode    9
    \    Press Keycode    7
    \    Click Element with Appium -> ${Accept} timeout 10 sec.
    Click Element with Appium -> ${Back} timeout 10 sec. 
    sleep    2
    Click Element with Appium -> ${Confirm} timeout 10 sec.  
    Click Element with Appium -> ${YesBtn} timeout 10 sec.
    sleep    2
    Click Element with Appium -> ${Back} timeout 10 sec.  
    sleep    2
    Click Element with Appium -> ${Back} timeout 10 sec.
    Go Back
    Close Application