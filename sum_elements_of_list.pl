% Base case: The sum of an empty list is 0
sum_list([], 0).

% Recursive case: The sum of the list is the sum of the head plus the sum of the tail
sum_list([Head|Tail], Sum) :-
    sum_list(Tail, TailSum),
    Sum is Head + TailSum.