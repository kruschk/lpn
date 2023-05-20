% Practical session 8.2

% Problem

% Once you have done this, extend the DCG so that noun phrases can be modified
% by adjectives and simple prepositional phrases (that is, it should be able to
% handle noun phrases such as "the small frightened woman on the table" or "the
% big fat cow under the shower"). Then, further extend it so that the
% distinction between first, second, and third person pronouns is correctly
% handled (both in subject and object form).

% Solution

% Grammar
s(s(NP, VP)) --> np(NP, subject, Plurality), vp(VP, Plurality).

ap(ap(Adj)) --> adj(Adj).
ap(ap(Adj, AP)) --> adj(Adj), ap(AP).

np(np(Det, AP, N), _, Plurality) --> det(Det, Plurality),
                                     ap(AP),
                                     n(N, Plurality).
np(np(Det, AP, N, Prep, NP), _, Plurality) --> det(Det, Plurality),
                                               ap(AP),
                                               n(N, Plurality),
                                               prep(Prep),
                                               np(NP, object, _).
np(np(Det, N), _, Plurality) --> det(Det, Plurality), n(N, Plurality).
np(np(Pro), ObSub, Plurality) --> pro(Pro, ObSub, Plurality).

vp(vp(V), Plurality) --> v(V, Plurality).
vp(vp(V, NP), Plurality) --> v(V, Plurality), np(NP, object, _).

adj(adj(Word)) --> [Word], {lex(Word, adj)}.
det(det(Word), Plurality) --> [Word], {lex(Word, det(Plurality))}.
n(n(Word), Plurality) --> [Word], {lex(Word, n(Plurality))}.
prep(prep(Word)) --> [Word], {lex(Word, prep)}.
pro(pro(Word), ObSub, Plurality) --> [Word], {lex(Word, pro(ObSub, Plurality))}.
v(v(Word), Plurality) --> [Word], {lex(Word, v(Plurality))}.

% Lexicon
lex(a, det(singular)).
lex(bat, n(singular)).
lex(big, adj).
lex(cow, n(singular)).
lex(eat, v(plural)).
lex(eats, v(singular)).
lex(fat, adj).
lex(frightened, adj).
lex(he, pro(subject, singular)).
lex(her, pro(object, singular)).
lex(him, pro(object, singular)).
lex(know, v(plural)).
lex(knows, v(singular)).
lex(man, n(singular)).
lex(men, n(plural)).
lex(on, prep).
lex(pear, n(singular)).
lex(she, pro(subject, singular)).
lex(shoot, v(plural)).
lex(shoots, v(singular)).
lex(shower, n(singular)).
lex(small, adj).
lex(table, n(singular)).
lex(the, det(_)).
lex(them, pro(object, plural)).
lex(they, pro(subject, plural)).
lex(under, prep).
lex(woman, n(singular)).
lex(you, pro(object, singular)).
lex(you, pro(subject, plural)).
