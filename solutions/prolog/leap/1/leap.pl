leap(0).
divisible_by_four(Year):-
    Year mod 4 =:= 0.
not_divisible_by_hundred(Year):-
    Year mod 100 =\= 0.
divisile_by_four_hundred(Year):-
    Year mod 400 =:= 0.   
leap(Year):-
    (
    divisile_by_four_hundred(Year);
    divisible_by_four(Year),not_divisible_by_hundred(Year)
    ).
