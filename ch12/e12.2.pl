% Exercise 12.2

% Problem

% Write a Prolog program that reads in a plain text file word by word, and
% asserts all read words and their frequency into the Prolog database. You may
% use the predicate readWord/2 to read in words. Use a dynamic predicate word/2
% to store the words, where the first argument is a word, and the second
% argument is the frequency of that word.

% Solution

% word(Word, Count).
:- dynamic word/2.

% assertWord/1
assertWord(Word) :- retract(word(Word, Count)),
                    !,
                    Incremented is Count + 1,
                    assert(word(Word, Incremented)).
assertWord(Word) :- assert(word(Word, 1)).

% assertWords/2
assertWords([]).
assertWords([Word|Words]) :- assertWord(Word),
                             assertWords(Words).

% readWordCodes/3
readWordCodes(10, [], _) :- !.
readWordCodes(32, [], _) :- !.
readWordCodes(-1, [], _) :- !.
readWordCodes(end_of_file, [], _) :- !.
readWordCodes(Code, [Code|Codes], Stream) :-
    get_code(Stream, NextCode),
    readWordCodes(NextCode, Codes, Stream).

% readWords/2
readWords(Stream, Words) :- get_code(Stream, Code),
                            readWords(Stream, Code, Words).

% readWords/3
readWords(_, -1, []) :- !.
readWords(_, end_of_file, []) :- !.
readWords(Stream, 10, Words) :- !,
                                get_code(Stream, Code),
                                readWords(Stream, Code, Words).
readWords(Stream, 32, Words) :- !,
                                get_code(Stream, Code),
                                readWords(Stream, Code, Words).
readWords(Stream, Code, [Word|Words]) :- readWordCodes(Code, Codes, Stream),
                                         atom_codes(Word, Codes),
                                         get_code(Stream, NewCode),
                                         readWords(Stream, NewCode, Words).

main :- open('hogwarts.txt', read, File),
        readWords(File, Words),
        assertWords(Words),
        close(File),
        listing(word(_, _)).
