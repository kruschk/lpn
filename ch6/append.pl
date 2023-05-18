append([], L, L).
append([H | T1], L, [H | T2]) :- append(T1, L, T2).

prefix(Prefix, List) :- append(Prefix, _, List).

suffix(Suffix, List) :- append(_, Suffix, List).

sublist(Sublist, List) :- suffix(Suffix, List), prefix(Sublist, Suffix).
