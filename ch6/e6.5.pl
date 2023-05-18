% Exercise 6.5

% Problem

% Write a predicate swapfl(List1, List2) which checks whether List1 is
% identical to List2, except that the first and last elements are exchanged.
% Here’s where append/3 could come in useful again, but it is also possible to
% write a recursive definition without appealing to append/3 (or any other)
% predicates.

% Solution

% append/3
append([], L, L).
append([H | T1], L, [H | T2]) :- append(T1, L, T2).

% swapfl/2
swapfl(List1, List2) :- append([F|M], [L], List1),
                        append([L|M], [F], List2).

% swapflRec/4
swapflRec(First, [H|T1], Last, [H|T2]) :- swapflRec(First, T1, Last, T2).
swapflRec(First, [Last], Last, [First]).

% swapflRec/2
swapflRec([H1|T1], [H2|T2]) :- swapflRec(H1, T1, H2, T2).
