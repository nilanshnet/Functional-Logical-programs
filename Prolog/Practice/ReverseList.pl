% write a program to reverse a simple list.

rev(A,R):-
    revhelper(A,[],R).

revhelper([], X, X).
revhelper([H|T], Accumulator, Reversed):-
    revhelper(T, [H|Accumulator], Reversed).