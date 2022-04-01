	CREATE TABLE 	restaurant_data (
		index INT PRIMARY KEY NOT NULL,
		restaurant_name VARCHAR,
		country VARCHAR NOT NULL,
		latitude  REAL,
		longitude REAL,
		awards VARCHAR, 
		price_level INT,
		avg_rating REAL,
		total_reviews_count INT,
		michelin INT,
		any_award INT
	);
		
-- DROP TABLE restaurant_data

	CREATE TABLE country_data (
		index INT PRIMARY KEY NOT NULL,
		country VARCHAR,
		population INT,
		area INT,
		pop_density REAL,
		gdp REAL,
		service INT
	)
	
-- DROP TABLE country_data
-- DROP TABLE countries

SELECT * FROM country_data
SELECT * FROM countries;
SELECT * FROM restaurant_data;


