list_reverse([], []).

list_reverse([H|T], R) :- 
    list_reverse(T, R1), 
    append(R1, [H], R).