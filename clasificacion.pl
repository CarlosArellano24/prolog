juega(leomar, ageOfEmpires).
juega(javier, fifaMobile).
juega(javier, futbol).
enClubDe(carlos, robotica).
enClubDe(javier, robotica).
enClubDe(uriel, robotica).
enClubDe(leomar, impresion3D).
enClubDe(rolando, impresion3D).
trabajaEn(uriel, johnDeere).
trabajaEn(carlos, johnDeere).
tieneNovia(leomar).
tieneNovia(rolando).
quiereTrabajar(javier).
ve(rolando, theBoys).
ve(uriel, theBoys).
ve(leomar, theBoys).
ve(rolando, anime).
ve(leomar, peakyBlinders).
hobby(carlos, leer).
hobby(javier, leer).
hobby(carlos, gym).
hobby(javier, gym).
hobby(uriel, gym).


tieneTrabajo(X) :- 
  trabajaEn(X, johnDeere).
buscaTrabajo(X) :- 
  not(tieneTrabajo(X)),
  quiereTrabajar(X).
hobby(X, videojuegos) :-
  juega(X, ageOfEmpires);
  juega(X, fifaMobile).
hobby(X, verSeries) :-
  ve(X, theBoys);
  ve(X, anime);
  ve(X, peakyBlinders).
hobby(X, deporte) :-
  juega(X, futbol); 
  hobby(X, gym).
esSoltero(X) :-
  not(tieneNovia(X)).
tienePegue(X) :-
  esSoltero(X),
  hobby(X, gym),
  tieneTrabajo(X),
  not(hobby(X, videojuegos)),
  not(ve(X, anime)).