% Exercise 10.3

% Problem

% Without using cut, write a predicate split/3 that splits a list of integers
% into two lists: one containing the positive ones (and zero), the other
% containing the negative ones. For example:

% split([3, 4, -5, -1, 0, 4, -9], P, N)

% should return:

% P = [3, 4, 0, 4]

% N = [-5, -1, -9].

% Then improve this program, without changing its meaning, with the help of the
% cut.

% Solution

% Without cuts
split([Head|Tail], Positives, [Head|Negatives]) :-
    Head < 0,
    split(Tail, Positives, Negatives).
split([Head|Tail], [Head|Positives], Negatives) :-
    0 =< Head,
    split(Tail, Positives, Negatives).
split([], [], []).

% With cuts
splitCut([Head|Tail], Positives, [Head|Negatives]) :-
    Head < 0,
    !,
    splitCut(Tail, Positives, Negatives).
splitCut([Head|Tail], [Head|Positives], Negatives) :-
    0 =< Head,
    !,
    splitCut(Tail, Positives, Negatives).
splitCut([], [], []).
