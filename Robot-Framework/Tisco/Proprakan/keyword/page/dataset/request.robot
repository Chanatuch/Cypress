*** Settings ***
Resource    ../../../resource/import.robot

*** Variables ***
${url_dataset}    https://api-v1-service.c1-beta-tiscogroup.com/public/data-v3-service/state2/dep-api/journal/query

${header.content_type}    application/json
${header.app_meta}    {"user_id":"22cef230-560d-4484-9673-9699ea517ecf", "user_name":"chanakanl@tisco.co.th", "request_datetime":"08/07/2019 10:00:21", "log_session_id":"fffcc966-73ca-4bce-a8e4-bb81f1bd256e", "sub_state":"state2", "app_code":"" , "ip":""}
${header.client_id}    1380dd63a996465fbbf636c3345e9621
${header.client_secret}    874EeE1CEA5a4826AA3a0b8d1146810d

${body_query}    select _61,_62  from 1_2030 where _80005 = 2 and _6260 = \"@number@\"
${body_string}    {"request_data": {"query": "select _61,_62  from 1_2030 where _80005 = 2 and _6260 = \"12306130000000009\"","$options": {"limit": 400,"start": 1}}}

*** Keywords ***
Set up body
    [Arguments]    ${track_number}
    ${body_query2}    Replace String    ${body_query}    @number@    ${track_number}
    ${option}    Create Dictionary
    ...    limit=${400}
    ...    start=${1}

    ${request_data}    Create Dictionary    
    ...    query=${body_query2}
    ...    $option=${option}

    ${body}    Create Dictionary    request_data=${request_data}
    Set Global Variable    ${body}

Set up header
    ${data_set.header}    Create Dictionary 
    ...    Content-Type=${header.content_type}
    ...    app-meta=${header.app_meta}
    ...    client_id=${header.client_id}
    ...    client_secret=${header.client_secret}
    Set Global Variable    ${data_set.header}

Send api request lead notify and return response
    [Arguments]    ${track_number}
    Set up body    ${track_number}
    Set up header
    Create Session    alias=mysession    url=${url_dataset}     headers=${data_set.header}
    ${response}=    POST On Session    alias=mysession      url=${url_dataset}    json=${body}   headers=${data_set.header}
    [Return]    ${response.json()}

Test dataset zap
    [Arguments]    ${track_number}
    ${response}    Send api request lead notify and return response    ${track_number}
    log    ${response}
    log    ${response}[response_data][0][_61]
    log    ${response}[response_data][0][_62]
    ${_61_second}=    Evaluate    ${response}[response_data][0][_61]/1000
    ${_62_second}=    Evaluate    ${response}[response_data][0][_62]/1000
    #Convert milisecond to date time    ${response}[response_data][0][_61]
    ${date_time}    Convert Milliseconds To Date    ${_61_second}
    log    ${date_time}
    ${date_time}    Convert Milliseconds To Date    ${_62_second}
    log    ${date_time}
    ${insure_day}    Evaluate    (${response}[response_data][0][_62]-${response}[response_data][0][_61])/86400000
    
    Should be equal    ${insure_day}    ${365}

Test dataset zcp
    [Arguments]    ${track_number}
    ${response}    Send api request lead notify and return response    ${track_number}
    log    ${response}
    log    ${response}[response_data][0][_61]
    log    ${response}[response_data][0][_62]
    ${_61_second}=    Evaluate    ${response}[response_data][0][_61]/1000
    ${_62_second}=    Evaluate    ${response}[response_data][0][_62]/1000
    #Convert milisecond to date time    ${response}[response_data][0][_61]
    ${date_time}    Convert Milliseconds To Date    ${_61_second}
    log    ${date_time}
    ${date_time}    Convert Milliseconds To Date    ${_62_second}
    log    ${date_time}
    ${insure_day}    Evaluate    (${response}[response_data][0][_62]-${response}[response_data][0][_61])/86400000
    
    Should be equal    ${insure_day}    ${366}