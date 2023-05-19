% Practical session 7.3

% Problem

% The language that logicians call "propositional logic over the propositional
% symbols p, q, and r" can be defined by the following context free grammar:

% prop -> p
% prop -> q
% prop -> r
% prop -> ¬ prop
% prop -> (prop ∧ prop)
% prop -> (prop ∨ prop)
% prop -> (prop → prop)

% Write a DCG that generates this language. Actually, because we don’t know
% about Prolog operators yet, you will have to make a few rather clumsy looking
% compromises. For example, instead of getting it to recognise

% ¬ (p → q)

% you will have to get it recognise things like

% [not,  '(',  p,  implies,  q,  ')']

% instead. We will learn in Chapter 9 how to deal with propositional logic
% somewhat more naturally; in the meantime, write a DCG that accepts a clumsy
% looking version of this language. Use or for ∨, and and for ∧.

% Solution
%
% These implementations are slightly different from the grammar defined in the
% problem because they allow optional parentheses.

% While straightforward, this implementation fails to terminate because it is
% left-recursive.
%prop --> [p].
%prop --> [q].
%prop --> [r].
%prop --> [not], prop.
%prop --> prop, [and], prop.
%prop --> prop, [or], prop.
%prop --> prop, [implies], prop.
%prop --> ['('], prop, [')'].

% This one works! :) Note that the simpleprop non-terminal doesn't change the
% underlying terminal, but it might group it; it can be thought of as applying
% a no-op.
prop --> [not], prop.
prop --> simpleprop, [and], prop.
prop --> simpleprop, [implies], prop.
prop --> simpleprop, [or], prop.
prop --> simpleprop.
simpleprop --> ['('], prop, [')'].
simpleprop --> [p].
simpleprop --> [q].
simpleprop --> [r].
