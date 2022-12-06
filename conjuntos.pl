

diferencia_1([], _, []).
diferencia_1([X | L1], L2, L3) :- 
  member(X, L2),
  diferencia_1(L1, L2, L3).
diferencia_1([X | L1], L2, [X | L3]) :-
  not(member(X, L2)),
  diferencia_1(L1, L2, L3).

agregar_1(X, L, L) :-
  member(X, L).
agregar_1(X, L, [X|L]) :-
  not(member(X, L)).

agregar_2(X,L,L):-
	member(X,L), !.
agregar_2(X,L,[X|L]).

separa_1([],[],[]).
separa_1([N|RL1],[N|RL2],L3) :-
  N > 0,
  separa_1(RL1,RL2,L3).
separa_1([N|RL1],L2,[N|RL3]) :-
  N =< 0,
  separa_1(RL1,L2,RL3).

separa_2([],[],[]).
separa_2([N|RL1],[N|RL2],L3) :-
  N > 0, !,
  separa_2(RL1,RL2,L3).
separa_2([N|RL1],L2,[N|RL3]) :-
  % N =< 0,
  separa_2(RL1,L2,RL3).

separa_3([], [], []).
separa_3([N | RL1], L2, [N | RL3]) :-
  N =< 0, !,
  separa_3(RL1, L2, RL3).
separa_3([N | RL1], [N | RL2], L3) :-
  separa_3(RL1, RL2, L3).

separa_pares([], []).
separa_pares([N | RL1], [N | RL2]) :-
  0 is mod(N, 2),
  separa_pares(RL1, RL2).
separa_pares([N | RL1], L2) :-
  1 is mod(N, 2),
  separa_pares(RL1, L2).

sumatoria([], _).
sumatoria([N1 | [N2 | RL]], N) :-
  sumatoria(RL, NX),
  N is N + N1 + N2.

suma_pares([], N).
suma_pares(L, N) :-
  separa_pares(L, P),
  sumatoria(P, N).