% Exercise 6.6

% Problem

% Here is an exercise for those of you who like logic puzzles.

% There is a street with three neighbouring houses that all have a different
% colour, namely red, blue, and green. People of different nationalities live
% in the different houses and they all have a different pet. Here are some more
% facts about them:

% The Englishman lives in the red house.
% The jaguar is the pet of the Spanish family.
% The Japanese lives to the right of the snail keeper.
% The snail keeper lives to the left of the blue house.

% Who keeps the zebra? Don’t work it out for yourself: define a predicate
% zebra/1 that tells you the nationality of the owner of the zebra!

% (Hint: Think of a representation for the houses and the street. Code the four
% constraints in Prolog. You may find member/2 and sublist/2 useful.)

% Solution

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

append([], L, L).
append([H | T1], L, [H | T2]) :- append(T1, L, T2).

prefix(Prefix, List) :- append(Prefix, _, List).

suffix(Suffix, List) :- append(_, Suffix, List).

sublist(Sublist, List) :- suffix(Suffix, List), prefix(Sublist, Suffix).

zebra(Street) :-
    Street = [_, _, _],
    member(C2, [blue, green]),
    member(C3, [blue, green, red]),
    member(C4, [blue, green]),
    member(N3, [english, japanese]),
    member(N5, [japanese, spanish]),
    member(P1, [snail, zebra]),
    member(P4, [snail, zebra]),
    member(P5, [jaguar, snail, zebra]),
    member(house(red, english, P1), Street),
    member(house(C2, spanish, jaguar), Street),
    sublist([house(C3, N3, snail), house(C4, japanese, P4)], Street),
    sublist([house(C3, N3, snail), house(blue, N5, P5)], Street),
    C2 \= C3,
    C2 \= C4,
    C3 \= C4,
    N3 \= N5,
    P1 \= P4,
    P1 \= P5.
