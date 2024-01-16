-- SQL DATA EXPLORATION COVID 19 Deaths And Vaccinations - Gerardo Mora Cuevas

SELECT * FROM coviddeaths;

SELECT * FROM covidvaccinations;


-- Loking at Total Cases vs Total Deaths
-- Shows the likelihood of dying of covid in a given country

SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS "Total Cases vs Total Deaths" 
FROM coviddeaths
WHERE location LIKE '%Mexico%';



-- Looking at the total cases vs population 

SELECT location, date, population, total_cases, (total_cases/population)*100 AS "% population with covid 19" 
FROM coviddeaths
WHERE location LIKE '%Mexico%';


-- Looking at countries with highest infection rate compared to population

SELECT location, population, MAX(total_cases) AS "Highest Infection Count", 
MAX((total_cases/population))*100 AS "% population with covid"
FROM coviddeaths
GROUP BY location, population
ORDER BY 4 DESC;




-- Showing the countries with highest death count per population
SELECT location, MAX(CAST(total_deaths as int)) as TotalDeathCount
from coviddeaths
WHERE continent IS NOT NULL
Group by location
ORDER BY TotalDeathCount DESC;


-- Showing the Continents and regions with highest death count per population
SELECT location, MAX(CAST(total_deaths as int)) as TotalDeathCount
from coviddeaths
WHERE continent IS NULL
Group by location
ORDER BY TotalDeathCount DESC;






-- Let's break things down by continent
SELECT continent, MAX(CAST(total_deaths as int)) as TotalDeathCount
from coviddeaths
WHERE continent IS NOT NULL
Group by continent
ORDER BY TotalDeathCount DESC;



-- Global numbers
SELECT date, SUM(new_cases) as total_cases, SUM(CAST(new_deaths AS INT)) AS total_deaths, SUM(CAST(new_deaths AS INT))/SUM(new_cases)*100 AS DeathPercentage 
FROM coviddeaths
-- WHERE location ="Mexico" AND continent IS NOT NULL
WHERE continent is not null
GROUP BY date
ORDER BY 1,2;

-- Global numbers form the years 2020-2021
SELECT SUM(new_cases) as total_cases, SUM(CAST(new_deaths AS INT)) AS total_deaths, SUM(CAST(new_deaths AS INT))/SUM(new_cases)*100 AS DeathPercentage 
FROM coviddeaths
-- WHERE location ="Mexico" AND continent IS NOT NULL
WHERE continent is not null
-- GROUP BY date
ORDER BY 1,2;


-- Looking at total population of a given country vs vaccinations
-- USE CTE
With PopvsVac
AS 
(
SELECT CD.location, CD.date, CD.population, CV.new_vaccinations, 
SUM(CAST(CV.new_vaccinations AS INT)) OVER (PARTITION by	CD.location ORDER BY CD.location, CD.date) AS RollingPeopleVaccinated
 FROM coviddeaths CD JOIN covidvaccinations CV
 ON CD.location = CV.location AND CD.date = CV.date
WHERE CD.location = "Mexico"
-- ORDER BY date
)
SELECT location, date, population, new_vaccinations, RollingPeopleVaccinated, (RollingPeopleVaccinated/population)*100 AS PercentageVaccinated FROM PopvsVac;





-- Temp TABLE

DROP TABLE IF EXISTS PercentPopulationVaccinated;
CREATE TABLE PercentPopulationVaccinated
(
location VARCHAR(255),
date date,
population NUMERIC,
new_vaccinations NUMERIC,
RollingPeopleVaccinated NUMERIC
);

Insert INTO PercentPopulationVaccinated (location, date, population, new_vaccinations, RollingPeopleVaccinated)
SELECT CD.location, CD.date, CD.population, CV.new_vaccinations, 
SUM(CAST(CV.new_vaccinations AS INT)) OVER (PARTITION by	CD.location ORDER BY CD.location, CD.date) AS RollingPeopleVaccinated
 FROM coviddeaths CD JOIN covidvaccinations CV
 ON CD.location = CV.location AND CD.date = CV.date
WHERE CD.location = "Mexico";
-- ORDER BY date

SELECT *, (RollingPeopleVaccinated/population)*100 FROM PercentPopulationVaccinated;




-- Creating view to sotre data for later visualizations

CREATE VIEW PercentPopulationVaccinatedView AS
SELECT CD.location, CD.date, CD.population, CV.new_vaccinations, 
SUM(CAST(CV.new_vaccinations AS INT)) OVER (PARTITION by	CD.location ORDER BY CD.location, CD.date) AS RollingPeopleVaccinated
 FROM coviddeaths CD JOIN covidvaccinations CV
 ON CD.location = CV.location AND CD.date = CV.date
WHERE CD.location = "Mexico";
-- ORDER BY date


SELECT DISTINCT(location) FROM percentpopulationvaccinatedview;
