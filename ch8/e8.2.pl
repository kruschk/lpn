% Exercise 8.2

% Problem

% In the text, we only gave examples of DCG rules with one extra argument, but
% in fact you can add as many extra arguments as you like. Here’s a DCG rule
% with three extra arguments:

% kanga(V, R, Q) --> roo(V, R), jumps(Q, Q), {marsupial(V, R, Q)}.

% Translate it into the form Prolog uses.

% Solution

% Based on the text, here is the transformation into normal Prolog terms:
kanga(V, R, Q, A, B) :-
    roo(V, R, A, C),
    jumps(Q, Q, C, B),
    marsupial(V, R, Q).

% SWI-Prolog does something (very) slightly different that seems to be
% equivalent, creating a new variable D and unifying it with B at the end:
% ?- listing(kanga).
% kanga(A, B, C, D, E) :-
%     roo(A, B, D, F),
%     jumps(C, C, F, G),
%     marsupial(A, B, C),
%     E=G.
%
% true.
% Using the symbols from the DCG, this is equivalent to:
% ?- listing(kanga).
% kanga(V, R, Q, A, B) :-
%     roo(V, R, A, C),
%     jumps(Q, Q, C, D),
%     marsupial(V, R, Q),
%     B=D.
%
% true.
