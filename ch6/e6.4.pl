% Exercise 6.4

% Problem

% Write a predicate last(List, X) which is true only when List is a list that
% contains at least one element and X is the last element of that list. Do this
% in two different ways:

% 1. Define last/2 using the predicate rev/2 discussed in the text.
% 2. Define last/2 using recursion.

% Solution

% 1.

% rev/2
rev(L, R) :- rev(L, [], R).

% rev/3
rev([H|T], A, R) :- rev(T, [H|A], R).
rev([], A, A).

% lastRev/2
lastRev(List, X) :- rev(List, [X|_]).

% 2.

% lastRec/2
lastRec([H], H).
lastRec([_|T], X) :- last(T, X).
