SELECT 
m.movie_id,
m.title,
g.genre_id,
gm.genre_name

FROM tmdb.movies AS m

INNER JOIN genremap AS g
ON g.movie_id=m.movie_id

INNER JOIN genres AS gm
ON gm.genre_id=g.genre_id




WHERE title  LIKE '%tenenbaums%';
