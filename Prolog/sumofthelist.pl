% sum/3:
% a list
% accumulator
% result

sum([], A,A).
sum([H|T],A, R):- Anew is A + H
, sum(T, Anew, R).

% Exapmle ?- sum([3,5,1], 0, R).
R = 9.

% Given the list find the max of the list.
% assume the list is made of non negative   % numberss.

max([], M,M).
max([H|T], Temp, M): M  > H, max(T, H,M).

max([H|T], Temp,M) :- H=<Temp, max(T, Temp,M).

% Scalar multiplication(HW)
% Scala_mult(3,[2,4,7], X).
mul(3, [], []).
mul([H|T], )
