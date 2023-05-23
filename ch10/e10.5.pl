% Exercise 10.5

% Problem

% Recall the definition of jealousy given in Chapter 1.

% jealous(X, Y):- loves(X, Z), loves(Y, Z).

% In a world where both Vincent and Marsellus love Mia, Vincent will be jealous
% of Marsellus, and Marsellus of Vincent. But Marsellus will also be jealous of
% himself, and so will Vincent. Revise the Prolog definition of jealousy in
% such a way that people can’t be jealous of themselves.

% Solution

loves(vincent, mia).
loves(marsellus, mia).
loves(pumpkin, honey_bunny).
loves(honey_bunny, pumpkin).

jealous(X, Y) :- loves(X, Z), loves(Y, Z), \+ X = Y.
