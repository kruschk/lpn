% Knowledge base 3

happy(vincent).
listens2Music(butch).
playsAirGuitar(vincent):-
    happy(vincent),
    listens2Music(vincent).
playsAirGuitar(butch):-
    happy(butch);
    listens2Music(butch).
