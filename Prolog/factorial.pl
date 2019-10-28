% factorial(N,F) means F is N!

factorial(0,1).

%  note:  in class I did not have the N>0 clause, which caused
%         it to go negative forever searching for another solution
%         when we hit ; 
factorial(N,F) :- N>0, N1 is N-1, factorial(N1,F1), F is N*F1.
