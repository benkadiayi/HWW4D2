INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	billing_info
)VALUES(
	1,
	'Benjamin',
	'Kaay',
	'4242-4242-4242-4242 632 05/22'
);

INSERT INTO movie(
	movie_id,
	movie_name,
	movie_genre
)VALUES(
	1,
	'Avengers',
	'Action'
);

INSERT INTO ticket(
	ticket_id,
	amount,
	movie_id
)VALUES(
	1,
	9.00,
	1
);

INSERT INTO concession(
	concession_id,
	product,
	ticket_id
)VALUES(
	1,
	'ticket',
	1
);

INSERT INTO lobby(
	lobby_id,
	ticket_id,
	movie_id
)VALUES(
	1,
	1,
	1
);