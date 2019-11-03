% in and out exapmle
twice()[], [])
twice([H|T1], [H,H|T2]) :- twice(T1,T2).

% Base case
twice([a, b], [a,a,b,b]).
twice([b], [b,b]).
twice([],[]).
% search
twice([a,b,c], X)
twice(a|[b,c], X)
X = [a,a|T]  = [a,a,b,b,c,c]

twice([b,c],T)
twice([b|[c]], X1)
X1 = [a,b|T2] [b,b,c,c]

twice([c],Tn)
twice([c|[]], X2)
X2 = [[c,c|T2]] = [c,c]
twice([],T2)  T2 =[]

% 3) Suppose we are given a knowledge based % with the following facts (pten translate % number words from Portuguese to English):

pten(um,one).
pten(dois,two).
pten(tres,three).
pten(quatro,four).
pten(cinco,five).
pten(seis,six).
pten(sete,seven).
pten(oito,eight).
pten(nove,nine).
pten(dez,ten).

% Write a predicate listpten which
%  translates a list of Portuguese number   % words to the corresponding list of
% English number words.

listpten([],[]).
listpten([Hpt|Tpt],[He|Te]) :- .Pten(Hp,He), listpten(Tp,Te).
