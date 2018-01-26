*** Settings ***
Library           RequestsLibrary
Library           Collections
Library           DatabaseLibrary
Library           Selenium2Library
Library           requests
Resource          keywords.txt
Library           String

*** Test Cases ***
getCookies
    open Browser    http://192.168.0.137:6060/index
    input text    id=loginName    scott
    Input Text    name=prepassword    123456
    Input Text    id=kaptchaCode    1
    sleep    2
    Click Button    id=btn-submit
    ${c}    get Cookies
    log    ${c}
    Close All Browsers
