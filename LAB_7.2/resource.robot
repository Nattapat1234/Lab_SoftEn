*** Settings ***
Documentation     A resource file for reusable keywords and variables.
Library           SeleniumLibrary

*** Variables ***
${CHROME_BROWSER_PATH}    C:/ChromeForTesting/chrome-win64/chrome.exe
${CHROME_DRIVER_PATH}     C:/ChromeForTesting/chromedriver-win64/chromedriver.exe
${SERVER}                 localhost:7272
${BROWSER}                Chrome
${DELAY}                  1
${FORM_URL}               http://${SERVER}/Form.html

*** Keywords ***
Open Browser To Form Page
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    ${chrome_options.binary_location}  Set Variable    ${CHROME_BROWSER_PATH}
    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service(executable_path=r"${CHROME_DRIVER_PATH}")
    Create Webdriver    Chrome    options=${chrome_options}    service=${service}
    Go To    ${FORM_URL}
    Maximize Browser Window
    Title Should Be    Customer Inquiry

Fill Contact Information
    [Arguments]    ${firstname}    ${lastname}    ${contactperson}    ${destination}    ${relationship}    ${email}    ${phone}
    Input Text    firstname    ${firstname}
    Input Text    lastname    ${lastname}
    Input Text    destination    ${destination}
    Input Text    contactperson    ${contactperson}
    Input Text    relationship    ${relationship}
    Input Text    email    ${email}
    Input Text    phone    ${phone}
    Click Button    submitButton

Verify Submission Result
    [Arguments]    ${expected_title}    ${expected_message_1}    ${expected_message_2}
    Title Should Be    ${expected_title}
    Page Should Contain    ${expected_message_1}
    Page Should Contain    ${expected_message_2}
