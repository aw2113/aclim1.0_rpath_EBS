#' EBS_ACLIM_72-BIO
#' GFDL_rcp85_bc1
#' 
#' The script corresponds to simulations that were run for:
#' Whitehouse GA, Aydin KY, Hollowed AB, Holsman KK, Cheng W, Faig A, Haynie AC, 
#' Hermann AJ, Kearney KA, Punt AE, Essington TE (2021) Bottom–up impacts of 
#' forecasted climate change on the eastern Bering Sea food web. Front Mar Sci 8. 
#' doi:10.3389/fmars.2021.624301 

#' -----------------***** UPDATE *****---------------------------------------- #
#' February 22, 2021
#' Updating code to match updates in the latest version of Rpath. For example, 
#' annual_BB has changed to annual_Biomass.

library("Rpath")
# devtools::install_github("amandafaig/catchfunction")
# install_github("amandafaig/catchfunction")
library("catchfunction")
setwd("C:/Users/andy.whitehouse/Work/src/EBS_ecosim-master")
# rm(list=ls())
source("rpath_graphs.R")

Ebase <- "models/EBS_ACLIM_72_BIO_base.csv"  # Base biomass, production, fishing, etc.
Ediet <- "models/EBS_ACLIM_72_BIO_diet.csv"  # Diet matrix
Eped  <- "models/EBS_ACLIM_72_BIO_ped_2.csv"   # Data pedigree = quality of input data
Estz  <- "models/EBS_ACLIM_72_BIO_stanzas.csv"   # Stanzas
Estg  <- "models/EBS_ACLIM_72_BIO_stanza_groups.csv" # Stanza groups

# Setup Base Ecopath and Base Rsim scenario
unbal <- rpath.stanzas(read.rpath.params(Ebase, Ediet, Eped, Estg, Estz)) # unbalanced
bal <- rpath(unbal) # balanced

# Make lists of types of model groups
all_living   <- living_groups(bal)
all_detritus <- detrital_groups(bal)
all_gears    <- gear_groups(bal)

# Equilibrium by-species F-rate
F_equil <- (rowSums(bal$Landings)+rowSums(bal$Discards))/(bal$Biomass);  names(F_equil) <- bal$Group
F_equil  <- F_equil[c(all_living,all_detritus)]
# F_equil was zero for KAM and Eelpouts. I'm setting KAM F_equil equal to the 1992
# exploitation rate in the 2018 SA (Bryan et al. 2018). Also, F_equil is 0 for Eelpouts.
# I'm assigning them the F_equil of Motile.epifauna, which is their trophic guild.
F_equil["Kamchatka"] <- 0.02
F_equil["Eelpouts"] <- F_equil["Motile.epifauna"]
B_equil  <- bal$Biomass; names(B_equil) <- bal$Group; 
B_equil  <- B_equil[c(all_living,all_detritus)] 

capped_sp <- c("Arrowtooth_Adu","Atka.mackerel","FH.sole","Gr.Turbot_Adu","Kamchatka",
               "North.rockfish","Octopi","Other.flatfish","Oth.rockfish","P.cod_Adu",
               "AK.Plaice","POP","W.pollock_Adu","N.Rock.sole","Rougheye.rock","Sablefish",
               "Lg.Sculpins","Sharks","Shortraker.rock","Skates","Squids","YF.sole")

names(capped_sp)<-c("Arrowtooth", "Atka", "Flathead", "Greenland", "Kamchatka",
                    "Northern", "Octopus", "OtherFlat", "OtherRock", "PCod", 
                    "Plaice", "POP", "Pollock", "Rock", "Rougheye", "Sablefish", 
                    "Sculpin", "Shark", "Shortraker", "Skate", "Squid", "Yellowfin")

crab_sp <- c("Bairdi", "King.Crab", "Opilio") 
# Species for which we have no historical catch data.
F_species <- c("Toothed.whales","Baleen.whales","Pinnipeds","Walrus.bd.seals",
               "Ice.seals","Oth.birds","Murres.puffins","Kittiwakes","Auklets",
               "Fulmars","Albatross","Salmon.returning")
# Species for which we have some historical catch data.
F_partial <- c("Sharks","Kamchatka","Other.flatfish","Skates","Eelpouts","Deep.demersals",
               "Shallow.demersals","Lg.Sculpins","Octopi","Mycto.bathy",
               "Capelin","Sandlance","Other.forage","Pandalidae","Ben.zooplankton",
               "Motile.epifauna","Structural.epifauna","Infauna","Jellyfish")

