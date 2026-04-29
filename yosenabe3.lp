1 { target(X,Y,XX,YY) : area(XX,YY,A) } 1 :- number(X,Y,N).

:- target(X,Y,XX,YY), X != XX, Y != YY.

:- area(_,_,A), not 1 { target(X,Y,XX,YY) : area(XX,YY,A) }.

%% Cells used by horizontal moves
used(X,Y,XX,YY,X,PY) :- target(X,Y,XX,YY), Y < YY, PY = Y..YY.
used(X,Y,XX,YY,X,PY) :- target(X,Y,XX,YY), YY < Y, PY = YY..Y.

%% Cells used by vertical moves
used(X,Y,XX,YY,PX,Y) :- target(X,Y,XX,YY), X < XX, PX = X..XX.
used(X,Y,XX,YY,PX,Y) :- target(X,Y,XX,YY), XX < X, PX = XX..X.

%% No two moved numbers may use the same grid cell
:- used(X1,Y1,XX1,YY1,PX,PY),
   used(X2,Y2,XX2,YY2,PX,PY),
   X1 != X2.

:- used(X1,Y1,XX1,YY1,PX,PY),
   used(X2,Y2,XX2,YY2,PX,PY),
   Y1 != Y2.

#show target/4.