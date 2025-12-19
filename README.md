# SCAR Groundwater "treasure map"

Geospatial database for the "treasure map" supporting the SCAR Groundwater white paper.

Repository contains:

- `Map_Versions`: Directory containing versions of the treasure map.

- `Previous_Groundwater_Studies.gpkg`: A three-layer geopackage summarising previous observations/inferences of groundwater in Antarctica, either as point, line, or polygons features. The attribute table for each layer contains the columns:

  - "Study": Source study of observation/inference.
  - "Year": Year of source study.
  - "DOI": DOI of source study.
  - "Location": General location of observation/inference.
  - "Type": Type of observation/inference, either "Direct" (i.e., *in situ*/borehole observation), "Indirect" (i.e., inferred from geophysical surveying), "Modeled" (i.e., inferred from modeling), or "Combined" (i.e., a combination of observation/inference types).
  - "Explanation": Brief explanation as to why observation/inference has been selected.

- `Supporting_Figures`: Directory containing screenshots of figures from previous groundwater studies, to use for georeferencing.

- `Supporting_Data`: Directory containing supporting geospatial data for the treasure map, including:

  - A .gpkg file containing derived mask layers of coastlines, grounding lines, and rock outcrops from the [Bedmap3](https://doi.org/10.1038/s41597-025-04672-y) dataset (`Bedmap3_Boundaries.gpkg`).
  - Antarctic research stations from COMNAP (`COMNAP_AntarcticStations.shp`).
  - Locations of observed/inferred subglacial lakes in Antarctica from [Livingstone et al. (2022)](https://doi.org/10.1038/s43017-021-00246-9) (`Livingstoneetal2022-SubglacialLakes_AntarcticLakes.shp`).
  - The mean outputs from the ensemble of ice sheet models used to estimate basal ice sheet conditions by [Raspoet & Pattyn (2025)](https://doi.org/10.1017/jog.2025.10087) (`RaspoetPattyn2025-EstimatesBasal_EnsembleMean.nc`), with separate .tif files for the mean basal thermal temperature relative to the pressure-melting point (`RaspoetPattyn2025-EstimatesBasal_Tbc_Mean_all.tif`) and the likely basal thermal state given by the percentage of agreement between simulations (`RaspoetPattyn2025-EstimatesBasal_LBTS_all.tif`).
  - The sedimentary basin likelihood map of [Li et al. (2022)](https://doi.org/10.1038/s41561-022-00992-5) (`Supporting_Data/Lietal2022-SedimentaryBasins_LikelihoodMap.tif`).

- `Groundwater_Likelihood`: Directory containing various attempts for a continental likelihood map of groundwater presence, to provide a background to the treasure map:

  - `GroundwaterLikelihood_v1.tif`: The normalised product of probabilities between the likely basal thermal state (`Supporting_Data/RaspoetPattyn2025-EstimatesBasal_LBTS_all.tif`) and the sedimentary basin likelihood (`Supporting_Data/Lietal2022-SedimentaryBasins_LikelihoodMap.tif`).

- `SCAR_Groundwater_Treasure_Map.qgz`: QGIS project visualising the above datasets.

