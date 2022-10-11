padrede(martin,luis).
padrede(luis,pedro).
padrede(luis,jose).

hijode(A,B) :- padrede(B,A).
abuelode(A,C) :- padrede(A,B), padrede(B,C).
nietode(A,B) :- abuelode(B,A).
hermanode(B,C) :- padrede(A,B), padrede(A,C).
familiarde(A,B) :- padrede(A,B); hermanode(A,B); hijode(A,B); abuelode(A,B); nietode(A,B).