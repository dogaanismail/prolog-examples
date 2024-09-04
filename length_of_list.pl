% Facts: Length of a list

% Base case: The length of an empty list is 0
length_of_list([], 0).

%Rules: Length of a list

% Recursive case: The length of the list is 1 plus the length of the tail
length_of_list([_|Tail], Length) :-
    length_of_list(Tail, TailLength),
    Length is 1 + TailLength.