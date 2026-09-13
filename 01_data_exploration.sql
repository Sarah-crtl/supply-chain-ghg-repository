-- Supply Chain GHG Analysis
-- Data exploration

-- View the first 20 rows
SELECT *
FROM `YOUR_PROJECT_ID.supply_chain_ghg.emissions_factors`
LIMIT 20;


-- Count the total number of records
SELECT COUNT(*) AS total_rows
FROM `YOUR_PROJECT_ID.supply_chain_ghg.emissions_factors`;


-- List the industries
SELECT DISTINCT
  `2017 NAICS Title`
FROM `YOUR_PROJECT_ID.supply_chain_ghg.emissions_factors`
ORDER BY `2017 NAICS Title`;


-- List the GHG categories
SELECT DISTINCT
  GHG
FROM `YOUR_PROJECT_ID.supply_chain_ghg.emissions_factors`
ORDER BY GHG;
