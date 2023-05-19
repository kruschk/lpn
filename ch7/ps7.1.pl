% Practical session 7.1

% Problem

% The formal language Even is very simple: it consists of all strings
% containing an even number of as, and nothing else. Note that the empty string
% ϵ belongs to Even. Write a DCG that generates Even.

% Solution

even --> [].
even --> as, even.
as --> [a, a].
