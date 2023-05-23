% Exercise 11.2

% Problem

% Suppose we have the following database:

q(blob, blug).
q(blob, blag).
q(blob, blig).
q(blaf, blag).
q(dang, dong).
q(dang, blug).
q(flab, blob).

% What is Prolog’s response to the queries:

% 1. ?- findall(X, q(blob, X), List).
% 2. ?- findall(X, q(X, blug), List).
% 3. ?- findall(X, q(X, Y), List).
% 4. ?- bagof(X, q(X, Y), List).
% 5. ?- setof(X, Y^q(X, Y), List).

% Solution

% 1. List = [blug, blag, blig].
% 2. List = [blob, dang].
% 3. List = [blob, blob, blob, blaf, dang, dang, flab].
% 4. Y = blug, List = [blob, dang];
%    Y = blag, List = [blob, blaf];
%    Y = blig, List = [blob];
%    Y = dong, List = [dang];
%    Y = blob, List = [flab].
% 5. List = [blaf, blob, dang, flab].
