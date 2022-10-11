max(X, Y, Z) :-
  (X > Y, Z is X);
  (X < Y, Z is Y).