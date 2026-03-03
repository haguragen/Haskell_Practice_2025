score(X, Y, Score):-
    Dis is X*X + Y*Y,
    (Dis =<1 -> Score = 10;
    Dis =<25 -> Score = 5;
    Dis=<100 -> Score = 1;
    Score = 0).
