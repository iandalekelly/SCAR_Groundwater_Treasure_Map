==============================================================================
Estimates of basal and englacial thermal conditions of the Antarctic ice sheet
==============================================================================

by Olivia Raspoet and Frank Pattyn (2025, Journal of Glaciology)

------------------------------
ABSTRACT
------------------------------

We conduct an ensemble of simulations of the englacial temperature field of the Antarctic ice sheet to gauge the sensitivity to uncertainties in geothermal heat flow, surface climatic conditions, ice thermodynamics and dynamics. We further compare the modelled temperature fields with observational constraints, including deep-borehole temperature measurements, englacial temperatures retrieved from SMOS satellite observations, and the spatial distribution of subglacial lakes to determine the most likely boundary conditions. Results show that temperate basal conditions prevail over 60% of the Antarctic ice sheet, with a mean basal melt rate of 6.9 mm a-1. The ensemble mean subglacial meltwater production over the grounded ice sheet is 69 Gt a-1, with a contribution of 51% from geothermal heat and 49% from frictional heat. While geothermal heat flow remains the largest source of uncertainty, heat flow datasets leading to overall colder conditions tend to fit englacial temperature measurements better. However, ice thermomechanical approximations influence the shape of temperature profiles and may, in some cases, be more important than the geothermal heat flow. Furthermore, since frictional heat contributes significantly to basal melt in regions hosting fast-flowing glaciers, uncertainties of basal slipperiness affect the basal melt estimates as much as the geothermal heat flow.

------------------------------
INTRODUCTION
------------------------------

This dataset contains the data and the MATLAB scripts required to reproduce the figures presented in the study:
"Estimates of basal and englacial thermal conditions of the Antarctic ice sheet"
by Olivia Raspoet and Frank Pattyn (2025, Journal of Glaciology).

Results are provided in native MATLAB files (.mat), compressed NetCDF (.nc) (for variables with spatial dimensions), and text (.txt) (for 1D variables).
The Kori-ULB model and MATLAB scripts required to reproduce the figures are provided in MATLAB_SCRIPTS.zip. 
For detailed information on file structure and variable descriptions, please refer to the ReadMe.md file.

--------------------------------
PROVIDED DATA: 
--------------------------------

Results are provided in original .mat files, as well as in .nc (2D and 3D variables) or .txt (1D variables).
The description (names and dimensions) of the variables contained in the files is provided at the end of this ReadMe.


DETAILED RESULTS FROM THE ENSEMBLE
----------------------------------

'ResultsAntarctica8km_englacial_temperature.mat' | 'ResultsAntarctica8km_englacial_temperature.nc' 
'tmp': englacial temperature field (K)
'zeta' : normalized vertical coordinate for cold-ice models
'zeta1': normalized vertical coordinate for enthalpy models

'ResultsAntarctica8km_englacial_meltwater.mat'   | 'ResultsAntarctica8km_englacial_meltwater.nc' 
'wat': englacial water content (fraction)
'zeta1': normalized vertical coordinate for enthalpy models

'ResultsAntarctica8km_ice_thickness.mat' | 'ResultsAntarctica8km_ice_thickness.nc'
'H'     : optimized ice thickness for Kori-ULB Enth and Kori-ULB Opt (m)
'H_obs' : observed ice thickness (Bedmachine v3) used for Kori-ULB Obs and in the model of Pattyn (2010)

'ResultsAntarctica8km_basal_temperature.mat' | 'ResultsAntarctica8km_basal_temperature.nc' | 'ResultsAntarctica8km_basal_temperature.txt'
'Tbc' : basal temperatures relative to pmp (°C)
'Ht'  : thickness of the temperate ice layers for simulations conducted with enthalpy (m)
'Prop': fraction of temperate basal conditions (%)

'ResultsAntarctica8km_subglacial_meltwater.mat' | 'ResultsAntarctica8km_subglacial_meltwater.nc' | 'ResultsAntarctica8km_subglacial_meltwater.txt'

