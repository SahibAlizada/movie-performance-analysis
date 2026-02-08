DROP TABLE IF EXISTS movie_yearly_stats;

CREATE TABLE movie_yearly_stats (
    year INT,
    vote_average NUMERIC,
    vote_count BIGINT
);

SELECT * FROM movie_yearly_stats LIMIT 5;
--Hansı illərdə daha çox səs verilib
SELECT year, vote_count
FROM movie_yearly_stats
ORDER BY vote_count DESC
LIMIT 10;
--Orta reytinqi ən yüksək olan illər
SELECT year, vote_average
FROM movie_yearly_stats
ORDER BY vote_average DESC
LIMIT 10;
