% Practical session 10.1

% Problem

% Define a predicate nu/2 (”not unifiable”) which takes two terms as arguments
% and succeeds if the two terms do not unify. For example:

% nu(foo, foo).
% no

% nu (foo, blob).
% yes

% nu(foo, X).
% no

% You should define this predicate in three different ways:

% First (and easiest) write it with the help of = and \+.
% Second write it with the help of =, but don’t use \+.
% Third, write it using a cut-fail combination. Don’t use = and don’t use \+.

% Solution

nu1(X, Y) :- \+ X = Y.

nu2(X, Y) :- X = Y, !, fail.
nu2(_, _).

nu3(X, X) :- !, fail.
nu3(_, _).
