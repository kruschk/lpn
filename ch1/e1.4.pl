% Exercise 1.4

% Problem

% Represent the following in Prolog:

% 1. Butch is a killer.
% 2. Mia and Marsellus are married.
% 3. Zed is dead.
% 4. Marsellus kills everyone who gives Mia a footmassage.
% 5. Mia loves everyone who is a good dancer.
% 6. Jules eats anything that is nutritious or tasty.

% Solution

% 1
killer(butch).
% 2
married(marsellus, mia).
% 3
dead(zed).
% 4
kills(marsellus, X) :- footmassage(X, mia).
% 5
loves(mia, X) :- goodDancer(X).
% 6
eats(jules, X) :-
    nutritious(X);
    tasty(X).