'Bmelt' : basal melt rate (m/a)
'BmeltG': basal melt rate due to geothermal heat (m/a)
'BmeltF': basal melt rate due to frictional heat (m/a)
'BV'    : subglacial meltwater volume due to geothermal and frictional heat (Gt/a)
'BVG'   : subglacial meltwater volume due to geothermal heat (Gt/a)
'BVF'   : subglacial meltwater volume due to frictional heat (Gt/a)
'WF'    : subglacial water flux from the subglacial water routing (m^2/a)
'BmeltR': basal refreezing rate for simulations conducted with enthalpy (m/a)
'BVR'   : volume of basal refreezing for simulations conducted with enthalpy (Gt/a)
'Dbw'   : vertically integrated englacial meltwater drained to the bed for simulations conducted with enthalpy (m/a)
'DBW'   : volume of englacial meltwater drained to the bed for simulations conducted with enthalpy (Gt/a)


'ResultsAntarctica8km_Basins.mat' | 'ResultsAntarctica8km_Basins.nc' | 'ResultsAntarctica8km_Basins.txt'
Results for each subglacial basin (27x1) or region (EAIS,WAIS,AP; 1x1)
Include the following variables: 'Prop','BVG','BVF','BVR','DBW'


ENSEMBLE MEAN RESULTS AND MEAN RESULTS FOR EACH MODEL
-------------------------------------------------------
'ResultsAntarctica8km_Mean.mat' | 'ResultsAntarctica8km_Mean.nc' | 'ResultsAntarctica8km_Mean.txt'

Include the following variables:  
'Tbc','Bmelt','BmeltG','BmeltF','BmeltR','Dbw','Ht','WF','Prop','BVG','BVF','BVR','DBW'
'LBTS_all': likely basal thermal state (likelihood of cold or temperate basal conditions)


MASK AND COORDINATES
-----------------------
'MASKZB8km.mat' : contains MASK for the grounded Antarctic ice sheet and subglacial basins

'MASK'  : delineate grounded (1) and floating ice (3)
'MASKZB': delineate EAIS (1), WAIS (2), and AP (3)
'ZB'    : delineate the 27 subglacial basins
'lat'   : latitude
'lon'   : longitude
'X'     : X coorinate (m)
'Y'     : Y coorinate (m)

'MASKZB8km.mat' is provided only in .mat format in 'MATLAB_SCRIPTS.zip' > 'FIGURES', as an input file for 'FiguresPaper_MAIN.m'


COMPARISON WITH OBSERVATIONAL CONSTRAINTS
------------------------------------------

RMSE:
-------
'RMSEProfilsT_2024.mat' : RMSE (°C) between modelled temperature profiles and borehole measurements of temperature profiles
'RMSE_SMOS_2024.mat'    : RMSE (°C) between modelled temperature profiles and SMOS englacial temperatures 
'RMSE_Lakes_2024.mat'   : RMSE (°C) between modelled basal temperatures and subglacial lakes (taken as an indicator of basal temperatures at the pressure melting point)

SMOS data:
-----------
'Tsmos25km.mat' and 'Tsmos8km.mat': SMOS englacial temperatures regridded at 25km (original resolution) and 8km
Reference: 
Macelloni et al, 2019: On the retrieval of internal temperature of Antarctica Ice Sheet by using SMOS observations
Link: https://data.catds.fr/cecsm/Cryo_products/
Acknowledgement: “Data have been developed in the ESA Project - “Cryosmos. STSE SMOS+Cryosphere”. ESA contract No.4000112262/14/I-NB”.

Subglacial lake distribution:
------------------------------
'SubLakes.mat' : x,y coordinates for subglacial lakes 
Reference: 
Livingstone et al, 2022: Subglacial lakes and their changing role in a warming climate
Link : https://static-content.springer.com/esm/art%3A10.1038%2Fs43017-021-00246-9/MediaObjects/43017_2021_246_MOESM1_ESM.xlsx

