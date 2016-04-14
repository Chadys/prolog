maisons([(_P1,_M1,_B1,_C1,_A1),(_P2,_M2,_B2,_C2,_A2),(_P3,_M3,_B3,_C3,_A3),(_P4,_M4,_B4,_C4,_A4),(_P5,_M5,_B5,_C5,_A5)]).


gauche(X,Y,[X,Y|_]).
gauche(X,Y,[_|L]):-gauche(X,Y,L).
voisin(X,Y,L):-gauche(X,Y,L).
voisin(X,Y,L):-gauche(Y,X,L).
centre(X,[_,_,X,_,_]).
premier(X,[X|_]).




fait1([(anglais,rouge,_,_,_)|_]).
fait1([_|L]) :- fait1(L).
fait2([(suedois,_,_,_,chiens)|_]).
fait2([_|L]) :- fait2(L).
fait3([(danois,_,the,_,_)|_]).
fait3([_|L]) :- fait3(L).
fait4(L):- gauche((_,verte,_,_,_), (_,blanche,_,_,_),L).
fait5([(_,verte,cafe,_,_)|_]).
fait5([_|L]) :- fait5(L).
fait6([(_,_,_,pall-mall,oiseaux)|_]).
fait6([_|L]) :- fait6(L).
fait7([(_,jaune,_,dunhill,_)|_]).
fait7([_|L]) :- fait7(L).
fait8(L):-centre((_,_,lait,_,_),L).
fait9(L):-premier((norvegien,_,_,_,_),L).
fait10(L):- voisin((_,_,_,blend,_),(_,_,_,_,chats),L).
fait11(L):- voisin((_,_,_,_,cheval),(_,_,_,dunhill,_),L).
fait12([(_,_,biere,blue-master,_)|_]).
fait12([_|L]) :- fait12(L).
fait13([(allemand,_,_,prince,_)|_]).
fait13([_|L]) :- fait13(L).
fait14(L):- voisin((norvegien,_,_,_,_),(_,bleue,_,_,_),L).
fait15(L):- voisin((_,_,_,blend,_),(_,_,eau,_,_),L).
fait16([(_,_,_,_,poisson-rouge)|_]).
fait16([_|L]) :- fait16(L).

question(X,[(X,_,_,_,poisson-rouge)|_]).
question(X,[_|L]) :- question(X,L).

maisonscompletes(X):-
	maisons(X),fait8(X),fait9(X),fait1(X),fait2(X),fait3(X),fait4(X),
	fait5(X),fait6(X),fait7(X),fait10(X),fait11(X),fait12(X),fait13(X),
	fait14(X),fait15(X),fait16(X).


solution(Z):-maisonscompletes(X),question(Z,X).

