% Activity 18
% November 4, 2019

% 1.
tail([H| [], [], H]).
tail([H|T1],[H|T2], T) :- tail(T1, T2, T).
reverse([],[]).
reverse([H|T1],R):- tail(R,X),reverse(T1,X).
palindrome(L) :- reverse(L,l). % ?


% 2.
before( [3, 6, 2, 4, 1], 6, 2). % yields true.
before( [3, 6, 2, 4, 1], 6, 4). % yields true.
before( [3, 6, 2, 4, 1], 6, 3). % yields false.
before( [3, 6, 2, 4, 1], 6, 6). %  yields false.
before( [3, 6, 2, 4, 1], 6, X). % yields X = 2, X = 4, and X = 1.
before( [ ], 6, 2).  % yields false.
before( [6], 6, 2). % yields false

before([X|T], X,Y):- member(Y,T).
before([_|T],X,Y):- before(T,X,Y).



% 3.
immediately_before( [3, 6, 2, 4, 1], 6, 2). % yields true.
immediately_before( [3, 6, 2, 4, 1], 6, 4). % yields false.
immediately_before( [3, 6, 2, 4, 1], 6, 3). % yields false.
immediately_before( [3, 6, 2, 4, 1], 6, 6). % yields false.
immediately_before( [3, 6, 2, 4, 1], 6, X). % yields X = 2.
immediately_before( [ ], 6, 2).  % yields false.
immediately_before( [6], 6, 2).  % yields false.

immediately_before([X,Y|T], X,Y).
immediately_before([_|T],X,Y):- immediately_before(T,X,Y).


% 4.
prefix([1, 2], [1, 2, 3]). % yields true.
prefix([1, 2], [1, 2]). % yields true.
prefix([1, 2], [1]). % yields false.
prefix([], [1, 2, 3]). % yields true.
