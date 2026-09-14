-- Supply Chain GHG Analysis
-- Industry Analysis

-- industries with the highest emissions
SELECT
  `2017 NAICS Title`AS industry,
  AVG(`Supply Chain Emission Factors with Margins`) AS avg_emissions_factor
FROM `greenhouse-emissions.supply_chain_ghg.emissions_factors`
GROUP BY industry
ORDER BY avg_emissions_factor DESC;

-- industries with the lowest emissions
SELECT
  `2017 NAICS Title`AS industry,
  AVG(`Supply Chain Emission Factors with Margins`) AS avg_emissions_factor
FROM `greenhouse-emissions.supply_chain_ghg.emissions_factors`
GROUP BY industry
ORDER BY avg_emissions_factor ASC;
