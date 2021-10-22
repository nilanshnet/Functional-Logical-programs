% program to find the max value of the
%  elements of the given list

% fact 1, the terminal case 
% X is the max element of list with element X
maxoflist([X],X).

maxoflist([Start|EndTail],X) :-
    maxoflist(EndTail,Y), (Start > Y -> X=Start; Y=X).
% if else condition to check if the first element is greater than the currentMax   
   
   