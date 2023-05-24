% Practical session 12

:- module(pptree, [pptree/2]).

% pptree/1
pptree(Stream, Tree) :- pptree(Stream, [Tree], 0).

% pptree/2
pptree(Stream, [Tree|Trees], Indent) :- Tree =.. [Functor|Arguments],
                                        Arguments \= [],
                                        nl(Stream),
                                        tab(Stream, Indent),
                                        write(Stream, Functor),
                                        write(Stream, '('),
                                        pptree(Stream, Arguments, Indent + 4),
                                        write(Stream, ')'),
                                        pptree(Stream, Trees, Indent).
pptree(Stream, [Tree], _) :- Tree =.. [Functor],
                             write(Stream, Functor).
pptree(_, [], _).
