factorial(1, 1).

factorial(N, X) :-
  N > 1,
  N1 is N - 1,
  factorial(N1, X1),
  X is N * X1.