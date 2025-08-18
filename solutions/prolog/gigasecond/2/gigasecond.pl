:- use_module(library(date_time)).
add_gigasecond(Date, GigasecondDate):-
    date_time_stamp(Date,Stamp),
    FutureStamp is Stamp + 1000000000,
    stamp_date_time(FutureStamp,GigasecondDate,'UTC').

