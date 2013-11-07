-module(rekursion).
-export ([mult/2, exp/2, exp2/2]).
%if A goes to 0, 0 will be added to the sum.
mult(0, _) ->
	0;

% B gets added together A amount of times.
mult(A, B) ->
	mult(A-1, B) + B.

%Base-case
exp(X, 1) ->
	X;

% X gets multiplied by X, Y amount of times.
exp(X, Y) ->
	mult(exp(X, Y-1), X).

exp2(_, 0) ->
	1;

exp2(X, Y) ->
	if 
		% if Y is even
		(Y rem 2) =:= 0 ->
			exp2(X, (Y div 2)) * X;
		% else
		true ->
			exp2(X, Y-1) * X
	end.