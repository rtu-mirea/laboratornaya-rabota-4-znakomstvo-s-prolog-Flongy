predicates
	nondeterm can_buy(symbol, symbol)
	person(symbol)
	food(symbol)
	car(symbol)
	likes(symbol, symbol)
	for_sale(symbol)

clauses
	can_buy(X, Y) :-
			person(X),
			food(Y),
			likes(X, Y),
			for_sale(Y).
	can_buy(X, Y) :-
			person(X),
			car(Y),
			likes(X, Y),
			for_sale(Y).

	person(kelly).
	person(judy).
	food(lemon).
	food(pizza).
	car(hot_rod).
	likes(kelly, hot_rod).
	likes(judy, pizza).
	for_sale(pizza).
	for_sale(lemon).
	for_sale(hot_rod).

goal
	% can_buy(kelly, hot_rod). % yes
	can_buy(judy, pizza). % yes
