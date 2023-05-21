% Exercise 9.4

% Problem

% Write a Prolog program that defines the predicate groundterm(Term) which
% tests whether or not Term is a ground term. Ground terms are terms that don’t
% contain variables. Here are examples of how the predicate should behave:

% ?- groundterm(X).
% no

% ?- groundterm(french(bic_mac, le_bic_mac)).
% yes

% ?- groundterm(french(whopper, X)).
% no

% Solution

% It's not pretty, but it works (I think).
%groundterm(Term) :- atomic(Term). % Simple terms
%groundterm(Term) :- nonvar(Term), % Complex terms
%                    not(is_list(Term)),
%                    Term =.. [_|Arguments],
%                    Arguments \= [],
%                    groundterm(Arguments).
%groundterm([H|T]) :- nonvar(H), groundterm(H), groundterm(T). % Lists of terms

% This is much more elegant!
groundterm(Term) :- helper([Term]).
helper([Term|Terms]) :- nonvar(Term),
                        % The functor can't be a variable; ignore it.
                        Term =.. [_|Arguments],
                        helper(Arguments),
                        helper(Terms).
helper([]).
