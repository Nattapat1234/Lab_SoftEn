*** Settings ***
Resource    resource.robot

*** Test Cases ***
Open Website
    Open Browser To Form Page

Invalid Email
    Open Browser To Form Page
    Fill Contact Information    Somsong    Sandee    Sodsai Sandee    Europe    Mother    somsong@    081-111-1234
    Page Should Contain    Please enter a valid email address.
