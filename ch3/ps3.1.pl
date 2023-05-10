% Practical session 3.1

% Problem

% Imagine that the following knowledge base describes a maze. The facts
% determine which points are connected, that is, from which points you can get
% to which other points in one step. Furthermore, imagine that all paths are
% one-way streets, so that you can only walk them in one direction. So, you can
% get from point 1 to point 2, but not the other way round.

connected(1, 2).
connected(3, 4).
connected(5, 6).
connected(7, 8).
connected(9, 10).
connected(12, 13).
connected(13, 14).
connected(15, 16).
connected(17, 18).
connected(19, 20).
connected(4, 1).
connected(6, 3).
connected(4, 7).
connected(6, 11).
connected(14, 9).
connected(11, 15).
connected(16, 12).
connected(14, 17).
connected(16, 19).

% Write a predicate path/2 that tells you from which points in the maze you can
% get to which other points when chaining together connections given in the
% above knowledge base. Can you get from point 5 to point 10? Which other point
% can you get to when starting at point 1? And which points can be reached from
% point 13?

% Solution

paths(From, To) :- connected(From, To).
paths(From, To) :- connected(From, Intermediate),
                   paths(Intermediate, To).

% 1. There is at least one path from point 5 to point 10.
%    ?- paths(5, 10).
% 2. Only point 2 is reachable from point 1.
%    ?- paths(1, X).
% 3. Points 14, 9, 17, 10, and 18 are reachable from point 13.
%    ?- paths(13, X).
