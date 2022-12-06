/* Ejercicio I.1 */
abs_dif(X, Y, Res) :-
  X >= Y,
 Res is X - Y.
abs_dif(X, Y, Res) :-
  X < Y,
 Res is Y - X.

/* Ejercicio I.2 */
abs_dif_corte(X, Y, Res) :-
  X >= Y, !,
  Res is X - Y.
abs_dif_corte(X, Y, Res) :-
  Res is Y - X.


/* Ejercicio I.3.1 */
separa([], [], []).
separa([X | L1], [X | L2], L3) :-
  X > 0,
  separa(L1, L2, L3).
separa([X | L1], L2, [X | L3]) :-
  X =< 0,
  separa(L1, L2, L3).

/* Ejercicio I.3.2 */
separa_corte([], [], []).
separa_corte([X | L1], [X | L2], L3) :- 
  X > 0, !, 
  separa_corte(L1, L2, L3).
separa_corte([X | L1], L2, [X | L3]) :-  
  separa_corte(L1, L2, L3).

/* Ejercicio I.4.1 */
suma_pares([], 0).
suma_pares([X | L1], N) :-
  0 is X mod 2,
  suma_pares(L1, N1),
  N is N1 + X.
suma_pares([X | L1], N) :-
  1 is X mod 2,
  suma_pares(L1, N1),
  N is N1.

/* Ejercicio I.4.2 */
suma_pares_corte([], 0).
suma_pares_corte([X | L1], N) :-
  0 is X mod 2, !,
  suma_pares(L1, N1),
  N is N1 + X.
suma_pares_corte([X | L1], N) :-
  suma_pares(L1, N1),
  N is N1.