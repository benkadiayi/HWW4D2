-- deleting the product colunm
ALTER TABLE concession
DROP product;

-- add length column
ALTER TABLE movie
ADD length NUMERIC (5,2);

-- insert into the new colunm
INSERT INTO movie(
	length
)VALUES(
	230
);

