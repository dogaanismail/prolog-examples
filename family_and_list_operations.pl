% Facts 

% Female individuals
female(julia).
female(mary).
female(titti).
female(maria).

% Male individuals
male(andrew).
male(conrad).
male(enric).
male(arnold).

% Parent-child relationships
parent(julia, mary).
parent(julia, titti).
parent(julia, andrew).
parent(julia, conrad).
parent(enric, mary).
parent(enric, titti).
parent(enric, andrew).
parent(enric, conrad).
parent(maria, julia).
parent(arnold, julia).


% Rules

% Brother relationship
brother(X,Y) :-
    male(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.

% Sister relationship
sister(X,Y) :-
    female(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.

% Father relationship
father(X,Y) :-
    male(X),
    parent(X,Y).

% Mother relationship
mother(X,Y) :-
    female(X),
    parent(X,Y).

% Grandfather relationship
grandfather(X,Y) :-
    male(X),
    parent(X,P),
    parent(P,Y).

% Grandmother relationship
grandmother(X,Y) :-
    female(X),
    parent(X,P),
    parent(P,Y).

% Base cases: The last element of a list with one item is that item
last_element([X], X).

% Recursive case: The last element of a list is the last element of the tail
last_element([_|Tail], X) :-
    last_element(Tail, X).


% Base cases: The first element of the list is the Nth element when N is 1
nth_element(1, [X|_], X).

% Recursive case: The Nth element of the list is the (N-1)th element of the tail
nth_element(N, [_|Tail], X) :-
    N > 1,
    N1 is N - 1,
    nth_element(N1, Tail, X).