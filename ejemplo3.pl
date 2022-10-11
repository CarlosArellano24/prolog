masgrande(homero,marge).
masgrande(marge,bart).
masgrande(bart,lisa).
masgrande(lisa,maggie).
masgrande(homero,marge,bart).

muchomasgrande(A,C) :- masgrande(A,B), masgrande(B,C).
muchomasgrande(A,C) :- masgrande(A,B), muchomasgrande(B,C).
menor(B,A) :- masgrande(A,B); muchomasgrande(A,B).