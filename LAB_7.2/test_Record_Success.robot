*** Settings ***
Resource    resource.robot

*** Test Cases ***
Open Website
    Open Browser To Form Page

Record Success
    Open Browser To Form Page
    Fill Contact Information    Somsong    Sandee    Sodsai Sandee    Europe    Mother    somsong@kkumail.com    081-111-1234
    Verify Submission Result    Completed    Our agent will contact you shortly.    Thank you for your patient.
