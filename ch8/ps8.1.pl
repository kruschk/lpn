% Practical session 8.1

% Problem

% First, bring together all the things we have learned about DCGs for English
% into one DCG. In particular, in the text we saw how to use extra arguments to
% deal with the subject/object distinction, and in the exercises you were asked
% to use additional arguments to deal with the singular/plural distinction.
% Write a DCG which handles both. Moreover, write the DCG in such a way that it
% will produce parse trees, and makes use of a separate lexicon.

% Solution

% Grammar
s(s(NP, VP)) --> np(NP, subject, Plurality), vp(VP, Plurality).

np(np(Det, N), _, Plurality) --> det(Det, Plurality), n(N, Plurality).
np(np(Pro), ObSub, Plurality) --> pro(Pro, ObSub, Plurality).

vp(vp(V), Plurality) --> v(V, Plurality).
vp(vp(V, NP), Plurality) --> v(V, Plurality), np(NP, object, _).

det(det(Word), Plurality) --> [Word], {lex(Word, det(Plurality))}.
n(n(Word), Plurality) --> [Word], {lex(Word, n(Plurality))}.
pro(pro(Word), ObSub, Plurality) --> [Word], {lex(Word, pro(ObSub, Plurality))}.
v(v(Word), Plurality) --> [Word], {lex(Word, v(Plurality))}.

% Lexicon
lex(a, det(singular)).
lex(bat, n(singular)).
lex(eat, v(plural)).
lex(eats, v(singular)).
lex(he, pro(subject, singular)).
lex(her, pro(object, singular)).
lex(him, pro(object, singular)).
lex(know, v(plural)).
lex(knows, v(singular)).
lex(man, n(singular)).
lex(men, n(plural)).
lex(pear, n(singular)).
lex(she, pro(subject, singular)).
lex(shoot, v(plural)).
lex(shoots, v(singular)).
lex(the, det(_)).
lex(woman, n(singular)).
