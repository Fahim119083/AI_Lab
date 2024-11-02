% Facts
male(john).
male(peter).
male(pooter).
male(jason).
male(mike).
female(mary).
female(susan).
female(linda).
female(jasika).

parent(john, peter).
parent(john, mary).
parent(mary, susan).
parent(peter, mike).
parent(linda, mike).
parent(jason, john).
parent(jasika, john).
child(john,Jason).
child(john,Jasika).


% Rules
father(F, C) :-
    male(F),
    parent(F, C).

mother(M, C) :-
    female(M),
    parent(M, C).


grandparent(G,C) :-
    parent(A,C),
     parent(G,A).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Define the aunt relationship
aunt(X, Y) :- sibling(X, Z), parent(Z, Y), female(X).



sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

uncle(U,C):- sibling(U, Z),parent(Z, C), male(U).
   
children(C,P):-
    parent(P, C).
great-grandparent(G,C) :-
    
      parent(G,X),
     parent(X,A),
    
     parent(A,C).
cousin(C,X):-
    
     sibling(M,N),
    
     parent(N,C),
     parent(M,X),
     M \=N.

couple(X,Y) :- 
   parent(X,M),
    parent(Y,M),
   male(X),
   female(Y).

   



       
   
     
    
    