# Year Ranges
#hind_years <- 1971:2016
hind_years91 <- 1991:2017
fore_years <- 2018:2099
all_years91  <- c(hind_years91,fore_years)

# EVERY RUN MUST START HERE#####################################################  
# Baseline scenario SETUP - Starting with 1991
basescene91 <- rsim.scenario(bal, unbal, years = all_years91) # Ecosim params

# Set up hindcast fishing, turn off fishing effort
scene.full91 <- basescene91
# Zero our effort, freeze Discards.offal
scene.full91 <- adjust.fishing(scene.full91, "Effort", all_gears, all_years91, value = 0.0)
scene.full91$forcing$ForcedBio[,"Discards.offal"] <- B_equil["Discards.offal"]
# Read fisheries Catch file, convert units
catchdat <- read.csv("scenes/EBS_ACLIM_72_BIO_catch_2017.csv", header=TRUE, row.names=1, dec=".")
catchdat91 <- catchdat[21:47,]
catchdat91 <- catchdat91/495218 # convert to tonnes per sq km
catchdat91 <- as.matrix(catchdat91[1:(length(hind_years91)),])
scene.full91$fishing$ForcedCatch[1:(length(hind_years91)),] <- catchdat91 
# Add historical F for species that we do not have historical catch for
for (i in 1:(length(F_species))) {
  scene.full91$fishing$ForcedFRate[1:(length(hind_years91)),F_species[i]] <- F_equil[F_species[i]]
}
#' There are several (20) species that we only have a limited amount of historical
#' catch data for. The other years of the hindcast have zero catch. However, there
#' was catch. To remedy this I will attempt to apply the equilibrium F (F_equil)
#' for each species to those years for which we have no catch. Otherwise there is
#' no catch for those species in those years and that affects biomass dynamics.
for (i in 1:(length(F_partial))) {
  scene.full91$fishing$ForcedFRate[1:27,F_partial[i]] <- ifelse(scene.full91$fishing$ForcedCatch[1:27,F_partial[i]]<=0.0,
                                                                F_equil[F_partial[i]],0.0)
}

# INSERT CLIMATE FORCING CODE HERE (hindcast and forecast)
# ------------------------------------------------------------------------ #
# HISTORICAL CLIMATE
# Read in forcing anomalies
NPZ <- read.csv("climate/ROMS_hind_anom_05_2019.csv") 
NPZ91 <- NPZ[241:564,]
TT  <- dim(NPZ91)[1]
BaseB        <- scene.full91$params$B_BaseRef
names(BaseB) <- scene.full91$params$spname
# Set groups to force   
scene.full91$forcing$ForcedBio[1:TT,"Euphausiids"]      <- BaseB["Euphausiids"]      *(1.0+NPZ91[,"EUPH_hind"])
scene.full91$forcing$ForcedBio[1:TT,"Copepods"]         <- BaseB["Copepods"]         *(1.0+NPZ91[,"COP_hind"])
scene.full91$forcing$ForcedBio[1:TT,"Pelagic.microbes"] <- BaseB["Pelagic.microbes"] *(1.0+NPZ91[,"MZ_hind"])
scene.full91$forcing$ForcedBio[1:TT,"Benthic.microbes"] <- BaseB["Benthic.microbes"] *(1.0+NPZ91[,"MZ_hind"])
scene.full91$forcing$ForcedBio[1:TT,"Lg.phytoplankton"] <- BaseB["Lg.phytoplankton"] *(1.0+NPZ91[,"PhL_hind"])
scene.full91$forcing$ForcedBio[1:TT,"Sm.phytoplankton"] <- BaseB["Sm.phytoplankton"] *(1.0+NPZ91[,"PhS_hind"])   

# ------------------------------------------------------------------------ #
# Climate - future scenario

