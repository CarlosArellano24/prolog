inserta(X, [], [X]).
inserta(X, [H|T], [X,H|T]).
inserta(X, [H|T], [H|T2]) :-
    inserta(X, T, T2).


sublista(L1, L2) :-
  append(X, Y, L2),
  append(L1, Z, Y).


borrar(X, [X|T], T).
borrar(X, [H|T], [H|NT]) :- 
  borrar(X,T,NT).

permutacion([], []).
permutacion(Lista, [H|Perm]) :- 
  borrar(H, Lista, Rest), 
  permutacion(Rest, Perm).


iguales([X | []]).
iguales([X | [X | L]]) :-
  iguales([X | L]).


longitud([],0).
longitud([_|COLA],N) :- longitud(COLA,N1), N is N1 + 1.

aux_par(0).
aux_par(N) :-
  N is not(1),
  aux_par(N - 2).

par(L) :-
  longitud(L, N),
  aux_par(N - 2).