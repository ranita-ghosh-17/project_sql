-- show all the data
SELECT * FROM project.`air pollution data - data_1`
Order by 1,2;


-- The countries with the top ten highest deaths by pollution - 2017

SELECT * FROM project.`air pollution data - data_1`
WHERE Year_="2017"
ORDER BY Total_deaths_air_pollution DESC
LIMIT 10;

-- The countries with the top ten lowest deaths by pollution - 2017
SELECT * FROM project.`air pollution data - data_1`
WHERE Year_="2017"
ORDER BY Total_deaths_air_pollution ASC
LIMIT 10;

-- Let's see which countries decreased their pollution deaths the most over the years.

SELECT Entity,Year_,Total_deaths_air_pollution FROM project.`air pollution data - data_1`
WHERE Year_ between 2000 and 2017
ORDER BY Total_deaths_air_pollution DESC;

-- Countries with higest  total death 

SELECT Entity,max(cast(Total_deaths_air_pollution as UNSIGNED)) as highest
FROM project.`air pollution data - data_1`
group by Entity
ORDER BY highest Desc;

-- Countries with highest  total death count year wise
SELECT Year_,max(cast(Total_deaths_air_pollution as UNSIGNED)) as highest
FROM project.`air pollution data - data_1`
group by Year_
ORDER BY highest Desc;

-- The top ten countries due to Ozone air pollution death percentage - 2017
SELECT Entity,((Deaths_ozone_pollution/Total_deaths_air_pollution)*100) as deathpercentageozone
FROM project.`air pollution data - data_1`
where Year_=2017
ORDER BY deathpercentageozone DESC
LIMIT 10;

-- The lowest ten countries due to indoor air pollution death percentage - 2000

SELECT Entity,((Deaths_indoor_air_pollution/Total_deaths_air_pollution)*100) as deathpercentageindoor
FROM project.`air pollution data - data_1`
where Year_=2000
ORDER BY deathpercentageindoor aSC
LIMIT 10;

-- The top ten countries due to outdoor air pollution death percentage - 2010

SELECT Entity,((Deaths_outdoor_air_pollution/Total_deaths_air_pollution)*100) as deathpercentageoutdoor
FROM project.`air pollution data - data_1`
where Year_=2010
ORDER BY deathpercentageoutdoor DESC
LIMIT 10;







