% Exercise 12.1

% Problem

% Write code that creates hogwarts.houses, a file that looks like this:

%           gryffindor
% hufflepuff          ravenclaw
%           slytherin

% You can use the built-in predicates open/3, close/1, tab/2, nl/1, and
% write/2.

% Solution

main :-
    open('hogwarts.houses', write, File),
    tab(File, 10), write(File, gryffindor), nl(File),
    write(File, hufflepuff), tab(File, 10), write(File, ravenclaw), nl(File),
    tab(File, 10), write(File, slytherin), nl(File),
    close(File).
