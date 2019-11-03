len([],0).
len([_ |T], X) :- len(T,Y),X is Y + 1.

% len([a,b,c], X).
len([_ |[]])
