-- Supply Chain GHG Analysis
-- Data exploration

-- View the first 20 rows
SELECT *
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors
LIMIT 20;

-- Count the total number of records
SELECT COUNT(*) AS total_rows
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors;

-- List the industries
SELECT DISTINCT
  `2017 NAICS Title`
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors
ORDER BY `2017 NAICS Title`;
