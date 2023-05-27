-- ¿Qué consulta ejecutarías para obtener todos los países que hablan esloveno? Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de habla del idioma. 
 -- Tu consulta debe ordenar el resultado por porcentaje de habla del idioma en orden descendente.
SELECT countries.name  AS name, languagues.languague AS languague, languagues.porcentage AS porcentage FROM countries
JOIN languagues ON countries.id = languagues.country_id
WHERE languagues.languague = 'Solvene'
ORDER  BY languages.percentage DESC;
select * from languages;

-- ¿Qué consulta ejecutarías para mostrar el número total de ciudades de cada país?  Tu consulta debe devolver el nombre del país, el idioma y el número total de ciudades.
-- Tu consulta debe ordenar el resultado por el número de ciudades en orden descendente.
SELECT countries.name AS Country, COUNT(cities.country_id) AS Number_of_Cities
FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.id
ORDER BY Number_of_Cities DESC;

-- ¿Qué consulta ejecutarías para obtener todos ciudades de México con una población mayor a 500,000? 
-- Tu consulta debe ordenar el resultado por población en orden descendente. 
SELECT cities.name AS city, cities.population
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'MEXICO' AND cities.population> 500000
ORDER BY cities.population DESC;

-- ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje de habla mayor a 89%? 
-- Tu consulta debe ordenar el resultado por porcentaje de habla en orden descendente. 
SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 0.89
ORDER BY languages.percentage DESC;

-- ¿Qué consulta ejecutarías para obtener todos los países con un área de superficie menor a 501 y población mayor a 100,000?
SELECT countries.name AS country, countries.surface_area, countries.population
FROM countries
WHERE countries.surface_area <  501 AND countries.population > 100000;

 -- ¿Qué consulta ejecutarías para obtener países solo con monarquía constitucional, un capital superior a 200 y una esperanza de vida mayor a 75 años?
 SELECT countries.name AS country
FROM countries
WHERE countries.government_form = 'Constitutional Monarchy' AND countries.capital > 200 AND countries.life_expectancy > 75;

 -- ¿Qué consulta ejecutarías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires con una población mayor a 500,000 habitantes?  
 -- La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población.  
 SELECT cities.name AS city
FROM cities
WHERE cities.country_code = 'ARG' AND cities.district = 'Buenos Aires' AND cities.population > 500000;

 -- ¿Qué consulta ejecutarías para resumir el número de países en cada región? Tu consulta debe mostrar el nombre de la región y el número de países.
 -- Además, debe ordenar el resultado por el número de países en orden descendente.
 SELECT countries.region, COUNT(countries.id) AS number_of_countries
FROM countries
GROUP BY countries.region
ORDER BY COUNT(countries.id) DESC;