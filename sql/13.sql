/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

select film_id, title, language_id, language.name
from film
join language using (language_id)
where language.name='English' and title like 'K%' or title like 'Q%'
group by film_id, title, language.name;
