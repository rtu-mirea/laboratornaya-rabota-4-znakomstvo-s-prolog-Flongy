domains
	author_name = symbol
	book_name = symbol
	book_year = integer

predicates
	author(author_name)
	name(book_name)
	year(book_name, book_year)
	author_of(author_name, book_name)
	nondeterm book(author_name, book_name, book_year)	% Does this book exist

clauses
	author("Stephen King").
	author("Neil Gaiman").
	author("Douglas Adams").


	name("The Gunslinger").
	name("The Talisman").
	name("Insomnia").

	name("Neverwhere").
	name("Anansi Boys").

	name("The Hitch-Hiker's Guide To The Galaxy").
	name("Dirk Gently's Holistic Detective Agency").


	year("The Gunslinger", 1982).
	year("The Talisman", 1984).
	year("Insomnia", 1994).

	year("Neverwhere", 1996).
	year("Anansi Boys", 2005).

	year("The Hitch-Hiker�s Guide To The Galaxy", 1979).
	year("Dirk Gently�s Holistic Detective Agency", 1987).


	author_of("Stephen King", "The Gunslinger").
	author_of("Stephen King", "The Talisman").
	author_of("Stephen King", "Insomnia").

	author_of("Neil Gaiman", "Neverwhere").
	author_of("Neil Gaiman", "Anansi Boys").

	author_of("Douglas Adams", "The Hitch-Hiker�s Guide To The Galaxy").
	author_of("Douglas Adams", "Dirk Gently�s Holistic Detective Agency").

	book(A, B, Y) :- author(A), name(B), author_of(A, B), year(B, Y).

goal
	% book("Stephen King", "The Gunslinger", 1982). % yes
	% book("Stephen King", "Neverwhere", 2001). % no
	% book("Neil Gaiman", "Neverwhere", 1996). % yes

	% author_of("Douglas Adams", Book).
	% 2 Solutions: The Hitch-Hiker�s Guide To The Galaxy, Dirk Gently�s Holistic Detective Agency

	book("Neil Gaiman", "Neverwhere", Y). % 1996
