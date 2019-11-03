member

member(X, [X|T]).
member(X, [X|T]):- member(X, T).
