-- Get film ratings
SELECT
	title, rating
FROM
	sakila.film;
-- Get release years

SELECT
	title, release_year
FROM
	sakila.film;
    
-- Get all films with ARMAGEDDON in the title.

SELECT
	title
FROM sakila.film 
WHERE title LIKE '%ARMAGEDDON%';

-- Get all films with APOLLO in the title

SELECT
	title
FROM sakila.film 
WHERE title LIKE '%APOLLO%';

-- Get all films which title ends with APOLLO.
SELECT
	title
FROM sakila.film 
WHERE title LIKE '%APOLLO';

-- Get all films with word DATE in the title.

SELECT * FROM sakila.film
WHERE title REGEXP '\\bdate\\b';

-- Get 10 films with the longest title.

SELECT * FROM sakila.film
ORDER BY CHAR_LENGTH(title) DESC
LIMIT 10;

-- Get 10 the longest films.

SELECT * FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- How many films include Behind the Scenes content?

SELECT COUNT(*)
FROM sakila.film
WHERE special_features LIKE '%Behind The Scenes%'; 

-- List films ordered by release year and title in alphabetical order.

SELECT release_year, title
FROM
	sakila.film
ORDER BY release_year, title;




