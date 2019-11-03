
% perm(A,B) means B is a permutation of list A
perm([],[]).
perm(List,[H|Perm]):-rem(H,List,Rest),perm(Rest,Perm).

% rem(X,Y,Z) means Z is the list obtained by removing X from list Y
rem(X,[X|T],T).
rem(X,[H|T],[H|NT]):-rem(X,T,NT).
