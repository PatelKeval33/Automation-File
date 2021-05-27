*** Settings ***
Documentation    Talk about what this suite of tests does
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/FrontOfficeApp.robot
Test Setup    Being Web Test
Test Teardown    End Web Test

# robot -d result tests/Font_office.robot

*** Variables ***
${BROWSER} =    chrome
${URL} =   http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]    This is test 1
    [Tags]    test1
    FrontOfficeApp.Go to Landing page
    FrontOfficeApp.Go to "Team" page

"Team" page should match requirements
    [Documentation]    This is test 2
    [Tags]    test2
    FrontOfficeApp.Go to Landing page
    FrontOfficeApp.Go to "Team" page
    FrontOfficeApp.Validate "Team" page