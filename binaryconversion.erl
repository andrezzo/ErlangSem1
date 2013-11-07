-module(binaryconversion).
-export([binaryconv1/1, binaryconv2/1, binaryconv2/2]).

binaryconv1(0) ->
    [];
binaryconv1(N) ->
    binaryconv1(N div 2) ++ [N rem 2].

binaryconv2(N) ->
    binaryconv2(N, 1).

binaryconv2(N, M) ->
    [];

binaryconv2(N, M) ->
    binaryconv2(2#N 
