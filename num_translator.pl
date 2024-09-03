% Facts: Translation from German to English
tran(eins, one).
tran(zwei, two).
tran(drei, three).
tran(vier, four).
tran(fuenf, five).
tran(sechs, six).
tran(sieben, seven).
tran(acht, eight).
tran(neun, nine).
tran(zehn, ten).

% Mapping German words to corresponding numbers
number_translation(eins, 1).
number_translation(zwei, 2).
number_translation(drei, 3).
number_translation(vier, 4).
number_translation(fuenf, 5).
number_translation(sechs, 6).
number_translation(sieben, 7).
number_translation(acht, 8).
number_translation(neun, 9).
number_translation(zehn, 10).

% Base case: an empty list translates to an empty list
listtran([], []).

% Recursive case: translate the head of the list and then translate the tail with index
listtran(GermanList, EnglishList) :-
    listtran(GermanList, EnglishList, 1).  % Start with index 1

listtran([], [], _).

listtran([GermanHead|GermanTail], [EnglishHead|EnglishTail], Index) :-
    tran(GermanHead, EnglishHead),
    number_translation(GermanHead, Number),  % Get the corresponding number for the German word
    format("~d: ~w -> ~w -> ~d~n", [Index, GermanHead, EnglishHead, Number]),  % Print index, translation, and number
    NextIndex is Index + 1,
    listtran(GermanTail, EnglishTail, NextIndex).
