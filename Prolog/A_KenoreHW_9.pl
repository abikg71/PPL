% Abinet Kenore
% HW9
% scalar_mult(3,[2,4,7],X).
% X is [6,12,21]

scalar_mult(_, [], []).
scalar_mult(X, [H|T], [Hn|R]) :- Hn is H * X, scalar_mult(X, T, R).
