% Practical session 5.3

% Problem

% Another fundamental operation on vectors is the dot product. This operation
% combines two vectors of the same dimension and yields a number as a result.
% The operation is carried out as follows: the corresponding elements of the
% two vectors are multiplied, and the results added. For example, the dot
% product of [2, 5, 6] and [3, 4, 1] is 6+20+6, that is, 32. Write a 3-place
% predicate dot whose first argument is a list of integers, whose second
% argument is a list of integers of the same length as the first, and whose
% third argument is the dot product of the first argument with the second. For
% example, the query

% ?- dot([2, 5, 6], [3, 4, 1], Result).

% should yield

% Result = 32

% Solution

% Non-tail-recursive
% dotNTR/3
dotNTR([], [], 0).
dotNTR([H1 | T1], [H2 | T2], R) :- dotNTR(T1, T2, D), R is H1 * H2 + D.

% Tail-recursive
% dot/3
dot(L1, L2, Result) :- dot(L1, L2, 0, Result).
% dot/4
dot([H1 | T1], [H2 | T2], Acc, Result) :- A is Acc + H1 * H2,
                                          dot(T1, T2, A, Result).
dot([], [], Acc, Acc).
