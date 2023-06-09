% Exercise 5.3

% Problem

% Write a predicate addone/2 whose first argument is a list of integers, and
% whose second argument is the list of integers obtained by adding 1 to each
% integer in the first list. For example, the query

% ?- addone([1, 2, 7, 2], X).

% should give

% X = [2, 3, 8, 3].

addone([], []).
addone([Hl | Tl], [Hr | Tr]) :- Hr is Hl + 1, addone(Tl, Tr).
