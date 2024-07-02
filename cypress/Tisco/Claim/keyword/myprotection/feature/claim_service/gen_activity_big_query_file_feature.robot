***Keywords***
Input and Click Generate Claim Activity Report & Layout Big Query               
    [Arguments]              ${value_gen_activity_bigQuery_file.start_date}   ${value_gen_activity_bigQuery_file.end_date}
    gen_activity_big_query_file_page.Input Generate Claim Activity Report & Layout Big Query (Start date)   ${value_gen_activity_bigQuery_file.start_date}
    gen_activity_big_query_file_page.Input Generate Claim Activity Report & Layout Big Query (End date)     ${value_gen_activity_bigQuery_file.end_date}
    gen_activity_big_query_file_page.Click "OK" button
    gen_activity_big_query_file_page.Check Generate Claim Activity Report & Layout Big Query Completed
    common.Wait for process 5s