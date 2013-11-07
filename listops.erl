-module(listops).
-export([nth/2, number/1, sum/1, duplicate/1, unique/1, reverse/1, pack/1]).

nth(1, L) ->
       [Head|_] = L,
       Head;

nth(N, L) ->
       if N > 1 ->
       	  [_|Tail] = L,
	  nth(N-1, Tail)
       end.

number(L) ->
	if L =/= [] ->
	   [_|Tail] = L,
	   number(Tail) + 1;
	true ->
	   0
	end.

sum(L) ->
       if L =/= [] ->
       	  [Head|Tail] = L,
	  sum(Tail) + Head;
       true ->
          0
       end.

duplicate(L) ->
       if L =:= [] ->
          L;
       true ->
          [Head|Tail] = L,
	  [Head, Head] ++ duplicate(Tail)
       end.

unique(L) ->
       if L =:= [] ->
       	  L;
       true ->
          [Head|Tail] = L,
	  [Head] ++ unique([X || X <- Tail, X =/= Head])
       end.

reverse(L) ->
       if L =:= [] ->
          L;
       true ->
       	  [Head|Tail] = L,
          reverse(Tail) ++ [Head]
       end.

pack(L) ->
       if L =:= [] ->
          L;
       true ->
          [Head|_] = L,
	  [[X || X <- L, X =:= Head]] ++ pack([X || X <- L, X =/= Head])
       end.