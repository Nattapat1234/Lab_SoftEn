*** Settings ***
Resource    resource.robot

*** Test Cases ***
Open Form
    Open Browser To Form Page

Empty Email
    Open Browser To Form Page
    Fill Contact Information    Somsong    Sandee    Sodsai Sandee    Europe    Mother    ${EMPTY}    081-111-1234
    Page Should Contain    Please enter a valid email address.
