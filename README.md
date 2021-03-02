# aclim1.0_rpath_EBS
Code and data files to run the eastern Bering Sea rpath from ACLIM 1.0.

This repo contains the scripts and data files for the eastern Bering Sea Rpath simulationsfor ACLIM 1.0 (Hollowed et al. 2020). Please see Whitehouse et al. (2021) for complete documentation of these simulations. In addition to Rpath (Lucey et al. 2020), the ATTACH package (Faig and Haynie 2019) is also required to run these simulations.

The csv files containing the Rpath model of the eastern Bering Sea are in the folder ACLIM_72_bio. 

The observed commercial fishery catches for the hindcast period (1991–2017) are contained in EBS_ACLIM_72_BIO_catch_2017.csv.

Anomalies for lower trophic level groups that were used to simulate climate forcing in these simulations, were derived from the results of Hermann et al. (2019). Separate csv files used for each earth system model-RCP combination are included in the climate_scenes folder.

The ACLIM_1.0_clean folder contains the scripts needed to reproduce the plots found in Whitehouse et al. (2021). The quantities folder contains several scripts which calculate a number of intermediate quantities needed to make the plots, such as the outlines of the polygons. The plots folder contains the scripts that generate the plots.


REFERENCES

Faig A, Haynie AC (2019) catchfunction: BSAI catch function. R package version 1.5.3. www.github.com/amandafaig/catchfunction

Hermann AJ, Gibson GA, Cheng W, Ortiz I, Aydin K, Wang M, Hollowed AB, Holsman KK (2019) Projected biophysical conditions of the Bering Sea to 2100 under multiple emission scenarios. ICES J Mar Sci 76:1280-1304. doi:doi:10.1093/icesjms/fsz043

Hollowed AB, Holsman KK, Haynie AC, Hermann AJ, Punt AE, Aydin K, Ianelli JN, Kasperski S, Cheng W, Faig A, Kearney KA, Reum JCP, Spencer P, Spies I, Stockhausen W, Szuwalski CS, Whitehouse GA, Wilderbuer TK (2020) Integrated modeling to evaluate climate change impacts on coupled social-ecological systems in Alaska. Front Mar Sci 6:775. doi:10.3389/fmars.2019.00775

Lucey SM, Aydin KY, Gaichas SK (2020) Conducting reproducible ecosystem modeling using the open source mass balance model Rpath. Ecol Model 427. doi:10.1016/j.ecolmodel.2020.109057

Whitehouse GA, Aydin KY, Hollowed AB, Holsman KK, Cheng W, Faig A, Haynie AC, Hermann AJ, Kearney KA, Punt AE, Essington TE (2021) Bottom–up impacts of forecasted climate change on the eastern Bering Sea food web. Front Mar Sci 8. doi:10.3389/fmars.2021.624301

