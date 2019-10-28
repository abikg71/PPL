% pyth(X,Y,Z) means they're the side lengths of a right triangle

num(A) :- member(A,[1,2,3,4,5,6,7,8,9,10]).

pyth(X,Y,Z) :- num(X), num(Y), X2 is X*X, Y2 is Y*Y, Z is X2+Y2.
