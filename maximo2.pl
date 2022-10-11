maximo(X, Y, M) :-
  X > Y,
  M is X.

maximo(X, Y, M) :-
  X < Y,
  M is Y.

factorial(1, 1).
factorial(X, F) :-
  X > 1,
  X1 is X - 1,
  factorial(X1, F1),
  F is X * F1.

fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :-
  N > 1,
  N1 is N - 1,
  fibonacci(N1, F1),
  N2 is N - 2,
  fibonacci(N2, F2),
  F is F1 + F2.

mcd(0, Y, Y).
mcd(X, 0, X).
mcd(X, Y, Q) :-
  X > Y, 
  Y > 0,
  (
    X1 is X - Y,
    mcd(X1, Y, Q1),
    Q is Q1
  ); Y is Y - 1.

