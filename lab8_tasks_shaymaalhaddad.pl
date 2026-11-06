% lab8_tasks.pl - Lab 8, Tasks 2 and 3

% ============================================================
% Task 2 - sumlist(List, Sum)
% ============================================================

% Base case: the sum of no numbers is 0
sumlist([], 0).

% Recursive case: sum of the tail, then add the head
sumlist([H|T], Sum) :-
    sumlist(T, SumTail),
    Sum is H + SumTail.

% ?- sumlist([1,2,5,7], S).    S = 15.
% ?- sumlist([], S).           S = 0.


% ============================================================
% Task 3 - Total and Average of three numbers
% Run with:  ?- total_average.
% Remember the full stop after every number you type.
% ============================================================

total_average :-
    write('Enter the first number: '),  nl, read(A),
    write('Enter the second number: '), nl, read(B),
    write('Enter the third number: '),  nl, read(C),
    Total is A + B + C,
    Average is Total / 3,
    write('Total   = '), write(Total),   nl,
    write('Average = '), write(Average), nl.



    
% 49 ?- sumlist([1,2,5,7], S).
%S = 15.

%50 ?- sumlist([], S).
%S = 0.

%51 ?- total_average.
%Enter the first number: 
%|: 3.
%Enter the second number: 
%|: 4.
%Enter the third number: 
%|: 5.
%Total   = 12
%Average = 4
%true.
