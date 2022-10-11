hijos(sergio, [carlos, fatima]).
hijos(tere, [carlos, fatima]).
hijos(chato, [sergio, pedro, martha, lalo]).
hijos(cesar, [tere, cesarin, poncho, mona, mariana, fabian, tania]).
casados(sergio, tere).
casados(tania, beny).
trabaja(tere).
trabaja(sergio).
trabaja(tania).

mujer(tere).
mujer(tania).

personas([sergio, carlos, fatima, tere, chato, pedro, martha, lalo, cesarin, poncho, mona, mariana, fabian, tania, beny, cesar]).

casados(X, Y) :- casados(Y, X).
casada(X) :-
  casados(X, _),
  mujer(X).

casadaYTrabaja(X) :-
  trabaja(X),
  casada(X).

esHijo(X) :-
  hijos(P, L),
  member(X, [L]).

persona(X) :-
  personas(L),
  member(X, L).