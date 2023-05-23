% Practical session 11.1

% Problem

% Sets can be thought of as lists that don’t contain any repeated elements. For
% example, [a, 4, 6] is a set, but [a, 4, 6, a] is not (as it contains two
% occurrences of a) . Write a Prolog program subset/2 that is satisfied when
% the first argument is a subset of the second argument (that is, when every
% element of the first argument is a member of the second argument). For
% example:

% ?-  subset([a, b], [a, b, c])
% yes

% ?-  subset([c, b], [a, b, c])
% yes

% ?-  subset([], [a, b, c])
% yes

% Your program should be capable of generating all subsets of an input set by
% backtracking. For example, if you give it as input

% ?-  subset(X, [a, b, c])

% it should successively generate all eight subsets of [a, b, c].

% Solution

subset(Subset, [_|Set]) :- subset(Subset, Set).
subset([Head|Subset], [Head|Set]) :- subset(Subset, Set).
subset([], []).
