% Knowledge base 5

loves(honey_bunny, pumpkin).
loves(marsellus, mia).
loves(pumpkin, honey_bunny).
loves(vincent, mia).

jealous(X, Y) :- loves(X, Z), loves(Y, Z).
