*** Settings ***
Library    SeleniumLibrary
Resource    ../CommonWeb.robot

*** Variables ***
${TEAM_HEADER_LABEL} =    css=#team > div > div:nth-child(1) > div > h2
*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${TEAM_HEADER_LABEL}
    
Validate Page Contents
    ${ElementText} =    Get Text    ${TEAM_HEADER_LABEL}
    Should Be Equal As Strings    ${ElementText}    Our Amazing Team    ignore_case=true
    # Element Text Should Be    ${TEAM_HEADER_LABEL}    OUR AMAZING TEAM   
    