Those files are provided only in .mat format in 'MATLAB_SCRIPTS.zip' > 'FIGURES' as input files for 'FiguresPaper_MAIN.m'

-------------------------------------
PROVIDED SCRIPTS (MATLAB_SCRIPTS.zip):
-------------------------------------

Kori-ULB model:
'KoriModelAll.m'     : Kori-ULB ice flow model (more info: https://github.com/FrankPat/Kori-ULB)
'KoriInputParams.m'  : Input parameters for the Kori-ULB model
'KoriModelEnth.m'    : Kori-ULB ice flow model with the new enthalpy implementation
'Script_init_Kori.m' : This script can be used to reproduce the initial states with the Kori-ULB ice flow model

Figures:
'ScriptMeanResults.m' : This script can be used to calculate the ensemble mean results or the mean for a given model
'FiguresPaper_MAIN.m' : This script can be used to reproduce the figures of the main paper


MATLAB FUNCTIONS USED IN THE SCRIPTS: 
-------------------------------------

'imagescn.m': imagesc with transparent NaNs, by Chad Greene (2023), available on MATLAB Central File Exchange (https://www.mathworks.com/matlabcentral/fileexchange/61293-imagescn), 

'brewermap.m': provides all ColorBrewer colorschemes for MATLAB, by Stephen23, available at https://github.com/DrosteEffect/BrewerMap.

'crameri.m': returns perceptually-uniform scientific colormaps, created by Fabio Crameri, available at https://www.mathworks.com/matlabcentral/fileexchange/68546-crameri-perceptually-uniform-scientific-colormaps 

'CrameriColourMaps8.0.mat': colormaps for crameri.m, available at https://zenodo.org/records/8409685

'myfig.m' and 'myfig4.m': used to produce Figures 1, 2, 3, and 5


----------------------------------------------------------
EXTERNAL SCRIPTS NOT CONTAINED IN THIS REPOSITORY:
----------------------------------------------------------
- Hybrid ice sheet/ice stream model and the data therein
Reference: 
Pattyn (2010): Antarctic subglacial conditions inferred from a hybrid ice sheet/ice stream model


----------------------------------------------------------
EXTERNAL DATA NOT CONTAINED IN THIS REPOSITORY:
----------------------------------------------------------

- Present-day ice thickness, bedrock elevation, and grounding line positions are from BedMachine v3 (Morlighem et al., 2022) and can be found at: https://nsidc.org/data/nsidc-0756/versions/3 
- Observed surface velocities are from MEaSUREs Phase-Based Antarctica Ice Velocity Map v1 (Mouginot et al., 2019) and can be found at: https://nsidc.org/data/nsidc-0754/versions/1
- The delineation of the 27 subglacial basins follow the 'Zwally Basins' (Zwally et al., 2012) and can be found at: http://imbie.org/imbie-2016/drainage-basins/
- The geothermal heat flow datasets and the outputs of the regional climate models MAR and RACMO are accessible through their original references (see below).
- The borehole measurements of temperature profiles are available through their original references (cited in the main manuscript) or can be found in the Antarctic ice sheet paleo-constraint database (Lecavalier et al, 2022; https://theghub.org/resources/4884)


-------------------------------------------------------------------------
DESCRIPTION OF VARIABLE NAMES
-------------------------------------------------------------------------
Variable names are constructed as follow: 'var_model_RCM_GHF'


'var'= variables
------------------
3d variables: tmp, wat
2d variables: Tbc, Bmelt, BmeltG, BmeltF, BmeltR, WF, Dbw, Ht, H, H_obs
1d variables: Prop, BV, BVG, BVF, BVR, DBW

'_EAIS'    added to 1d'var': values for the East Antarctic Ice Sheet
'_WAIS'    added to 1d'var': values for the West Antarctic Ice Sheet
'_AP'      added to 1d'var': values for the Antarctic Peninsula
'_Basins'  added to 1d'var': values for each subglacial basin (27x1)


'model'= ice-sheet models 
---------------------------

Results from the Kori-ULB ice flow model with optimization of basal slip coefficients:
'HySSA'  =  Kori-Opt (conducted using KoriModelAll)
'HySSAE' =  Kori-Enth (conducted using KoriModelEnth)

Results from the Kori-ULB ice flow model using observed surface velocities to infer basal velocities:
'Vobs' = Kori-Obs (conducted using KoriModelAll with ctr.obsv=1)

Results from the hybrid ice sheet/ice stream model (Pattyn, 2010)
'Tfield_nc' =  uncalibrated version of the model
'Tfield_c'  =  calibrated version of the model

'_cst' is added for simulations using constant thermodynamic parameters


'RCM'= Regional Climate Models
--------------------------------
'MAR'   =  MAR v3.11 (Kittel et al., 2020)
'RACMO' =  RACMO2.3p2 (Van Wessem et al., 2018)


'GHF' = Geothermal Heat Flow datasets
---------------------------------------
'HF1' = Purucker  (2013)
'HF2' = An et al. (2015)
'HF3' = Shapiro & Ritzwoller (2004)
'HF4' = Shen et al. (2020)
'HF5' = Martos et al. (2017)
'HF6' = Stal et al. (2021)
'HF7' = Losing & Ebbing (2021)
'HF8' = Fox-Maule et al. (2005)
'HF9' = Haeger et al. (2022)


ResultsAntarctica8km_Mean:
---------------------------
'var_Mean_all' : ensemble mean for the variable 'var'
'var_Std_all'  : standard deviation for the variable 'var'
'var_Mean_model' : mean for the variable 'var' for a given model
'var_Std_model'  : standard deviation for the variable 'var' for a given model


---------------------------------------------------------
REFERENCES
---------------------------------------------------------

An M, Wiens DA, Zhao Y, Feng M, Nyblade A, Kanao M, Li Y, Maggi A and Lévêque JJ (2015) Temperature, lithosphere-asthenosphere boundary, and heat flux beneath the Antarctic plate inferred from seismic velocities. Journal of Geophysical Research: Solid Earth, 120(12), 8720–8742 (doi: 10.1002/2015JB011917)

Haeger C, Petrunin AG and Kaban MK (2022) Geothermal heat flow and thermal structure of the Antarctic lithosphere. Geochemistry, Geophysics, Geosystems, 23(10) (doi: https://doi.org/10.1029/2022GC010501)

Kittel C, Amory C, Agosta C, Jourdain NC, Hofer S, Delhasse A, Doutreloup S, Huot PV, Lang C, Fichefet T and others (2020) Diverging future surface mass balance between the Antarctic ice shelves and grounded ice sheet. The Cryosphere Discussions, 2020, 1–29 (doi: 10.5194/tc-15-1215-2021)

Livingstone SJ, Li Y, Rutishauser A, Sanderson RJ, Winter K, Mikucki JA, Björnsson H, Bowling JS, Chu W, Dow CF and others (2022) Subglacial lakes and their changing role in a warming climate. Nature Reviews Earth & Environment, 3(2), 106–124 (doi: 10.1038/s43017-021-00246-9)

Lösing M and Ebbing J (2021) Predicting geothermal heat flow in Antarctica with a machine learning approach. Journal of Geophysical Research: Solid Earth, 126(6) (doi: 10.1029/2020JB021499)

Macelloni G, Leduc-Leballeur M, Montomoli F, Brogioni M, Ritz C and Picard G (2019) On the retrieval of internal temperature of Antarctica ice sheet by using smos observations. Remote sensing of environment, 233, 111405 (doi:10.1016/j.rse.2019.111405)

Martos YM, Catalán M, Jordan TA, Golynsky A, Golynsky D, Eagles G and Vaughan DG (2017) Heat flux distri
bution of Antarctica unveiled. Geophysical Research Letters, 44(22), 11–417 (doi: 10.1002/2017GL075609)

Morlighem, M., Rignot, E., Binder, T., Blankenship, D. D., Drews, R., Eagles, G., Eisen, O., Ferraccioli, F., Forsberg, R., Fretwell, P., Goel, V., Greenbaum, J. S., Gudmundsson, H., Guo, J., Helm, V., Hofstede, C., Howat, I., Humbert, A., Jokat, W., Karlsson, N. B., Lee, W., Matsuoka, K., Millan, R., Mouginot, J., Paden, J., Pattyn, F., Roberts, J. L., Rosier, S., Ruppel, A., Seroussi, H., Smith, E. C., Steinhage, D., Sun, B., van den Broeke, M. R., van Ommen, T., van Wessem, M. & Young, D. A.. 2020. Deep glacial troughs and stabilizing ridges unveiled beneath the margins of the Antarctic ice sheet. Nature Geoscience. 13. DOI: 10.1038/s41561-019-0510-8.

Morlighem, M. (2022). MEaSUREs BedMachine Antarctica. (NSIDC-0756, Version 3). [Data Set]. Boulder, Colorado USA. NASA National Snow and Ice Data Center Distributed Active Archive Center. https://doi.org/10.5067/FPSU0V1MWUB6. [describe subset used if applicable]. Date Accessed 04-07-2025.

Mouginot, J., Rignot, E. & Scheuchl, B.. 2019. Continent-wide, interferometric SAR phase-mapping of Antarctic ice velocity. Geophysical Research Letters. 46. DOI: 10.1029/2019GL083826.

Mouginot, J., Rignot, E. & Scheuchl, B. (2019). MEaSUREs Phase-Based Antarctica Ice Velocity Map. (NSIDC-0754, Version 1). [Data Set]. Boulder, Colorado USA. NASA National Snow and Ice Data Center Distributed Active Archive Center. https://doi.org/10.5067/PZ3NJ5RXRH10. [describe subset used if applicable]. Date Accessed 04-07-2025.

Pattyn F (2010) Antarctic subglacial conditions inferred from a hybrid ice sheet/ice stream model. Earth and Planetary Science Letters, 295(3-4), 451–461 (doi: 10.1016/j.epsl.2010.04.025

Purucker M (2013) Geothermal heat flux data set based on low resolution observations collected by the champ satellite between 2000 and 2010, and produced from the mf-6 model following the technique described in fox maule et al.(2005)

Shapiro NM and Ritzwoller MH (2004) Inferring surface heat flux distributions guided by a global seismic model: particular application to Antarctica. Earth and Planetary Science Letters, 223(1), 213–224, ISSN 0012-821X (doi:10.1016/j.epsl.2004.04.011)

Shen W, Wiens DA, Lloyd AJ and Nyblade AA (2020) A geothermal heat flux map of Antarctica empirically constrained by seismic structure. Geophysical Research Letters, 47(14), e2020GL086955 (doi: 10.1029/2020GL086955)

Stål T, Reading AM, Halpin JA and Whittaker JM (2021) Antarctic geothermal heat flow model: Aq1. Geochemistry, Geophysics, Geosystems, 22(2) (doi: 10.1029/2020GC009428)

van Wessem JM, Van De Berg WJ, Noël BP, Van Meijgaard E, Amory C, Birnbaum G, Jakobs CL, Krüger K, Lenaerts JT, Lhermitte S and others (2018) Modelling the climate and surface mass balance of polar ice sheets using RACMO2–part 2: Antarctica (1979–2016). The Cryosphere, 12(4), 1479–1498 (doi: 10.5194/tc-12-1479-2018)

Zwally, H. Jay, Mario B. Giovinetto, Matthew A. Beckley, and Jack L. Saba, 2012, Antarctic and Greenland Drainage Systems, GSFC Cryospheric Sciences Laboratory, at http://icesat4.gsfc.nasa.gov/cryo_data/ant_grn_drainage_systems.php.
