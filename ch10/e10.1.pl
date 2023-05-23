% Exercise 10.1

% Problem

% Suppose we have the following database:

p(1).
p(2) :- !.
p(3).

% Write all of Prolog’s answers to the following queries:

% 1. ?- p(X).
% 2. ?- p(X), p(Y).
% 3. ?- p(X), !, p(Y).

% Solution

% 1. X = 1;
%    X = 2.
% 2. X = 1, Y = 1;
%    X = 1, Y = 2;
%    X = 2, Y = 1;
%    X = 2, Y = 2.
% 3. X = 1, Y = 1;
%    X = 1, Y = 2.
