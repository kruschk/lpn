% Practical session 6.2

% Problem

% Write a predicate set(InList, OutList) which takes as input an arbitrary list,
% and returns a list in which each element of the input list appears only once.
% For example, the query

% set([2, 2, foo, 1, foo, [], []], X).

% should yield the result

% X = [2, foo, 1, []].

% (Hint: use the member predicate to test for repetitions of items you have
% already found.)

% Solution

% member/2
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

% set/2
set([H|T1], [H|T2]) :- not(member(H, T1)), set(T1, T2).
set([H|T], R) :- member(H, T), set(T, R).
set([], []).

% setAcc/2
setAcc(In, Out) :- setAcc(In, [], Out).

% setAcc/3
setAcc([H|T], A, R) :- member(H, A), setAcc(T, A, R).
setAcc([H|T], A, R) :- not(member(H, A)), setAcc(T, [H|A], R).
setAcc([], A, A).
