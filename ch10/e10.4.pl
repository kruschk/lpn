% Exercise 10.4

% Problem

% Recall that in Exercise 3.3 we gave you the following knowledge base:

directTrain(fahlquemont, stAvold).
directTrain(forbach, saarbruecken).
directTrain(freyming, forbach).
directTrain(metz, fahlquemont).
directTrain(nancy, metz).
directTrain(saarbruecken, dudweiler).
directTrain(stAvold, freyming).

% We asked you to write a recursive predicate travelFromTo/2 that told us when
% we could travel by train between two towns.

% Now, it’s plausible to assume that whenever it is possible to take a direct
% train from A to B, it is also possible to take a direct train from B to A.
% Add this information to the database. Then write a predicate route/3 which
% gives you a list of towns that are visited by taking the train from one town
% to another. For instance:

% ?- route(forbach, metz, Route).
% Route = [forbach, freyming, stAvold, fahlquemont, metz]

% Solution

directTrain(dudweiler, saarbruecken).
directTrain(fahlquemont, metz).
directTrain(forbach, freyming).
directTrain(freyming, stAvold).
directTrain(metz, nancy).
directTrain(saarbruecken, forbach).
directTrain(stAvold, fahlquemont).

% From https://www.reddit.com/r/prolog/comments/yflvvj/comment/iueij58

% route/3
route(From, To, Route) :- route(From, To, Route, []).

% route/4
route(From, To, [From,To], Seen) :- directTrain(From, To, Seen).
route(From, To, [From|Route], Seen) :- directTrain(From, Via, Seen),
                                       route(Via, To, Route, [From|Seen]).

% directTrain/3
directTrain(From, To, Seen) :- directTrain(From, To),
                               \+ member(To, Seen).
