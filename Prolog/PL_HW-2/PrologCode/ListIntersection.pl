% Write a program that succeeds if the intersection 
% of two given list parameters is empty

% intersection : when there are same element(s) in lists

% succeeds for empty lists
intersectionE([],[]).
%succeeds for one of the empty lists
intersectionE([],_).
intersectionE(_,[]).

% checking for a same element of it is not a member of 
intersectionE(L1, L2) :-
    \+ (checkIfmember(X, L1), checkIfmember(X, L2)).


checkIfmember(X,[X|_]).
checkIfmember(X,[_|Ta]) :-
    checkIfmember(X, Ta).


% references: stackoverflow.com