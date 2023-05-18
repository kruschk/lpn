% Exercise 6.2

% Problem

% A palindrome is a word or phrase that spells the same forwards and backwards.
% For example, ‘rotator’, ‘eve’, and ‘nurses run’ are all palindromes. Write a
% predicate palindrome(List), which checks whether List is a palindrome. For
% example, to the queries

% ?- palindrome([r, o, t, a, t, o, r]).

% and

% ?- palindrome([n, u, r, s, e, s, r, u, n]).

% Prolog should respond yes, but to the query

% ?- palindrome([n, o, t, h, i, s]).

% it should respond no.

% Solution

% rev/2
rev(L, R) :- rev(L, [], R).

% rev/3
rev([H|T], A, R) :- rev(T, [H|A], R).
rev([], A, A).

% palindrome/1
palindrome(List) :- rev(List, List).
