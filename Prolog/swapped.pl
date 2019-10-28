% swapped(A,B) means A is a list with an even number of items
% and B has the same items but swapped in pairs,
% like  if A=[1,2,3,4,5,6] then B should be [2,1,4,3,6,5]

%  handle the length 0 case
swapped([],[]).

swapped( [X,Y|R], [Y,X|S] ) :- swapped(R,S).
