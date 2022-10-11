trans(e1, a, e2).
trans(e2, b, e3).
trans(e3, b, e4).
trans(e1, a, e1).
trans(e1, b, e1).

nulo(e2, e4).
nulo(e3, e1).

final(e3).

acepta(E, []) :-
  final(E).
acepta(E, [H|L]) :-
  trans(E, H, E1),
  acepta(E1, L).
acepta(E, L) :-
  nulo(E, E1),
  acepta(E1, L).

acepta_acotada(E, [], 0) :-
  final(E).
acepta_acotada(E, [H|L], N) :-
  N > 0,
  trans(E, H, E1),
  N1 is N - 1,
  acepta_acotada(E1, L, N1).
acepta_acotada(E, L, N) :-
  nulo(E, E1),
  acepta_acotada(E1, L, N).