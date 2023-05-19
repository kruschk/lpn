% Exercise 7.2

% Problem

% The formal language a^n*b^n - { ϵ } consists of all the strings in a^n*b^n
% except the empty string. Write a DCG that generates this language.

% Solution

s --> l, r.
s --> l, s, r.
l --> [a].
r --> [b].
