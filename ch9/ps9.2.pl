% Practical session 9.2

% Problem

% Time to practice writing operator definitions. In the practical session of
% Chapter 7, you were asked to write a DCG generating propositional logic
% formulas. The input you had to use was a bit awkward though. The formula ¬ (
% p → q ) had to be represented as [not, ’(’, p, implies, q, ’)’] . Now that
% you know about operators, you can do things rather more neatly. Write
% operator definitions for not, and, or, and implies, so that Prolog accepts
% (and correctly brackets) propositional logic formulas. Use display/1 to check
% your code. It should yield the following kinds of response:

% ?- display(not(p implies q)).
% not(implies(p, q)).

% yes

% ?- display(not p implies q).
% implies(not(p), q)

% yes

% Solution

% These precedence values are essentially arbitrary, but the relative ordering
% is important.
:- op(100, fy, not). % Unary
:- op(200, yfx, and). % Binary, left-associative
:- op(300, yfx, or). % Binary, left-associative
:- op(400, xfx, implies). % Binary, non-associative

?- display(not(p implies q)).
?- nl.
?- display(not p implies q).
?- nl.
?- display(not not p). % Allowed because of fy operator type
?- nl.
?- display(p implies q implies r). % Not allowed because of non-associativity
