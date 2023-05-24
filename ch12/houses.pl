 %main :- open('houses.txt', read, Stream),
 %        read(Stream, House1),
 %        read(Stream, House2),
 %        read(Stream, House3),
 %        read(Stream, House4),
 %        close(Stream),
 %        write([House1, House2, House3, House4]),
 %        nl.


main :- open('houses.txt', read, Stream),
        read_houses(Stream, Houses),
        close(Stream),
        write(Houses),
        nl.

read_houses(Stream, []) :- at_end_of_stream(Stream).
read_houses(Stream, [X|L]) :- \+ at_end_of_stream(Stream),
                              read(Stream, X),
                              read_houses(Stream, L).
