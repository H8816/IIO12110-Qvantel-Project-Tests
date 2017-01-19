*** Settings ***
Documentation     An example resource file
Library           Selenium2Library

*** Variables ***
${HOST}           	54.237.239.118
${LOGIN URL}      	http://${HOST}/
${WELCOME URL}    	http://${HOST}/welcome.html
${BROWSER}        	Firefox
${USERNAME}	  	ASD
${PASSWORD}	  	ASD
${FALSE_USERNAME}	ASD
${FALSE_PASSWORD}	ASD

${USERNAME_LOCATOR}	  edit-name
${PASSWORD_LOCATOR}	  edit-pass
${SUBMIT_LOCATOR}	  edit-submit

*** Keywords ***
Open Index Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

Input Correct Name
    Input Text    ${USERNAME_LOCATOR   ${USERNAME}

Input False Name
    Input Text    ${USERNAME_LOCATOR}    ${FALSE_USERNAME}

Input Correct Password
    Input Text    ${PASSWORD_LOCATOR}    ${PASSWORD}

Input False Password
    Input Text    ${PASSWORD_LOCATOR}    ${FALSE_PASSWORD}

Send Form
    Click Button    ${SUBMIT_LOCATOR}

Page Should Contain False Username
    Page Should Contain    ${FALSE USERNAME}

Page Should Contain Correct Username
    Page Should Contain    ${USERNAME}
