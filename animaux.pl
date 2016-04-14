:- dynamic user_animal/1.
:- dynamic new_animal/1.

animal(X):-predefined_animal(X);user_animal(X);new_animal(X).
predefined_animal("alligator").
predefined_animal("lapin").
predefined_animal("tortue").
predefined_animal("pintade").
predefined_animal("cheval").

ajout:- write('Veuillez entrer un nom d animal : '),read(X), name(X,Y), not(animal(Y)),!,asserta(user_animal(Y)).
% Permet d'ajouter manuellement un animal, s'il n'existe pas déjà.

commun(X,Y,Z):- append(_,Z,X),append(Z,_,Y),Z\==[].
% Trouve l'élément commun entre la fin de X et le début de Y.

nouvel_animal(X):-animal(A),animal(B),B\==A,commun(A,B,C),append(C,BFin,B),append(A,BFin,Y),name(X,Y),not(animal(Y)),!,asserta(new_animal(Y)).
% Crée un nouvel animal en utilisant deux animaux qui ont un élément commun entre eux et l'ajoute à la liste de base, tout cela seulement s'il n'avait pas déjà été ajouté.

nettoie:-retractall(new_animal(_)).
% Permet de nettoyer tous les animaux hybrides.
nettoie2:-retractall(user_animal(_)).
% Permet de nettoyer tous les animaux ajoutés manuellement.

liste:-setof(X,animal(X),L),liste(L).
liste([]):-!.
liste([X|L]):-name(Y,X),writeln(Y),liste(L).
% Écrit une liste de tous les animaux, hybrides ou non, dans l'ordre alphabétique.