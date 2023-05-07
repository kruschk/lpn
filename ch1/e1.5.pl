% Exercise 1.5

% Problem

% Suppose we are working with the following knowledge base:

hasBroom(X) :- quidditchPlayer(X).
hasWand(harry).
quidditchPlayer(harry).
wizard(X) :- hasBroom(X), hasWand(X).
wizard(ron).

% How does Prolog respond to the following queries?

% 1. wizard(ron).
% 2. witch(ron).
% 3. wizard(hermione).
% 4. witch(hermione).
% 5. wizard(harry).
% 6. wizard(Y).
% 7. witch(Y).

% Solution

% 1. true.
% 2. ERROR: Unknown procedure: witch/1 (DWIM could not correct goal)
% 3. false.
% 4. ERROR: Unknown procedure: witch/1 (DWIM could not correct goal)
% 5. true.
% 6. Y = harry; Y = ron.
% 7. ERROR: Unknown procedure: witch/1 (DWIM could not correct goal)
