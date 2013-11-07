-module(binaryconversion).
-export([binaryconv1/1, binaryconv2/1, binaryconv2/2, exp/2, highestexp/2]).

binaryconv1(0) ->
    [];
binaryconv1(N) ->
    binaryconv1(N div 2) ++ [N rem 2].

%Base-case
exp(X, 1) ->
	X;

% X gets multiplied by X, Y amount of times.
exp(X, Y) ->
	exp(X, Y-1) * X.

binaryconv2(N) ->
    binaryconv2(N, 1).

binaryconv2(N, M) ->
    [];

%binaryconv2(N, M) ->

% N - exponent, M - number
% Returns the lowest exponent so that 2^N > M
highestexp(N, M) ->
    X = exp(2,N),
    if X =< M ->
       highestexp(N + 1, M);
    true ->
       N-1
    end.