# GFDL_rcp85
gfd85_add <- read.csv("climate/gfd85_add.csv")
UU  <- TT+1
# Set groups to force
# Multiplying by the biomass at TT (timestep 312), the conclusion of the hindcast.
# UPDATE: As of April 2019 we are now multiplying by BaseB["Group"] instead. This
# we are using the same reference biomass for both the hindcast and forecast.
scene.full91$forcing$ForcedBio[UU:1308,"Euphausiids"]      <- BaseB["Euphausiids"]      *(1.0+gfd85_add[145:1128,"EUP_gfd85"])
scene.full91$forcing$ForcedBio[UU:1308,"Copepods"]         <- BaseB["Copepods"]         *(1.0+gfd85_add[145:1128,"COP_gfd85"])
scene.full91$forcing$ForcedBio[UU:1308,"Pelagic.microbes"] <- BaseB["Pelagic.microbes"] *(1.0+gfd85_add[145:1128,"MZP_gfd85"])
scene.full91$forcing$ForcedBio[UU:1308,"Benthic.microbes"] <- BaseB["Benthic.microbes"] *(1.0+gfd85_add[145:1128,"MZP_gfd85"])
scene.full91$forcing$ForcedBio[UU:1308,"Lg.phytoplankton"] <- BaseB["Lg.phytoplankton"] *(1.0+gfd85_add[145:1128,"PhL_gfd85"])
scene.full91$forcing$ForcedBio[UU:1308,"Sm.phytoplankton"] <- BaseB["Sm.phytoplankton"] *(1.0+gfd85_add[145:1128,"PhS_gfd85"])   
# ------------------------------------------------------------------------ #

# Run hindcast years
run.hind91 <- rsim.run(scene.full91,method='AB',years=hind_years91)
gfd85.f3.91.add <- run.hind91
# rsim.plot(gfd85.f3.91.add, bal$Group, indplot = F)

# Year by year loop
for (yr in fore_years){
  cat(yr,"\n"); flush.console()
  Ftarget    <- F_equil
  Btarget    <- B_equil
  # Create Species-indexed vector F_ABC:  
  # Default assumption is equilibrium catch rate from Ecopath, taken as Catch
  F_ABC <- Ftarget 
  C_ABC <- F_ABC*end_biomass(gfd85.f3.91.add)
  
  # Institute control rule for crab species
  sp <- crab_sp
  falpha     <- 0.05
  fbeta      <- 0.20
  assessment <- end_biomass(gfd85.f3.91.add) #* rnorm(length(end_biomass(gfd85.f3.91.add)), mean=1, sd=0.2)
  Bratio     <- assessment/Btarget
  F_ABC[sp]      <- ifelse((Bratio[sp]<=falpha)|(Bratio[sp]<=fbeta), 0.0,
                           ifelse(Bratio[sp] < 1.0, Ftarget[sp]*(Bratio[sp]-falpha)/(1.0-falpha),
                                  Ftarget[sp]))    
  C_ABC[sp] <- F_ABC[sp]*assessment[sp] 
  
  # Institute control rule for capped species (Federal Groundfish)
  sp <- capped_sp
  falpha     <- 0.05
  fbeta      <- 0.20
  assessment <- end_biomass(gfd85.f3.91.add) #* rnorm(length(end_biomass(gfd85.f3.91.add)), mean=1, sd=0.2)
  Bratio     <- assessment/Btarget
  F_ABC[sp]      <- ifelse((Bratio[sp]<=falpha)|(Bratio[sp]<=fbeta), 0.0,
                           ifelse(Bratio[sp] < 1.0, Ftarget[sp]*(Bratio[sp]-falpha)/(1.0-falpha),
                                  Ftarget[sp]))
  C_ABC[sp] <- F_ABC[sp]*assessment[sp]
  
  # Now that we have C_ABC, feed it to catchfunction
  # Scenarios
  # 1 - status quo
  # 2 - Pollock and Pcod dominated
  # 3 - Flatfish dominated
  # 4 - No fishing
  # Set up list for catch_function      
  ABC_named <- c(3,C_ABC[sp]*495218)
  names(ABC_named)<-c("scenario",names(sp))
  ABC_list <- as.list(ABC_named)
  # Call catch_function
  TAC_out  <- do.call(catch_function,ABC_list)
  # Copy catch_function ooutput back into C_ABC    
  C_ABC[sp]<-as.numeric(TAC_out)/495218
  
  # Add resulting fishing to current year's CATCH matrix     
  # scene.full91 <- adjust.fishing(scene.full91, "CATCH", names(C_ABC), yr, value = C_ABC)
  scene.full91$fishing$ForcedCatch[as.character(yr),names(C_ABC)] <- C_ABC
  
  # Run an rsim year
  gfd85.f3.91.add <- rsim.step(scene.full91,gfd85.f3.91.add,method='AB',year.end=yr)
}
#END OF RUN#####################################################################

# rsim.plotly(gfd85.f3.91.add,capped_sp)
# rsim.plot(gfd85.f3.91.add,"")
# abline(v=324, lwd=2, lty=2)

