esProgenitorDe('Homero', 'Bart').
esProgenitorDe('Marge', 'Bart').
esProgenitorDe('Homero', 'Lisa').
esProgenitorDe('Marge', 'Lisa').
esProgenitorDe('Kang', 'Maggie').
esProgenitorDe('Marge', 'Maggie').

esProgenitorDe('Abraham', 'Homero').
pareja('Homero', 'Mona').

esProgenitorDe('Jacqueline', 'Marge').
esProgenitorDe('Jacqueline', 'Selma').
esProgenitorDe('Jacqueline', 'Paty').
pareja('Jacqueline', 'Clancy').

hombre('Homero').
hombre('Abraham').
hombre('Clancy').
hombre('Bart').
hombre('Kang').

mujer('Marge').
mujer('Jacqueline').
mujer('Mona').
mujer('Lisa').
mujer('Maggie').


pareja(X, Y) :- 
  pareja(Y, X).
esProgenitorDe(Progenitor, Descendiente) :-
  pareja(Progenitor, X),
  esProgenitorDe(X, Descendiente).
esPapaDe(Papa, Hijo) :-
  esProgenitorDe(Papa, Hijo),
  hombre(Papa).
esMamaDe(Mama, Hijo) :-
  esProgenitorDe(Mama, Hijo),
  mujer(Hijo).
esHijoDe(Hijo, Progeninitor) :-
  esProgenitorDe(Progenitor, Hijo),
  hombre(Hijo).
esHijaDe(Hija, Progenitor) :-
  esProgenitorDe(Progenitor, Hija),
  mujer(Hija).
esHermanoDe(Hermano, Hermanx) :-
  esProgenitorDe(X, Hermano),
  esProgenitorDe(X, Hermanx),
  hombre(Hermano1).
esHermanaDe(Hermana, Hermanx) :-
  esProgenitorDe(X, Hermana),
  esProgenitorDe(X, Hermanx),
  mujer(Hermana).
esAbueloDe(Abuelo, Nieto) :-
  esPapaDe(Abuelo, X),
  esProgenitorDe(X, Nieto).
esAbuelaDe(Abuela, Nieto) :-
  esMamaDe(Abuela, X),
  esProgenitorDe(X, Nieto).

/*
esPapaDe('Abraham', 'Homero').
esEsposaDe('Mona', 'Abraham').

esPapaDe('Clancy', 'Marge').
esPapaDe('Clancy', 'Selma').
esPapaDe('Clancy', 'Paty').
esEsposaDe('Jacqueline', 'Clancy').

esPapaDe('Homero', 'Bart').
esPapaDe('Homero', 'Lisa').
esPapaDe('Homero', 'Maggie').


esMamaDe(Mama, Hijo) :-
  esPapaDe(X, Hijo),
  esEsposaDe(Mama, X).

esHijoDe(Hijo, PapaOMama) :-
  esPapaDe(PapaOMama, Hijo);
  esMamaDe(PapaOMama, Hijo).

esAbueloDe(Abuelo, Nieto) :-
  esHijoDe(Nieto, X),
  esHijoDe(X, Abuelo).

esHermanoDe(Hermano1, Hermano2) :-
  esHijoDe(Hermano1, X),
  esHijoDe(Hermano2, X).
*/