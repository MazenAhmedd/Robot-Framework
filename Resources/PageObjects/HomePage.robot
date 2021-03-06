*** Settings ***
Library    SeleniumLibrary
Resource   ../PageLocators/HomePageLocators.robot
*** Keywords ***
Verify Registeration Completed
	Wait Until Page Contains Element    ${REGISTRATION_COMPLETED_LABEL}
    page should contain element    ${REGISTRATION_COMPLETED_LABEL}
    Element Text Should Be    ${REGISTRATION_COMPLETED_LABEL}   Your registration completed
    click link  link:Log out
	[Return]  i am a return value
Verify User logged in successfuly
	wait until page contains element    ${LOGOUT_LINK}
    page should contain link    ${LOGOUT_LINK}
