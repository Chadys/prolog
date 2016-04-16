# prolog
To test a program, start it with "prolog program_name"

"animaux.pl" :
A program to create hybrid animals' names
?- liste. : Display the list of all animals currently registered.
?- ajout. : Enable you to register an animal of your choice.
?- nouvel_animal(X). : Create a new hybrid animal using two already registered animals and register it.
?- nettoie. : Erase all hybrid animals.
?- nettoie2. : Erase all user-added animals.

--------------------------------------------------------------------------------------------------------------------

"Enigme_d'Einstein.pl" :
A program to resolve the famous Einstein's enigma :
"Five men live in five houses of five different color.
They smoke five different brands of cigar,drink five different beverages,and keep five different pets.

We know that:
* The Norwegian lives in the first house.
* The brit lives in the red house.
* The Swede keeps dogs as pets.
* The Dane drinks tea.
* The green house is just on the left of the white house.
* The green house owner drinks coffee.
* The man who smokes Blend lives next to the one who keeps cats.
* The person who smokes Pall Mall rears birds.
* The owner of the yellow house smokes Dunhill.
* The man living in the house right in the center drinks milk.
* The German smokes Prince.
* The man who smokes Blend has a neighbor who drinks water.
* The Norwegian lives next to the blue house.
* The man who keeps horses lives next to the man who smokes Dunhill.
* The owner who smokes Blue Master drinks beer.

The question is ... Who keeps a fish?"

?- solution(X). : Gives you the solution.
?- maisonscompletes(X). : Gives you the complete list of the houses and their content.

--------------------------------------------------------------------------------------------------------------------

"Jeu_Nim.pl" :
An implementation of a Nim's game.
The rules are as follow :
"This game is played between two players with heaps of any number of objects. The two players alternate taking any number of objects from any single one of the heaps. The goal is to be the last to take an object."
?- jeu. : Start the game.
