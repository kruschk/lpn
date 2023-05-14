% Practical session 5.1

% Problem

% In the text we discussed the 3-place predicate accMax which returned the
% maximum of a list of integers. By changing the code slightly, turn this into
% a 3-place predicate accMin which returns the minimum of a list of integers.

% Solution

% accMin/2
accMin([Head | Tail], Min) :- accMin(Tail, Head, Min).

% accMin/3
accMin([Head | Tail], Acc, Min) :- Head < Acc, accMin(Tail, Head, Min).
accMin([Head | Tail], Acc, Min) :- Head >= Acc, accMin(Tail, Acc, Min).
accMin([], Acc, Acc).
