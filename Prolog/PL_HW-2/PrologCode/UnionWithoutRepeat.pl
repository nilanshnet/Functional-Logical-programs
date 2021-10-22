% Write a program that returns a list containing the union 
% of the elements of two given lists. 
% Assume the list represents sets (i.e. unique elements) 
% and the union returns unique elements too.

% when one list element is not repeating in the other list 
joinlists([], X, X).
joinlists([H|Tail], X, [H|Y]):-
    joinlists(Tail, X, Y) -> \+ ifmember(H, X).

% in case when element from List1 is a member of List2 as well
joinlists([H|Tail], X, List):-
    joinlists(Tail, X, List) ->  ifmember(H,X).

% check if element is in the list
ifmember(X,[X|_]).
ifmember(X,[H|T]):-
    ifmember(X,T) -> H=\=X.

