domains
	s=symbol

predicates
	female(s)
	male(s)
	mother(s,s)
	father(s,s)
	child(s,s)
	nondeterm parent(s,s)
	nondeterm ancestor(s,s)
	nondeterm grand_parent(s,s)
	nondeterm grand_father(s,s)
	nondeterm grand_mother(s,s)

clauses
	parent(pam,bob).
	parent(tom,bob).
	parent(tom,liz).
	parent(bob,ann).
	parent(bob,pat).
	parent(pat,jim).

	female(pam).
	female(liz).
	female(ann).
	female(pat).
	male(tom).
	male(bob).
	male(jim).

	child(Y,X):- parent(X,Y).
	mother(X,Y):- parent(X,Y),female(X).
	father(X,Y):- parent(X,Y),male(X).
	ancestor(X,Z):- parent(X,Z).
	ancestor(X,Z):- parent(X,Y),ancestor(Y,Z).

	grand_parent(X, Z) :- parent(X, Y), parent(Y, Z).
	grand_father(X, Z) :- grand_parent(X, Z), male(X).
	grand_mother(X, Z) :- grand_parent(X, Z), female(X).

goal
	grand_mother(pam, ann),
	grand_father(tom, ann). % yes
