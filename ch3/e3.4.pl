% Exercise 3.4

% Problem

% Define a predicate greater_than/2 that takes two numerals in the notation
% that we introduced in the text (that is, 0, succ(0), succ(succ(0)), and so
% on) as arguments and decides whether the first one is greater than the second
% one. For example:

% ?- greater_than(succ(succ(succ(0))), succ(0)).
% yes
% ?- greater_than(succ(succ(0)), succ(succ(succ(0)))).
% no

% Solution

numeral(0).
numeral(succ(X)) :- numeral(X).

add(0, Y, Y).
add(succ(X), Y, succ(Z)) :- add(X, Y, Z).

greater_than(succ(_), 0).
greater_than(succ(X), succ(Y)) :- greater_than(X, Y).
