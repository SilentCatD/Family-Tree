%======================================
% a)
%======================================

male(philip).
male(charles).
male(andrew).
male(william).
male(harry).
male(george).
male(louis).
male(mark).
male(timothy).
male(edward).
male(peter).
male(mike).
male(james).

female(elizabeth).
female(diana).
female(camilla).
female(sarah).
female(kate).
female(meghan).
female(eugenie).
female(beatrice).
female(charlotte).
female(anne).
female(sophie).
female(autumn).
female(zara).
female(louise).

parent(philip, charles).
parent(elizabeth, charles).
parent(philip, andrew).
parent(elizabeth, andrew).
parent(diana, william).
parent(charles, william).
parent(diana, harry).
parent(charles, harry).
parent(andrew, eugenie).
parent(sarah, eugenie).
parent(andrew, beatrice).
parent(sarah, beatrice).
parent(kate, george).
parent(william, george).
parent(kate, charlotte).
parent(william, charlotte).
parent(kate, louis).
parent(william, louis).
parent(philip, anne).
parent(elizabeth, anne).
parent(philip, edward).
parent(elizabeth, edward).
parent(mark, peter).
parent(anne, peter).
parent(mark, zara).
parent(anne, zara).
parent(edward, louise).
parent(sophie, louise).
parent(edward, james).
parent(sophie, james).

married_to(elizabeth, philip).
married_to(charles, camilla).
married_to(andrew, sarah).
married_to(charles, diana).
married_to(kate, william).
married_to(harry, meghan).
married_to(mark, anne).
married_to(timothy, anne).
married_to(edward, sophie).
married_to(peter, autumn).
married_to(zara, mike).

divorced_with(charles, diana).
divorced_with(mark, anne).

married(X, Y):- 
	married_to(Y, X); married_to(X, Y).
divorced(X, Y):- 
	divorced_with(Y, X); divorced_with(X, Y).

%======================================
% b)
%======================================
father(X, Y):-
	male(X),
	parent(X, Y).
mother(X, Y):-
	female(X),
	parent(X, Y).
child(X, Y):-
	parent(Y, X).
son(X, Y):-
	male(X),
	parent(Y, X).
daughter(X, Y):-
	female(X),
	parent(Y, X).
grandparent(X, Y):-
	parent(X, Z),
	parent(Z, Y).
grandmother(X, Y):-
	mother(X, Z),
	parent(Z, Y).
grandfather(X, Y):-
	father(X, Z),
	parent(Z, Y).