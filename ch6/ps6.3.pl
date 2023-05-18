% Practical session 6.2

% Problem

% We ‘flatten’ a list by removing all the square brackets around any lists it
% contains as elements, and around any lists that its elements contain as
% elements, and so on, for all nested lists. For example, when we flatten the
% list

% [a, b, [c, d], [[1, 2]], foo]

% we get the list

% [a, b, c, d, 1, 2, foo]

% and when we flatten the list

% [a, b, [[[[[[[c, d]]]]]]], [[1, 2]], foo, []]

% we also get

% [a, b, c, d, 1, 2, foo].

% Write a predicate flatten(List, Flat) that holds when the first argument List
% flattens to the second argument Flat. This should be done without making use
% of append/3.

% Solution

% flatten/2
flatten([], []).
flatten([H|T1], [H|T2]) :- H \= [], H \= [_|_], flatten(T1, T2).
flatten([H|T], Flat) :- flatten(H, Prefix),
                        flatten(T, Suffix),
                        append(Prefix, Suffix, Flat).

% From https://github.com/dragonwasrobot/learn-prolog-now-exercises
% flattenAcc/2
flattenAcc(List, Flat) :- flattenAcc(List, [], Flat).
% flattenAcc/3
flattenAcc([], A, A).
flattenAcc(X, A, [X|A]) :- X \= [], X \= [_|_].
flattenAcc([H|T], A, F) :- flattenAcc(T, A, Tmp), flattenAcc(H, Tmp, F).
