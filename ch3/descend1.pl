% descend1.pl

child(anne, bridget).
child(bridget, caroline).
child(caroline, donna).
child(donna, emily).

descend(X, Y) :- child(X, Y).
descend(X, Y) :- child(X, Z), descend(Z, Y).

% descend(anne, emily) requires 25 steps, and descend(X, Y) yields 10 answers.
