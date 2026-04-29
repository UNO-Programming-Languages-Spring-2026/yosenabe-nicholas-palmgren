%% Each number must choose exactly one target cell in an area
1 { target(X,Y,XX,YY) : area(XX,YY,A) } 1 :- number(X,Y,N).

%% The move must be in a straight line: same row or same column
:- target(X,Y,XX,YY), X != XX, Y != YY.

#show target/4.
