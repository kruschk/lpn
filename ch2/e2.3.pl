% Exercise 2.3

% Problem

% Here is a tiny lexicon (that is, information about individual words) and a
% mini grammar consisting of one syntactic rule (which defines a sentence to be
% an entity consisting of five words in the following order: a determiner, a
% noun, a verb, a determiner, a noun).

word(determiner, a).
word(determiner, every).
word(noun, criminal).
word(noun, 'big  kahuna  burger').
word(verb, eats).
word(verb, likes).

sentence(Word1, Word2, Word3, Word4, Word5) :-
    word(determiner, Word1),
    word(noun, Word2),
    word(verb, Word3),
    word(determiner, Word4),
    word(noun, Word5).

% What query do you have to pose in order to find out which sentences the grammar
% can generate? List all sentences that this grammar can generate in the order
% that Prolog will generate them in.

% Solution

% ?- sentence(A, B, C, D, E).

% There are quite a few!
% 1. a criminal eats a criminal
% 2. a criminal eats a big kahuna burger
% 3. a criminal eats every criminal
% ...
% n. every big kahuna burger likes every big kahuna burger
