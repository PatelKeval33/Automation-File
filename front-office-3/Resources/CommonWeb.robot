*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER} =    chrome
${URL} =    http://www.robotframeworktutorial.com/front-office/
*** Keywords ***
Being Web Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
End Web Test
    Close All Browsers