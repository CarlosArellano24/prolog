longitud([], 0).
longitud([_ | L], N) :-
  longitud(L, N1),
  N is N1 + 1.

aux([], _).
aux([C|L], N) :- 
  C < N,
  aux(L, N). 
acotada(L) :-
  longitud(L, N),
  aux(L, N).

maximo_elemento([X], X).
maximo_elemento([X1,X2|L], M) :-
  M is max(X1,X2),
  maximo_elemento([M|L], M).

suma([], 0).
suma([C|L], S) :-
  suma(L, S1),
  S is C + S1.

ordenada([X]).
ordenada([X1,X2|L]) :-
  X1 =< X2,
  ordenada([X2|L]).


suma_parcial([H|L], X, L1) :-
  suma(L1, S),
  S < X,
  suma_parcial(L, X, [H|L1]).