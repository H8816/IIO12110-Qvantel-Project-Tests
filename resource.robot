*** Settings ***

Library           Selenium2Library
Library		  FakerLibrary
*** Variables ***

${HOST}           	54.237.239.118
${INDEX_URL}      	http://${HOST}/
${WELCOME URL}    	http://${HOST}/
${REGISTER_URL}		http://${HOST}/registration
${LOGIN_URL}		http://${HOST}/login
${PHONES_URL}		http://${HOST}/phones
${PANTS_URL}		http:${HOST}/pants
${JACKETS_URL}		http://${HOST}/jackets

${BROWSER}        	Firefox

${USERNAME}	  	asd
${PASSWORD}	  	asd
${FALSE_USERNAME}	hottamale
${FALSE_PASSWORD}	hottamale
${TEST_USERNAME}	
${TEST_PASSWORD}	

${USERNAME_LOCATOR}	  name
${PASSWORD_LOCATOR}	  pass
${SUBMIT_LOCATOR}	  op

*** Keywords ***

Generate User
    [Arguments]    ${arg1}    ${arg2}
    ${arg1}=    User Name
    ${arg2}=    Password


Open Index Page
    Open Browser    ${INDEX_URL}    ${BROWSER}

Go To Register Page
    Go To    ${REGISTER_URL}

Go To Login Page
    Go To    ${LOGIN_URL}

Go To Phones Page
    Go To    ${PHONES_URL}

Wait And Check If Page Contains
    [Arguments]    ${arg1}
    Wait Until Page Contains    ${arg1}
    Page Should Contain    ${arg1}

Input Name
    [Arguments]    ${arg1}
    Wait Until Page Contains Element    ${USERNAME_LOCATOR}
    Input Text    ${USERNAME_LOCATOR}   ${arg1}

Input Password
    [Arguments]    ${arg1}
    Wait Until Page Contains Element    ${PASSWORD_LOCATOR}
    Input Text    ${PASSWORD_LOCATOR}    ${arg1}

Input Name And Password
    [Arguments]    ${arg1}    ${arg2}
    Wait Until Page Contains Element    ${USERNAME_LOCATOR}
    Input Text    ${USERNAME_LOCATOR}    ${arg1}
    Wait Until Page Contains Element    ${PASSWORD_LOCATOR}
    Input Text    ${PASSWORD_LOCATOR}    ${arg2}

Input Testdata Name And Password
    Wait Until Page Contains Element    ${USERNAME_LOCATOR}
    Input Text    ${USERNAME_LOCATOR}    ${TEST_USERNAME}
    Wait Until Page Contains Element    ${PASSWORD_LOCATOR}
    Input Text    ${PASSWORD_LOCATOR}    ${TEST_PASSWORD}

Send Form
    Wait Until Page Contains Element    ${SUBMIT_LOCATOR}
    Click Button    ${SUBMIT_LOCATOR}

High Priority Customer
    [Arguments]    ${arg1}    ${arg2}    ${arg3}
    Click Link    ${arg1}
    Page Should Not Contain    ${arg2}
    Click Link    ${arg1}
    Page Should Not Contain    ${arg2}
    Click Link    ${arg1}
    Page SHould Not Contain    ${arg2}
    Click Link    ${arg1}
    Page Should Not Contain    ${arg2}
    Click Link    ${arg1}
    Page Should Contain    ${arg2}
    Page Should Contain Image    ${arg3}
Delay
    [Arguments]    ${arg1}
    Set Selenium Speed    ${arg1}

Product Test
    [Arguments]    ${arg1}    ${arg2}    ${arg3}    ${arg4}
    Wait Until Page Contains Element    ${arg1}
    Page Should Contain Image    ${arg1}
    Page Should Contain    ${arg2}
    Page Should Contain    ${arg3}
    Page Should Contain    ${arg4}

Commercial Test
    [Arguments]    ${arg1}    ${arg2}    ${arg3}
    Click Element    ${arg1}
    Wait Until Page Contains Element    ${arg2}
    Page Should Contain Image    ${arg3}
