% locate(Target,List,Index) means
%   Target is at position Index in List

locate(Target,[Target|Rest],1).
locate(Target,[A|Rest],Index) :- locate(Target,Rest,K),
                                 Index is K+1.

% mix( X, Y, M ) means M is list formed by alternating
%  items from lists X and Y (assumed to have same length)

mix( [], [], [] ).
mix( [H1|R1], [H2|R2], [H1,H2|T] ) :- mix( R1,R2,T ).

%  NOTE:  this problem and the fibmemo one have been changed to be simpler
%         and thus more representative of what I might ask you to do on Test3

% fib( N, F ) means
%   F is the Nth fib. sequence number starting with fib(0)=1
%    and fib(1)=1

fib( 0, 1 ).
fib( 1, 1 ).
fib(N,F) :- N>1, N1 is N-1, N2 is N-2,
                  fib(N1,F1),
                  fib(N2,F2),
                  F is F1+F2.

% fibmemo(F0,F1,N,Fibs) means
%    Fibs is the list of fib values up to N

fibmemo( 0, [1]).
fibmemo( 1, [1,1] ).
fibmemo( N, [A,B,C|D] ) :- N1 is N-1, 
                               fibmemo(N1,[B,C|D]),
                               A is B+C.
