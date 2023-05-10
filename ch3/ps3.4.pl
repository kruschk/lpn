% Practical session 3.4

% Problem

% Extend the predicate travel/3 so that it not only tells you the route to take
% to get from one place to another, but also how you have to travel. That is,
% the new program should let us know, for each stage of the voyage, whether we
% need to travel by car, train, or plane.

% Solution

byCar(auckland, hamilton).
byCar(hamilton, raglan).
byCar(valmont, metz).
byCar(valmont, saarbruecken).

byPlane(bangkok, auckland).
byPlane(frankfurt, bangkok).
byPlane(frankfurt, singapore).
byPlane(losAngeles, auckland).
byPlane(paris, losAngeles).
byPlane(singapore, auckland).

byTrain(metz, frankfurt).
byTrain(metz, paris).
byTrain(saarbruecken, frankfurt).
byTrain(saarbruecken, paris).

travel(From, To, byCar(From, To)) :- byCar(From, To).
travel(From, To, byPlane(From, To)) :- byPlane(From, To).
travel(From, To, byTrain(From, To)) :- byTrain(From, To).
travel(From, To, byCar(From, Intermediate, Go)) :-
    byCar(From, Intermediate), travel(Intermediate, To, Go).
travel(From, To, byPlane(From, Intermediate, Go)) :-
    byPlane(From, Intermediate), travel(Intermediate, To, Go).
travel(From, To, byTrain(From, Intermediate, Go)) :-
    byTrain(From, Intermediate), travel(Intermediate, To, Go).
