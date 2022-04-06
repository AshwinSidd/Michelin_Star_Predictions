-- joining restaurant_data and country_data

SELECT rd.index,
	rd.restaurant_name,
	rd.country,
	rd.latitude,
	rd.longitude,
	rd.awards,
	rd.price_level,
	rd.avg_rating,
	rd.total_reviews_count,
	rd.michelin,
	rd.any_award,
	cd.population,
	cd.area,
	cd.pop_density,
	cd.gdp,
	cd.service
INTO TABLE resto_country_data
FROM restaurant_data AS rd
LEFT JOIN country_data as cd
ON rd.country = cd.country;

SELECT * FROM resto_country_data
WHERE country = 'United Kingdom';