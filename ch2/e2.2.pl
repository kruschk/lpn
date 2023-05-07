% Exercise 2.2

% Problem

% We are working with the following knowledge base:

house_elf(dobby).
magic(X) :- house_elf(X).
magic(X) :- witch(X).
%magic(X) :- wizard(X). % This breaks everything because wizard/1 is undefined.
witch(hermione).
witch(rita_skeeter).
witch('McGonagall').

% Which of the following queries are satisfied? Where relevant, give all the
% variable instantiations that lead to success.

% 1. ?- magic(house_elf).
% 2. ?- wizard(harry).
% 3. ?- magic(wizard).
% 4. ?- magic(’McGonagall’).
% 5. ?- magic(Hermione).

% Draw the search tree for the query magic(Hermione).

% Solution

% 1. Not satisfied
% 2. Not satisfied
% 3. Not satisfied
% 4. Satisfied
% 5. Satisfied with Hermione = dobby; Hermione = hermione; Hermione =
%    rita_skeeter; Hermione = 'McGonagall'

% [magic(X)]
%   [house_elf(X)]
%     [house_elf(dobby)]
%   [witch(X)]
%     [witch(hermione)]
%     [witch(rita_skeeter)]
%     [witch('McGonagall')]
