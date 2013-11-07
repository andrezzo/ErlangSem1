-module(lists).
-export([nth/2]).

nth(1, L) ->
       [Head|_] = L,
       Head;

nth(N, L) ->
       nth(N-1, L).