% Practical session 3.2

% Problem

% We are given the following knowledge base of travel information:

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

% Write a predicate travel/2 which determines whether it is possible to travel
% from one place to another by chaining together car, train, and plane
% journeys. For example, your program should answer yes to the query
% travel(valmont,raglan).

% Solution

travel(From, To) :- byCar(From, To); byPlane(From, To); byTrain(From, To).
travel(From, To) :- (byCar(From, Intermediate);
                     byPlane(From, Intermediate);
                     byTrain(From, Intermediate)),
                    travel(Intermediate, To).
