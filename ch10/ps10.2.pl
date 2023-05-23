% Practical session 10.2

% Problem

% Define a predicate unifiable(List1, Term, List2) where List2 is the list of
% all members of List1 that unify with Term. The elements of List2 should not
% be instantiated by the unification. For example

% unifiable([X, b, t(Y)], t(a), List]

% should yield

% List = [X, t(Y)].

% Note that X and Y are still not instantiated. So the tricky part is: how do
% we check that they unify with t(a) without instantiating them?

% (Hint: consider using tests of the form \+ term1 = term2 . Why? Think about
% it. You might also like to think about tests of the form \+ \+ term1 =
% term2.)

% Solution

unifiable([], _, []).
unifiable([Head|Tail], Term, Result) :- \+ Head = Term,
                                        unifiable(Tail, Term, Result).
unifiable([Head|Tail], Term, [Head|Result]) :- \+ \+ Head = Term,
                                               unifiable(Tail, Term, Result).
