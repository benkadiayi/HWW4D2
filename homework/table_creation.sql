CREATE TABLE "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "billing_info" VARCHAR(100)
);

CREATE TABLE "movie" (
  "movie_id" SERIAL PRIMARY KEY,
  "movie_name" VARCHAR(100),
  "release_date" DATE DEFAULT CURRENT_DATE,
  "movie_genre" VARCHAR(100)
 
);


CREATE TABLE "ticket" (
  "ticket_id" SERIAL PRIMARY KEY,
  "amount" NUMERIC(5,2),
  "movie_id" INTEGER,
  FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE "concession" (
  "concession_id" SERIAL PRIMARY KEY,
  "product" VARCHAR(100),
  "ticket_id" INTEGER,
  FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);

CREATE TABLE "lobby" (
  "lobby_id" SERIAL PRIMARY KEY,
  "movie_id" INTEGER,
  "ticket_id" INTEGER,
  FOREIGN KEY(movie_id) REFERENCES movie (movie_id),
  FOREIGN KEY(ticket_id) REFERENCES ticket (ticket_id)
);
