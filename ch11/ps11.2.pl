% Practical session 11.2

% Problem

% Using the subset predicate you have just written, and findall/3, write a
% predicate powerset/2 that takes a set as its first argument, and returns the
% powerset of this set as the second argument. (The powerset of a set is the
% set of all its subsets.) For example:

% ?-  powerset([a, b, c], P)

% should return

% P  =  [[], [a], [b], [c], [a, b], [a, c], [b, c], [a, b, c]]

% It doesn’t matter if the sets are returned in some other order. For example,

% P  =  [[a], [b], [c], [a, b, c], [], [a, b], [a, c], [b, c]]

% is fine too.

% Solution

subset(Subset, [_|Set]) :- subset(Subset, Set).
subset([Head|Subset], [Head|Set]) :- subset(Subset, Set).
subset([], []).

powerset(Set, Result) :- findall(X, subset(X, Set), Result).
