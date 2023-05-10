% descend2.pl

child(anne, bridget).
child(bridget, caroline).
child(caroline, donna).
child(donna, emily).

descend(X, Y) :- child(X, Z), descend(Z, Y).
descend(X, Y) :- child(X, Y).

% descend(anne, emily) requires 26 steps, and descend(X, Y) yields 10 answers.
