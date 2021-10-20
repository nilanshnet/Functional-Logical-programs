lastoflist([_|T],Y) :-
    lastoflist(T,Y).
lastoflist([X],X).