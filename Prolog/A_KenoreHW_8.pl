% Abinet Kenore
% HW#8
% Do you know these wooden Russian dolls (Matryoshka dolls)
%  where the smaller
% ones are contained in bigger ones? Here is a schematic picture:k(O(n(i))).

directlyIn(katarina, olga).
directlyIn(olga, natasha).
directlyIn(natasha, irina).

in(X, Y) :- directlyIn(X, Y).
in(X, Y) :- directlyIn(X, Z), in(Z, Y).
