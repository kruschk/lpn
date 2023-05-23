% Exercise 10.2

% Problem

% First, explain what the following program does:

%class(Number, positive) :- Number > 0.
%class(0, zero).
%class(Number, negative) :- Number < 0.

% Second, improve it by adding green cuts.

% Solution

% The given program classifies a number as positive, zero, or negative. It has
% been improved below with green cuts. As far as I can tell, the order doesn't
% have any impact on correctness.
class(Number, positive) :- Number > 0, !.
class(0, zero) :- !.
class(Number, negative) :- Number < 0, !.
