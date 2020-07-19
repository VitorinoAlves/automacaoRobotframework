***Settings***
Documentation       Codigo base para abrir uma sessao com appium service

Library     AppiumLibrary

Resource    kws.robot

***Keywords***
#Hooks
Open Session
    Open Application        http://localhost:4723/wd/hub        
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/ninjachef.apk
    ...                     udid=b994835
    ...                     adbExecTimeout=60000

Close Session
    Capture Page Screenshot
    Close Application