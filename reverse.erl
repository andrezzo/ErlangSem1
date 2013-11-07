-module(reverse).
-export([nreverse/1, reverse/1, reverse/2]).

nreverse([]) -> [];
nreverse([Head|Tail]) ->
       R = nreverse(Tail),
       append(R, [Head]).

reverse(L) ->
       reverse(L, []).

reverse([], R) ->
       R;
reverse([Head|Tail], R) ->
       reverse(Tail, [Head|R]).