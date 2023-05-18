naiverev([], []).
naiverev([H|T], R):-  naiverev(T, RevT),  append(RevT, [H], R).

% rev/2
rev(L, R) :- rev(L, [], R).

% rev/3
rev([H|T], A, R) :- rev(T, [H|A], R).
rev([], A, A).
