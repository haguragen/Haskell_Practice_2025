
color_code("black", 0).
color_code("brown", 1).
color_code("red", 2).
color_code("orange", 3).
color_code("yellow", 4).
color_code("green", 5).
color_code("blue", 6).
color_code("violet", 7).
color_code("grey", 8).
color_code("white", 9).
value([C1,C2|_], Value):-
    color_code(C1,V1),
    color_code(C2,V2),
    Value is V1*10+V2.
    
