% Practical session 7.2

% Problem

% The formal language a^n*b^(2*m)*c^(2*m)*d^n consists of all strings of the
% following form: an unbroken block of as followed by an unbroken block of bs
% followed by an unbroken block of cs followed by an unbroken block of ds, such
% that the a and d blocks are exactly the same length, and the b and c blocks
% are also exactly the same length and furthermore consist of an even number of
% bs and cs respectively. For example, ϵ, abbccd, and aabbbbccccdd all belong
% to a^n*b^(2*m)*c^(2*m)*d^n. Write a DCG that generates this language.

% Solution

s --> [].
s --> as, s, ds.
s --> inner.
inner --> [].
inner --> bs, inner, cs.
as --> [a].
bs --> [b].
cs --> [c].
ds --> [d].
