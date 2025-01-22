*** Settings ***
Resource    resource.robot

*** Test Cases ***
Open Form
    Open Browser To Form Page

Invalid Phone Number
    Open Browser To Form Page
    Fill Contact Information    Somsong    Sandee    Sodsai Sandee    Europe    Mother    somsong@kkumail.com    191
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678
