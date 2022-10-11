%Se toma la suposicion inicial de que todos los padres estan casadaos, aunque en la realidad, no siempre es asi.
%Todos los miembros de la familia han tenido hijos con una sola pareja, asi que esta suposicion no genera problemas de logica.
%Se tomo esta suposicion para reducir la cantidad de hechos a especificar, ya que solo es necesario relacionar a los hijos con
%un solo padre. Al señalar a su esposa, se puede inferir quiénes son sus hijos. De otra manera, habría que señalar
%un padre y una madre para cada hijo, lo que duplicaría la cantidad de hechos. 
esPapaDe('Sergio', 'Carlos').
esPapaDe('Sergio', 'Fatima').
esEsposaDe('Tere','Sergio').

%=== FAMLIA DEL LADO DE MI PAPA ===
esPapaDe('Pedro', 'Paula').
esEsposaDe('Susana', 'Pedro').

esPapaDe('Eduardo', 'Lalo').
esPapaDe('Eduardo', 'Leo').
esEsposaDe('Angelica', 'Eduardo').

%Abuelos
esPapaDe('Checo', 'Sergio').
esPapaDe('Checo', 'Pedro').
esPapaDe('Checo', 'Eduardo').
esEsposaDe('Martha', 'Checo').


%=== FAMLIA DEL LADO DE MI MAMA ===
esPapaDe('Poncho', 'Santiago').
esPapaDe('Poncho', 'Mariano').
esPapaDe('Poncho', 'Noah').
esEsposaDe('Norma', 'Poncho').

esPapaDe('Cesarin', 'Ana Paula').
esPapaDe('Cesarin', 'Isabel').
esPapaDe('Cesarin', 'Regina').
esEsposaDe('Fabiola', 'Cesarin').

esPapaDe('Beny', 'Ana Sofia').
esPapaDe('Beny', 'Maura').
esEsposaDe('Tanya', 'Beny').

esPapaDe('Fabian', 'Alejandra').
esPapaDe('Fabian', 'Belen').
esEsposaDe('Pilar', 'Fabian').

esPapaDe('Agustin', 'Jimena').
esPapaDe('Agustin', 'Lucia').
esEsposaDe('Monica', 'Agustin').

%Abuelos
esPapaDe('Cesar', 'Tere').
esPapaDe('Cesar', 'Poncho').
esPapaDe('Cesar', 'Cesarin').
esPapaDe('Cesar', 'Tanya').
esPapaDe('Cesar', 'Fabian').
esPapaDe('Cesar', 'Monica').
esPapaDe('Cesar', 'Mariana').
esEsposaDe('Maru', 'Cesar').

%Es la mamá de un hijo, si ella es esposa del padre de ese hijo
sonPareja(Esposo, Esposa) :-
  esEsposaDe(Esposa, Esposo).

sonPareja(Esposa, Esposo) :-
  sonPareja(Esposo, Esposa).

esMamaDe(Mama, Hijo) :- 
  esPapaDe(X, Hijo),
  esEsposaDe(Mama, X).

esHijoDe(Hijo, X) :-
  esPapaDe(X, Hijo);
  esMamaDe(X, Hijo).

esHermanoDe(Hermano1, Hermano2) :-
  esHijoDe(Hermano1, X),
  esHijoDe(Hermano2, X),
  Hermano1 is not(Hermano2).

esAbueloDe(Abuelo, Nieto) :-
  esHijoDe(Nieto, X),
  esHijoDe(X, Abuelo).

esNietoDe(Nieto, Abuelo) :-
  esAbueloDe(Abuelo, Nieto).

esTioDe(Tio, Sobrino) :-
  esNietoDe(Sobrino, X),
  esHijoDe(Tio, X),
  not(esHijoDe(Sobrino, Tio)).

esTioDe(Tio, Sobrino) :-
  sonPareja(X, Tio),
  esTioDe(X, Sobrino).

esSobrinoDe(Sobrino, Tio) :-
  esTioDe(Tio, Sobrino).

esPrimoDe(Primo1, Primo2) :-
  esAbueloDe(X, Primo1),
  esAbueloDe(X, Primo2).