% Practical session 9.1

% Problem

% Time to apply what you have just learned. In the last chapter we saw how
% extra arguments in DCGs could be used to build parse trees. For example, to
% the query

% s(T,[a,man,shoots,a,woman],[])

% Prolog would answer

% s(np(det(a),n(man)),vp(v(shoots),np(det(a),n(woman)))).

% This term is a representation of the parse tree, but it is not a very
% readable representation. It would be nicer if Prolog printed something like
% the following (this style of printing is usually called pretty printing):

% s(
%     np(
%         det(a)
%         n(man))
%     vp(
%         v(shoots)
%         np(
%             det(a)
%             n(woman))))

% Write a predicate pptree/1 that takes a complex term representing a tree as
% its argument and prints the tree in a more readable form.

% Solution

% pptree/1
pptree(Tree) :- pptree([Tree], 0).

% pptree/2
pptree([Tree|Trees], Indent) :- Tree =.. [Functor|Arguments],
                                Arguments \= [],
                                nl,
                                tab(Indent),
                                write(Functor),
                                write('('),
                                pptree(Arguments, Indent + 4),
                                write(')'),
                                pptree(Trees, Indent).
pptree([Tree], _) :- Tree =.. [Functor],
                     write(Functor).
pptree([], _).
