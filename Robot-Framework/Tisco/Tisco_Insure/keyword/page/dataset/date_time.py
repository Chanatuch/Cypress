import datetime

def convert_milliseconds_to_date(timestamp_milli):
    #timestamp_sec=1686589200000
    timestamp_sec=int(timestamp_milli)
    date_time = datetime.datetime.fromtimestamp(timestamp_sec)
    return date_time.strftime("%Y-%m-%d %H:%M:%S")