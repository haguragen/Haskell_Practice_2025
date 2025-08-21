square(1,1).
square(SquareNumber, Value):-
    Prev_Square is SquareNumber - 1,
    Prev_Square >0,
    Prev_Square =<63,
    square(Prev_Square,V2),
    Value is 2 * V2.

total(Value):-
    count_from_to(1,64,0,Value).
    
count_from_to(Start,End,Acc,Value):-
    (Start=<End ->
    square(Start,V1),
    Acc1 is Acc + V1,
    Next is Start + 1,
    count_from_to(Next,End,Acc1,Value);Value =Acc).
    
