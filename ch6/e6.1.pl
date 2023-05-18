% Exercise 6.1

% Problem

% Let’s call a list doubled if it is made of two consecutive blocks of elements
% that are exactly the same. For example, [a, b, c, a, b, c] is doubled (it’s
% made up of [a, b, c] followed by [a, b, c]) and so is [foo, gubble, foo,
% gubble]. On the other hand, [foo, gubble, foo] is not doubled. Write a
% predicate doubled(List) which succeeds when List is a doubled list.

% Solution

% append/3
append([], L, L).
append([H | T1], L, [H | T2]) :- append(T1, L, T2).

% doubled/1
doubled(List) :- append(Sublist, Sublist, List).
