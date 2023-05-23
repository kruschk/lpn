% Exercise 11.3

% Problem

% Write a predicate sigma/2 that takes an integer n > 0 and calculates the sum
% of all integers from 1 to n. For example:

% ?- sigma(3, X).
% X = 6
% yes
% ?- sigma(5, X).
% X = 15
% yes

% Write the predicate so that results are stored in the database (there should
% never be more than one entry in the database for each value) and are reused
% whenever possible. For example, suppose we make the following query:

% ?- sigma(2, X).
% X = 3
% yes
% ?- listing.
% sigmares(2, 3).

% Then, if we go on to ask

% ?- sigma(3, X).

% Prolog should not calculate everything new, but should get the result for
% sigma(2, 3) from the database and only add 3 to that. It should then answer:

% X = 6
% yes
% ?- listing.
% sigmares(2, 3).
% sigmares(3, 6).

% Solution

:- dynamic sigmares/2.

sigmares(0, 0). % Seed the cache.

sigma(Nn, Rn) :- sigmares(Nn, Rn), !. % Get the cached result, if it exists.
sigma(Nn, Rn) :- 0 < Nn,
                 Nnsub1 is Nn - 1,
                 sigma(Nnsub1, Rnsub1),
                 Rn is Rnsub1 + Nn,
                 assert(sigmares(Nn, Rn)). % Cache the result.
