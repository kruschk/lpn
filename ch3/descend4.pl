% descend4.pl

child(anne, bridget).
child(bridget, caroline).
child(caroline, donna).
child(donna, emily).

descend(X, Y) :- child(X, Y).
descend(X, Y) :- descend(Z, Y), child(X, Z).

% descend(anne, emily) requires 34 steps, and descend(X, Y) yields 10 answers,
% but the latter enters an infinite loop after finding its last result. It is
% odd that descend(anne, emily) terminate because the book says it shouldn't;
% this is likely a peculiarity of the implementation. I think the intended
% extra solutions that this formulation would find in a "normal" implementation
% will be those that use the non-recursive rule descend(X, Y) :- child(X, Y);
% that is, the direct child relationships.
