% Exercise 8.1

% Problem

% Here’s our basic DCG:

% s --> np, vp.

% np --> det, n.

% vp --> v, np.
% vp --> v.

% det --> [the].
% det --> [a].

% n --> [woman].
% n --> [man].
% n --> [apple].
% n --> [pear].

% v --> [eats].

% Suppose we add the noun "men" (which is plural) and the verb "know". Then we
% would want a DCG which says that "The men eat" is ok, "The man eats" is ok,
% "The men eats" is not ok, and "The man eat" is not ok. Change the DCG so that
% it correctly handles these sentences. Use an extra argument to cope with the
% singular/plural distinction.

% Solution

s --> np(X), vp(X).

np(X) --> det(X), n(X).

vp(X) --> v(X), np(_).
vp(X) --> v(X).

det(_) --> [the].
det(singular) --> [a].

n(plural) --> [men].
n(singular) --> [apple].
n(singular) --> [man].
n(singular) --> [pear].
n(singular) --> [woman].

v(plural) --> [eat].
v(singular) --> [eats].
v(plural) --> [know].
v(singular) --> [knows].
