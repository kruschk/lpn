% Practical session 12

:- use_module(grammar).
:- use_module(pptree).

% test/2
test(InputFile, OutputFile) :- open(InputFile, read, InputStream),
                               open(OutputFile, write, OutputStream),
                               testLines(InputStream, OutputStream),
                               close(InputStream),
                               close(OutputStream).


% atomize/2
atomize([], []).
atomize([String|Strings], [Atom|Atoms]) :- atom_string(Atom, String),
                                           atomize(Strings, Atoms).

% testResult/3
testResult(Stream, Match, Match) :- !, write(Stream, "Success\n").
testResult(Stream, _, _) :- write(Stream, "Failure\n").

% testLines/2
testLines(InputStream, _) :- at_end_of_stream(InputStream).
testLines(InputStream, OutputStream) :-
    \+ at_end_of_stream(InputStream),
    read_string(InputStream, ".", " \n\r\t", Status, String),
    split_string(String, " ", " ", List),
    atomize(List, Sentence),
    read(InputStream, Expected),
    writeResult(Expected, OutputStream, Sentence, Status),
    nl(OutputStream),
    testLines(InputStream, OutputStream).

% writeResult/3
writeResult(_, _, _, -1) :- !.
writeResult(Expected, Stream, Sentence, _) :-
    s(Tree, Sentence, []),
    !,
    write(Stream, Sentence),
    pptree(Stream, Tree),
    nl(Stream),
    testResult(Stream, true, Expected).
writeResult(Expected, Stream, Sentence, _) :-
    write(Stream, Sentence),
    nl(Stream),
    testResult(Stream, false, Expected).
