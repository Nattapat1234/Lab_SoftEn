*** Settings ***
Resource    resource.robot

*** Test Cases ***
Open Form
    Open Browser To Form Page

Empty Destination
    Open Browser To Form Page
    Fill Contact Information    Somsong    Sandee    Sodsai Sandee    ${EMPTY}    Mother    somsong@kkumail.com    081-111-1234
    Page Should Contain    Please enter your destination.
