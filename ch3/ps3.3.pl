% Practical session 3.3

% Problem

% So, by using travel/2 to query the above database, you can find out that it
% is possible to go from Valmont to Raglan. If you are planning such a voyage,
% that’s already something useful to know, but you would probably prefer to
% have the precise route from Valmont to Raglan. Write a predicate travel/3
% which tells you which route to take when travelling from one place to
% another. For example, the program should respond

% X = go(valmont, metz,
%        go(metz, paris,
%           go(paris, losAngeles)))

% to the query travel(valmont, losAngeles, X).

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

travel(From, To, go(From, To)) :-
    byCar(From, To); byPlane(From, To); byTrain(From, To).
travel(From, To, go(From, Intermediate, Go)) :- (byCar(From, Intermediate);
                                                 byPlane(From, Intermediate);
                                                 byTrain(From, Intermediate)),
                                                travel(Intermediate, To, Go).
