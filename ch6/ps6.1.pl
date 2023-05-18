% Practical session 6.1

% Problem

% It is possible to write a one line definition of the member predicate by
% making use of append/3. Do so. How does this new version of member compare in
% efficiency with the standard one?

% Solution

% append/3
append([], L, L).
append([H | T1], L, [H | T2]) :- append(T1, L, T2).

member(X, List) :- append(_, [X|_], List).

% This formulation should be less efficient than the recursive definition
% because it relies on a helper function to perform its work. Tracing the
% execution with some sample output seems to confirm this intuition, although
% the difference in proof searches is really only due to the member/2 ->
% append/3 overhead, which is less dramatic than one might expect.
