1 { target(X,Y,XX,YY) : area(XX,YY,A) } 1 :- number(X,Y,N).

:- target(X,Y,XX,YY), X != XX, Y != YY.

:- area(_,_,A), not 1 { target(X,Y,XX,YY) : area(XX,YY,A) }.

#show target/4.