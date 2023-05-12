% Practical session 4.3

% Problem

% Finally, write a 3-place predicate combine3 which takes three lists as
% arguments and combines the elements of the first two lists into the third as
% follows:

% ?- combine3([a, b, c], [1, 2, 3], X).

% X = [j(a, 1), j(b, 2), j(c, 3)]

% ?- combine3([f, b, yip, yup], [glu, gla, gli, glo], R).

% R = [j(f, glu), j(b, gla), j(yip, gli), j(yup, glo)]

% Solution

combine3([], [], []).
combine3([X | Xs], [Y | Ys], [j(X, Y) | Zs]) :- combine3(Xs, Ys, Zs).
