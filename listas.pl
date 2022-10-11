pertenece(X, [X|_]).
pertenece(X,[_|L]) :- pertenece(X, L).

conc([], L, L).
conc([X1|L1], L2, [X1|L3]) :- conc(L1, L2, L3).

inv([], []).
inv([C|L], R) :- 
  inv(L, Lr),
  conc(Lr, [C], R).

palindromo_1(X) :- inv(X, X).

inversa_1([],[]).
inversa_1([X|L1],L2) :- inversa_1(L1,L3), append(L3,[X],L2).

palindromo(X) :- reverse(X, X).