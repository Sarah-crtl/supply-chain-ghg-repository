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

  --Calculate the difference
SELECT
`2017 NAICS Title` AS industry,
`Supply Chain Emission Factors without Margins` AS without_margins,
`Supply Chain Emission Factors with Margins` AS with_margins,
`Supply Chain Emission Factors with Margins`
- `Supply Chain Emission Factors without Margins`
AS margin_impact
FROM greenhouse-emissions.supply_chain_ghg.emissions_factors
ORDER BY margin_impact DESC
