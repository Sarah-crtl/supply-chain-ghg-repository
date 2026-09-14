-- Supply Chain GHG Analysis
-- Data exploration

SELECT *
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors
LIMIT 20;

SELECT COUNT(*) AS total_rows
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors;

SELECT DISTINCT
  `2017 NAICS Title`
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors
ORDER BY `2017 NAICS Title`;
