% Exercise 4.4

% Problem

% Write a predicate swap12(List1, List2) which checks whether List1 is
% identical to List2, except that the first two elements are exchanged.

% Solution

swap12([A, B | Tail], [B, A | Tail]).
