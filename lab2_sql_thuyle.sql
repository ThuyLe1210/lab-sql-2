-- Use sakila database.
use sakila;
-- Select all the actors with the first name ‘Scarlett’.
select first_name from actor where first_name = 'Scarlett';
-- Select all the actors with the last name ‘Johansson’
select last_name from actor where last_name = 'Johanson';
-- How many films (movies) are available for rent?
select count(film_id) from film;
-- How many films have been rented?
select count(rental_id) from rental;
-- What is the shortest and longest rental period?
select max(rental_duration), min(rental_duration) from film;
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration
select max(length) as max_duration, min(length) as min_duration from film;
-- What's the average movie duration?
select avg(length) from film;
-- What's the average movie duration expressed in format (hours, minutes)?
select convert(avg(length),time) from film;
-- How many movies longer than 3 hours?
select count(film_id) from film where length>180.00;
-- Get the name and email formatted.
select concat(first_name,' ', last_name,'-', ' ', email) from customer;
-- What's the length of the longest film title
select max(length(title)) as max_length_title from film;



