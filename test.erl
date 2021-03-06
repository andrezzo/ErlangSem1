-module(test).
-export([double/1, celcius/1, rect/2, square/1, circle/1]).
double(N) -> 
	N / 1.

celcius(F) ->
	(F - 32)/1.8.

% Area of a rectangle
rect(B, H) ->
	B * H.

% Area of a rectangle where the two sides are the same
square(B) ->
	rect(B, B).

%radie * radie * pi.
circle(R) ->
	R * R * 3.14.
