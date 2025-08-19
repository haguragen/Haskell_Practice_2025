letters(1,[a, e, i, o, u, l, n, r, s, t]).
letters(2,[d, g]).
letters(3,[b, c, m, p]).
letters(4,[f, h, v, w, y]).
letters(5,[k]).
letters(8,[j, x]).
letters(10,[q, z]).

letters_score(Letter,Scor):-
    letters(Scor,L),
    member(Letter,L).

scor([],0).
scor([H|T],Score):-
    letters_score(H,S1),
    scor(T,S2),
    Score is S1 + S2.
    
score(Word, Score):-
    string_lower(Word,Lower),
    string_chars(Lower,Wchar),
    scor(Wchar,Score).
    
