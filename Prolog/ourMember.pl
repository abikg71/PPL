% ourMember(X,List) means X is a member of List

ourMember(X,[X|_]).

ourMember(X,[A|R]) :- ourMember(X,R).

% len(List,N)  means length of List is N
%  (assume List is actually a list)

len([],0).

len([H|T],N) :- len(T,N1), N is N1+1.
