% Practical session 4.1

% Problem

% Write a 3-place predicate combine1 which takes three lists as arguments and
% combines the elements of the first two lists into the third as follows:

% ?- combine1([a, b, c], [1, 2, 3], X).

% X  =  [a, 1, b, 2, c, 3]

% ?- combine1([f, b, yip, yup], [glu, gla, gli, glo], Result).

% Result = [f, glu, b, gla, yip, gli, yup, glo]

% Solution

combine1([], [], []).
combine1([X | Xs], [Y | Ys], [X, Y | Zs]) :- combine1(Xs, Ys, Zs).
