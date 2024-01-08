SELECT * FROM apple.apple_store;

/* How many apps are there in the data source? */
SELECT COUNT(*) AS total_apps FROM apple_store;

/* What is the average rating of all apps? */

SELECT AVG(user_rating) AS avg_rating FROM apple_store;

/*How many apps have an average rating no less than 4? */

SELECT COUNT(*) AS avg_high 
FROM apple_store 
WHERE user_rating >=4;

/* How many genres are there in total for all the apps? */
SELECT COUNT(DISTINCT prime_genre) AS total_genres 
FROM apple_store;

/* Which genre is most likely to contain free apps? */

SELECT prime_genre, MAX(free_app_count) AS max_free_apps
FROM (
    SELECT prime_genre, COUNT(*) AS free_app_count
    FROM apple_store
    WHERE price = 0
    GROUP BY prime_genre
    ORDER BY free_app_count DESC
	LIMIT 1
) AS genre_counts
GROUP BY prime_genre;





