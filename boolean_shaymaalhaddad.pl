% boolean.pl - Lab 8, Task 1
% Expression: (A AND B) OR (NOT A AND NOT B)

% ---------- AND truth table ----------
and(true,  true,  true).
and(true,  false, false).
and(false, true,  false).
and(false, false, false).

% ---------- OR truth table ----------
or(true,  true,  true).
or(true,  false, true).
or(false, true,  true).
or(false, false, false).

% ---------- NOT (negation) truth table ----------
neg(true,  false).
neg(false, true).

% ---------- the expression: two ands, two negs, one or ----------
% logicGate(A, B, Output)
logicGate(A, B, O) :-
    and(A, B, X),        % A AND B
    neg(A, NA),          % NOT A
    neg(B, NB),          % NOT B
    and(NA, NB, Y),      % NOT A AND NOT B
    or(X, Y, O).         % (A AND B) OR (NOT A AND NOT B)

% Tests (press ; after each one):
% ?- logicGate(true,  true,  O).    O = true.
% ?- logicGate(true,  false, O).    O = false.
% ?- logicGate(false, true,  O).    O = false.
% ?- logicGate(false, false, O).    O = true.
