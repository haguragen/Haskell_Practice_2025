square_of_sum(N, Result):-
    sum_to(N,Sum),
    Result is Sum*Sum.
sum_to(0,0).
sum_to(N,S):-
    N>0,
    N1 is N-1,
    sum_to(N1,R1),
    S is R1+N.

sum_of_squares(0,0).
sum_of_squares(N, Result):-
    N>0,
    N1 is N-1,
    sum_of_squares(N1,R1),
    Result is N*N+R1.


difference(N, Result):-
    square_of_sum(N, R1),
    sum_of_squares(N, R2),
    Result is R1-R2.
