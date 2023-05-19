% Exercise 7.1

% Problem

% Suppose we are working with the following DCG:

s --> foo, bar, wiggle.
foo --> [choo].
foo --> foo, foo.
bar --> mar, zar.
mar --> me, my.
me --> [i].
my --> [am].
zar --> blar, car.
blar --> [a].
car --> [train].
wiggle --> [toot].
wiggle --> wiggle, wiggle.

% Write down the ordinary Prolog rules that correspond to these DCG rules. What
% are the first three responses that Prolog gives to the query s(X, [])?

% Solution

s(A, B) :- foo(A, C), bar(C, D), wiggle(D, B).
foo([choo|A], A).
foo(A, B) :- foo(A, C), foo(C, B).
bar(A, B) :- mar(A, C), zar(C, B).
mar(A, B) :- me(A, C), my(C, B).
me([i|A], A).
my([am|A], A).
zar(A, B) :- blar(A, C), car(C, B).
blar([a|A], A).
car([train|A], A).
wiggle([toot|A], A).
wiggle(A, B) :- wiggle(A, C), wiggle(C, B).

% The query ?- s(X, []) produces the following responses:

% X = [choo, i, am, a, train, toot] ;
% X = [choo, i, am, a, train, toot, toot] ;
% X = [choo, i, am, a, train, toot, toot, toot] ;
% ...

% Prolog will generate infinite trailing toots because it gets caught in a
% proof search / backtracking loop by the wiggle goal.
