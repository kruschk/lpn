% CFG recognition using append

append([], L, L).
append([H | T1], L, [H | T2]) :- append(T1, L, T2).

s(Z):-  np(X),  vp(Y),  append(X,Y,Z).

np(Z):-  det(X),  n(Y),  append(X,Y,Z).

vp(Z):-  v(X),  np(Y),  append(X,Y,Z).

vp(Z):-  v(Z).

det([the]).
det([a]).

n([woman]).
n([man]).

v([shoots]).

% CFG recognition using difference lists

s(X, Z) :- np(X, Y),  vp(Y, Z).

np(X, Z) :- det(X, Y),  n(Y, Z).

vp(X, Z) :- v(X, Y),  np(Y, Z).

vp(X, Z) :- v(X, Z).

det([the|W], W).
det([a|W], W).

n([woman|W], W).
n([man|W], W).

v([shoots|W], W).

% DCG

s  -->  np,vp.

np  -->  det,n.

vp  -->  v,np.
vp  -->  v.

det  -->  [the].
det  -->  [a].

n  -->  [woman].
n  -->  [man].

v  -->  [shoots].
