% Exercise 9.3

% Problem

% Write a two-place predicate termtype(Term, Type) that takes a term and gives
% back the type(s) of that term (atom, number, constant, variable, and so on).
% The types should be given back in the order of their generality. The
% predicate should behave in the following way.

% ?- termtype(Vincent, variable).
% yes

% ?- termtype(mia, X).
% X = atom ;
% X = constant ;
% X = simple_term ;
% X = term ;
% no

% ?- termtype(dead(zed), X).
% X = complex_term ;
% X = term ;
% no

% Solution

termtype(Term, Type) :-
    atom(Term), Type = atom;
    integer(Term), Type = integer;
    float(Term), Type = float;
    number(Term), Type = number;
    atomic(Term), Type = constant;
    var(Term), Type = variable;
    var(Term), Type = simple_term;
    nonvar(Term), functor(Term, _, 0), Type = simple_term;
    nonvar(Term), functor(Term, _, Arity), 0 < Arity, Type = complex_term;
    Type = term.
