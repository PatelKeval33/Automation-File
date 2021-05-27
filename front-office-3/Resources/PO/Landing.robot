*** Settings ***
Library    SeleniumLibrary
Resource    ../CommonWeb.robot

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =    id=mainNav

*** Keywords ***
Navigate To
    Go To    ${URL}
    
Verify Page Loaded
    Wait Until Page Contains Element    ${LANDING_NAVIGATION_ELEMENT}
    