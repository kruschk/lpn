% Exercise 3.2

% Problem

% Do you know these wooden Russian dolls (Matryoshka dolls) where the smaller
% ones are contained in bigger ones? Here is a schematic picture:

% First, write a knowledge base using the predicate directlyIn/2 which encodes
% which doll is directly contained in which other doll. Then, define a
% recursive predicate in/2 , that tells us which doll is (directly or
% indirectly) contained in which other dolls. For example, the query
% in(katarina,natasha) should evaluate to true, while in(olga,  katarina)
% should fail.

% Solution

directlyIn(katarina, olga).
directlyIn(olga, natasha).
directlyIn(natasha, irina).

in(Outer, Inner) :- directlyIn(Outer, Inner).
in(Outer, Inner) :- directlyIn(Outer, Intermediate),
                    in(Intermediate, Inner).
