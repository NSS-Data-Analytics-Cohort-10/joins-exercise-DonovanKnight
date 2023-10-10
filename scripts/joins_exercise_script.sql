1. Give the name, release year, and worldwide gross of the lowest grossing movie.

select *
from specs inner join revenue
ON specs.movie_id = revenue.movie_id
ORDER BY worldwide_gross DESC;

Answer: Semi-Tough, 1977, 37187139

2. What year has the highest average imdb rating?

select imdb_rating, release_year
from specs inner join rating
ON specs.movie_id = rating.movie_id
ORDER BY imdb_rating DESC;

Answer: 2008

3. What is the highest grossing G-rated movie? Which company distributed it?
 select film_title, mpaa_rating, worldwide_gross 
 from specs inner join revenue
 ON specs.movie_id = revenue.movie_id
 ORDER BY worldwide_gross DESC;
 
 select *
 from distributors 
 
 Answer-- Toy Story 4, Walt Disney


4. Write a query that returns, for each distributor in the distributors table, the distributor name and the number of movies associated with that distributor in the movies table. Your result set should include all of the distributors, whether or not they have any movies in the movies table.

select company_name, COUNT(movie_id) AS movie_count
FROM specs left join distributors
ON specs.domestic_distributor_id = distributors.distributor_id
GROUP BY company_name

5. Write a query that returns the five distributors with the highest average movie budget.

 select company_name, AVG(film_budget) as avg_budget
 from distributors left join revenue
 on distributors.distributor_id = revenue.movie_id
 group by company_name
 order by avg_budget desc
 limit 5;

6. How many movies in the dataset are distributed by a company which is not headquartered in California? Which of these movies has the highest imdb rating?

select count (*)
from 

7. Which have a higher average rating, movies which are over two hours long or movies which are under two hours?

select AVG(imdb_rating), length_in_min
from specs inner join rating
on specs.movie_id = rating.movie_id
where length_in_min>120

select AVG(imdb_rating), length_in_min
from specs inner join rating
on specs.length_in_min = rating.movie_id
GROUP BY length_in_min
where

