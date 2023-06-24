USE sakila;

#level 01
SELECT first_name 
from actor;

#level 2  Filter (select from)
SELECT first_name
from actor
WHERE actor_id = 1;

#level 3
# first name of the actor

SELECT first_name
from actor
WHERE actor_id in (1,2,3,4);

#we need to use identation
SELECT first_name
from actor
WHERE actor_id in (SELECT actor_id
				     FROM film_actor
				      where film_id =1);
                      
SELECT first_name
from actor
WHERE actor_id in (SELECT actor_id
				     FROM film_actor
				      where film_id = (SELECT film_id
                                        from film 
                                         where title= "Alone trip"));


SELECT first_name
from actor
WHERE actor_id in (SELECT actor_id
				     FROM film_actor
				      where film_id = (SELECT film_id
                                        from film 
                                         where title= (SELECT 
													    FROM);
                                                        
SELECT first_name
FROM actor 
where actor_id in (SELECT actor_id
						From film_actor
						where film_id in (SELECT film_id
											FROM film_category
											WHERE category_id=(SELECT category_id
                                                                            FROM category
																			 where name= "Action")));

