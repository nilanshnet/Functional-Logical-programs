% program to find the last element 
% of a given list

% first fact for only one element
% if one is left then 
% that becomes last element
lastoflist([X],X).

% rule to determine the last 
% element of the list by applying 
% recurrsion

lastoflist([_|Element],X) :- 
       lastoflist(Element,X).