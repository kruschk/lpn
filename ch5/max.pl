% max.pl

accMax([H | T], A, Max) :- H > A, accMax(T, H, Max).
accMax([H | T], A, Max) :- H =< A, accMax(T, A, Max).
accMax([], A, A).

% The book defines max like so:
%max(List, Max) :- List = [H | _], accMax(List, H, Max).

% but if we're assuming the list is non-empty, we can do this, which skips
% processing the first element unnecessarily.
max([H | T], Max) :- accMax(T, H, Max).
