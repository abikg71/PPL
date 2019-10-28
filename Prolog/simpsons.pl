% facts and rules about the famous Simpsons family

% father(X,Y) means X is the father of Y

father(homer,bart).
father(homer,lisa).
father(homer,maggie).

father(abe,homer).
father(abe,herb).

% mother(X,Y) means X is the mother of Y

mother(marge,bart).
mother(marge,lisa).
mother(marge,maggie).

% sibling(X,Y) means X is a younger sibling of Y

sibling(X,Y) :- younger(X,Y), father(Z,X), father(Z,Y), mother(W,X), mother(W,Y).

age(maggie,1.5).
age(bart,10).
age(lisa,8).
age(homer,43).
age(marge,40).
age(abe,83).
age(herb,39).

younger(X,Y) :- age(X,A1), age(Y,A2), A1 < A2.

parent(X,Y) :- father(X,Y).
parent(X,Y) :- mother(X,Y).

