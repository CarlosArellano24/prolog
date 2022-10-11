solucion(estado(centro, silla, centro, sin), [coger|_]).

solucion(estado(X, suelo, X, sin), [subir|L]) :-
  solucion(estado(X, silla, X, sin), L).

solucion(estado(X, silla, X, sin), [bajar|L]) :-
  solucion(estado(X, suelo, X, sin), L).

solucion(estado(X, suelo, Z, sin), [pasear(X, Y)|L]) :-
  solucion(estado(Y, suelo, Z, sin), L).

solucion(estado(X, suelo, X, sin), [empujar(X, Y)|L]) :-
  solucion(estado(Y, suelo, Y, sin), L).