% Exercise 7.3

% Problem

% Let a^n*b^(2*n) be the formal language which contains all strings of the
% following form: an unbroken block of as of length n followed by an unbroken
% block of bs of length 2*n, and nothing else. For example, abb, aabbbb, and
% aaabbbbbb belong to a^n*b^(2*n), and so does the empty string. Write a DCG
% that generates this language.

% Solution

s --> [].
s --> l, s, r.
l --> [a].
r --> [b, b].

% Alternatively:
% s --> [].
% s --> l, s, r, r.
% l --> [a].
% r --> [b].
