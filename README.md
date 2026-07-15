# SCAR Groundwater "treasure map"

Geospatial database for the "treasure map" supporting the SCAR Groundwater white paper.

Repository contains:

- `Map_Versions`: Directory containing different versions of the treasure map.

- `Previous_Groundwater_Studies.gpkg`: A geopackage synthesising previous studies of groundwater in Antarctica, either as point, line, or polygon features. The attribute table for each layer contains the columns:

  - "Study": Source study of observation/inference.
  - "Year": Year of source study.
  - "DOI": DOI of source study.
  - "Location": General location of observation/inference.
  - "Type": Type of observation/inference, either "Direct" (i.e., *in situ*/borehole observation), "Indirect" (i.e., inferred from geophysical surveying), "Modeled" (i.e., inferred from modeling), or "Combined" (i.e., a combination of observation/inference types).
  - "Explanation": Brief explanation as to why observation/inference has been selected.

  Note that 6 layers are contained in the geopackage layer:

  - "Points", "Lines", and "Polygons" are the standard database of previous studies, with multi-part features available for each study (i.e., for studies with multiple observations, surveys, data sets, etc.).
  - "ForMap_Points", "ForMap_Lines", and "ForMap_Polygons" compress multi-part features into single, centred points, to aid with visual clarity on the treasure map (e.g., with small polygons).

- `Supporting_Figures`: Directory containing screenshots of various figures from previous groundwater studies, which are used for georeferencing.

- `Supporting_Data`: Directory containing supporting geospatial data for the treasure map, including:

  - The classification of continental basement geology by Aitken et al. (2023)[https://doi.org/10.1029/2021RG000767] (`Aitkenetal2023-AntarcticSedimentary_AntarcticBasins_v1.04.shp`)
  - A .gpkg file containing mask layers of coastlines, grounding lines, and rock outcrops derived from the [Bedmap3](https://doi.org/10.1038/s41597-025-04672-y) dataset (`Bedmap3_Boundaries.gpkg`).
  - The latest list of Antarctic research facilities from [COMNAP](https://www.comnap.aq/antarctic-facilities-information) (`COMNAP_AntarcticFacilities_Nov2024.shp`).
  - Modeled continental estimates of maximum subglacial water thickness from [Ehrenfeucht et al. (2025)](https://doi.org/10.1029/2024GL111386).
  - The sedimentary basin likelihood map of [Li et al. (2022)](https://doi.org/10.1038/s41561-022-00992-5) (`Lietal2022-SedimentaryBasins_LikelihoodMap.tif`).
  - Locations of observed/inferred subglacial lakes in Antarctica from [Livingstone et al. (2022)](https://doi.org/10.1038/s43017-021-00246-9) (`Livingstoneetal2022-SubglacialLakes_AntarcticLakes.shp`).
  - Sentinel-2 satellite imagery over the McMurdo Dry Valleys, accessed via [https://browser.dataspace.copernicus.eu/](https://browser.dataspace.copernicus.eu/) (`McMurdoDryValleys_Sentinel-2_20220127_TrueColor.tiff`, `McMurdoDryValleys_Sentinel-2_20220127_TrueColor_Extended.tiff`, `McMurdoDryValleys_Sentinel-2_QuarterlyMosaics-20240101_TrueColorCloudless.tiff`, `McMurdoDryValleys_Sentinel-2_QuarterlyMosaics-20240101_TrueColorCloudless_Extended.tiff`, `McMurdoDryValleys_Sentinel-2_QuarterlyMosaics-20250101_TrueColorCloudless.tiff`).
  - A .gpkg file containing mask layers of coastlines, grounding lines, and drainage basins from the [MEaSUREs Antarctic Boundaries (v2)](https://nsidc.org/data/nsidc-0709/versions/2) data product (`MEaSUREs_AntarcticBoundaries_v2.gpkg`).
  - Continental ice surface velocity from the [MEaSUREs InSAR-Based Antarctica Ice Velocity Map (v2)](https://nsidc.org/data/nsidc-0484/versions/2) data product (`MEaSUREs_InSAR-Based_Antarctica_Ice_Velocity_Map_v2_450m.tif`).
  - The mean outputs from the ensemble of ice sheet models used to estimate basal ice sheet conditions by [Raspoet & Pattyn (2025)](https://doi.org/10.1017/jog.2025.10087) (`RaspoetPattyn2025-EstimatesBasal_EnsembleMean.nc`), with separate .tif files for several variables (refer to `RaspoetPattyn2025-EstimatesBasal_README.md`).

- `SCAR_Groundwater_Treasure_Map.qgz`: A QGIS project for visualising the above datasets and generating the treasure map.

---

If you have any comments or questions, please post an issue or email me directly at ian.kelly@utas.edu.au.
