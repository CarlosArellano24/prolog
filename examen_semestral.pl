% Ejercicio 1 %
mayor("Homero", "Marge").
mayor("Marge", "Bart").
mayor("Bart", "Lisa").
mayor("Lisa", "Maggie").

mayor(A, C) :-
  mayor(A, B),
  mayor(B, C).

% Ejercicio 2 %
suma([], 0).
suma([H | L], S) :-
  suma(L, S1),
  S is S1 + H.

resta(N1, N2, R) :-
  R is N1 - N2.
restaAbsoluta(N1, N2, R) :-
  N1 > N2, !,
  R is N1 - N2.
restaAbsoluta(N1, N2, R) :-
  R is N2 - N1.

multiplicacion([M | []], M).
multiplicacion([H | L], M) :-
  multiplicacion(L, M1),
  M is M1 * H.

division([D | []], D).
division([N | L], D) :-
  division(L, D1),
  D is N / D1.

contar([], 0).
contar([_ | L], C) :-
  contar(L, C1),
  C is C1 + 1.
promedio(L, P) :-
  suma(L, S),
  contar(L, C),
  P is S / C.

cuadrado(X, C) :-
  C is X * X.
cubo(X, C) :-
  C is X * X * X.
areaCuadrado(X, A) :-
  cuadrado(X, A).

factorial(0, 1).
factorial(X, F) :-
  X > 0,
  X1 is X - 1,
  factorial(X1, F1),
  F is X * F1.

%Ejercicio 3%
gusta("Juana Maria", X) :-
  not(X == "tiburon"),
  not(X == "serpiente"), !.
gusta("Juana Maria", X) :-
  X == "tigre",
  X == "leon",
  X == "venado",
  X == "gacela",
  X == "raton".

%Ejercicio 4%
% X son coordenadas horizontales y Y verticales%
posPeon(X, Y).
posiblesMovimientos(posPeon(X, Y), turno(T), X1, Y1) :-
  T > 0,
  Y < 8,
  X1 is X,
  Y1 is Y + 1.
posiblesMovimientos(posPeon(X, Y), turno(1), X1, Y1) :-
  Y < 8,
  X1 is X,
  Y1 is Y + 2.