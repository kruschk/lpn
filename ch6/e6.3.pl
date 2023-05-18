% Exercise 6.3

% Problem

% Write a predicate toptail(InList, OutList) which says no if InList is a list
% containing fewer than 2 elements, and which deletes the first and the last
% elements of InList and returns the result as OutList, when InList is a list
% containing at least 2 elements. For example:

% toptail([a], T).
% no

% toptail([a, b], T).
% T = []

% toptail([a, b, c], T).
% T = [b]

% (Hint: here’s where append/3 comes in useful.)

% Solution

% append/3
append([], L, L).
append([H | T1], L, [H | T2]) :- append(T1, L, T2).

% toptail/2
toptail([_|T], R) :- append(R, [_], T).
