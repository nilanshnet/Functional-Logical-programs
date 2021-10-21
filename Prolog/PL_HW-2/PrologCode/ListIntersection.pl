 Write a program that succeeds if the intersection 
% of two given list parameters is empty

% intersection : when there are same elements in lists

% Intersection ([1,2,3] , [3,4,5,6]) = False
% Intersection ([], []) = [] , no intersection so True
% Intersection ([1], [2,3,4] ) = True 

intersectionReturn ( [], [], []).
intersectionReturn ( [], _ , []).
intersectionReturn ( _, [], []).
intersectionReturn ( [H|T], Y, Z) :-

    
% to return the joined lists together as one list
joinlists ([], L, L).
joinlists ([H|T], L1, [H|NewTail]) :-
    joinlists (T, L1, NewTail).

% to check if an element is repeating or not 
isRepeating (X, [X|_], [X]).
isRepeating ( X, [_|Ta], []) :-
    isRepeating (X, T, [])