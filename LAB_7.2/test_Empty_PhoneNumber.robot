*** Settings ***
Resource    resource.robot

*** Test Cases ***
Open Form
    Open Browser To Form Page

Empty Phone Number
    Open Browser To Form Page
    Fill Contact Information    Somsong    Sandee    Sodsai Sandee    Europe    Mother    somsong@kkumail.com    ${EMPTY}
    Page Should Contain    Please enter a phone number.
