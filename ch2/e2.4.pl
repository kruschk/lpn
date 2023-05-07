% Exercise 2.4

% Problem

% Here are six Italian words: astante, astoria, baratto, cobalto, pistola,
% statale. They are to be arranged, crossword puzzle fashion, in the following
% grid (each [] represents a cell):

%      V1  V2  V3
%      []  []  []
% H1 [][][][][][][]
%      []  []  []
% H2 [][][][][][][]
%      []  []  []
% H3 [][][][][][][]
%      []  []  []

% The following knowledge base represents a lexicon containing these words:

word(astante, a, s, t, a, n, t, e).
word(astoria, a, s, t, o, r, i, a).
word(baratto, b, a, r, a, t, t, o).
word(cobalto, c, o, b, a, l, t, o).
word(pistola, p, i, s, t, o, l, a).
word(statale, s, t, a, t, a, l, e).

% Write a predicate crossword/6 that tells us how to fill in the grid. The
% first three arguments should be the vertical words from left to right, and
% the last three arguments the horizontal words from top to bottom.

% Solution

crossword(Vl, Vc, Vr, Ht, Hm, Hb) :-
    word(Vl, _, Vl2, _, Vl4, _, Vl6, _),
    word(Vc, _, Vc2, _, Vc4, _, Vc6, _),
    word(Vr, _, Vr2, _, Vr4, _, Vr6, _),
    word(Ht, _, Vl2, _, Vc2, _, Vr2, _),
    word(Hm, _, Vl4, _, Vc4, _, Vr4, _),
    word(Hb, _, Vl6, _, Vc6, _, Vr6, _).
