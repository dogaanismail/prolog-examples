list_reverse(L1, L2) :- 
    reverse_tmp(L1, L2, []).

reverse_tmp([], L2, L2) : - !.

reverse_tmp([H|T], L2, Acc) :- 
    reverse_tmp(T, L2, [H|Acc]).