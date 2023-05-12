% Practical session 4.2

% Problem

% Now write a 3-place predicate combine2 which takes three lists as arguments
% and combines the elements of the first two lists into the third as follows:

% ?- combine2([a, b, c], [1, 2, 3], X).

% X = [[a, 1], [b, 2], [c, 3]]

% ?- combine2([f, b, yip, yup], [glu, gla, gli, glo], Result).

% Result = [[f, glu], [b, gla], [yip, gli], [yup, glo]]

% Solution

combine2([], [], []).
combine2([X | Xs], [Y | Ys], [[X, Y] | Zs]) :- combine2(Xs, Ys, Zs).
