% numeral1.pl

numeral(0).
numeral(succ(X)) :- numeral(X).

% 1. Both implementations appear to behave the same way with respect to
%    concrete numerals.
% 2. The second numeral implementation gets caught in an infinite loop and
%    doesn't terminate.
