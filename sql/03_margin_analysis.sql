-- Supply Chain GHG Analysis
-- Margin Analysis

--Compare emissions with and without margins
SELECT
`2017 NAICS Title` AS industry,
`Supply Chain Emission Factors without Margins` AS without_margins,
`Margins of Supply Chain Emission Factors` AS margins,
`Supply Chain Emission Factors with Margins` AS with_margins,
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors
ORDER BY with_margins DESC

  --Calculate the absolute difference
SELECT
`2017 NAICS Title` AS industry,
`Supply Chain Emission Factors without Margins` AS without_margins,
`Supply Chain Emission Factors with Margins` AS with_margins,
`Supply Chain Emission Factors with Margins`
- `Supply Chain Emission Factors without Margins`
AS margin_impact
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors
ORDER BY margin_impact DESC

--find the percentage increase
SELECT
  `2017 NAICS Title` AS industry,
  `Supply Chain Emission Factors without Margins` AS without_margins,
  `Supply Chain Emission Factors with Margins` AS with_margins,
  ROUND(
    (

   `Supply Chain Emission Factors with Margins`
   - `Supply Chain Emission Factors without Margins`
   )
    / `Supply Chain Emission Factors without Margins` * 100,
    2
  ) AS margin_increase_percent
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors
WHERE `Supply Chain Emission Factors without Margins` > 0
ORDER BY margin_increase_percent DESC
