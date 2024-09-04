%Facts: Factorial

% Base case: The factorial of 0 is 1
factorial(0, 1).


% Rules: Factorial

% Recursive case: The factorial of N is N times the factorial of N-1
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, R1),
    Result is N * R1.