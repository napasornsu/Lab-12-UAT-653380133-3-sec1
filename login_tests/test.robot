# นางสาวนภสร สุบงกช 653380133-3 sec1
*** Settings ***
Resource            resource.robot

*** Variables ***
${SERVER}           http://localhost:7272/Lab12/Registration.html

${BROWSER}          Firefox

*** Test case ***
Open Event Registration Page
    Open Browser    ${SERVER}   ${BROWSER}
    Maximize Browser Window
    Input Text    username_field    demo
    Input Text    password_field    mode
    Click Button  login_button
    Location Should Be    url=http://localhost:7272/Lab12/Registration.html
    Title Should Be    Welcome Page
    Close Browser