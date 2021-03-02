# Trophic guild biomasses for ACLIM
# Guild aggregations contained in:
# C:\Users\andy.whitehouse\Work\Andy\REEM\ACLIM\EBS_survey_guilds\ACLIM_EBS_72BIO_guilds.xlsx

##########-----*****UPDATE*****-----########## July 1, 2020
# Added pelagic zooplankton to Shrimp.

# define guild membership
Apex.predator <- c("Albatross","Arrowtooth_Adu","Deep.demersals","Fulmars",
                   "Gr.Turbot_Adu","Ice.seals","Kamchatka","Kittiwakes","Lg.Sculpins",
                   "Murres.puffins","N.fur.seal_Adu","N.fur.seal_Juv","Oth.birds",
                   "P.cod_Adu","P.halibut_Adu","Pinnipeds","Sablefish","Sharks",
                   "Skates","Toothed.whales","Transient.killer.whales")
Benthic.forager <- c("AK.Plaice","Arrowtooth_Juv","FH.sole","Gray.whales","N.Rock.sole",
                     "Other.flatfish","P.cod_Juv","P.halibut_Juv","Shallow.demersals",
                     "Shortraker.rock","Walrus.bd.seals","YF.sole")
Motile.epifauna <- c("Bairdi","Eelpouts","King.Crab","Motile.epifauna","Octopi",
                     "Opilio")
Pelagic.forager <- c("Atka.mackerel","Auklets","Baleen.whales","Capelin","Gr.Turbot_Juv",
                     "Herring","Jellyfish","Mycto.bathy","North.rockfish","Oth.rockfish",
                     "Other.forage","POP","Rougheye.rock","Salmon.returning",
                     "Salmon.smolts","Sandlance","Squids","W.pollock_Adu","W.pollock_Juv")
Infauna         <- c("Infauna","Ben.zooplankton")
Structural.epifauna <- "Structural.epifauna"
Shrimp          <- c("Pandalidae","Pel.zooplankton")

# I'm not including lower TL guilds in this analysis. The focus is on guilds that
# contain commercially important species, protected species (e.g., mammals, ST albatross)
# and other upper trophic level groups (e.g., seabirds, squids, etc.).

# ============================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# Mean Apex predator biomass up to 2080 (when cesm rcp 4.5 ends)

# Set-up guild biomass trajectories for RCP 4.5, by GCM, and by fishing scenario.
# Status-quo
gfd45.f1.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f1.apex[i] <- sum(gfd45.f1.91.add$annual_Biomass[i,Apex.predator])
mir45.f1.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f1.apex[i] <- sum(mir45.f1.91.add$annual_Biomass[i,Apex.predator])
ces45.f1.apex <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f1.apex[i] <- sum(ces45.f1.91.add$annual_Biomass[i,Apex.predator])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f1.apex_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f1.apex_80[i] <- mean(c(gfd45.f1.apex[i],mir45.f1.apex[i],ces45.f1.apex[i]))
}
rownames(mean45.f1.apex_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1.apex_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f1.apex_99[i-90] <- mean(c(gfd45.f1.apex[i],mir45.f1.apex[i]))
}
rownames(mean45.f1.apex_99) <- 2081:2099
# rbind them together
mean45.f1.apex <- rbind(mean45.f1.apex_80, mean45.f1.apex_99)
colnames(mean45.f1.apex) <- "Apex.predator"
# Plot it to double check
# plot(1991:2099,gfd45.f1.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f1.apex)),
#      ylab="Biomass (t/km^2)", main="Apex predator RCP 4.5-SQ")
# lines(1991:2099,mir45.f1.apex, col="red", lwd=2)
# lines(1991:2080,ces45.f1.apex, col="purple", lwd=2)
# lines(1991:2099,mean45.f1.apex, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd45.f2.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f2.apex[i] <- sum(gfd45.f2.91.add$annual_Biomass[i,Apex.predator])
mir45.f2.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f2.apex[i] <- sum(mir45.f2.91.add$annual_Biomass[i,Apex.predator])
ces45.f2.apex <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f2.apex[i] <- sum(ces45.f2.91.add$annual_Biomass[i,Apex.predator])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f2.apex_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f2.apex_80[i] <- mean(c(gfd45.f2.apex[i],mir45.f2.apex[i],ces45.f2.apex[i]))
}
rownames(mean45.f2.apex_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f2.apex_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f2.apex_99[i-90] <- mean(c(gfd45.f2.apex[i],mir45.f2.apex[i]))
}
rownames(mean45.f2.apex_99) <- 2081:2099
# rbind them together
mean45.f2.apex <- rbind(mean45.f2.apex_80, mean45.f2.apex_99)
colnames(mean45.f2.apex) <- "Apex.predator"
# Plot it to double check
# plot(1991:2099,gfd45.f2.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f2.apex)),
#      ylab="Biomass (t/km^2)", main="Apex predator RCP 4.5-more gadid catch")
# lines(1991:2099,mir45.f2.apex, col="red", lwd=2)
# lines(1991:2080,ces45.f2.apex, col="purple", lwd=2)
# lines(1991:2099,mean45.f2.apex, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd45.f3.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f3.apex[i] <- sum(gfd45.f3.91.add$annual_Biomass[i,Apex.predator])
mir45.f3.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f3.apex[i] <- sum(mir45.f3.91.add$annual_Biomass[i,Apex.predator])
ces45.f3.apex <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f3.apex[i] <- sum(ces45.f3.91.add$annual_Biomass[i,Apex.predator])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f3.apex_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f3.apex_80[i] <- mean(c(gfd45.f3.apex[i],mir45.f3.apex[i],ces45.f3.apex[i]))
}
rownames(mean45.f3.apex_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f3.apex_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f3.apex_99[i-90] <- mean(c(gfd45.f3.apex[i],mir45.f3.apex[i]))
}
rownames(mean45.f3.apex_99) <- 2081:2099
# rbind them together
mean45.f3.apex <- rbind(mean45.f3.apex_80, mean45.f3.apex_99)
colnames(mean45.f3.apex) <- "Apex.predator"
# Plot it to double check
# plot(1991:2099,gfd45.f3.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f3.apex)),
#      ylab="Biomass (t/km^2)", main="Apex predator RCP 4.5-more flatfish catch")
# lines(1991:2099,mir45.f3.apex, col="red", lwd=2)
# lines(1991:2080,ces45.f3.apex, col="purple", lwd=2)
# lines(1991:2099,mean45.f3.apex, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd45.f4.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f4.apex[i] <- sum(gfd45.f4.91.add$annual_Biomass[i,Apex.predator])
mir45.f4.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f4.apex[i] <- sum(mir45.f4.91.add$annual_Biomass[i,Apex.predator])
ces45.f4.apex <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f4.apex[i] <- sum(ces45.f4.91.add$annual_Biomass[i,Apex.predator])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f4.apex_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f4.apex_80[i] <- mean(c(gfd45.f4.apex[i],mir45.f4.apex[i],ces45.f4.apex[i]))
}
rownames(mean45.f4.apex_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f4.apex_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f4.apex_99[i-90] <- mean(c(gfd45.f4.apex[i],mir45.f4.apex[i]))
}
rownames(mean45.f4.apex_99) <- 2081:2099
# rbind them together
mean45.f4.apex <- rbind(mean45.f4.apex_80, mean45.f4.apex_99)
colnames(mean45.f4.apex) <- "Apex.predator"
# Plot it to double check
# plot(1991:2099,gfd45.f4.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f4.apex)),
#      ylab="Biomass (t/km^2)", main="Apex predator RCP 4.5-no fishing")
# lines(1991:2099,mir45.f4.apex, col="red", lwd=2)
# lines(1991:2080,ces45.f4.apex, col="purple", lwd=2)
# lines(1991:2099,mean45.f4.apex, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd45.f5.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f5.apex[i] <- sum(gfd45.f5.91.add$annual_Biomass[i,Apex.predator])
# mir45.f5.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f5.apex[i] <- sum(mir45.f5.91.add$annual_Biomass[i,Apex.predator])
# ces45.f5.apex <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f5.apex[i] <- sum(ces45.f5.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f5.apex_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f5.apex_80[i] <- mean(c(gfd45.f5.apex[i],mir45.f5.apex[i],ces45.f5.apex[i]))
# }
# rownames(mean45.f5.apex_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f5.apex_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f5.apex_99[i-90] <- mean(c(gfd45.f5.apex[i],mir45.f5.apex[i]))
# }
# rownames(mean45.f5.apex_99) <- 2081:2099
# # rbind them together
# mean45.f5.apex <- rbind(mean45.f5.apex_80, mean45.f5.apex_99)
# colnames(mean45.f5.apex) <- "Apex.predator"
# 
# # f6 - ABC scenario
# gfd45.f6.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f6.apex[i] <- sum(gfd45.f6.91.add$annual_Biomass[i,Apex.predator])
# mir45.f6.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f6.apex[i] <- sum(mir45.f6.91.add$annual_Biomass[i,Apex.predator])
# ces45.f6.apex <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f6.apex[i] <- sum(ces45.f6.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f6.apex_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f6.apex_80[i] <- mean(c(gfd45.f6.apex[i],mir45.f6.apex[i],ces45.f6.apex[i]))
# }
# rownames(mean45.f6.apex_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f6.apex_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f6.apex_99[i-90] <- mean(c(gfd45.f6.apex[i],mir45.f6.apex[i]))
# }
# rownames(mean45.f6.apex_99) <- 2081:2099
# # rbind them together
# mean45.f6.apex <- rbind(mean45.f6.apex_80, mean45.f6.apex_99)
# colnames(mean45.f6.apex) <- "Apex.predator"



# ============================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# Mean Benthic.forager biomass up to 2099 (when cesm rcp 4.5 ends)

# Set-up guild biomass trajectories for RCP 4.5, by GCM, and by fishing scenario.
# Status-quo
gfd45.f1.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f1.benf[i] <- sum(gfd45.f1.91.add$annual_Biomass[i,Benthic.forager])
mir45.f1.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f1.benf[i] <- sum(mir45.f1.91.add$annual_Biomass[i,Benthic.forager])
ces45.f1.benf <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f1.benf[i] <- sum(ces45.f1.91.add$annual_Biomass[i,Benthic.forager])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f1.benf_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f1.benf_80[i] <- mean(c(gfd45.f1.benf[i],mir45.f1.benf[i],ces45.f1.benf[i]))
}
rownames(mean45.f1.benf_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1.benf_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f1.benf_99[i-90] <- mean(c(gfd45.f1.benf[i],mir45.f1.benf[i]))
}
rownames(mean45.f1.benf_99) <- 2081:2099
# rbind them together
mean45.f1.benf <- rbind(mean45.f1.benf_80, mean45.f1.benf_99)
colnames(mean45.f1.benf) <- "Benthic.forager"
# Plot it to double check
# plot(1991:2099,gfd45.f1.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f1.benf)),
#      ylab="Biomass (t/km^2)", main="Benthic.forager RCP 4.5-SQ")
# lines(1991:2099,mir45.f1.benf, col="red", lwd=2)
# lines(1991:2080,ces45.f1.benf, col="purple", lwd=2)
# lines(1991:2099,mean45.f1.benf, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd45.f2.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f2.benf[i] <- sum(gfd45.f2.91.add$annual_Biomass[i,Benthic.forager])
mir45.f2.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f2.benf[i] <- sum(mir45.f2.91.add$annual_Biomass[i,Benthic.forager])
ces45.f2.benf <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f2.benf[i] <- sum(ces45.f2.91.add$annual_Biomass[i,Benthic.forager])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f2.benf_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f2.benf_80[i] <- mean(c(gfd45.f2.benf[i],mir45.f2.benf[i],ces45.f2.benf[i]))
}
rownames(mean45.f2.benf_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f2.benf_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f2.benf_99[i-90] <- mean(c(gfd45.f2.benf[i],mir45.f2.benf[i]))
}
rownames(mean45.f2.benf_99) <- 2081:2099
# rbind them together
mean45.f2.benf <- rbind(mean45.f2.benf_80, mean45.f2.benf_99)
colnames(mean45.f2.benf) <- "Benthic.forager"
# Plot it to double check
# plot(1991:2099,gfd45.f2.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f2.benf)),
#      ylab="Biomass (t/km^2)", main="Benthic.forager RCP 4.5-more gadid catch")
# lines(1991:2099,mir45.f2.benf, col="red", lwd=2)
# lines(1991:2080,ces45.f2.benf, col="purple", lwd=2)
# lines(1991:2099,mean45.f2.benf, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd45.f3.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f3.benf[i] <- sum(gfd45.f3.91.add$annual_Biomass[i,Benthic.forager])
mir45.f3.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f3.benf[i] <- sum(mir45.f3.91.add$annual_Biomass[i,Benthic.forager])
ces45.f3.benf <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f3.benf[i] <- sum(ces45.f3.91.add$annual_Biomass[i,Benthic.forager])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f3.benf_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f3.benf_80[i] <- mean(c(gfd45.f3.benf[i],mir45.f3.benf[i],ces45.f3.benf[i]))
}
rownames(mean45.f3.benf_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f3.benf_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f3.benf_99[i-90] <- mean(c(gfd45.f3.benf[i],mir45.f3.benf[i]))
}
rownames(mean45.f3.benf_99) <- 2081:2099
# rbind them together
mean45.f3.benf <- rbind(mean45.f3.benf_80, mean45.f3.benf_99)
colnames(mean45.f3.benf) <- "Benthic.forager"
# Plot it to double check
# plot(1991:2099,gfd45.f3.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f3.benf)),
#      ylab="Biomass (t/km^2)", main="Benthic.forager RCP 4.5-more flatfish catch")
# lines(1991:2099,mir45.f3.benf, col="red", lwd=2)
# lines(1991:2080,ces45.f3.benf, col="purple", lwd=2)
# lines(1991:2099,mean45.f3.benf, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd45.f4.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f4.benf[i] <- sum(gfd45.f4.91.add$annual_Biomass[i,Benthic.forager])
mir45.f4.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f4.benf[i] <- sum(mir45.f4.91.add$annual_Biomass[i,Benthic.forager])
ces45.f4.benf <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f4.benf[i] <- sum(ces45.f4.91.add$annual_Biomass[i,Benthic.forager])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f4.benf_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f4.benf_80[i] <- mean(c(gfd45.f4.benf[i],mir45.f4.benf[i],ces45.f4.benf[i]))
}
rownames(mean45.f4.benf_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f4.benf_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f4.benf_99[i-90] <- mean(c(gfd45.f4.benf[i],mir45.f4.benf[i]))
}
rownames(mean45.f4.benf_99) <- 2081:2099
# rbind them together
mean45.f4.benf <- rbind(mean45.f4.benf_80, mean45.f4.benf_99)
colnames(mean45.f4.benf) <- "Benthic.forager"
# Plot it to double check
# plot(1991:2099,gfd45.f4.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f4.benf)),
#      ylab="Biomass (t/km^2)", main="Benthic.forager RCP 4.5-no fishing")
# lines(1991:2099,mir45.f4.benf, col="red", lwd=2)
# lines(1991:2080,ces45.f4.benf, col="purple", lwd=2)
# lines(1991:2099,mean45.f4.benf, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd45.f5.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f5.benf[i] <- sum(gfd45.f5.91.add$annual_Biomass[i,Benthic.forager])
# mir45.f5.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f5.benf[i] <- sum(mir45.f5.91.add$annual_Biomass[i,Benthic.forager])
# ces45.f5.benf <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f5.benf[i] <- sum(ces45.f5.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f5.benf_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f5.benf_80[i] <- mean(c(gfd45.f5.benf[i],mir45.f5.benf[i],ces45.f5.benf[i]))
# }
# rownames(mean45.f5.benf_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f5.benf_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f5.benf_99[i-90] <- mean(c(gfd45.f5.benf[i],mir45.f5.benf[i]))
# }
# rownames(mean45.f5.benf_99) <- 2081:2099
# # rbind them together
# mean45.f5.benf <- rbind(mean45.f5.benf_80, mean45.f5.benf_99)
# colnames(mean45.f5.benf) <- "Benthic.forager"
# 
# # f6 - ABC scenario
# gfd45.f6.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f6.benf[i] <- sum(gfd45.f6.91.add$annual_Biomass[i,Benthic.forager])
# mir45.f6.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f6.benf[i] <- sum(mir45.f6.91.add$annual_Biomass[i,Benthic.forager])
# ces45.f6.benf <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f6.benf[i] <- sum(ces45.f6.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f6.benf_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f6.benf_80[i] <- mean(c(gfd45.f6.benf[i],mir45.f6.benf[i],ces45.f6.benf[i]))
# }
# rownames(mean45.f6.benf_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f6.benf_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f6.benf_99[i-90] <- mean(c(gfd45.f6.benf[i],mir45.f6.benf[i]))
# }
# rownames(mean45.f6.benf_99) <- 2081:2099
# # rbind them together
# mean45.f6.benf <- rbind(mean45.f6.benf_80, mean45.f6.benf_99)
# colnames(mean45.f6.benf) <- "Benthic.forager"


# ============================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# Mean Motile.epifauna biomass up to 2099 (when cesm rcp 4.5 ends)

# Set-up guild biomass trajectories for RCP 4.5, by GCM, and by fishing scenario.
# Status-quo
gfd45.f1.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f1.mote[i] <- sum(gfd45.f1.91.add$annual_Biomass[i,Motile.epifauna])
mir45.f1.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f1.mote[i] <- sum(mir45.f1.91.add$annual_Biomass[i,Motile.epifauna])
ces45.f1.mote <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f1.mote[i] <- sum(ces45.f1.91.add$annual_Biomass[i,Motile.epifauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f1.mote_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f1.mote_80[i] <- mean(c(gfd45.f1.mote[i],mir45.f1.mote[i],ces45.f1.mote[i]))
}
rownames(mean45.f1.mote_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1.mote_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f1.mote_99[i-90] <- mean(c(gfd45.f1.mote[i],mir45.f1.mote[i]))
}
rownames(mean45.f1.mote_99) <- 2081:2099
# rbind them together
mean45.f1.mote <- rbind(mean45.f1.mote_80, mean45.f1.mote_99)
colnames(mean45.f1.mote) <- "Motile.epifauna"
# Plot it to double check
# plot(1991:2099,gfd45.f1.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f1.mote)),
#      ylab="Biomass (t/km^2)", main="Motile.epifauna RCP 4.5-SQ")
# lines(1991:2099,mir45.f1.mote, col="red", lwd=2)
# lines(1991:2080,ces45.f1.mote, col="purple", lwd=2)
# lines(1991:2099,mean45.f1.mote, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd45.f2.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f2.mote[i] <- sum(gfd45.f2.91.add$annual_Biomass[i,Motile.epifauna])
mir45.f2.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f2.mote[i] <- sum(mir45.f2.91.add$annual_Biomass[i,Motile.epifauna])
ces45.f2.mote <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f2.mote[i] <- sum(ces45.f2.91.add$annual_Biomass[i,Motile.epifauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f2.mote_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f2.mote_80[i] <- mean(c(gfd45.f2.mote[i],mir45.f2.mote[i],ces45.f2.mote[i]))
}
rownames(mean45.f2.mote_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f2.mote_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f2.mote_99[i-90] <- mean(c(gfd45.f2.mote[i],mir45.f2.mote[i]))
}
rownames(mean45.f2.mote_99) <- 2081:2099
# rbind them together
mean45.f2.mote <- rbind(mean45.f2.mote_80, mean45.f2.mote_99)
colnames(mean45.f2.mote) <- "Motile.epifauna"
# Plot it to double check
# plot(1991:2099,gfd45.f2.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f2.mote)),
#      ylab="Biomass (t/km^2)", main="Motile.epifauna RCP 4.5-more gadid catch")
# lines(1991:2099,mir45.f2.mote, col="red", lwd=2)
# lines(1991:2080,ces45.f2.mote, col="purple", lwd=2)
# lines(1991:2099,mean45.f2.mote, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd45.f3.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f3.mote[i] <- sum(gfd45.f3.91.add$annual_Biomass[i,Motile.epifauna])
mir45.f3.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f3.mote[i] <- sum(mir45.f3.91.add$annual_Biomass[i,Motile.epifauna])
ces45.f3.mote <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f3.mote[i] <- sum(ces45.f3.91.add$annual_Biomass[i,Motile.epifauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f3.mote_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f3.mote_80[i] <- mean(c(gfd45.f3.mote[i],mir45.f3.mote[i],ces45.f3.mote[i]))
}
rownames(mean45.f3.mote_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f3.mote_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f3.mote_99[i-90] <- mean(c(gfd45.f3.mote[i],mir45.f3.mote[i]))
}
rownames(mean45.f3.mote_99) <- 2081:2099
# rbind them together
mean45.f3.mote <- rbind(mean45.f3.mote_80, mean45.f3.mote_99)
colnames(mean45.f3.mote) <- "Motile.epifauna"
# Plot it to double check
# plot(1991:2099,gfd45.f3.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f3.mote)),
#      ylab="Biomass (t/km^2)", main="Motile.epifauna RCP 4.5-more flatfish catch")
# lines(1991:2099,mir45.f3.mote, col="red", lwd=2)
# lines(1991:2080,ces45.f3.mote, col="purple", lwd=2)
# lines(1991:2099,mean45.f3.mote, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd45.f4.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f4.mote[i] <- sum(gfd45.f4.91.add$annual_Biomass[i,Motile.epifauna])
mir45.f4.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f4.mote[i] <- sum(mir45.f4.91.add$annual_Biomass[i,Motile.epifauna])
ces45.f4.mote <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f4.mote[i] <- sum(ces45.f4.91.add$annual_Biomass[i,Motile.epifauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f4.mote_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f4.mote_80[i] <- mean(c(gfd45.f4.mote[i],mir45.f4.mote[i],ces45.f4.mote[i]))
}
rownames(mean45.f4.mote_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f4.mote_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f4.mote_99[i-90] <- mean(c(gfd45.f4.mote[i],mir45.f4.mote[i]))
}
rownames(mean45.f4.mote_99) <- 2081:2099
# rbind them together
mean45.f4.mote <- rbind(mean45.f4.mote_80, mean45.f4.mote_99)
colnames(mean45.f4.mote) <- "Motile.epifauna"
# Plot it to double check
# plot(1991:2099,gfd45.f4.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f4.mote)),
#      ylab="Biomass (t/km^2)", main="Motile.epifauna RCP 4.5-no fishing")
# lines(1991:2099,mir45.f4.mote, col="red", lwd=2)
# lines(1991:2080,ces45.f4.mote, col="purple", lwd=2)
# lines(1991:2099,mean45.f4.mote, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd45.f5.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f5.mote[i] <- sum(gfd45.f5.91.add$annual_Biomass[i,Motile.epifauna])
# mir45.f5.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f5.mote[i] <- sum(mir45.f5.91.add$annual_Biomass[i,Motile.epifauna])
# ces45.f5.mote <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f5.mote[i] <- sum(ces45.f5.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f5.mote_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f5.mote_80[i] <- mean(c(gfd45.f5.mote[i],mir45.f5.mote[i],ces45.f5.mote[i]))
# }
# rownames(mean45.f5.mote_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f5.mote_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f5.mote_99[i-90] <- mean(c(gfd45.f5.mote[i],mir45.f5.mote[i]))
# }
# rownames(mean45.f5.mote_99) <- 2081:2099
# # rbind them together
# mean45.f5.mote <- rbind(mean45.f5.mote_80, mean45.f5.mote_99)
# colnames(mean45.f5.mote) <- "Motile.epifauna"
# 
# # f6 - ABC scenario
# gfd45.f6.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f6.mote[i] <- sum(gfd45.f6.91.add$annual_Biomass[i,Motile.epifauna])
# mir45.f6.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f6.mote[i] <- sum(mir45.f6.91.add$annual_Biomass[i,Motile.epifauna])
# ces45.f6.mote <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f6.mote[i] <- sum(ces45.f6.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f6.mote_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f6.mote_80[i] <- mean(c(gfd45.f6.mote[i],mir45.f6.mote[i],ces45.f6.mote[i]))
# }
# rownames(mean45.f6.mote_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f6.mote_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f6.mote_99[i-90] <- mean(c(gfd45.f6.mote[i],mir45.f6.mote[i]))
# }
# rownames(mean45.f6.mote_99) <- 2081:2099
# # rbind them together
# mean45.f6.mote <- rbind(mean45.f6.mote_80, mean45.f6.mote_99)
# colnames(mean45.f6.mote) <- "Motile.epifauna"


# ============================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# Mean Pelagic.forager biomass up to 2099 (when cesm rcp 4.5 ends)

# Set-up guild biomass trajectories for RCP 4.5, by GCM, and by fishing scenario.
# Status-quo
gfd45.f1.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f1.pelf[i] <- sum(gfd45.f1.91.add$annual_Biomass[i,Pelagic.forager])
mir45.f1.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f1.pelf[i] <- sum(mir45.f1.91.add$annual_Biomass[i,Pelagic.forager])
ces45.f1.pelf <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f1.pelf[i] <- sum(ces45.f1.91.add$annual_Biomass[i,Pelagic.forager])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f1.pelf_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f1.pelf_80[i] <- mean(c(gfd45.f1.pelf[i],mir45.f1.pelf[i],ces45.f1.pelf[i]))
}
rownames(mean45.f1.pelf_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1.pelf_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f1.pelf_99[i-90] <- mean(c(gfd45.f1.pelf[i],mir45.f1.pelf[i]))
}
rownames(mean45.f1.pelf_99) <- 2081:2099
# rbind them together
mean45.f1.pelf <- rbind(mean45.f1.pelf_80, mean45.f1.pelf_99)
colnames(mean45.f1.pelf) <- "Pelagic.forager"
# Plot it to double check
# plot(1991:2099,gfd45.f1.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f1.pelf)),
#      ylab="Biomass (t/km^2)", main="Pelagic.forager RCP 4.5-SQ")
# lines(1991:2099,mir45.f1.pelf, col="red", lwd=2)
# lines(1991:2080,ces45.f1.pelf, col="purple", lwd=2)
# lines(1991:2099,mean45.f1.pelf, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd45.f2.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f2.pelf[i] <- sum(gfd45.f2.91.add$annual_Biomass[i,Pelagic.forager])
mir45.f2.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f2.pelf[i] <- sum(mir45.f2.91.add$annual_Biomass[i,Pelagic.forager])
ces45.f2.pelf <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f2.pelf[i] <- sum(ces45.f2.91.add$annual_Biomass[i,Pelagic.forager])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f2.pelf_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f2.pelf_80[i] <- mean(c(gfd45.f2.pelf[i],mir45.f2.pelf[i],ces45.f2.pelf[i]))
}
rownames(mean45.f2.pelf_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f2.pelf_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f2.pelf_99[i-90] <- mean(c(gfd45.f2.pelf[i],mir45.f2.pelf[i]))
}
rownames(mean45.f2.pelf_99) <- 2081:2099
# rbind them together
mean45.f2.pelf <- rbind(mean45.f2.pelf_80, mean45.f2.pelf_99)
colnames(mean45.f2.pelf) <- "Pelagic.forager"
# Plot it to double check
# plot(1991:2099,gfd45.f2.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f2.pelf)),
#      ylab="Biomass (t/km^2)", main="Pelagic.forager RCP 4.5-more gadid catch")
# lines(1991:2099,mir45.f2.pelf, col="red", lwd=2)
# lines(1991:2080,ces45.f2.pelf, col="purple", lwd=2)
# lines(1991:2099,mean45.f2.pelf, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd45.f3.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f3.pelf[i] <- sum(gfd45.f3.91.add$annual_Biomass[i,Pelagic.forager])
mir45.f3.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f3.pelf[i] <- sum(mir45.f3.91.add$annual_Biomass[i,Pelagic.forager])
ces45.f3.pelf <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f3.pelf[i] <- sum(ces45.f3.91.add$annual_Biomass[i,Pelagic.forager])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f3.pelf_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f3.pelf_80[i] <- mean(c(gfd45.f3.pelf[i],mir45.f3.pelf[i],ces45.f3.pelf[i]))
}
rownames(mean45.f3.pelf_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f3.pelf_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f3.pelf_99[i-90] <- mean(c(gfd45.f3.pelf[i],mir45.f3.pelf[i]))
}
rownames(mean45.f3.pelf_99) <- 2081:2099
# rbind them together
mean45.f3.pelf <- rbind(mean45.f3.pelf_80, mean45.f3.pelf_99)
colnames(mean45.f3.pelf) <- "Pelagic.forager"
# Plot it to double check
# plot(1991:2099,gfd45.f3.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f3.pelf)),
#      ylab="Biomass (t/km^2)", main="Pelagic.forager RCP 4.5-more flatfish catch")
# lines(1991:2099,mir45.f3.pelf, col="red", lwd=2)
# lines(1991:2080,ces45.f3.pelf, col="purple", lwd=2)
# lines(1991:2099,mean45.f3.pelf, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd45.f4.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f4.pelf[i] <- sum(gfd45.f4.91.add$annual_Biomass[i,Pelagic.forager])
mir45.f4.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f4.pelf[i] <- sum(mir45.f4.91.add$annual_Biomass[i,Pelagic.forager])
ces45.f4.pelf <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f4.pelf[i] <- sum(ces45.f4.91.add$annual_Biomass[i,Pelagic.forager])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f4.pelf_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f4.pelf_80[i] <- mean(c(gfd45.f4.pelf[i],mir45.f4.pelf[i],ces45.f4.pelf[i]))
}
rownames(mean45.f4.pelf_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f4.pelf_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f4.pelf_99[i-90] <- mean(c(gfd45.f4.pelf[i],mir45.f4.pelf[i]))
}
rownames(mean45.f4.pelf_99) <- 2081:2099
# rbind them together
mean45.f4.pelf <- rbind(mean45.f4.pelf_80, mean45.f4.pelf_99)
colnames(mean45.f4.pelf) <- "Pelagic.forager"
# Plot it to double check
# plot(1991:2099,gfd45.f4.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f4.pelf)),
#      ylab="Biomass (t/km^2)", main="Pelagic.forager RCP 4.5-no fishing")
# lines(1991:2099,mir45.f4.pelf, col="red", lwd=2)
# lines(1991:2080,ces45.f4.pelf, col="purple", lwd=2)
# lines(1991:2099,mean45.f4.pelf, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd45.f5.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f5.pelf[i] <- sum(gfd45.f5.91.add$annual_Biomass[i,Pelagic.forager])
# mir45.f5.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f5.pelf[i] <- sum(mir45.f5.91.add$annual_Biomass[i,Pelagic.forager])
# ces45.f5.pelf <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f5.pelf[i] <- sum(ces45.f5.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f5.pelf_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f5.pelf_80[i] <- mean(c(gfd45.f5.pelf[i],mir45.f5.pelf[i],ces45.f5.pelf[i]))
# }
# rownames(mean45.f5.pelf_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f5.pelf_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f5.pelf_99[i-90] <- mean(c(gfd45.f5.pelf[i],mir45.f5.pelf[i]))
# }
# rownames(mean45.f5.pelf_99) <- 2081:2099
# # rbind them together
# mean45.f5.pelf <- rbind(mean45.f5.pelf_80, mean45.f5.pelf_99)
# colnames(mean45.f5.pelf) <- "Pelagic.forager"
# 
# # f6 - ABC scenario
# gfd45.f6.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f6.pelf[i] <- sum(gfd45.f6.91.add$annual_Biomass[i,Pelagic.forager])
# mir45.f6.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f6.pelf[i] <- sum(mir45.f6.91.add$annual_Biomass[i,Pelagic.forager])
# ces45.f6.pelf <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f6.pelf[i] <- sum(ces45.f6.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f6.pelf_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f6.pelf_80[i] <- mean(c(gfd45.f6.pelf[i],mir45.f6.pelf[i],ces45.f6.pelf[i]))
# }
# rownames(mean45.f6.pelf_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f6.pelf_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f6.pelf_99[i-90] <- mean(c(gfd45.f6.pelf[i],mir45.f6.pelf[i]))
# }
# rownames(mean45.f6.pelf_99) <- 2081:2099
# # rbind them together
# mean45.f6.pelf <- rbind(mean45.f6.pelf_80, mean45.f6.pelf_99)
# colnames(mean45.f6.pelf) <- "Pelagic.forager"



# ============================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# Mean Infauna biomass up to 2080 (when cesm rcp 4.5 ends)

# Set-up guild biomass trajectories for RCP 4.5, by GCM, and by fishing scenario.
# Status-quo
gfd45.f1.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f1.infa[i] <- sum(gfd45.f1.91.add$annual_Biomass[i,Infauna])
mir45.f1.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f1.infa[i] <- sum(mir45.f1.91.add$annual_Biomass[i,Infauna])
ces45.f1.infa <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f1.infa[i] <- sum(ces45.f1.91.add$annual_Biomass[i,Infauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f1.infa_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f1.infa_80[i] <- mean(c(gfd45.f1.infa[i],mir45.f1.infa[i],ces45.f1.infa[i]))
}
rownames(mean45.f1.infa_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1.infa_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f1.infa_99[i-90] <- mean(c(gfd45.f1.infa[i],mir45.f1.infa[i]))
}
rownames(mean45.f1.infa_99) <- 2081:2099
# rbind them together
mean45.f1.infa <- rbind(mean45.f1.infa_80, mean45.f1.infa_99)
colnames(mean45.f1.infa) <- "Infauna"
# Plot it to double check
# plot(1991:2099,gfd45.f1.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f1.infa)),
#      ylab="Biomass (t/km^2)", main="Infauna RCP 4.5-SQ")
# lines(1991:2099,mir45.f1.infa, col="red", lwd=2)
# lines(1991:2080,ces45.f1.infa, col="purple", lwd=2)
# lines(1991:2099,mean45.f1.infa, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd45.f2.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f2.infa[i] <- sum(gfd45.f2.91.add$annual_Biomass[i,Infauna])
mir45.f2.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f2.infa[i] <- sum(mir45.f2.91.add$annual_Biomass[i,Infauna])
ces45.f2.infa <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f2.infa[i] <- sum(ces45.f2.91.add$annual_Biomass[i,Infauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f2.infa_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f2.infa_80[i] <- mean(c(gfd45.f2.infa[i],mir45.f2.infa[i],ces45.f2.infa[i]))
}
rownames(mean45.f2.infa_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f2.infa_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f2.infa_99[i-90] <- mean(c(gfd45.f2.infa[i],mir45.f2.infa[i]))
}
rownames(mean45.f2.infa_99) <- 2081:2099
# rbind them together
mean45.f2.infa <- rbind(mean45.f2.infa_80, mean45.f2.infa_99)
colnames(mean45.f2.infa) <- "Infauna"
# Plot it to double check
# plot(1991:2099,gfd45.f2.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f2.infa)),
#      ylab="Biomass (t/km^2)", main="Infauna RCP 4.5-more gadid catch")
# lines(1991:2099,mir45.f2.infa, col="red", lwd=2)
# lines(1991:2080,ces45.f2.infa, col="purple", lwd=2)
# lines(1991:2099,mean45.f2.infa, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd45.f3.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f3.infa[i] <- sum(gfd45.f3.91.add$annual_Biomass[i,Infauna])
mir45.f3.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f3.infa[i] <- sum(mir45.f3.91.add$annual_Biomass[i,Infauna])
ces45.f3.infa <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f3.infa[i] <- sum(ces45.f3.91.add$annual_Biomass[i,Infauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f3.infa_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f3.infa_80[i] <- mean(c(gfd45.f3.infa[i],mir45.f3.infa[i],ces45.f3.infa[i]))
}
rownames(mean45.f3.infa_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f3.infa_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f3.infa_99[i-90] <- mean(c(gfd45.f3.infa[i],mir45.f3.infa[i]))
}
rownames(mean45.f3.infa_99) <- 2081:2099
# rbind them together
mean45.f3.infa <- rbind(mean45.f3.infa_80, mean45.f3.infa_99)
colnames(mean45.f3.infa) <- "Infauna"
# Plot it to double check
# plot(1991:2099,gfd45.f3.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f3.infa)),
#      ylab="Biomass (t/km^2)", main="Infauna RCP 4.5-more flatfish catch")
# lines(1991:2099,mir45.f3.infa, col="red", lwd=2)
# lines(1991:2080,ces45.f3.infa, col="purple", lwd=2)
# lines(1991:2099,mean45.f3.infa, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd45.f4.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f4.infa[i] <- sum(gfd45.f4.91.add$annual_Biomass[i,Infauna])
mir45.f4.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f4.infa[i] <- sum(mir45.f4.91.add$annual_Biomass[i,Infauna])
ces45.f4.infa <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f4.infa[i] <- sum(ces45.f4.91.add$annual_Biomass[i,Infauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f4.infa_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f4.infa_80[i] <- mean(c(gfd45.f4.infa[i],mir45.f4.infa[i],ces45.f4.infa[i]))
}
rownames(mean45.f4.infa_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f4.infa_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f4.infa_99[i-90] <- mean(c(gfd45.f4.infa[i],mir45.f4.infa[i]))
}
rownames(mean45.f4.infa_99) <- 2081:2099
# rbind them together
mean45.f4.infa <- rbind(mean45.f4.infa_80, mean45.f4.infa_99)
colnames(mean45.f4.infa) <- "Infauna"
# Plot it to double check
# plot(1991:2099,gfd45.f4.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f4.infa)),
#      ylab="Biomass (t/km^2)", main="Infauna RCP 4.5-no fishing")
# lines(1991:2099,mir45.f4.infa, col="red", lwd=2)
# lines(1991:2080,ces45.f4.infa, col="purple", lwd=2)
# lines(1991:2099,mean45.f4.infa, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd45.f5.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f5.infa[i] <- sum(gfd45.f5.91.add$annual_Biomass[i,Infauna])
# mir45.f5.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f5.infa[i] <- sum(mir45.f5.91.add$annual_Biomass[i,Infauna])
# ces45.f5.infa <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f5.infa[i] <- sum(ces45.f5.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f5.infa_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f5.infa_80[i] <- mean(c(gfd45.f5.infa[i],mir45.f5.infa[i],ces45.f5.infa[i]))
# }
# rownames(mean45.f5.infa_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f5.infa_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f5.infa_99[i-90] <- mean(c(gfd45.f5.infa[i],mir45.f5.infa[i]))
# }
# rownames(mean45.f5.infa_99) <- 2081:2099
# # rbind them together
# mean45.f5.infa <- rbind(mean45.f5.infa_80, mean45.f5.infa_99)
# colnames(mean45.f5.infa) <- "Infauna"
# 
# # f6 - ABC scenario
# gfd45.f6.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f6.infa[i] <- sum(gfd45.f6.91.add$annual_Biomass[i,Infauna])
# mir45.f6.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f6.infa[i] <- sum(mir45.f6.91.add$annual_Biomass[i,Infauna])
# ces45.f6.infa <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f6.infa[i] <- sum(ces45.f6.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f6.infa_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f6.infa_80[i] <- mean(c(gfd45.f6.infa[i],mir45.f6.infa[i],ces45.f6.infa[i]))
# }
# rownames(mean45.f6.infa_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f6.infa_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f6.infa_99[i-90] <- mean(c(gfd45.f6.infa[i],mir45.f6.infa[i]))
# }
# rownames(mean45.f6.infa_99) <- 2081:2099
# # rbind them together
# mean45.f6.infa <- rbind(mean45.f6.infa_80, mean45.f6.infa_99)
# colnames(mean45.f6.infa) <- "Infauna"


# ============================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# Mean Structural.epifauna biomass up to 2080 (when cesm rcp 4.5 ends)

# Set-up guild biomass trajectories for RCP 4.5, by GCM, and by fishing scenario.
# Status-quo
gfd45.f1.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f1.sepi[i] <- sum(gfd45.f1.91.add$annual_Biomass[i,Structural.epifauna])
mir45.f1.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f1.sepi[i] <- sum(mir45.f1.91.add$annual_Biomass[i,Structural.epifauna])
ces45.f1.sepi <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f1.sepi[i] <- sum(ces45.f1.91.add$annual_Biomass[i,Structural.epifauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f1.sepi_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f1.sepi_80[i] <- mean(c(gfd45.f1.sepi[i],mir45.f1.sepi[i],ces45.f1.sepi[i]))
}
rownames(mean45.f1.sepi_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1.sepi_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f1.sepi_99[i-90] <- mean(c(gfd45.f1.sepi[i],mir45.f1.sepi[i]))
}
rownames(mean45.f1.sepi_99) <- 2081:2099
# rbind them together
mean45.f1.sepi <- rbind(mean45.f1.sepi_80, mean45.f1.sepi_99)
colnames(mean45.f1.sepi) <- "Structural.epifauna"
# Plot it to double check
# plot(1991:2099,gfd45.f1.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f1.sepi)),
#      ylab="Biomass (t/km^2)", main="Structural.epifauna RCP 4.5-SQ")
# lines(1991:2099,mir45.f1.sepi, col="red", lwd=2)
# lines(1991:2080,ces45.f1.sepi, col="purple", lwd=2)
# lines(1991:2099,mean45.f1.sepi, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd45.f2.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f2.sepi[i] <- sum(gfd45.f2.91.add$annual_Biomass[i,Structural.epifauna])
mir45.f2.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f2.sepi[i] <- sum(mir45.f2.91.add$annual_Biomass[i,Structural.epifauna])
ces45.f2.sepi <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f2.sepi[i] <- sum(ces45.f2.91.add$annual_Biomass[i,Structural.epifauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f2.sepi_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f2.sepi_80[i] <- mean(c(gfd45.f2.sepi[i],mir45.f2.sepi[i],ces45.f2.sepi[i]))
}
rownames(mean45.f2.sepi_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f2.sepi_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f2.sepi_99[i-90] <- mean(c(gfd45.f2.sepi[i],mir45.f2.sepi[i]))
}
rownames(mean45.f2.sepi_99) <- 2081:2099
# rbind them together
mean45.f2.sepi <- rbind(mean45.f2.sepi_80, mean45.f2.sepi_99)
colnames(mean45.f2.sepi) <- "Structural.epifauna"
# Plot it to double check
# plot(1991:2099,gfd45.f2.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f2.sepi)),
#      ylab="Biomass (t/km^2)", main="Structural.epifauna RCP 4.5-more gadid catch")
# lines(1991:2099,mir45.f2.sepi, col="red", lwd=2)
# lines(1991:2080,ces45.f2.sepi, col="purple", lwd=2)
# lines(1991:2099,mean45.f2.sepi, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd45.f3.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f3.sepi[i] <- sum(gfd45.f3.91.add$annual_Biomass[i,Structural.epifauna])
mir45.f3.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f3.sepi[i] <- sum(mir45.f3.91.add$annual_Biomass[i,Structural.epifauna])
ces45.f3.sepi <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f3.sepi[i] <- sum(ces45.f3.91.add$annual_Biomass[i,Structural.epifauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f3.sepi_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f3.sepi_80[i] <- mean(c(gfd45.f3.sepi[i],mir45.f3.sepi[i],ces45.f3.sepi[i]))
}
rownames(mean45.f3.sepi_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f3.sepi_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f3.sepi_99[i-90] <- mean(c(gfd45.f3.sepi[i],mir45.f3.sepi[i]))
}
rownames(mean45.f3.sepi_99) <- 2081:2099
# rbind them together
mean45.f3.sepi <- rbind(mean45.f3.sepi_80, mean45.f3.sepi_99)
colnames(mean45.f3.sepi) <- "Structural.epifauna"
# Plot it to double check
# plot(1991:2099,gfd45.f3.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f3.sepi)),
#      ylab="Biomass (t/km^2)", main="Structural.epifauna RCP 4.5-more flatfish catch")
# lines(1991:2099,mir45.f3.sepi, col="red", lwd=2)
# lines(1991:2080,ces45.f3.sepi, col="purple", lwd=2)
# lines(1991:2099,mean45.f3.sepi, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd45.f4.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f4.sepi[i] <- sum(gfd45.f4.91.add$annual_Biomass[i,Structural.epifauna])
mir45.f4.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f4.sepi[i] <- sum(mir45.f4.91.add$annual_Biomass[i,Structural.epifauna])
ces45.f4.sepi <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f4.sepi[i] <- sum(ces45.f4.91.add$annual_Biomass[i,Structural.epifauna])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f4.sepi_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f4.sepi_80[i] <- mean(c(gfd45.f4.sepi[i],mir45.f4.sepi[i],ces45.f4.sepi[i]))
}
rownames(mean45.f4.sepi_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f4.sepi_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f4.sepi_99[i-90] <- mean(c(gfd45.f4.sepi[i],mir45.f4.sepi[i]))
}
rownames(mean45.f4.sepi_99) <- 2081:2099
# rbind them together
mean45.f4.sepi <- rbind(mean45.f4.sepi_80, mean45.f4.sepi_99)
colnames(mean45.f4.sepi) <- "Structural.epifauna"
# Plot it to double check
# plot(1991:2099,gfd45.f4.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f4.sepi)),
#      ylab="Biomass (t/km^2)", main="Structural.epifauna RCP 4.5-no fishing")
# lines(1991:2099,mir45.f4.sepi, col="red", lwd=2)
# lines(1991:2080,ces45.f4.sepi, col="purple", lwd=2)
# lines(1991:2099,mean45.f4.sepi, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd45.f5.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f5.sepi[i] <- sum(gfd45.f5.91.add$annual_Biomass[i,Structural.epifauna])
# mir45.f5.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f5.sepi[i] <- sum(mir45.f5.91.add$annual_Biomass[i,Structural.epifauna])
# ces45.f5.sepi <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f5.sepi[i] <- sum(ces45.f5.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f5.sepi_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f5.sepi_80[i] <- mean(c(gfd45.f5.sepi[i],mir45.f5.sepi[i],ces45.f5.sepi[i]))
# }
# rownames(mean45.f5.sepi_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f5.sepi_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f5.sepi_99[i-90] <- mean(c(gfd45.f5.sepi[i],mir45.f5.sepi[i]))
# }
# rownames(mean45.f5.sepi_99) <- 2081:2099
# # rbind them together
# mean45.f5.sepi <- rbind(mean45.f5.sepi_80, mean45.f5.sepi_99)
# colnames(mean45.f5.sepi) <- "Structural.epifauna"
# 
# # f6 - ABC scenario
# gfd45.f6.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f6.sepi[i] <- sum(gfd45.f6.91.add$annual_Biomass[i,Structural.epifauna])
# mir45.f6.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f6.sepi[i] <- sum(mir45.f6.91.add$annual_Biomass[i,Structural.epifauna])
# ces45.f6.sepi <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f6.sepi[i] <- sum(ces45.f6.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f6.sepi_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f6.sepi_80[i] <- mean(c(gfd45.f6.sepi[i],mir45.f6.sepi[i],ces45.f6.sepi[i]))
# }
# rownames(mean45.f6.sepi_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f6.sepi_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f6.sepi_99[i-90] <- mean(c(gfd45.f6.sepi[i],mir45.f6.sepi[i]))
# }
# rownames(mean45.f6.sepi_99) <- 2081:2099
# # rbind them together
# mean45.f6.sepi <- rbind(mean45.f6.sepi_80, mean45.f6.sepi_99)
# colnames(mean45.f6.sepi) <- "Structural.epifauna"


# ============================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# Mean Shrimp biomass up to 2080 (when cesm rcp 4.5 ends)

# Set-up guild biomass trajectories for RCP 4.5, by GCM, and by fishing scenario.
# Status-quo
gfd45.f1.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f1.shmp[i] <- sum(gfd45.f1.91.add$annual_Biomass[i,Shrimp])
mir45.f1.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f1.shmp[i] <- sum(mir45.f1.91.add$annual_Biomass[i,Shrimp])
ces45.f1.shmp <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f1.shmp[i] <- sum(ces45.f1.91.add$annual_Biomass[i,Shrimp])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f1.shmp_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f1.shmp_80[i] <- mean(c(gfd45.f1.shmp[i],mir45.f1.shmp[i],ces45.f1.shmp[i]))
}
rownames(mean45.f1.shmp_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1.shmp_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f1.shmp_99[i-90] <- mean(c(gfd45.f1.shmp[i],mir45.f1.shmp[i]))
}
rownames(mean45.f1.shmp_99) <- 2081:2099
# rbind them together
mean45.f1.shmp <- rbind(mean45.f1.shmp_80, mean45.f1.shmp_99)
colnames(mean45.f1.shmp) <- "Shrimp"
# Plot it to double check
# plot(1991:2099,gfd45.f1.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f1.shmp)),
#      ylab="Biomass (t/km^2)", main="Shrimp RCP 4.5-SQ")
# lines(1991:2099,mir45.f1.shmp, col="red", lwd=2)
# lines(1991:2080,ces45.f1.shmp, col="purple", lwd=2)
# lines(1991:2099,mean45.f1.shmp, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd45.f2.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f2.shmp[i] <- sum(gfd45.f2.91.add$annual_Biomass[i,Shrimp])
mir45.f2.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f2.shmp[i] <- sum(mir45.f2.91.add$annual_Biomass[i,Shrimp])
ces45.f2.shmp <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f2.shmp[i] <- sum(ces45.f2.91.add$annual_Biomass[i,Shrimp])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f2.shmp_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f2.shmp_80[i] <- mean(c(gfd45.f2.shmp[i],mir45.f2.shmp[i],ces45.f2.shmp[i]))
}
rownames(mean45.f2.shmp_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f2.shmp_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f2.shmp_99[i-90] <- mean(c(gfd45.f2.shmp[i],mir45.f2.shmp[i]))
}
rownames(mean45.f2.shmp_99) <- 2081:2099
# rbind them together
mean45.f2.shmp <- rbind(mean45.f2.shmp_80, mean45.f2.shmp_99)
colnames(mean45.f2.shmp) <- "Shrimp"
# Plot it to double check
# plot(1991:2099,gfd45.f2.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f2.shmp)),
#      ylab="Biomass (t/km^2)", main="Shrimp RCP 4.5-more gadid catch")
# lines(1991:2099,mir45.f2.shmp, col="red", lwd=2)
# lines(1991:2080,ces45.f2.shmp, col="purple", lwd=2)
# lines(1991:2099,mean45.f2.shmp, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd45.f3.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f3.shmp[i] <- sum(gfd45.f3.91.add$annual_Biomass[i,Shrimp])
mir45.f3.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f3.shmp[i] <- sum(mir45.f3.91.add$annual_Biomass[i,Shrimp])
ces45.f3.shmp <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f3.shmp[i] <- sum(ces45.f3.91.add$annual_Biomass[i,Shrimp])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f3.shmp_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f3.shmp_80[i] <- mean(c(gfd45.f3.shmp[i],mir45.f3.shmp[i],ces45.f3.shmp[i]))
}
rownames(mean45.f3.shmp_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f3.shmp_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f3.shmp_99[i-90] <- mean(c(gfd45.f3.shmp[i],mir45.f3.shmp[i]))
}
rownames(mean45.f3.shmp_99) <- 2081:2099
# rbind them together
mean45.f3.shmp <- rbind(mean45.f3.shmp_80, mean45.f3.shmp_99)
colnames(mean45.f3.shmp) <- "Shrimp"
# Plot it to double check
# plot(1991:2099,gfd45.f3.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f3.shmp)),
#      ylab="Biomass (t/km^2)", main="Shrimp RCP 4.5-more flatfish catch")
# lines(1991:2099,mir45.f3.shmp, col="red", lwd=2)
# lines(1991:2080,ces45.f3.shmp, col="purple", lwd=2)
# lines(1991:2099,mean45.f3.shmp, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd45.f4.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd45.f4.shmp[i] <- sum(gfd45.f4.91.add$annual_Biomass[i,Shrimp])
mir45.f4.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir45.f4.shmp[i] <- sum(mir45.f4.91.add$annual_Biomass[i,Shrimp])
ces45.f4.shmp <- matrix(nrow=90,ncol=1)
for (i in 1:90) ces45.f4.shmp[i] <- sum(ces45.f4.91.add$annual_Biomass[i,Shrimp])
# calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
mean45.f4.shmp_80 <- matrix(nrow=90,ncol=1)
for (i in 1:90) {
  mean45.f4.shmp_80[i] <- mean(c(gfd45.f4.shmp[i],mir45.f4.shmp[i],ces45.f4.shmp[i]))
}
rownames(mean45.f4.shmp_80) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f4.shmp_99 <- matrix(nrow=19,ncol=1)
for (i in 91:109) {
  mean45.f4.shmp_99[i-90] <- mean(c(gfd45.f4.shmp[i],mir45.f4.shmp[i]))
}
rownames(mean45.f4.shmp_99) <- 2081:2099
# rbind them together
mean45.f4.shmp <- rbind(mean45.f4.shmp_80, mean45.f4.shmp_99)
colnames(mean45.f4.shmp) <- "Shrimp"
# Plot it to double check
# plot(1991:2099,gfd45.f4.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd45.f4.shmp)),
#      ylab="Biomass (t/km^2)", main="Shrimp RCP 4.5-no fishing")
# lines(1991:2099,mir45.f4.shmp, col="red", lwd=2)
# lines(1991:2080,ces45.f4.shmp, col="purple", lwd=2)
# lines(1991:2099,mean45.f4.shmp, col="gray50", lwd=2)
# abline(v=c(2017,2080), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd45.f5.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f5.shmp[i] <- sum(gfd45.f5.91.add$annual_Biomass[i,Shrimp])
# mir45.f5.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f5.shmp[i] <- sum(mir45.f5.91.add$annual_Biomass[i,Shrimp])
# ces45.f5.shmp <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f5.shmp[i] <- sum(ces45.f5.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f5.shmp_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f5.shmp_80[i] <- mean(c(gfd45.f5.shmp[i],mir45.f5.shmp[i],ces45.f5.shmp[i]))
# }
# rownames(mean45.f5.shmp_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f5.shmp_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f5.shmp_99[i-90] <- mean(c(gfd45.f5.shmp[i],mir45.f5.shmp[i]))
# }
# rownames(mean45.f5.shmp_99) <- 2081:2099
# # rbind them together
# mean45.f5.shmp <- rbind(mean45.f5.shmp_80, mean45.f5.shmp_99)
# colnames(mean45.f5.shmp) <- "Shrimp"
# 
# # f6 - ABC scenario
# gfd45.f6.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd45.f6.shmp[i] <- sum(gfd45.f6.91.add$annual_Biomass[i,Shrimp])
# mir45.f6.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir45.f6.shmp[i] <- sum(mir45.f6.91.add$annual_Biomass[i,Shrimp])
# ces45.f6.shmp <- matrix(nrow=90,ncol=1)
# for (i in 1:90) ces45.f6.shmp[i] <- sum(ces45.f6.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass (since CESM 4.5 runs out in 2080, have to do this in two chunks)
# mean45.f6.shmp_80 <- matrix(nrow=90,ncol=1)
# for (i in 1:90) {
#   mean45.f6.shmp_80[i] <- mean(c(gfd45.f6.shmp[i],mir45.f6.shmp[i],ces45.f6.shmp[i]))
# }
# rownames(mean45.f6.shmp_80) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f6.shmp_99 <- matrix(nrow=19,ncol=1)
# for (i in 91:109) {
#   mean45.f6.shmp_99[i-90] <- mean(c(gfd45.f6.shmp[i],mir45.f6.shmp[i]))
# }
# rownames(mean45.f6.shmp_99) <- 2081:2099
# # rbind them together
# mean45.f6.shmp <- rbind(mean45.f6.shmp_80, mean45.f6.shmp_99)
# colnames(mean45.f6.shmp) <- "Shrimp"





# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ============================================================================ #

# RCP 8.5 Guild biomass

# Apex.predator ---------- ---------- ---------- ---------- #
# Status-quo
gfd85.f1.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f1.apex[i] <- sum(gfd85.f1.91.add$annual_Biomass[i,Apex.predator])
mir85.f1.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f1.apex[i] <- sum(mir85.f1.91.add$annual_Biomass[i,Apex.predator])
ces85.f1.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f1.apex[i] <- sum(ces85.f1.91.add$annual_Biomass[i,Apex.predator])
# calculate a vector of mean guild biomass
mean85.f1.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f1.apex[i] <- mean(c(gfd85.f1.apex[i],mir85.f1.apex[i],ces85.f1.apex[i]))
}
rownames(mean85.f1.apex) <- 1991:2099
colnames(mean85.f1.apex) <- "Apex.predator"
# Plot it to double check
# plot(1991:2099,gfd85.f1.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f1.apex)),
#      ylab="Biomass (t/km^2)", main="Apex.predator RCP 8.5-SQ")
# lines(1991:2099,mir85.f1.apex, col="red", lwd=2)
# lines(1991:2099,ces85.f1.apex, col="purple", lwd=2)
# lines(1991:2099,mean85.f1.apex, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd85.f2.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f2.apex[i] <- sum(gfd85.f2.91.add$annual_Biomass[i,Apex.predator])
mir85.f2.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f2.apex[i] <- sum(mir85.f2.91.add$annual_Biomass[i,Apex.predator])
ces85.f2.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f2.apex[i] <- sum(ces85.f2.91.add$annual_Biomass[i,Apex.predator])
# calculate a vector of mean guild biomass
mean85.f2.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f2.apex[i] <- mean(c(gfd85.f2.apex[i],mir85.f2.apex[i],ces85.f2.apex[i]))
}
rownames(mean85.f2.apex) <- 1991:2099
colnames(mean85.f2.apex) <- "Apex.predator"
# Plot it to double check
# plot(1991:2099,gfd85.f2.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f2.apex)),
#      ylab="Biomass (t/km^2)", main="Apex.predator RCP 8.5-more gadid catch")
# lines(1991:2099,mir85.f2.apex, col="red", lwd=2)
# lines(1991:2099,ces85.f2.apex, col="purple", lwd=2)
# lines(1991:2099,mean85.f2.apex, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd85.f3.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f3.apex[i] <- sum(gfd85.f3.91.add$annual_Biomass[i,Apex.predator])
mir85.f3.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f3.apex[i] <- sum(mir85.f3.91.add$annual_Biomass[i,Apex.predator])
ces85.f3.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f3.apex[i] <- sum(ces85.f3.91.add$annual_Biomass[i,Apex.predator])
# calculate a vector of mean guild biomass
mean85.f3.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f3.apex[i] <- mean(c(gfd85.f3.apex[i],mir85.f3.apex[i],ces85.f3.apex[i]))
}
rownames(mean85.f3.apex) <- 1991:2099
colnames(mean85.f3.apex) <- "Apex.predator"
# Plot it to double check
# plot(1991:2099,gfd85.f3.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f3.apex)),
#      ylab="Biomass (t/km^2)", main="Apex.predator RCP 8.5-more flatfish catch")
# lines(1991:2099,mir85.f3.apex, col="red", lwd=2)
# lines(1991:2099,ces85.f3.apex, col="purple", lwd=2)
# lines(1991:2099,mean85.f3.apex, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd85.f4.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f4.apex[i] <- sum(gfd85.f4.91.add$annual_Biomass[i,Apex.predator])
mir85.f4.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f4.apex[i] <- sum(mir85.f4.91.add$annual_Biomass[i,Apex.predator])
ces85.f4.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f4.apex[i] <- sum(ces85.f4.91.add$annual_Biomass[i,Apex.predator])
# calculate a vector of mean guild biomass
mean85.f4.apex <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f4.apex[i] <- mean(c(gfd85.f4.apex[i],mir85.f4.apex[i],ces85.f4.apex[i]))
}
rownames(mean85.f4.apex) <- 1991:2099
colnames(mean85.f4.apex) <- "Apex.predator"
# Plot it to double check
# plot(1991:2099,gfd85.f4.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f4.apex)),
#      ylab="Biomass (t/km^2)", main="Apex.predator RCP 8.5-no fishing")
# lines(1991:2099,mir85.f4.apex, col="red", lwd=2)
# lines(1991:2099,ces85.f4.apex, col="purple", lwd=2)
# lines(1991:2099,mean85.f4.apex, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd85.f5.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f5.apex[i] <- sum(gfd85.f5.91.add$annual_Biomass[i,Apex.predator])
# mir85.f5.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f5.apex[i] <- sum(mir85.f5.91.add$annual_Biomass[i,Apex.predator])
# ces85.f5.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f5.apex[i] <- sum(ces85.f5.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass
# mean85.f5.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f5.apex[i] <- mean(c(gfd85.f5.apex[i],mir85.f5.apex[i],ces85.f5.apex[i]))
# }
# rownames(mean85.f5.apex) <- 1991:2099
# colnames(mean85.f5.apex) <- "Apex.predator"
# 
# # f6 - F_equil scenario
# gfd85.f6.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f6.apex[i] <- sum(gfd85.f6.91.add$annual_Biomass[i,Apex.predator])
# mir85.f6.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f6.apex[i] <- sum(mir85.f6.91.add$annual_Biomass[i,Apex.predator])
# ces85.f6.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f6.apex[i] <- sum(ces85.f6.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass
# mean85.f6.apex <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f6.apex[i] <- mean(c(gfd85.f6.apex[i],mir85.f6.apex[i],ces85.f6.apex[i]))
# }
# rownames(mean85.f6.apex) <- 1991:2099
# colnames(mean85.f6.apex) <- "Apex.predator"



# Benthic.forager ---------- ---------- ---------- ---------- #
# Status-quo
gfd85.f1.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f1.benf[i] <- sum(gfd85.f1.91.add$annual_Biomass[i,Benthic.forager])
mir85.f1.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f1.benf[i] <- sum(mir85.f1.91.add$annual_Biomass[i,Benthic.forager])
ces85.f1.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f1.benf[i] <- sum(ces85.f1.91.add$annual_Biomass[i,Benthic.forager])
# calculate a vector of mean guild biomass
mean85.f1.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f1.benf[i] <- mean(c(gfd85.f1.benf[i],mir85.f1.benf[i],ces85.f1.benf[i]))
}
rownames(mean85.f1.benf) <- 1991:2099
colnames(mean85.f1.benf) <- "Benthic.forager"
# Plot it to double check
# plot(1991:2099,gfd85.f1.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f1.benf)),
#      ylab="Biomass (t/km^2)", main="Benthic.forager RCP 8.5-SQ")
# lines(1991:2099,mir85.f1.benf, col="red", lwd=2)
# lines(1991:2099,ces85.f1.benf, col="purple", lwd=2)
# lines(1991:2099,mean85.f1.benf, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd85.f2.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f2.benf[i] <- sum(gfd85.f2.91.add$annual_Biomass[i,Benthic.forager])
mir85.f2.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f2.benf[i] <- sum(mir85.f2.91.add$annual_Biomass[i,Benthic.forager])
ces85.f2.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f2.benf[i] <- sum(ces85.f2.91.add$annual_Biomass[i,Benthic.forager])
# calculate a vector of mean guild biomass
mean85.f2.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f2.benf[i] <- mean(c(gfd85.f2.benf[i],mir85.f2.benf[i],ces85.f2.benf[i]))
}
rownames(mean85.f2.benf) <- 1991:2099
colnames(mean85.f2.benf) <- "Benthic.forager"
# Plot it to double check
# plot(1991:2099,gfd85.f2.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f2.benf)),
#      ylab="Biomass (t/km^2)", main="Benthic.forager RCP 8.5-more gadid catch")
# lines(1991:2099,mir85.f2.benf, col="red", lwd=2)
# lines(1991:2099,ces85.f2.benf, col="purple", lwd=2)
# lines(1991:2099,mean85.f2.benf, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd85.f3.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f3.benf[i] <- sum(gfd85.f3.91.add$annual_Biomass[i,Benthic.forager])
mir85.f3.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f3.benf[i] <- sum(mir85.f3.91.add$annual_Biomass[i,Benthic.forager])
ces85.f3.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f3.benf[i] <- sum(ces85.f3.91.add$annual_Biomass[i,Benthic.forager])
# calculate a vector of mean guild biomass
mean85.f3.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f3.benf[i] <- mean(c(gfd85.f3.benf[i],mir85.f3.benf[i],ces85.f3.benf[i]))
}
rownames(mean85.f3.benf) <- 1991:2099
colnames(mean85.f3.benf) <- "Benthic.forager"
# Plot it to double check
# plot(1991:2099,gfd85.f3.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f3.benf)),
#      ylab="Biomass (t/km^2)", main="Benthic.forager RCP 8.5-more flatfish catch")
# lines(1991:2099,mir85.f3.benf, col="red", lwd=2)
# lines(1991:2099,ces85.f3.benf, col="purple", lwd=2)
# lines(1991:2099,mean85.f3.benf, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd85.f4.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f4.benf[i] <- sum(gfd85.f4.91.add$annual_Biomass[i,Benthic.forager])
mir85.f4.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f4.benf[i] <- sum(mir85.f4.91.add$annual_Biomass[i,Benthic.forager])
ces85.f4.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f4.benf[i] <- sum(ces85.f4.91.add$annual_Biomass[i,Benthic.forager])
# calculate a vector of mean guild biomass
mean85.f4.benf <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f4.benf[i] <- mean(c(gfd85.f4.benf[i],mir85.f4.benf[i],ces85.f4.benf[i]))
}
rownames(mean85.f4.benf) <- 1991:2099
colnames(mean85.f4.benf) <- "Benthic.forager"
# Plot it to double check
# plot(1991:2099,gfd85.f4.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f4.benf)),
#      ylab="Biomass (t/km^2)", main="Benthic.forager RCP 8.5-no fishing")
# lines(1991:2099,mir85.f4.benf, col="red", lwd=2)
# lines(1991:2099,ces85.f4.benf, col="purple", lwd=2)
# lines(1991:2099,mean85.f4.benf, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd85.f5.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f5.benf[i] <- sum(gfd85.f5.91.add$annual_Biomass[i,Benthic.forager])
# mir85.f5.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f5.benf[i] <- sum(mir85.f5.91.add$annual_Biomass[i,Benthic.forager])
# ces85.f5.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f5.benf[i] <- sum(ces85.f5.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass
# mean85.f5.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f5.benf[i] <- mean(c(gfd85.f5.benf[i],mir85.f5.benf[i],ces85.f5.benf[i]))
# }
# rownames(mean85.f5.benf) <- 1991:2099
# colnames(mean85.f5.benf) <- "Benthic.forager"
# 
# # f6 - F_equil scenario
# gfd85.f6.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f6.benf[i] <- sum(gfd85.f6.91.add$annual_Biomass[i,Benthic.forager])
# mir85.f6.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f6.benf[i] <- sum(mir85.f6.91.add$annual_Biomass[i,Benthic.forager])
# ces85.f6.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f6.benf[i] <- sum(ces85.f6.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass
# mean85.f6.benf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f6.benf[i] <- mean(c(gfd85.f6.benf[i],mir85.f6.benf[i],ces85.f6.benf[i]))
# }
# rownames(mean85.f6.benf) <- 1991:2099
# colnames(mean85.f6.benf) <- "Benthic.forager"



# Motile.epifauna ---------- ---------- ---------- ---------- #
# Status-quo
gfd85.f1.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f1.mote[i] <- sum(gfd85.f1.91.add$annual_Biomass[i,Motile.epifauna])
mir85.f1.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f1.mote[i] <- sum(mir85.f1.91.add$annual_Biomass[i,Motile.epifauna])
ces85.f1.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f1.mote[i] <- sum(ces85.f1.91.add$annual_Biomass[i,Motile.epifauna])
# calculate a vector of mean guild biomass
mean85.f1.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f1.mote[i] <- mean(c(gfd85.f1.mote[i],mir85.f1.mote[i],ces85.f1.mote[i]))
}
rownames(mean85.f1.mote) <- 1991:2099
colnames(mean85.f1.mote) <- "Motile.epifauna"
# Plot it to double check
# plot(1991:2099,gfd85.f1.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(ces85.f1.mote)),
#      ylab="Biomass (t/km^2)", main="Motile.epifauna RCP 8.5-SQ")
# lines(1991:2099,mir85.f1.mote, col="red", lwd=2)
# lines(1991:2099,ces85.f1.mote, col="purple", lwd=2)
# lines(1991:2099,mean85.f1.mote, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd85.f2.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f2.mote[i] <- sum(gfd85.f2.91.add$annual_Biomass[i,Motile.epifauna])
mir85.f2.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f2.mote[i] <- sum(mir85.f2.91.add$annual_Biomass[i,Motile.epifauna])
ces85.f2.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f2.mote[i] <- sum(ces85.f2.91.add$annual_Biomass[i,Motile.epifauna])
# calculate a vector of mean guild biomass
mean85.f2.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f2.mote[i] <- mean(c(gfd85.f2.mote[i],mir85.f2.mote[i],ces85.f2.mote[i]))
}
rownames(mean85.f2.mote) <- 1991:2099
colnames(mean85.f2.mote) <- "Motile.epifauna"
# Plot it to double check
# plot(1991:2099,gfd85.f2.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(ces85.f2.mote)),
#      ylab="Biomass (t/km^2)", main="Motile.epifauna RCP 8.5-more gadid catch")
# lines(1991:2099,mir85.f2.mote, col="red", lwd=2)
# lines(1991:2099,ces85.f2.mote, col="purple", lwd=2)
# lines(1991:2099,mean85.f2.mote, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd85.f3.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f3.mote[i] <- sum(gfd85.f3.91.add$annual_Biomass[i,Motile.epifauna])
mir85.f3.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f3.mote[i] <- sum(mir85.f3.91.add$annual_Biomass[i,Motile.epifauna])
ces85.f3.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f3.mote[i] <- sum(ces85.f3.91.add$annual_Biomass[i,Motile.epifauna])
# calculate a vector of mean guild biomass
mean85.f3.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f3.mote[i] <- mean(c(gfd85.f3.mote[i],mir85.f3.mote[i],ces85.f3.mote[i]))
}
rownames(mean85.f3.mote) <- 1991:2099
colnames(mean85.f3.mote) <- "Motile.epifauna"
# Plot it to double check
# plot(1991:2099,gfd85.f3.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(ces85.f3.mote)),
#      ylab="Biomass (t/km^2)", main="Motile.epifauna RCP 8.5-more flatfish catch")
# lines(1991:2099,mir85.f3.mote, col="red", lwd=2)
# lines(1991:2099,ces85.f3.mote, col="purple", lwd=2)
# lines(1991:2099,mean85.f3.mote, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd85.f4.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f4.mote[i] <- sum(gfd85.f4.91.add$annual_Biomass[i,Motile.epifauna])
mir85.f4.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f4.mote[i] <- sum(mir85.f4.91.add$annual_Biomass[i,Motile.epifauna])
ces85.f4.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f4.mote[i] <- sum(ces85.f4.91.add$annual_Biomass[i,Motile.epifauna])
# calculate a vector of mean guild biomass
mean85.f4.mote <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f4.mote[i] <- mean(c(gfd85.f4.mote[i],mir85.f4.mote[i],ces85.f4.mote[i]))
}
rownames(mean85.f4.mote) <- 1991:2099
colnames(mean85.f4.mote) <- "Motile.epifauna"
# Plot it to double check
# plot(1991:2099,gfd85.f4.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(ces85.f4.mote)),
#      ylab="Biomass (t/km^2)", main="Motile.epifauna RCP 8.5-no fishing")
# lines(1991:2099,mir85.f4.mote, col="red", lwd=2)
# lines(1991:2099,ces85.f4.mote, col="purple", lwd=2)
# lines(1991:2099,mean85.f4.mote, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd85.f5.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f5.mote[i] <- sum(gfd85.f5.91.add$annual_Biomass[i,Motile.epifauna])
# mir85.f5.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f5.mote[i] <- sum(mir85.f5.91.add$annual_Biomass[i,Motile.epifauna])
# ces85.f5.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f5.mote[i] <- sum(ces85.f5.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass
# mean85.f5.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f5.mote[i] <- mean(c(gfd85.f5.mote[i],mir85.f5.mote[i],ces85.f5.mote[i]))
# }
# rownames(mean85.f5.mote) <- 1991:2099
# colnames(mean85.f5.mote) <- "Motile.epifauna"
# 
# # f6 - F_equil scenario
# gfd85.f6.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f6.mote[i] <- sum(gfd85.f6.91.add$annual_Biomass[i,Motile.epifauna])
# mir85.f6.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f6.mote[i] <- sum(mir85.f6.91.add$annual_Biomass[i,Motile.epifauna])
# ces85.f6.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f6.mote[i] <- sum(ces85.f6.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass
# mean85.f6.mote <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f6.mote[i] <- mean(c(gfd85.f6.mote[i],mir85.f6.mote[i],ces85.f6.mote[i]))
# }
# rownames(mean85.f6.mote) <- 1991:2099
# colnames(mean85.f6.mote) <- "Motile.epifauna"


# Pelagic.forager ---------- ---------- ---------- ---------- #
# Status-quo
gfd85.f1.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f1.pelf[i] <- sum(gfd85.f1.91.add$annual_Biomass[i,Pelagic.forager])
mir85.f1.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f1.pelf[i] <- sum(mir85.f1.91.add$annual_Biomass[i,Pelagic.forager])
ces85.f1.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f1.pelf[i] <- sum(ces85.f1.91.add$annual_Biomass[i,Pelagic.forager])
# calculate a vector of mean guild biomass
mean85.f1.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f1.pelf[i] <- mean(c(gfd85.f1.pelf[i],mir85.f1.pelf[i],ces85.f1.pelf[i]))
}
rownames(mean85.f1.pelf) <- 1991:2099
colnames(mean85.f1.pelf) <- "Pelagic.forager"
# Plot it to double check
# plot(1991:2099,gfd85.f1.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(ces85.f1.pelf)),
#      ylab="Biomass (t/km^2)", main="Pelagic.forager RCP 8.5-SQ")
# lines(1991:2099,mir85.f1.pelf, col="red", lwd=2)
# lines(1991:2099,ces85.f1.pelf, col="purple", lwd=2)
# lines(1991:2099,mean85.f1.pelf, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd85.f2.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f2.pelf[i] <- sum(gfd85.f2.91.add$annual_Biomass[i,Pelagic.forager])
mir85.f2.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f2.pelf[i] <- sum(mir85.f2.91.add$annual_Biomass[i,Pelagic.forager])
ces85.f2.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f2.pelf[i] <- sum(ces85.f2.91.add$annual_Biomass[i,Pelagic.forager])
# calculate a vector of mean guild biomass
mean85.f2.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f2.pelf[i] <- mean(c(gfd85.f2.pelf[i],mir85.f2.pelf[i],ces85.f2.pelf[i]))
}
rownames(mean85.f2.pelf) <- 1991:2099
colnames(mean85.f2.pelf) <- "Pelagic.forager"
# Plot it to double check
# plot(1991:2099,gfd85.f2.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(ces85.f2.pelf)),
#      ylab="Biomass (t/km^2)", main="Pelagic.forager RCP 8.5-more gadid catch")
# lines(1991:2099,mir85.f2.pelf, col="red", lwd=2)
# lines(1991:2099,ces85.f2.pelf, col="purple", lwd=2)
# lines(1991:2099,mean85.f2.pelf, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd85.f3.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f3.pelf[i] <- sum(gfd85.f3.91.add$annual_Biomass[i,Pelagic.forager])
mir85.f3.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f3.pelf[i] <- sum(mir85.f3.91.add$annual_Biomass[i,Pelagic.forager])
ces85.f3.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f3.pelf[i] <- sum(ces85.f3.91.add$annual_Biomass[i,Pelagic.forager])
# calculate a vector of mean guild biomass
mean85.f3.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f3.pelf[i] <- mean(c(gfd85.f3.pelf[i],mir85.f3.pelf[i],ces85.f3.pelf[i]))
}
rownames(mean85.f3.pelf) <- 1991:2099
colnames(mean85.f3.pelf) <- "Pelagic.forager"
# Plot it to double check
# plot(1991:2099,gfd85.f3.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(ces85.f3.pelf)),
#      ylab="Biomass (t/km^2)", main="Pelagic.forager RCP 8.5-more flatfish catch")
# lines(1991:2099,mir85.f3.pelf, col="red", lwd=2)
# lines(1991:2099,ces85.f3.pelf, col="purple", lwd=2)
# lines(1991:2099,mean85.f3.pelf, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd85.f4.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f4.pelf[i] <- sum(gfd85.f4.91.add$annual_Biomass[i,Pelagic.forager])
mir85.f4.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f4.pelf[i] <- sum(mir85.f4.91.add$annual_Biomass[i,Pelagic.forager])
ces85.f4.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f4.pelf[i] <- sum(ces85.f4.91.add$annual_Biomass[i,Pelagic.forager])
# calculate a vector of mean guild biomass
mean85.f4.pelf <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f4.pelf[i] <- mean(c(gfd85.f4.pelf[i],mir85.f4.pelf[i],ces85.f4.pelf[i]))
}
rownames(mean85.f4.pelf) <- 1991:2099
colnames(mean85.f4.pelf) <- "Pelagic.forager"
# Plot it to double check
# plot(1991:2099,gfd85.f4.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(ces85.f4.pelf)),
#      ylab="Biomass (t/km^2)", main="Pelagic.forager RCP 8.5-no fishing")
# lines(1991:2099,mir85.f4.pelf, col="red", lwd=2)
# lines(1991:2099,ces85.f4.pelf, col="purple", lwd=2)
# lines(1991:2099,mean85.f4.pelf, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd85.f5.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f5.pelf[i] <- sum(gfd85.f5.91.add$annual_Biomass[i,Pelagic.forager])
# mir85.f5.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f5.pelf[i] <- sum(mir85.f5.91.add$annual_Biomass[i,Pelagic.forager])
# ces85.f5.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f5.pelf[i] <- sum(ces85.f5.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass
# mean85.f5.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f5.pelf[i] <- mean(c(gfd85.f5.pelf[i],mir85.f5.pelf[i],ces85.f5.pelf[i]))
# }
# rownames(mean85.f5.pelf) <- 1991:2099
# colnames(mean85.f5.pelf) <- "Pelagic.forager"
# 
# # f6 - F_equil scenario
# gfd85.f6.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f6.pelf[i] <- sum(gfd85.f6.91.add$annual_Biomass[i,Pelagic.forager])
# mir85.f6.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f6.pelf[i] <- sum(mir85.f6.91.add$annual_Biomass[i,Pelagic.forager])
# ces85.f6.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f6.pelf[i] <- sum(ces85.f6.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass
# mean85.f6.pelf <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f6.pelf[i] <- mean(c(gfd85.f6.pelf[i],mir85.f6.pelf[i],ces85.f6.pelf[i]))
# }
# rownames(mean85.f6.pelf) <- 1991:2099
# colnames(mean85.f6.pelf) <- "Pelagic.forager"


# Infauna ---------- ---------- ---------- ---------- ---------- ---------- #
# Status-quo
gfd85.f1.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f1.infa[i] <- sum(gfd85.f1.91.add$annual_Biomass[i,Infauna])
mir85.f1.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f1.infa[i] <- sum(mir85.f1.91.add$annual_Biomass[i,Infauna])
ces85.f1.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f1.infa[i] <- sum(ces85.f1.91.add$annual_Biomass[i,Infauna])
# calculate a vector of mean guild biomass
mean85.f1.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f1.infa[i] <- mean(c(gfd85.f1.infa[i],mir85.f1.infa[i],ces85.f1.infa[i]))
}
rownames(mean85.f1.infa) <- 1991:2099
colnames(mean85.f1.infa) <- "Infauna"
# Plot it to double check
# plot(1991:2099,gfd85.f1.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f1.infa)),
#      ylab="Biomass (t/km^2)", main="Infauna RCP 8.5-SQ")
# lines(1991:2099,mir85.f1.infa, col="red", lwd=2)
# lines(1991:2099,ces85.f1.infa, col="purple", lwd=2)
# lines(1991:2099,mean85.f1.infa, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd85.f2.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f2.infa[i] <- sum(gfd85.f2.91.add$annual_Biomass[i,Infauna])
mir85.f2.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f2.infa[i] <- sum(mir85.f2.91.add$annual_Biomass[i,Infauna])
ces85.f2.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f2.infa[i] <- sum(ces85.f2.91.add$annual_Biomass[i,Infauna])
# calculate a vector of mean guild biomass
mean85.f2.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f2.infa[i] <- mean(c(gfd85.f2.infa[i],mir85.f2.infa[i],ces85.f2.infa[i]))
}
rownames(mean85.f2.infa) <- 1991:2099
colnames(mean85.f2.infa) <- "Infauna"
# Plot it to double check
# plot(1991:2099,gfd85.f2.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f2.infa)),
#      ylab="Biomass (t/km^2)", main="Infauna RCP 8.5-more gadid catch")
# lines(1991:2099,mir85.f2.infa, col="red", lwd=2)
# lines(1991:2099,ces85.f2.infa, col="purple", lwd=2)
# lines(1991:2099,mean85.f2.infa, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd85.f3.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f3.infa[i] <- sum(gfd85.f3.91.add$annual_Biomass[i,Infauna])
mir85.f3.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f3.infa[i] <- sum(mir85.f3.91.add$annual_Biomass[i,Infauna])
ces85.f3.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f3.infa[i] <- sum(ces85.f3.91.add$annual_Biomass[i,Infauna])
# calculate a vector of mean guild biomass
mean85.f3.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f3.infa[i] <- mean(c(gfd85.f3.infa[i],mir85.f3.infa[i],ces85.f3.infa[i]))
}
rownames(mean85.f3.infa) <- 1991:2099
colnames(mean85.f3.infa) <- "Infauna"
# Plot it to double check
# plot(1991:2099,gfd85.f3.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f3.infa)),
#      ylab="Biomass (t/km^2)", main="Infauna RCP 8.5-more flatfish catch")
# lines(1991:2099,mir85.f3.infa, col="red", lwd=2)
# lines(1991:2099,ces85.f3.infa, col="purple", lwd=2)
# lines(1991:2099,mean85.f3.infa, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd85.f4.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f4.infa[i] <- sum(gfd85.f4.91.add$annual_Biomass[i,Infauna])
mir85.f4.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f4.infa[i] <- sum(mir85.f4.91.add$annual_Biomass[i,Infauna])
ces85.f4.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f4.infa[i] <- sum(ces85.f4.91.add$annual_Biomass[i,Infauna])
# calculate a vector of mean guild biomass
mean85.f4.infa <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f4.infa[i] <- mean(c(gfd85.f4.infa[i],mir85.f4.infa[i],ces85.f4.infa[i]))
}
rownames(mean85.f4.infa) <- 1991:2099
colnames(mean85.f4.infa) <- "Infauna"
# Plot it to double check
# plot(1991:2099,gfd85.f4.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f4.infa)),
#      ylab="Biomass (t/km^2)", main="Infauna RCP 8.5-no fishing")
# lines(1991:2099,mir85.f4.infa, col="red", lwd=2)
# lines(1991:2099,ces85.f4.infa, col="purple", lwd=2)
# lines(1991:2099,mean85.f4.infa, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd85.f5.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f5.infa[i] <- sum(gfd85.f5.91.add$annual_Biomass[i,Infauna])
# mir85.f5.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f5.infa[i] <- sum(mir85.f5.91.add$annual_Biomass[i,Infauna])
# ces85.f5.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f5.infa[i] <- sum(ces85.f5.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass
# mean85.f5.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f5.infa[i] <- mean(c(gfd85.f5.infa[i],mir85.f5.infa[i],ces85.f5.infa[i]))
# }
# rownames(mean85.f5.infa) <- 1991:2099
# colnames(mean85.f5.infa) <- "Infauna"
# 
# # f6 - F_equil scenario
# gfd85.f6.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f6.infa[i] <- sum(gfd85.f6.91.add$annual_Biomass[i,Infauna])
# mir85.f6.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f6.infa[i] <- sum(mir85.f6.91.add$annual_Biomass[i,Infauna])
# ces85.f6.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f6.infa[i] <- sum(ces85.f6.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass
# mean85.f6.infa <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f6.infa[i] <- mean(c(gfd85.f6.infa[i],mir85.f6.infa[i],ces85.f6.infa[i]))
# }
# rownames(mean85.f6.infa) <- 1991:2099
# colnames(mean85.f6.infa) <- "Infauna"


# Structural.epifauna ---------- ---------- ---------- ---------- ---------- ---------- #
# Status-quo
gfd85.f1.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f1.sepi[i] <- sum(gfd85.f1.91.add$annual_Biomass[i,Structural.epifauna])
mir85.f1.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f1.sepi[i] <- sum(mir85.f1.91.add$annual_Biomass[i,Structural.epifauna])
ces85.f1.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f1.sepi[i] <- sum(ces85.f1.91.add$annual_Biomass[i,Structural.epifauna])
# calculate a vector of mean guild biomass
mean85.f1.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f1.sepi[i] <- mean(c(gfd85.f1.sepi[i],mir85.f1.sepi[i],ces85.f1.sepi[i]))
}
rownames(mean85.f1.sepi) <- 1991:2099
colnames(mean85.f1.sepi) <- "Structural.epifauna"
# Plot it to double check
# plot(1991:2099,gfd85.f1.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f1.sepi)),
#      ylab="Biomass (t/km^2)", main="Structural.epifauna RCP 8.5-SQ")
# lines(1991:2099,mir85.f1.sepi, col="red", lwd=2)
# lines(1991:2099,ces85.f1.sepi, col="purple", lwd=2)
# lines(1991:2099,mean85.f1.sepi, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd85.f2.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f2.sepi[i] <- sum(gfd85.f2.91.add$annual_Biomass[i,Structural.epifauna])
mir85.f2.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f2.sepi[i] <- sum(mir85.f2.91.add$annual_Biomass[i,Structural.epifauna])
ces85.f2.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f2.sepi[i] <- sum(ces85.f2.91.add$annual_Biomass[i,Structural.epifauna])
# calculate a vector of mean guild biomass
mean85.f2.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f2.sepi[i] <- mean(c(gfd85.f2.sepi[i],mir85.f2.sepi[i],ces85.f2.sepi[i]))
}
rownames(mean85.f2.sepi) <- 1991:2099
colnames(mean85.f2.sepi) <- "Structural.epifauna"
# Plot it to double check
# plot(1991:2099,gfd85.f2.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f2.sepi)),
#      ylab="Biomass (t/km^2)", main="Structural.epifauna RCP 8.5-more gadid catch")
# lines(1991:2099,mir85.f2.sepi, col="red", lwd=2)
# lines(1991:2099,ces85.f2.sepi, col="purple", lwd=2)
# lines(1991:2099,mean85.f2.sepi, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd85.f3.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f3.sepi[i] <- sum(gfd85.f3.91.add$annual_Biomass[i,Structural.epifauna])
mir85.f3.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f3.sepi[i] <- sum(mir85.f3.91.add$annual_Biomass[i,Structural.epifauna])
ces85.f3.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f3.sepi[i] <- sum(ces85.f3.91.add$annual_Biomass[i,Structural.epifauna])
# calculate a vector of mean guild biomass
mean85.f3.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f3.sepi[i] <- mean(c(gfd85.f3.sepi[i],mir85.f3.sepi[i],ces85.f3.sepi[i]))
}
rownames(mean85.f3.sepi) <- 1991:2099
colnames(mean85.f3.sepi) <- "Structural.epifauna"
# Plot it to double check
# plot(1991:2099,gfd85.f3.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f3.sepi)),
#      ylab="Biomass (t/km^2)", main="Structural.epifauna RCP 8.5-more flatfish catch")
# lines(1991:2099,mir85.f3.sepi, col="red", lwd=2)
# lines(1991:2099,ces85.f3.sepi, col="purple", lwd=2)
# lines(1991:2099,mean85.f3.sepi, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd85.f4.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f4.sepi[i] <- sum(gfd85.f4.91.add$annual_Biomass[i,Structural.epifauna])
mir85.f4.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f4.sepi[i] <- sum(mir85.f4.91.add$annual_Biomass[i,Structural.epifauna])
ces85.f4.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f4.sepi[i] <- sum(ces85.f4.91.add$annual_Biomass[i,Structural.epifauna])
# calculate a vector of mean guild biomass
mean85.f4.sepi <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f4.sepi[i] <- mean(c(gfd85.f4.sepi[i],mir85.f4.sepi[i],ces85.f4.sepi[i]))
}
rownames(mean85.f4.sepi) <- 1991:2099
colnames(mean85.f4.sepi) <- "Structural.epifauna"
# Plot it to double check
# plot(1991:2099,gfd85.f4.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f4.sepi)),
#      ylab="Biomass (t/km^2)", main="Structural.epifauna RCP 8.5-no fishing")
# lines(1991:2099,mir85.f4.sepi, col="red", lwd=2)
# lines(1991:2099,ces85.f4.sepi, col="purple", lwd=2)
# lines(1991:2099,mean85.f4.sepi, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd85.f5.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f5.sepi[i] <- sum(gfd85.f5.91.add$annual_Biomass[i,Structural.epifauna])
# mir85.f5.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f5.sepi[i] <- sum(mir85.f5.91.add$annual_Biomass[i,Structural.epifauna])
# ces85.f5.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f5.sepi[i] <- sum(ces85.f5.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass
# mean85.f5.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f5.sepi[i] <- mean(c(gfd85.f5.sepi[i],mir85.f5.sepi[i],ces85.f5.sepi[i]))
# }
# rownames(mean85.f5.sepi) <- 1991:2099
# colnames(mean85.f5.sepi) <- "Structural.epifauna"
# 
# # f6 - F_equil scenario
# gfd85.f6.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f6.sepi[i] <- sum(gfd85.f6.91.add$annual_Biomass[i,Structural.epifauna])
# mir85.f6.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f6.sepi[i] <- sum(mir85.f6.91.add$annual_Biomass[i,Structural.epifauna])
# ces85.f6.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f6.sepi[i] <- sum(ces85.f6.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass
# mean85.f6.sepi <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f6.sepi[i] <- mean(c(gfd85.f6.sepi[i],mir85.f6.sepi[i],ces85.f6.sepi[i]))
# }
# rownames(mean85.f6.sepi) <- 1991:2099
# colnames(mean85.f6.sepi) <- "Structural.epifauna"


# Shrimp ---------- ---------- ---------- ---------- ---------- ---------- #
# Status-quo
gfd85.f1.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f1.shmp[i] <- sum(gfd85.f1.91.add$annual_Biomass[i,Shrimp])
mir85.f1.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f1.shmp[i] <- sum(mir85.f1.91.add$annual_Biomass[i,Shrimp])
ces85.f1.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f1.shmp[i] <- sum(ces85.f1.91.add$annual_Biomass[i,Shrimp])
# calculate a vector of mean guild biomass
mean85.f1.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f1.shmp[i] <- mean(c(gfd85.f1.shmp[i],mir85.f1.shmp[i],ces85.f1.shmp[i]))
}
rownames(mean85.f1.shmp) <- 1991:2099
colnames(mean85.f1.shmp) <- "Shrimp"
# Plot it to double check
# plot(1991:2099,gfd85.f1.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f1.shmp)),
#      ylab="Biomass (t/km^2)", main="Shrimp RCP 8.5-SQ")
# lines(1991:2099,mir85.f1.shmp, col="red", lwd=2)
# lines(1991:2099,ces85.f1.shmp, col="purple", lwd=2)
# lines(1991:2099,mean85.f1.shmp, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f2 - more gadid catch scenario
gfd85.f2.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f2.shmp[i] <- sum(gfd85.f2.91.add$annual_Biomass[i,Shrimp])
mir85.f2.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f2.shmp[i] <- sum(mir85.f2.91.add$annual_Biomass[i,Shrimp])
ces85.f2.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f2.shmp[i] <- sum(ces85.f2.91.add$annual_Biomass[i,Shrimp])
# calculate a vector of mean guild biomass
mean85.f2.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f2.shmp[i] <- mean(c(gfd85.f2.shmp[i],mir85.f2.shmp[i],ces85.f2.shmp[i]))
}
rownames(mean85.f2.shmp) <- 1991:2099
colnames(mean85.f2.shmp) <- "Shrimp"
# Plot it to double check
# plot(1991:2099,gfd85.f2.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f2.shmp)),
#      ylab="Biomass (t/km^2)", main="Shrimp RCP 8.5-more gadid catch")
# lines(1991:2099,mir85.f2.shmp, col="red", lwd=2)
# lines(1991:2099,ces85.f2.shmp, col="purple", lwd=2)
# lines(1991:2099,mean85.f2.shmp, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f3 - more flatfish catch scenario
gfd85.f3.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f3.shmp[i] <- sum(gfd85.f3.91.add$annual_Biomass[i,Shrimp])
mir85.f3.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f3.shmp[i] <- sum(mir85.f3.91.add$annual_Biomass[i,Shrimp])
ces85.f3.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f3.shmp[i] <- sum(ces85.f3.91.add$annual_Biomass[i,Shrimp])
# calculate a vector of mean guild biomass
mean85.f3.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f3.shmp[i] <- mean(c(gfd85.f3.shmp[i],mir85.f3.shmp[i],ces85.f3.shmp[i]))
}
rownames(mean85.f3.shmp) <- 1991:2099
colnames(mean85.f3.shmp) <- "Shrimp"
# Plot it to double check
# plot(1991:2099,gfd85.f3.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f3.shmp)),
#      ylab="Biomass (t/km^2)", main="Shrimp RCP 8.5-more flatfish catch")
# lines(1991:2099,mir85.f3.shmp, col="red", lwd=2)
# lines(1991:2099,ces85.f3.shmp, col="purple", lwd=2)
# lines(1991:2099,mean85.f3.shmp, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# f4 - no fishing scenario
gfd85.f4.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) gfd85.f4.shmp[i] <- sum(gfd85.f4.91.add$annual_Biomass[i,Shrimp])
mir85.f4.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) mir85.f4.shmp[i] <- sum(mir85.f4.91.add$annual_Biomass[i,Shrimp])
ces85.f4.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) ces85.f4.shmp[i] <- sum(ces85.f4.91.add$annual_Biomass[i,Shrimp])
# calculate a vector of mean guild biomass
mean85.f4.shmp <- matrix(nrow=109,ncol=1)
for (i in 1:109) {
  mean85.f4.shmp[i] <- mean(c(gfd85.f4.shmp[i],mir85.f4.shmp[i],ces85.f4.shmp[i]))
}
rownames(mean85.f4.shmp) <- 1991:2099
colnames(mean85.f4.shmp) <- "Shrimp"
# Plot it to double check
# plot(1991:2099,gfd85.f4.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(gfd85.f4.shmp)),
#      ylab="Biomass (t/km^2)", main="Shrimp RCP 8.5-no fishing")
# lines(1991:2099,mir85.f4.shmp, col="red", lwd=2)
# lines(1991:2099,ces85.f4.shmp, col="purple", lwd=2)
# lines(1991:2099,mean85.f4.shmp, col="gray50", lwd=2)
# abline(v=c(2017), lty=2, col="gray50", lwd=2)

# # f5 - ABC scenario
# gfd85.f5.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f5.shmp[i] <- sum(gfd85.f5.91.add$annual_Biomass[i,Shrimp])
# mir85.f5.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f5.shmp[i] <- sum(mir85.f5.91.add$annual_Biomass[i,Shrimp])
# ces85.f5.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f5.shmp[i] <- sum(ces85.f5.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass
# mean85.f5.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f5.shmp[i] <- mean(c(gfd85.f5.shmp[i],mir85.f5.shmp[i],ces85.f5.shmp[i]))
# }
# rownames(mean85.f5.shmp) <- 1991:2099
# colnames(mean85.f5.shmp) <- "Shrimp"
# 
# # f6 - F_equil scenario
# gfd85.f6.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) gfd85.f6.shmp[i] <- sum(gfd85.f6.91.add$annual_Biomass[i,Shrimp])
# mir85.f6.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mir85.f6.shmp[i] <- sum(mir85.f6.91.add$annual_Biomass[i,Shrimp])
# ces85.f6.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) ces85.f6.shmp[i] <- sum(ces85.f6.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass
# mean85.f6.shmp <- matrix(nrow=109,ncol=1)
# for (i in 1:109) {
#   mean85.f6.shmp[i] <- mean(c(gfd85.f6.shmp[i],mir85.f6.shmp[i],ces85.f6.shmp[i]))
# }
# rownames(mean85.f6.shmp) <- 1991:2099
# colnames(mean85.f6.shmp) <- "Shrimp"





# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ============================================================================ #

# SRES A1B Guild biomass

# Apex.predator ---------- ---------- ---------- ---------- #
# Status-quo
# cccA1B.f1.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f1.apex[i] <- sum(cccA1B.f1.91.add$annual_Biomass[i,Apex.predator])
# mirA1B.f1.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f1.apex[i] <- sum(mirA1B.f1.91.add$annual_Biomass[i,Apex.predator])
# echA1B.f1.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f1.apex[i] <- sum(echA1B.f1.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass
# meanA1B.f1.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f1.apex[i] <- mean(c(cccA1B.f1.apex[i],mirA1B.f1.apex[i],echA1B.f1.apex[i]))
# }
# rownames(meanA1B.f1.apex) <- 1991:2039
# colnames(meanA1B.f1.apex) <- "Apex.predator"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f1.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f1.apex)),
# #      ylab="Biomass (t/km^2)", main="Apex.predator SRES A1B-SQ")
# # lines(1991:2039,mirA1B.f1.apex, col="red", lwd=2)
# # lines(1991:2039,echA1B.f1.apex, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f1.apex, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f2 - more gadid catch scenario
# cccA1B.f2.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f2.apex[i] <- sum(cccA1B.f2.91.add$annual_Biomass[i,Apex.predator])
# mirA1B.f2.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f2.apex[i] <- sum(mirA1B.f2.91.add$annual_Biomass[i,Apex.predator])
# echA1B.f2.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f2.apex[i] <- sum(echA1B.f2.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass
# meanA1B.f2.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f2.apex[i] <- mean(c(cccA1B.f2.apex[i],mirA1B.f2.apex[i],echA1B.f2.apex[i]))
# }
# rownames(meanA1B.f2.apex) <- 1991:2039
# colnames(meanA1B.f2.apex) <- "Apex.predator"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f2.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f2.apex)),
# #      ylab="Biomass (t/km^2)", main="Apex.predator SRES A1B-more gadid catch")
# # lines(1991:2039,mirA1B.f2.apex, col="red", lwd=2)
# # lines(1991:2039,echA1B.f2.apex, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f2.apex, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f3 - more flatfish catch scenario
# cccA1B.f3.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f3.apex[i] <- sum(cccA1B.f3.91.add$annual_Biomass[i,Apex.predator])
# mirA1B.f3.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f3.apex[i] <- sum(mirA1B.f3.91.add$annual_Biomass[i,Apex.predator])
# echA1B.f3.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f3.apex[i] <- sum(echA1B.f3.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass
# meanA1B.f3.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f3.apex[i] <- mean(c(cccA1B.f3.apex[i],mirA1B.f3.apex[i],echA1B.f3.apex[i]))
# }
# rownames(meanA1B.f3.apex) <- 1991:2039
# colnames(meanA1B.f3.apex) <- "Apex.predator"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f3.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f3.apex)),
# #      ylab="Biomass (t/km^2)", main="Apex.predator SRES A1B-more flatfish catch")
# # lines(1991:2039,mirA1B.f3.apex, col="red", lwd=2)
# # lines(1991:2039,echA1B.f3.apex, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f3.apex, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f4 - no fishing scenario
# cccA1B.f4.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f4.apex[i] <- sum(cccA1B.f4.91.add$annual_Biomass[i,Apex.predator])
# mirA1B.f4.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f4.apex[i] <- sum(mirA1B.f4.91.add$annual_Biomass[i,Apex.predator])
# echA1B.f4.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f4.apex[i] <- sum(echA1B.f4.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass
# meanA1B.f4.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f4.apex[i] <- mean(c(cccA1B.f4.apex[i],mirA1B.f4.apex[i],echA1B.f4.apex[i]))
# }
# rownames(meanA1B.f4.apex) <- 1991:2039
# colnames(meanA1B.f4.apex) <- "Apex.predator"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f4.apex, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f4.apex)),
# #      ylab="Biomass (t/km^2)", main="Apex.predator SRES A1B-no fishing")
# # lines(1991:2039,mirA1B.f4.apex, col="red", lwd=2)
# # lines(1991:2039,echA1B.f4.apex, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f4.apex, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f5 - ABC scenario
# cccA1B.f5.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f5.apex[i] <- sum(cccA1B.f5.91.add$annual_Biomass[i,Apex.predator])
# mirA1B.f5.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f5.apex[i] <- sum(mirA1B.f5.91.add$annual_Biomass[i,Apex.predator])
# echA1B.f5.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f5.apex[i] <- sum(echA1B.f5.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass
# meanA1B.f5.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f5.apex[i] <- mean(c(cccA1B.f5.apex[i],mirA1B.f5.apex[i],echA1B.f5.apex[i]))
# }
# rownames(meanA1B.f5.apex) <- 1991:2039
# colnames(meanA1B.f5.apex) <- "Apex.predator"
# 
# # f6 - F_equil scenario
# cccA1B.f6.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f6.apex[i] <- sum(cccA1B.f6.91.add$annual_Biomass[i,Apex.predator])
# mirA1B.f6.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f6.apex[i] <- sum(mirA1B.f6.91.add$annual_Biomass[i,Apex.predator])
# echA1B.f6.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f6.apex[i] <- sum(echA1B.f6.91.add$annual_Biomass[i,Apex.predator])
# # calculate a vector of mean guild biomass
# meanA1B.f6.apex <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f6.apex[i] <- mean(c(cccA1B.f6.apex[i],mirA1B.f6.apex[i],echA1B.f6.apex[i]))
# }
# rownames(meanA1B.f6.apex) <- 1991:2039
# colnames(meanA1B.f6.apex) <- "Apex.predator"
# 
# 
# 
# # Benthic.forager ---------- ---------- ---------- ---------- #
# # Status-quo
# cccA1B.f1.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f1.benf[i] <- sum(cccA1B.f1.91.add$annual_Biomass[i,Benthic.forager])
# mirA1B.f1.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f1.benf[i] <- sum(mirA1B.f1.91.add$annual_Biomass[i,Benthic.forager])
# echA1B.f1.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f1.benf[i] <- sum(echA1B.f1.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f1.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f1.benf[i] <- mean(c(cccA1B.f1.benf[i],mirA1B.f1.benf[i],echA1B.f1.benf[i]))
# }
# rownames(meanA1B.f1.benf) <- 1991:2039
# colnames(meanA1B.f1.benf) <- "Benthic.forager"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f1.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(mirA1B.f1.benf)),
# #      ylab="Biomass (t/km^2)", main="Benthic.forager SRES A1B-SQ")
# # lines(1991:2039,mirA1B.f1.benf, col="red", lwd=2)
# # lines(1991:2039,echA1B.f1.benf, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f1.benf, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f2 - more gadid catch scenario
# cccA1B.f2.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f2.benf[i] <- sum(cccA1B.f2.91.add$annual_Biomass[i,Benthic.forager])
# mirA1B.f2.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f2.benf[i] <- sum(mirA1B.f2.91.add$annual_Biomass[i,Benthic.forager])
# echA1B.f2.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f2.benf[i] <- sum(echA1B.f2.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f2.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f2.benf[i] <- mean(c(cccA1B.f2.benf[i],mirA1B.f2.benf[i],echA1B.f2.benf[i]))
# }
# rownames(meanA1B.f2.benf) <- 1991:2039
# colnames(meanA1B.f2.benf) <- "Benthic.forager"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f2.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(mirA1B.f2.benf)),
# #      ylab="Biomass (t/km^2)", main="Benthic.forager SRES A1B-more gadid catch")
# # lines(1991:2039,mirA1B.f2.benf, col="red", lwd=2)
# # lines(1991:2039,echA1B.f2.benf, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f2.benf, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f3 - more flatfish catch scenario
# cccA1B.f3.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f3.benf[i] <- sum(cccA1B.f3.91.add$annual_Biomass[i,Benthic.forager])
# mirA1B.f3.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f3.benf[i] <- sum(mirA1B.f3.91.add$annual_Biomass[i,Benthic.forager])
# echA1B.f3.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f3.benf[i] <- sum(echA1B.f3.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f3.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f3.benf[i] <- mean(c(cccA1B.f3.benf[i],mirA1B.f3.benf[i],echA1B.f3.benf[i]))
# }
# rownames(meanA1B.f3.benf) <- 1991:2039
# colnames(meanA1B.f3.benf) <- "Benthic.forager"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f3.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(mirA1B.f3.benf)),
# #      ylab="Biomass (t/km^2)", main="Benthic.forager SRES A1B-more flatfish catch")
# # lines(1991:2039,mirA1B.f3.benf, col="red", lwd=2)
# # lines(1991:2039,echA1B.f3.benf, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f3.benf, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f4 - no fishing scenario
# cccA1B.f4.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f4.benf[i] <- sum(cccA1B.f4.91.add$annual_Biomass[i,Benthic.forager])
# mirA1B.f4.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f4.benf[i] <- sum(mirA1B.f4.91.add$annual_Biomass[i,Benthic.forager])
# echA1B.f4.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f4.benf[i] <- sum(echA1B.f4.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f4.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f4.benf[i] <- mean(c(cccA1B.f4.benf[i],mirA1B.f4.benf[i],echA1B.f4.benf[i]))
# }
# rownames(meanA1B.f4.benf) <- 1991:2039
# colnames(meanA1B.f4.benf) <- "Benthic.forager"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f4.benf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(mirA1B.f4.benf)),
# #      ylab="Biomass (t/km^2)", main="Benthic.forager SRES A1B-no fishing")
# # lines(1991:2039,mirA1B.f4.benf, col="red", lwd=2)
# # lines(1991:2039,echA1B.f4.benf, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f4.benf, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f5 - ABC scenario
# cccA1B.f5.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f5.benf[i] <- sum(cccA1B.f5.91.add$annual_Biomass[i,Benthic.forager])
# mirA1B.f5.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f5.benf[i] <- sum(mirA1B.f5.91.add$annual_Biomass[i,Benthic.forager])
# echA1B.f5.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f5.benf[i] <- sum(echA1B.f5.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f5.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f5.benf[i] <- mean(c(cccA1B.f5.benf[i],mirA1B.f5.benf[i],echA1B.f5.benf[i]))
# }
# rownames(meanA1B.f5.benf) <- 1991:2039
# colnames(meanA1B.f5.benf) <- "Benthic.forager"
# 
# # f6 - F_equil scenario
# cccA1B.f6.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f6.benf[i] <- sum(cccA1B.f6.91.add$annual_Biomass[i,Benthic.forager])
# mirA1B.f6.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f6.benf[i] <- sum(mirA1B.f6.91.add$annual_Biomass[i,Benthic.forager])
# echA1B.f6.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f6.benf[i] <- sum(echA1B.f6.91.add$annual_Biomass[i,Benthic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f6.benf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f6.benf[i] <- mean(c(cccA1B.f6.benf[i],mirA1B.f6.benf[i],echA1B.f6.benf[i]))
# }
# rownames(meanA1B.f6.benf) <- 1991:2039
# colnames(meanA1B.f6.benf) <- "Benthic.forager"
# 
# 
# 
# # Motile.epifauna ---------- ---------- ---------- ---------- #
# # Status-quo
# cccA1B.f1.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f1.mote[i] <- sum(cccA1B.f1.91.add$annual_Biomass[i,Motile.epifauna])
# mirA1B.f1.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f1.mote[i] <- sum(mirA1B.f1.91.add$annual_Biomass[i,Motile.epifauna])
# echA1B.f1.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f1.mote[i] <- sum(echA1B.f1.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f1.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f1.mote[i] <- mean(c(cccA1B.f1.mote[i],mirA1B.f1.mote[i],echA1B.f1.mote[i]))
# }
# rownames(meanA1B.f1.mote) <- 1991:2039
# colnames(meanA1B.f1.mote) <- "Motile.epifauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f1.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f1.mote)),
# #      ylab="Biomass (t/km^2)", main="Motile.epifauna SRES A1B-SQ")
# # lines(1991:2039,mirA1B.f1.mote, col="red", lwd=2)
# # lines(1991:2039,echA1B.f1.mote, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f1.mote, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f2 - more gadid catch scenario
# cccA1B.f2.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f2.mote[i] <- sum(cccA1B.f2.91.add$annual_Biomass[i,Motile.epifauna])
# mirA1B.f2.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f2.mote[i] <- sum(mirA1B.f2.91.add$annual_Biomass[i,Motile.epifauna])
# echA1B.f2.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f2.mote[i] <- sum(echA1B.f2.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f2.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f2.mote[i] <- mean(c(cccA1B.f2.mote[i],mirA1B.f2.mote[i],echA1B.f2.mote[i]))
# }
# rownames(meanA1B.f2.mote) <- 1991:2039
# colnames(meanA1B.f2.mote) <- "Motile.epifauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f2.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f2.mote)),
# #      ylab="Biomass (t/km^2)", main="Motile.epifauna SRES A1B-more gadid catch")
# # lines(1991:2039,mirA1B.f2.mote, col="red", lwd=2)
# # lines(1991:2039,echA1B.f2.mote, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f2.mote, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f3 - more flatfish catch scenario
# cccA1B.f3.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f3.mote[i] <- sum(cccA1B.f3.91.add$annual_Biomass[i,Motile.epifauna])
# mirA1B.f3.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f3.mote[i] <- sum(mirA1B.f3.91.add$annual_Biomass[i,Motile.epifauna])
# echA1B.f3.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f3.mote[i] <- sum(echA1B.f3.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f3.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f3.mote[i] <- mean(c(cccA1B.f3.mote[i],mirA1B.f3.mote[i],echA1B.f3.mote[i]))
# }
# rownames(meanA1B.f3.mote) <- 1991:2039
# colnames(meanA1B.f3.mote) <- "Motile.epifauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f3.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f3.mote)),
# #      ylab="Biomass (t/km^2)", main="Motile.epifauna SRES A1B-more flatfish catch")
# # lines(1991:2039,mirA1B.f3.mote, col="red", lwd=2)
# # lines(1991:2039,echA1B.f3.mote, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f3.mote, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f4 - no fishing scenario
# cccA1B.f4.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f4.mote[i] <- sum(cccA1B.f4.91.add$annual_Biomass[i,Motile.epifauna])
# mirA1B.f4.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f4.mote[i] <- sum(mirA1B.f4.91.add$annual_Biomass[i,Motile.epifauna])
# echA1B.f4.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f4.mote[i] <- sum(echA1B.f4.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f4.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f4.mote[i] <- mean(c(cccA1B.f4.mote[i],mirA1B.f4.mote[i],echA1B.f4.mote[i]))
# }
# rownames(meanA1B.f4.mote) <- 1991:2039
# colnames(meanA1B.f4.mote) <- "Motile.epifauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f4.mote, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f4.mote)),
# #      ylab="Biomass (t/km^2)", main="Motile.epifauna SRES A1B-no fishing")
# # lines(1991:2039,mirA1B.f4.mote, col="red", lwd=2)
# # lines(1991:2039,echA1B.f4.mote, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f4.mote, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f5 - ABC scenario
# cccA1B.f5.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f5.mote[i] <- sum(cccA1B.f5.91.add$annual_Biomass[i,Motile.epifauna])
# mirA1B.f5.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f5.mote[i] <- sum(mirA1B.f5.91.add$annual_Biomass[i,Motile.epifauna])
# echA1B.f5.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f5.mote[i] <- sum(echA1B.f5.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f5.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f5.mote[i] <- mean(c(cccA1B.f5.mote[i],mirA1B.f5.mote[i],echA1B.f5.mote[i]))
# }
# rownames(meanA1B.f5.mote) <- 1991:2039
# colnames(meanA1B.f5.mote) <- "Motile.epifauna"
# 
# # f6 - F_equil scenario
# cccA1B.f6.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f6.mote[i] <- sum(cccA1B.f6.91.add$annual_Biomass[i,Motile.epifauna])
# mirA1B.f6.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f6.mote[i] <- sum(mirA1B.f6.91.add$annual_Biomass[i,Motile.epifauna])
# echA1B.f6.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f6.mote[i] <- sum(echA1B.f6.91.add$annual_Biomass[i,Motile.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f6.mote <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f6.mote[i] <- mean(c(cccA1B.f6.mote[i],mirA1B.f6.mote[i],echA1B.f6.mote[i]))
# }
# rownames(meanA1B.f6.mote) <- 1991:2039
# colnames(meanA1B.f6.mote) <- "Motile.epifauna"
# 
# 
# 
# # Pelagic.forager ---------- ---------- ---------- ---------- #
# # Status-quo
# cccA1B.f1.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f1.pelf[i] <- sum(cccA1B.f1.91.add$annual_Biomass[i,Pelagic.forager])
# mirA1B.f1.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f1.pelf[i] <- sum(mirA1B.f1.91.add$annual_Biomass[i,Pelagic.forager])
# echA1B.f1.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f1.pelf[i] <- sum(echA1B.f1.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f1.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f1.pelf[i] <- mean(c(cccA1B.f1.pelf[i],mirA1B.f1.pelf[i],echA1B.f1.pelf[i]))
# }
# rownames(meanA1B.f1.pelf) <- 1991:2039
# colnames(meanA1B.f1.pelf) <- "Pelagic.forager"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f1.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f1.pelf)),
# #      ylab="Biomass (t/km^2)", main="Pelagic.forager SRES A1B-SQ")
# # lines(1991:2039,mirA1B.f1.pelf, col="red", lwd=2)
# # lines(1991:2039,echA1B.f1.pelf, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f1.pelf, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f2 - more gadid catch scenario
# cccA1B.f2.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f2.pelf[i] <- sum(cccA1B.f2.91.add$annual_Biomass[i,Pelagic.forager])
# mirA1B.f2.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f2.pelf[i] <- sum(mirA1B.f2.91.add$annual_Biomass[i,Pelagic.forager])
# echA1B.f2.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f2.pelf[i] <- sum(echA1B.f2.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f2.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f2.pelf[i] <- mean(c(cccA1B.f2.pelf[i],mirA1B.f2.pelf[i],echA1B.f2.pelf[i]))
# }
# rownames(meanA1B.f2.pelf) <- 1991:2039
# colnames(meanA1B.f2.pelf) <- "Pelagic.forager"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f2.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f2.pelf)),
# #      ylab="Biomass (t/km^2)", main="Pelagic.forager SRES A1B-more gadid catch")
# # lines(1991:2039,mirA1B.f2.pelf, col="red", lwd=2)
# # lines(1991:2039,echA1B.f2.pelf, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f2.pelf, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f3 - more flatfish catch scenario
# cccA1B.f3.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f3.pelf[i] <- sum(cccA1B.f3.91.add$annual_Biomass[i,Pelagic.forager])
# mirA1B.f3.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f3.pelf[i] <- sum(mirA1B.f3.91.add$annual_Biomass[i,Pelagic.forager])
# echA1B.f3.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f3.pelf[i] <- sum(echA1B.f3.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f3.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f3.pelf[i] <- mean(c(cccA1B.f3.pelf[i],mirA1B.f3.pelf[i],echA1B.f3.pelf[i]))
# }
# rownames(meanA1B.f3.pelf) <- 1991:2039
# colnames(meanA1B.f3.pelf) <- "Pelagic.forager"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f3.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f3.pelf)),
# #      ylab="Biomass (t/km^2)", main="Pelagic.forager SRES A1B-more flatfish catch")
# # lines(1991:2039,mirA1B.f3.pelf, col="red", lwd=2)
# # lines(1991:2039,echA1B.f3.pelf, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f3.pelf, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f4 - no fishing scenario
# cccA1B.f4.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f4.pelf[i] <- sum(cccA1B.f4.91.add$annual_Biomass[i,Pelagic.forager])
# mirA1B.f4.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f4.pelf[i] <- sum(mirA1B.f4.91.add$annual_Biomass[i,Pelagic.forager])
# echA1B.f4.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f4.pelf[i] <- sum(echA1B.f4.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f4.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f4.pelf[i] <- mean(c(cccA1B.f4.pelf[i],mirA1B.f4.pelf[i],echA1B.f4.pelf[i]))
# }
# rownames(meanA1B.f4.pelf) <- 1991:2039
# colnames(meanA1B.f4.pelf) <- "Pelagic.forager"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f4.pelf, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f4.pelf)),
# #      ylab="Biomass (t/km^2)", main="Pelagic.forager SRES A1B-no fishing")
# # lines(1991:2039,mirA1B.f4.pelf, col="red", lwd=2)
# # lines(1991:2039,echA1B.f4.pelf, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f4.pelf, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f5 - ABC scenario
# cccA1B.f5.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f5.pelf[i] <- sum(cccA1B.f5.91.add$annual_Biomass[i,Pelagic.forager])
# mirA1B.f5.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f5.pelf[i] <- sum(mirA1B.f5.91.add$annual_Biomass[i,Pelagic.forager])
# echA1B.f5.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f5.pelf[i] <- sum(echA1B.f5.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f5.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f5.pelf[i] <- mean(c(cccA1B.f5.pelf[i],mirA1B.f5.pelf[i],echA1B.f5.pelf[i]))
# }
# rownames(meanA1B.f5.pelf) <- 1991:2039
# colnames(meanA1B.f5.pelf) <- "Pelagic.forager"
# 
# # f6 - F_equil scenario
# cccA1B.f6.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f6.pelf[i] <- sum(cccA1B.f6.91.add$annual_Biomass[i,Pelagic.forager])
# mirA1B.f6.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f6.pelf[i] <- sum(mirA1B.f6.91.add$annual_Biomass[i,Pelagic.forager])
# echA1B.f6.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f6.pelf[i] <- sum(echA1B.f6.91.add$annual_Biomass[i,Pelagic.forager])
# # calculate a vector of mean guild biomass
# meanA1B.f6.pelf <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f6.pelf[i] <- mean(c(cccA1B.f6.pelf[i],mirA1B.f6.pelf[i],echA1B.f6.pelf[i]))
# }
# rownames(meanA1B.f6.pelf) <- 1991:2039
# colnames(meanA1B.f6.pelf) <- "Pelagic.forager"
# 
# 
# # Infauna ---------- ---------- ---------- ---------- #
# # Status-quo
# cccA1B.f1.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f1.infa[i] <- sum(cccA1B.f1.91.add$annual_Biomass[i,Infauna])
# mirA1B.f1.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f1.infa[i] <- sum(mirA1B.f1.91.add$annual_Biomass[i,Infauna])
# echA1B.f1.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f1.infa[i] <- sum(echA1B.f1.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass
# meanA1B.f1.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f1.infa[i] <- mean(c(cccA1B.f1.infa[i],mirA1B.f1.infa[i],echA1B.f1.infa[i]))
# }
# rownames(meanA1B.f1.infa) <- 1991:2039
# colnames(meanA1B.f1.infa) <- "Infauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f1.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f1.infa)),
# #      ylab="Biomass (t/km^2)", main="Infauna SRES A1B-SQ")
# # lines(1991:2039,mirA1B.f1.infa, col="red", lwd=2)
# # lines(1991:2039,echA1B.f1.infa, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f1.infa, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f2 - more gadid catch scenario
# cccA1B.f2.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f2.infa[i] <- sum(cccA1B.f2.91.add$annual_Biomass[i,Infauna])
# mirA1B.f2.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f2.infa[i] <- sum(mirA1B.f2.91.add$annual_Biomass[i,Infauna])
# echA1B.f2.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f2.infa[i] <- sum(echA1B.f2.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass
# meanA1B.f2.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f2.infa[i] <- mean(c(cccA1B.f2.infa[i],mirA1B.f2.infa[i],echA1B.f2.infa[i]))
# }
# rownames(meanA1B.f2.infa) <- 1991:2039
# colnames(meanA1B.f2.infa) <- "Infauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f2.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f2.infa)),
# #      ylab="Biomass (t/km^2)", main="Infauna SRES A1B-more gadid catch")
# # lines(1991:2039,mirA1B.f2.infa, col="red", lwd=2)
# # lines(1991:2039,echA1B.f2.infa, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f2.infa, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f3 - more flatfish catch scenario
# cccA1B.f3.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f3.infa[i] <- sum(cccA1B.f3.91.add$annual_Biomass[i,Infauna])
# mirA1B.f3.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f3.infa[i] <- sum(mirA1B.f3.91.add$annual_Biomass[i,Infauna])
# echA1B.f3.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f3.infa[i] <- sum(echA1B.f3.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass
# meanA1B.f3.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f3.infa[i] <- mean(c(cccA1B.f3.infa[i],mirA1B.f3.infa[i],echA1B.f3.infa[i]))
# }
# rownames(meanA1B.f3.infa) <- 1991:2039
# colnames(meanA1B.f3.infa) <- "Infauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f3.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f3.infa)),
# #      ylab="Biomass (t/km^2)", main="Infauna SRES A1B-more flatfish catch")
# # lines(1991:2039,mirA1B.f3.infa, col="red", lwd=2)
# # lines(1991:2039,echA1B.f3.infa, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f3.infa, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f4 - no fishing scenario
# cccA1B.f4.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f4.infa[i] <- sum(cccA1B.f4.91.add$annual_Biomass[i,Infauna])
# mirA1B.f4.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f4.infa[i] <- sum(mirA1B.f4.91.add$annual_Biomass[i,Infauna])
# echA1B.f4.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f4.infa[i] <- sum(echA1B.f4.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass
# meanA1B.f4.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f4.infa[i] <- mean(c(cccA1B.f4.infa[i],mirA1B.f4.infa[i],echA1B.f4.infa[i]))
# }
# rownames(meanA1B.f4.infa) <- 1991:2039
# colnames(meanA1B.f4.infa) <- "Infauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f4.infa, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f4.infa)),
# #      ylab="Biomass (t/km^2)", main="Infauna SRES A1B-no fishing")
# # lines(1991:2039,mirA1B.f4.infa, col="red", lwd=2)
# # lines(1991:2039,echA1B.f4.infa, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f4.infa, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f5 - ABC scenario
# cccA1B.f5.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f5.infa[i] <- sum(cccA1B.f5.91.add$annual_Biomass[i,Infauna])
# mirA1B.f5.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f5.infa[i] <- sum(mirA1B.f5.91.add$annual_Biomass[i,Infauna])
# echA1B.f5.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f5.infa[i] <- sum(echA1B.f5.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass
# meanA1B.f5.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f5.infa[i] <- mean(c(cccA1B.f5.infa[i],mirA1B.f5.infa[i],echA1B.f5.infa[i]))
# }
# rownames(meanA1B.f5.infa) <- 1991:2039
# colnames(meanA1B.f5.infa) <- "Infauna"
# 
# # f6 - F_equil scenario
# cccA1B.f6.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f6.infa[i] <- sum(cccA1B.f6.91.add$annual_Biomass[i,Infauna])
# mirA1B.f6.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f6.infa[i] <- sum(mirA1B.f6.91.add$annual_Biomass[i,Infauna])
# echA1B.f6.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f6.infa[i] <- sum(echA1B.f6.91.add$annual_Biomass[i,Infauna])
# # calculate a vector of mean guild biomass
# meanA1B.f6.infa <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f6.infa[i] <- mean(c(cccA1B.f6.infa[i],mirA1B.f6.infa[i],echA1B.f6.infa[i]))
# }
# rownames(meanA1B.f6.infa) <- 1991:2039
# colnames(meanA1B.f6.infa) <- "Infauna"
# 
# 
# # Structural.epifauna ---------- ---------- ---------- ---------- #
# # Status-quo
# cccA1B.f1.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f1.sepi[i] <- sum(cccA1B.f1.91.add$annual_Biomass[i,Structural.epifauna])
# mirA1B.f1.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f1.sepi[i] <- sum(mirA1B.f1.91.add$annual_Biomass[i,Structural.epifauna])
# echA1B.f1.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f1.sepi[i] <- sum(echA1B.f1.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f1.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f1.sepi[i] <- mean(c(cccA1B.f1.sepi[i],mirA1B.f1.sepi[i],echA1B.f1.sepi[i]))
# }
# rownames(meanA1B.f1.sepi) <- 1991:2039
# colnames(meanA1B.f1.sepi) <- "Structural.epifauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f1.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f1.sepi)),
# #      ylab="Biomass (t/km^2)", main="Structural.epifauna SRES A1B-SQ")
# # lines(1991:2039,mirA1B.f1.sepi, col="red", lwd=2)
# # lines(1991:2039,echA1B.f1.sepi, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f1.sepi, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f2 - more gadid catch scenario
# cccA1B.f2.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f2.sepi[i] <- sum(cccA1B.f2.91.add$annual_Biomass[i,Structural.epifauna])
# mirA1B.f2.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f2.sepi[i] <- sum(mirA1B.f2.91.add$annual_Biomass[i,Structural.epifauna])
# echA1B.f2.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f2.sepi[i] <- sum(echA1B.f2.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f2.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f2.sepi[i] <- mean(c(cccA1B.f2.sepi[i],mirA1B.f2.sepi[i],echA1B.f2.sepi[i]))
# }
# rownames(meanA1B.f2.sepi) <- 1991:2039
# colnames(meanA1B.f2.sepi) <- "Structural.epifauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f2.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f2.sepi)),
# #      ylab="Biomass (t/km^2)", main="Structural.epifauna SRES A1B-more gadid catch")
# # lines(1991:2039,mirA1B.f2.sepi, col="red", lwd=2)
# # lines(1991:2039,echA1B.f2.sepi, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f2.sepi, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f3 - more flatfish catch scenario
# cccA1B.f3.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f3.sepi[i] <- sum(cccA1B.f3.91.add$annual_Biomass[i,Structural.epifauna])
# mirA1B.f3.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f3.sepi[i] <- sum(mirA1B.f3.91.add$annual_Biomass[i,Structural.epifauna])
# echA1B.f3.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f3.sepi[i] <- sum(echA1B.f3.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f3.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f3.sepi[i] <- mean(c(cccA1B.f3.sepi[i],mirA1B.f3.sepi[i],echA1B.f3.sepi[i]))
# }
# rownames(meanA1B.f3.sepi) <- 1991:2039
# colnames(meanA1B.f3.sepi) <- "Structural.epifauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f3.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f3.sepi)),
# #      ylab="Biomass (t/km^2)", main="Structural.epifauna SRES A1B-more flatfish catch")
# # lines(1991:2039,mirA1B.f3.sepi, col="red", lwd=2)
# # lines(1991:2039,echA1B.f3.sepi, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f3.sepi, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f4 - no fishing scenario
# cccA1B.f4.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f4.sepi[i] <- sum(cccA1B.f4.91.add$annual_Biomass[i,Structural.epifauna])
# mirA1B.f4.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f4.sepi[i] <- sum(mirA1B.f4.91.add$annual_Biomass[i,Structural.epifauna])
# echA1B.f4.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f4.sepi[i] <- sum(echA1B.f4.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f4.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f4.sepi[i] <- mean(c(cccA1B.f4.sepi[i],mirA1B.f4.sepi[i],echA1B.f4.sepi[i]))
# }
# rownames(meanA1B.f4.sepi) <- 1991:2039
# colnames(meanA1B.f4.sepi) <- "Structural.epifauna"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f4.sepi, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f4.sepi)),
# #      ylab="Biomass (t/km^2)", main="Structural.epifauna SRES A1B-no fishing")
# # lines(1991:2039,mirA1B.f4.sepi, col="red", lwd=2)
# # lines(1991:2039,echA1B.f4.sepi, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f4.sepi, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f5 - ABC scenario
# cccA1B.f5.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f5.sepi[i] <- sum(cccA1B.f5.91.add$annual_Biomass[i,Structural.epifauna])
# mirA1B.f5.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f5.sepi[i] <- sum(mirA1B.f5.91.add$annual_Biomass[i,Structural.epifauna])
# echA1B.f5.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f5.sepi[i] <- sum(echA1B.f5.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f5.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f5.sepi[i] <- mean(c(cccA1B.f5.sepi[i],mirA1B.f5.sepi[i],echA1B.f5.sepi[i]))
# }
# rownames(meanA1B.f5.sepi) <- 1991:2039
# colnames(meanA1B.f5.sepi) <- "Structural.epifauna"
# 
# # f6 - F_equil scenario
# cccA1B.f6.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f6.sepi[i] <- sum(cccA1B.f6.91.add$annual_Biomass[i,Structural.epifauna])
# mirA1B.f6.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f6.sepi[i] <- sum(mirA1B.f6.91.add$annual_Biomass[i,Structural.epifauna])
# echA1B.f6.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f6.sepi[i] <- sum(echA1B.f6.91.add$annual_Biomass[i,Structural.epifauna])
# # calculate a vector of mean guild biomass
# meanA1B.f6.sepi <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f6.sepi[i] <- mean(c(cccA1B.f6.sepi[i],mirA1B.f6.sepi[i],echA1B.f6.sepi[i]))
# }
# rownames(meanA1B.f6.sepi) <- 1991:2039
# colnames(meanA1B.f6.sepi) <- "Structural.epifauna"
# 
# 
# # Shrimp ---------- ---------- ---------- ---------- #
# # Status-quo
# cccA1B.f1.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f1.shmp[i] <- sum(cccA1B.f1.91.add$annual_Biomass[i,Shrimp])
# mirA1B.f1.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f1.shmp[i] <- sum(mirA1B.f1.91.add$annual_Biomass[i,Shrimp])
# echA1B.f1.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f1.shmp[i] <- sum(echA1B.f1.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass
# meanA1B.f1.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f1.shmp[i] <- mean(c(cccA1B.f1.shmp[i],mirA1B.f1.shmp[i],echA1B.f1.shmp[i]))
# }
# rownames(meanA1B.f1.shmp) <- 1991:2039
# colnames(meanA1B.f1.shmp) <- "Shrimp"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f1.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f1.shmp)),
# #      ylab="Biomass (t/km^2)", main="Shrimp SRES A1B-SQ")
# # lines(1991:2039,mirA1B.f1.shmp, col="red", lwd=2)
# # lines(1991:2039,echA1B.f1.shmp, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f1.shmp, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f2 - more gadid catch scenario
# cccA1B.f2.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f2.shmp[i] <- sum(cccA1B.f2.91.add$annual_Biomass[i,Shrimp])
# mirA1B.f2.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f2.shmp[i] <- sum(mirA1B.f2.91.add$annual_Biomass[i,Shrimp])
# echA1B.f2.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f2.shmp[i] <- sum(echA1B.f2.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass
# meanA1B.f2.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f2.shmp[i] <- mean(c(cccA1B.f2.shmp[i],mirA1B.f2.shmp[i],echA1B.f2.shmp[i]))
# }
# rownames(meanA1B.f2.shmp) <- 1991:2039
# colnames(meanA1B.f2.shmp) <- "Shrimp"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f2.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f2.shmp)),
# #      ylab="Biomass (t/km^2)", main="Shrimp SRES A1B-more gadid catch")
# # lines(1991:2039,mirA1B.f2.shmp, col="red", lwd=2)
# # lines(1991:2039,echA1B.f2.shmp, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f2.shmp, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f3 - more flatfish catch scenario
# cccA1B.f3.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f3.shmp[i] <- sum(cccA1B.f3.91.add$annual_Biomass[i,Shrimp])
# mirA1B.f3.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f3.shmp[i] <- sum(mirA1B.f3.91.add$annual_Biomass[i,Shrimp])
# echA1B.f3.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f3.shmp[i] <- sum(echA1B.f3.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass
# meanA1B.f3.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f3.shmp[i] <- mean(c(cccA1B.f3.shmp[i],mirA1B.f3.shmp[i],echA1B.f3.shmp[i]))
# }
# rownames(meanA1B.f3.shmp) <- 1991:2039
# colnames(meanA1B.f3.shmp) <- "Shrimp"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f3.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(cccA1B.f3.shmp)),
# #      ylab="Biomass (t/km^2)", main="Shrimp SRES A1B-more flatfish catch")
# # lines(1991:2039,mirA1B.f3.shmp, col="red", lwd=2)
# # lines(1991:2039,echA1B.f3.shmp, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f3.shmp, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f4 - no fishing scenario
# cccA1B.f4.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f4.shmp[i] <- sum(cccA1B.f4.91.add$annual_Biomass[i,Shrimp])
# mirA1B.f4.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f4.shmp[i] <- sum(mirA1B.f4.91.add$annual_Biomass[i,Shrimp])
# echA1B.f4.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f4.shmp[i] <- sum(echA1B.f4.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass
# meanA1B.f4.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f4.shmp[i] <- mean(c(cccA1B.f4.shmp[i],mirA1B.f4.shmp[i],echA1B.f4.shmp[i]))
# }
# rownames(meanA1B.f4.shmp) <- 1991:2039
# colnames(meanA1B.f4.shmp) <- "Shrimp"
# # Plot it to double check
# # plot(1991:2039,cccA1B.f4.shmp, type='l', col="deepskyblue", lwd=2, ylim=c(0,max(echA1B.f4.shmp)),
# #      ylab="Biomass (t/km^2)", main="Shrimp SRES A1B-no fishing")
# # lines(1991:2039,mirA1B.f4.shmp, col="red", lwd=2)
# # lines(1991:2039,echA1B.f4.shmp, col="purple", lwd=2)
# # lines(1991:2039,meanA1B.f4.shmp, col="gray50", lwd=2)
# # abline(v=c(2017), lty=2, col="gray50", lwd=2)
# 
# # f5 - ABC scenario
# cccA1B.f5.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f5.shmp[i] <- sum(cccA1B.f5.91.add$annual_Biomass[i,Shrimp])
# mirA1B.f5.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f5.shmp[i] <- sum(mirA1B.f5.91.add$annual_Biomass[i,Shrimp])
# echA1B.f5.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f5.shmp[i] <- sum(echA1B.f5.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass
# meanA1B.f5.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f5.shmp[i] <- mean(c(cccA1B.f5.shmp[i],mirA1B.f5.shmp[i],echA1B.f5.shmp[i]))
# }
# rownames(meanA1B.f5.shmp) <- 1991:2039
# colnames(meanA1B.f5.shmp) <- "Shrimp"
# 
# # f6 - F_equil scenario
# cccA1B.f6.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) cccA1B.f6.shmp[i] <- sum(cccA1B.f6.91.add$annual_Biomass[i,Shrimp])
# mirA1B.f6.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mirA1B.f6.shmp[i] <- sum(mirA1B.f6.91.add$annual_Biomass[i,Shrimp])
# echA1B.f6.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) echA1B.f6.shmp[i] <- sum(echA1B.f6.91.add$annual_Biomass[i,Shrimp])
# # calculate a vector of mean guild biomass
# meanA1B.f6.shmp <- matrix(nrow=49,ncol=1)
# for (i in 1:49) {
#   meanA1B.f6.shmp[i] <- mean(c(cccA1B.f6.shmp[i],mirA1B.f6.shmp[i],echA1B.f6.shmp[i]))
# }
# rownames(meanA1B.f6.shmp) <- 1991:2039
# colnames(meanA1B.f6.shmp) <- "Shrimp"





################################################################################
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
################################################################################

################################################################################
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
################################################################################

# More ACLIM plots

# Guild biomass plots using a shaded range
# And using the workspace ACLIM_EBS_11_01_2019.RData

rcp.yrs <- 1991:2099
a1b.yrs <- 1991:2039

# ---------------------------------------------------------------------------- #
# Apex predator ----- f1 *Status quo*
# RCP 4.5
# Everything up through 2080
apex.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(apex.45.f1.80) <- c("gfd","mir","ces")
row.names(apex.45.f1.80) <- 1991:2080
apex.45.f1.80[,1] <- gfd45.f1.apex[1:90]
apex.45.f1.80[,2] <- mir45.f1.apex[1:90]
apex.45.f1.80[,3] <- ces45.f1.apex
# head(apex.45.f1.80)
apex.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) apex.45.f1.80.up[i] <- max(apex.45.f1.80[i,])
apex.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) apex.45.f1.80.lo[i] <- min(apex.45.f1.80[i,])
# Everything from 2081-2099
apex.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(apex.45.f1.99) <- c("gfd","mir")
row.names(apex.45.f1.99) <- 2081:2099
apex.45.f1.99[,1] <- gfd45.f1.apex[91:109]
apex.45.f1.99[,2] <- mir45.f1.apex[91:109]
# head(apex.45.f1.99)
apex.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) apex.45.f1.99.up[i] <- max(apex.45.f1.99[i,])
apex.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) apex.45.f1.99.lo[i] <- min(apex.45.f1.99[i,])
# now append these two time periods
apex.45.f1.up <- c(apex.45.f1.80.up,apex.45.f1.99.up)
apex.45.f1.lo <- c(apex.45.f1.80.lo,apex.45.f1.99.lo)

# RCP 8.5
apex.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(apex.85.f1) <- c("gfd","mir","ces")
row.names(apex.85.f1) <- 1991:2099
apex.85.f1[,1] <- gfd85.f1.apex
apex.85.f1[,2] <- mir85.f1.apex
apex.85.f1[,3] <- ces85.f1.apex
# head(apex.85.f1)
apex.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) apex.85.f1.up[i] <- max(apex.85.f1[i,])
apex.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) apex.85.f1.lo[i] <- min(apex.85.f1[i,])

# # SRES A1B
# apex.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(apex.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(apex.a1b.f1) <- 1991:2039
# apex.a1b.f1[,1] <- cccA1B.f1.apex
# apex.a1b.f1[,2] <- echA1B.f1.apex
# apex.a1b.f1[,3] <- mirA1B.f1.apex
# # head(apex.a1b.f1)
# apex.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) apex.a1b.f1.up[i] <- max(apex.a1b.f1[i,])
# apex.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) apex.a1b.f1.lo[i] <- min(apex.a1b.f1[i,])

# Apex.predator ----- f2 *more gadid catch*
# RCP 4.5
# Everything up through 2080
apex.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(apex.45.f2.80) <- c("gfd","mir","ces")
row.names(apex.45.f2.80) <- 1991:2080
apex.45.f2.80[,1] <- gfd45.f2.apex[1:90]
apex.45.f2.80[,2] <- mir45.f2.apex[1:90]
apex.45.f2.80[,3] <- ces45.f2.apex
# head(apex.45.f2.80)
apex.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) apex.45.f2.80.up[i] <- max(apex.45.f2.80[i,])
apex.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) apex.45.f2.80.lo[i] <- min(apex.45.f2.80[i,])
# Everything from 2081-2099
apex.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(apex.45.f2.99) <- c("gfd","mir")
row.names(apex.45.f2.99) <- 2081:2099
apex.45.f2.99[,1] <- gfd45.f2.apex[91:109]
apex.45.f2.99[,2] <- mir45.f2.apex[91:109]
# head(apex.45.f2.99)
apex.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) apex.45.f2.99.up[i] <- max(apex.45.f2.99[i,])
apex.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) apex.45.f2.99.lo[i] <- min(apex.45.f2.99[i,])
# now append these two time periods
apex.45.f2.up <- c(apex.45.f2.80.up,apex.45.f2.99.up)
apex.45.f2.lo <- c(apex.45.f2.80.lo,apex.45.f2.99.lo)

# RCP 8.5
apex.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(apex.85.f2) <- c("gfd","mir","ces")
row.names(apex.85.f2) <- 1991:2099
apex.85.f2[,1] <- gfd85.f2.apex
apex.85.f2[,2] <- mir85.f2.apex
apex.85.f2[,3] <- ces85.f2.apex
# head(apex.85.f2)
apex.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) apex.85.f2.up[i] <- max(apex.85.f2[i,])
apex.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) apex.85.f2.lo[i] <- min(apex.85.f2[i,])

# # SRES A1B
# apex.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(apex.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(apex.a1b.f2) <- 1991:2039
# apex.a1b.f2[,1] <- cccA1B.f2.apex
# apex.a1b.f2[,2] <- echA1B.f2.apex
# apex.a1b.f2[,3] <- mirA1B.f2.apex
# # head(apex.a1b.f2)
# apex.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) apex.a1b.f2.up[i] <- max(apex.a1b.f2[i,])
# apex.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) apex.a1b.f2.lo[i] <- min(apex.a1b.f2[i,])

# Apex.predator ----- f3 *more flatfish catch*
# RCP 4.5
# Everything up through 2080
apex.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(apex.45.f3.80) <- c("gfd","mir","ces")
row.names(apex.45.f3.80) <- 1991:2080
apex.45.f3.80[,1] <- gfd45.f3.apex[1:90]
apex.45.f3.80[,2] <- mir45.f3.apex[1:90]
apex.45.f3.80[,3] <- ces45.f3.apex
# head(apex.45.f3.80)
apex.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) apex.45.f3.80.up[i] <- max(apex.45.f3.80[i,])
apex.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) apex.45.f3.80.lo[i] <- min(apex.45.f3.80[i,])
# Everything from 2081-2099
apex.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(apex.45.f3.99) <- c("gfd","mir")
row.names(apex.45.f3.99) <- 2081:2099
apex.45.f3.99[,1] <- gfd45.f3.apex[91:109]
apex.45.f3.99[,2] <- mir45.f3.apex[91:109]
# head(apex.45.f3.99)
apex.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) apex.45.f3.99.up[i] <- max(apex.45.f3.99[i,])
apex.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) apex.45.f3.99.lo[i] <- min(apex.45.f3.99[i,])
# now append these two time periods
apex.45.f3.up <- c(apex.45.f3.80.up,apex.45.f3.99.up)
apex.45.f3.lo <- c(apex.45.f3.80.lo,apex.45.f3.99.lo)

# RCP 8.5
apex.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(apex.85.f3) <- c("gfd","mir","ces")
row.names(apex.85.f3) <- 1991:2099
apex.85.f3[,1] <- gfd85.f3.apex
apex.85.f3[,2] <- mir85.f3.apex
apex.85.f3[,3] <- ces85.f3.apex
# head(apex.85.f3)
apex.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) apex.85.f3.up[i] <- max(apex.85.f3[i,])
apex.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) apex.85.f3.lo[i] <- min(apex.85.f3[i,])

# # SRES A1B
# apex.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(apex.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(apex.a1b.f3) <- 1991:2039
# apex.a1b.f3[,1] <- cccA1B.f3.apex
# apex.a1b.f3[,2] <- echA1B.f3.apex
# apex.a1b.f3[,3] <- mirA1B.f3.apex
# # head(apex.a1b.f3)
# apex.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) apex.a1b.f3.up[i] <- max(apex.a1b.f3[i,])
# apex.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) apex.a1b.f3.lo[i] <- min(apex.a1b.f3[i,])

# Apex.predator ----- f4 *no fishing*
# RCP 4.5
# Everything up through 2080
apex.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(apex.45.f4.80) <- c("gfd","mir","ces")
row.names(apex.45.f4.80) <- 1991:2080
apex.45.f4.80[,1] <- gfd45.f4.apex[1:90]
apex.45.f4.80[,2] <- mir45.f4.apex[1:90]
apex.45.f4.80[,3] <- ces45.f4.apex
# head(apex.45.f4.80)
apex.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) apex.45.f4.80.up[i] <- max(apex.45.f4.80[i,])
apex.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) apex.45.f4.80.lo[i] <- min(apex.45.f4.80[i,])
# Everything from 2081-2099
apex.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(apex.45.f4.99) <- c("gfd","mir")
row.names(apex.45.f4.99) <- 2081:2099
apex.45.f4.99[,1] <- gfd45.f4.apex[91:109]
apex.45.f4.99[,2] <- mir45.f4.apex[91:109]
# head(apex.45.f4.99)
apex.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) apex.45.f4.99.up[i] <- max(apex.45.f4.99[i,])
apex.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) apex.45.f4.99.lo[i] <- min(apex.45.f4.99[i,])
# now append these two time periods
apex.45.f4.up <- c(apex.45.f4.80.up,apex.45.f4.99.up)
apex.45.f4.lo <- c(apex.45.f4.80.lo,apex.45.f4.99.lo)

# RCP 8.5
apex.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(apex.85.f4) <- c("gfd","mir","ces")
row.names(apex.85.f4) <- 1991:2099
apex.85.f4[,1] <- gfd85.f4.apex
apex.85.f4[,2] <- mir85.f4.apex
apex.85.f4[,3] <- ces85.f4.apex
# head(apex.85.f4)
apex.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) apex.85.f4.up[i] <- max(apex.85.f4[i,])
apex.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) apex.85.f4.lo[i] <- min(apex.85.f4[i,])

# # SRES A1B
# apex.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(apex.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(apex.a1b.f4) <- 1991:2039
# apex.a1b.f4[,1] <- cccA1B.f4.apex
# apex.a1b.f4[,2] <- echA1B.f4.apex
# apex.a1b.f4[,3] <- mirA1B.f4.apex
# # head(apex.a1b.f4)
# apex.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) apex.a1b.f4.up[i] <- max(apex.a1b.f4[i,])
# apex.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) apex.a1b.f4.lo[i] <- min(apex.a1b.f4[i,])

# # Apex.predator ----- f5 *ABC*
# # RCP 4.5
# # Everything up through 2080
# apex.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(apex.45.f5.80) <- c("gfd","mir","ces")
# row.names(apex.45.f5.80) <- 1991:2080
# apex.45.f5.80[,1] <- gfd45.f5.apex[1:90]
# apex.45.f5.80[,2] <- mir45.f5.apex[1:90]
# apex.45.f5.80[,3] <- ces45.f5.apex
# # head(apex.45.f5.80)
# apex.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) apex.45.f5.80.up[i] <- max(apex.45.f5.80[i,])
# apex.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) apex.45.f5.80.lo[i] <- min(apex.45.f5.80[i,])
# # Everything from 2081-2099
# apex.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(apex.45.f5.99) <- c("gfd","mir")
# row.names(apex.45.f5.99) <- 2081:2099
# apex.45.f5.99[,1] <- gfd45.f5.apex[91:109]
# apex.45.f5.99[,2] <- mir45.f5.apex[91:109]
# # head(apex.45.f5.99)
# apex.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) apex.45.f5.99.up[i] <- max(apex.45.f5.99[i,])
# apex.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) apex.45.f5.99.lo[i] <- min(apex.45.f5.99[i,])
# # now append these two time periods
# apex.45.f5.up <- c(apex.45.f5.80.up,apex.45.f5.99.up)
# apex.45.f5.lo <- c(apex.45.f5.80.lo,apex.45.f5.99.lo)
# 
# # RCP 8.5
# apex.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(apex.85.f5) <- c("gfd","mir","ces")
# row.names(apex.85.f5) <- 1991:2099
# apex.85.f5[,1] <- gfd85.f5.apex
# apex.85.f5[,2] <- mir85.f5.apex
# apex.85.f5[,3] <- ces85.f5.apex
# # head(apex.85.f5)
# apex.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) apex.85.f5.up[i] <- max(apex.85.f5[i,])
# apex.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) apex.85.f5.lo[i] <- min(apex.85.f5[i,])
# 
# # # SRES A1B
# # apex.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(apex.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(apex.a1b.f5) <- 1991:2039
# # apex.a1b.f5[,1] <- cccA1B.f5.apex
# # apex.a1b.f5[,2] <- echA1B.f5.apex
# # apex.a1b.f5[,3] <- mirA1B.f5.apex
# # # head(apex.a1b.f5)
# # apex.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) apex.a1b.f5.up[i] <- max(apex.a1b.f5[i,])
# # apex.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) apex.a1b.f5.lo[i] <- min(apex.a1b.f5[i,])
# 
# # Apex.predator ----- f6 *F_equil*
# # RCP 4.5
# # Everything up through 2080
# apex.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(apex.45.f6.80) <- c("gfd","mir","ces")
# row.names(apex.45.f6.80) <- 1991:2080
# apex.45.f6.80[,1] <- gfd45.f6.apex[1:90]
# apex.45.f6.80[,2] <- mir45.f6.apex[1:90]
# apex.45.f6.80[,3] <- ces45.f6.apex
# # head(apex.45.f6.80)
# apex.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) apex.45.f6.80.up[i] <- max(apex.45.f6.80[i,])
# apex.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) apex.45.f6.80.lo[i] <- min(apex.45.f6.80[i,])
# # Everything from 2081-2099
# apex.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(apex.45.f6.99) <- c("gfd","mir")
# row.names(apex.45.f6.99) <- 2081:2099
# apex.45.f6.99[,1] <- gfd45.f6.apex[91:109]
# apex.45.f6.99[,2] <- mir45.f6.apex[91:109]
# # head(apex.45.f6.99)
# apex.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) apex.45.f6.99.up[i] <- max(apex.45.f6.99[i,])
# apex.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) apex.45.f6.99.lo[i] <- min(apex.45.f6.99[i,])
# # now append these two time periods
# apex.45.f6.up <- c(apex.45.f6.80.up,apex.45.f6.99.up)
# apex.45.f6.lo <- c(apex.45.f6.80.lo,apex.45.f6.99.lo)
# 
# # RCP 8.5
# apex.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(apex.85.f6) <- c("gfd","mir","ces")
# row.names(apex.85.f6) <- 1991:2099
# apex.85.f6[,1] <- gfd85.f6.apex
# apex.85.f6[,2] <- mir85.f6.apex
# apex.85.f6[,3] <- ces85.f6.apex
# # head(apex.85.f6)
# apex.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) apex.85.f6.up[i] <- max(apex.85.f6[i,])
# apex.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) apex.85.f6.lo[i] <- min(apex.85.f6[i,])
# 
# # # SRES A1B
# # apex.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(apex.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(apex.a1b.f6) <- 1991:2039
# # apex.a1b.f6[,1] <- cccA1B.f6.apex
# # apex.a1b.f6[,2] <- echA1B.f6.apex
# # apex.a1b.f6[,3] <- mirA1B.f6.apex
# # # head(apex.a1b.f6)
# # apex.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) apex.a1b.f6.up[i] <- max(apex.a1b.f6[i,])
# # apex.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) apex.a1b.f6.lo[i] <- min(apex.a1b.f6[i,])


# ============================================================================ #
# Benthic.forager - f1 status quo
# RCP 4.5
# Everything up through 2080
benf.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(benf.45.f1.80) <- c("gfd","mir","ces")
row.names(benf.45.f1.80) <- 1991:2080
benf.45.f1.80[,1] <- gfd45.f1.benf[1:90]
benf.45.f1.80[,2] <- mir45.f1.benf[1:90]
benf.45.f1.80[,3] <- ces45.f1.benf
# head(benf.45.f1.80)
benf.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) benf.45.f1.80.up[i] <- max(benf.45.f1.80[i,])
benf.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) benf.45.f1.80.lo[i] <- min(benf.45.f1.80[i,])
# Everything from 2081-2099
benf.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(benf.45.f1.99) <- c("gfd","mir")
row.names(benf.45.f1.99) <- 2081:2099
benf.45.f1.99[,1] <- gfd45.f1.benf[91:109]
benf.45.f1.99[,2] <- mir45.f1.benf[91:109]
# head(benf.45.f1.99)
benf.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) benf.45.f1.99.up[i] <- max(benf.45.f1.99[i,])
benf.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) benf.45.f1.99.lo[i] <- min(benf.45.f1.99[i,])
# now append these two time periods
benf.45.f1.up <- c(benf.45.f1.80.up,benf.45.f1.99.up)
benf.45.f1.lo <- c(benf.45.f1.80.lo,benf.45.f1.99.lo)

# RCP 8.5
benf.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(benf.85.f1) <- c("gfd","mir","ces")
row.names(benf.85.f1) <- 1991:2099
benf.85.f1[,1] <- gfd85.f1.benf
benf.85.f1[,2] <- mir85.f1.benf
benf.85.f1[,3] <- ces85.f1.benf
# head(benf.85.f1)
benf.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) benf.85.f1.up[i] <- max(benf.85.f1[i,])
benf.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) benf.85.f1.lo[i] <- min(benf.85.f1[i,])

# # SRES A1B
# benf.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(benf.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(benf.a1b.f1) <- 1991:2039
# benf.a1b.f1[,1] <- cccA1B.f1.benf
# benf.a1b.f1[,2] <- echA1B.f1.benf
# benf.a1b.f1[,3] <- mirA1B.f1.benf
# # head(benf.a1b.f1)
# benf.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) benf.a1b.f1.up[i] <- max(benf.a1b.f1[i,])
# benf.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) benf.a1b.f1.lo[i] <- min(benf.a1b.f1[i,])

# Benthic.forager ----- f2 *more gadid catch*
# RCP 4.5
# Everything up through 2080
benf.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(benf.45.f2.80) <- c("gfd","mir","ces")
row.names(benf.45.f2.80) <- 1991:2080
benf.45.f2.80[,1] <- gfd45.f2.benf[1:90]
benf.45.f2.80[,2] <- mir45.f2.benf[1:90]
benf.45.f2.80[,3] <- ces45.f2.benf
# head(benf.45.f2.80)
benf.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) benf.45.f2.80.up[i] <- max(benf.45.f2.80[i,])
benf.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) benf.45.f2.80.lo[i] <- min(benf.45.f2.80[i,])
# Everything from 2081-2099
benf.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(benf.45.f2.99) <- c("gfd","mir")
row.names(benf.45.f2.99) <- 2081:2099
benf.45.f2.99[,1] <- gfd45.f2.benf[91:109]
benf.45.f2.99[,2] <- mir45.f2.benf[91:109]
# head(benf.45.f2.99)
benf.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) benf.45.f2.99.up[i] <- max(benf.45.f2.99[i,])
benf.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) benf.45.f2.99.lo[i] <- min(benf.45.f2.99[i,])
# now append these two time periods
benf.45.f2.up <- c(benf.45.f2.80.up,benf.45.f2.99.up)
benf.45.f2.lo <- c(benf.45.f2.80.lo,benf.45.f2.99.lo)

# RCP 8.5
benf.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(benf.85.f2) <- c("gfd","mir","ces")
row.names(benf.85.f2) <- 1991:2099
benf.85.f2[,1] <- gfd85.f2.benf
benf.85.f2[,2] <- mir85.f2.benf
benf.85.f2[,3] <- ces85.f2.benf
# head(benf.85.f2)
benf.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) benf.85.f2.up[i] <- max(benf.85.f2[i,])
benf.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) benf.85.f2.lo[i] <- min(benf.85.f2[i,])

# # SRES A1B
# benf.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(benf.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(benf.a1b.f2) <- 1991:2039
# benf.a1b.f2[,1] <- cccA1B.f2.benf
# benf.a1b.f2[,2] <- echA1B.f2.benf
# benf.a1b.f2[,3] <- mirA1B.f2.benf
# # head(benf.a1b.f2)
# benf.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) benf.a1b.f2.up[i] <- max(benf.a1b.f2[i,])
# benf.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) benf.a1b.f2.lo[i] <- min(benf.a1b.f2[i,])

# Benthic.forager ----- f3 *more flatfish catch*
# RCP 4.5
# Everything up through 2080
benf.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(benf.45.f3.80) <- c("gfd","mir","ces")
row.names(benf.45.f3.80) <- 1991:2080
benf.45.f3.80[,1] <- gfd45.f3.benf[1:90]
benf.45.f3.80[,2] <- mir45.f3.benf[1:90]
benf.45.f3.80[,3] <- ces45.f3.benf
# head(benf.45.f3.80)
benf.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) benf.45.f3.80.up[i] <- max(benf.45.f3.80[i,])
benf.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) benf.45.f3.80.lo[i] <- min(benf.45.f3.80[i,])
# Everything from 2081-2099
benf.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(benf.45.f3.99) <- c("gfd","mir")
row.names(benf.45.f3.99) <- 2081:2099
benf.45.f3.99[,1] <- gfd45.f3.benf[91:109]
benf.45.f3.99[,2] <- mir45.f3.benf[91:109]
# head(benf.45.f3.99)
benf.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) benf.45.f3.99.up[i] <- max(benf.45.f3.99[i,])
benf.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) benf.45.f3.99.lo[i] <- min(benf.45.f3.99[i,])
# now append these two time periods
benf.45.f3.up <- c(benf.45.f3.80.up,benf.45.f3.99.up)
benf.45.f3.lo <- c(benf.45.f3.80.lo,benf.45.f3.99.lo)

# RCP 8.5
benf.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(benf.85.f3) <- c("gfd","mir","ces")
row.names(benf.85.f3) <- 1991:2099
benf.85.f3[,1] <- gfd85.f3.benf
benf.85.f3[,2] <- mir85.f3.benf
benf.85.f3[,3] <- ces85.f3.benf
# head(benf.85.f3)
benf.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) benf.85.f3.up[i] <- max(benf.85.f3[i,])
benf.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) benf.85.f3.lo[i] <- min(benf.85.f3[i,])

# # SRES A1B
# benf.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(benf.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(benf.a1b.f3) <- 1991:2039
# benf.a1b.f3[,1] <- cccA1B.f3.benf
# benf.a1b.f3[,2] <- echA1B.f3.benf
# benf.a1b.f3[,3] <- mirA1B.f3.benf
# # head(benf.a1b.f3)
# benf.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) benf.a1b.f3.up[i] <- max(benf.a1b.f3[i,])
# benf.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) benf.a1b.f3.lo[i] <- min(benf.a1b.f3[i,])

# Benthic.forager ----- f4 *no fishing*
# RCP 4.5
# Everything up through 2080
benf.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(benf.45.f4.80) <- c("gfd","mir","ces")
row.names(benf.45.f4.80) <- 1991:2080
benf.45.f4.80[,1] <- gfd45.f4.benf[1:90]
benf.45.f4.80[,2] <- mir45.f4.benf[1:90]
benf.45.f4.80[,3] <- ces45.f4.benf
# head(benf.45.f4.80)
benf.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) benf.45.f4.80.up[i] <- max(benf.45.f4.80[i,])
benf.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) benf.45.f4.80.lo[i] <- min(benf.45.f4.80[i,])
# Everything from 2081-2099
benf.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(benf.45.f4.99) <- c("gfd","mir")
row.names(benf.45.f4.99) <- 2081:2099
benf.45.f4.99[,1] <- gfd45.f4.benf[91:109]
benf.45.f4.99[,2] <- mir45.f4.benf[91:109]
# head(benf.45.f4.99)
benf.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) benf.45.f4.99.up[i] <- max(benf.45.f4.99[i,])
benf.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) benf.45.f4.99.lo[i] <- min(benf.45.f4.99[i,])
# now append these two time periods
benf.45.f4.up <- c(benf.45.f4.80.up,benf.45.f4.99.up)
benf.45.f4.lo <- c(benf.45.f4.80.lo,benf.45.f4.99.lo)

# RCP 8.5
benf.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(benf.85.f4) <- c("gfd","mir","ces")
row.names(benf.85.f4) <- 1991:2099
benf.85.f4[,1] <- gfd85.f4.benf
benf.85.f4[,2] <- mir85.f4.benf
benf.85.f4[,3] <- ces85.f4.benf
# head(benf.85.f4)
benf.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) benf.85.f4.up[i] <- max(benf.85.f4[i,])
benf.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) benf.85.f4.lo[i] <- min(benf.85.f4[i,])

# # SRES A1B
# benf.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(benf.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(benf.a1b.f4) <- 1991:2039
# benf.a1b.f4[,1] <- cccA1B.f4.benf
# benf.a1b.f4[,2] <- echA1B.f4.benf
# benf.a1b.f4[,3] <- mirA1B.f4.benf
# # head(benf.a1b.f4)
# benf.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) benf.a1b.f4.up[i] <- max(benf.a1b.f4[i,])
# benf.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) benf.a1b.f4.lo[i] <- min(benf.a1b.f4[i,])

# # Benthic.forager ----- f5 *ABC*
# # RCP 4.5
# # Everything up through 2080
# benf.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(benf.45.f5.80) <- c("gfd","mir","ces")
# row.names(benf.45.f5.80) <- 1991:2080
# benf.45.f5.80[,1] <- gfd45.f5.benf[1:90]
# benf.45.f5.80[,2] <- mir45.f5.benf[1:90]
# benf.45.f5.80[,3] <- ces45.f5.benf
# # head(benf.45.f5.80)
# benf.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) benf.45.f5.80.up[i] <- max(benf.45.f5.80[i,])
# benf.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) benf.45.f5.80.lo[i] <- min(benf.45.f5.80[i,])
# # Everything from 2081-2099
# benf.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(benf.45.f5.99) <- c("gfd","mir")
# row.names(benf.45.f5.99) <- 2081:2099
# benf.45.f5.99[,1] <- gfd45.f5.benf[91:109]
# benf.45.f5.99[,2] <- mir45.f5.benf[91:109]
# # head(benf.45.f5.99)
# benf.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) benf.45.f5.99.up[i] <- max(benf.45.f5.99[i,])
# benf.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) benf.45.f5.99.lo[i] <- min(benf.45.f5.99[i,])
# # now append these two time periods
# benf.45.f5.up <- c(benf.45.f5.80.up,benf.45.f5.99.up)
# benf.45.f5.lo <- c(benf.45.f5.80.lo,benf.45.f5.99.lo)
# 
# # RCP 8.5
# benf.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(benf.85.f5) <- c("gfd","mir","ces")
# row.names(benf.85.f5) <- 1991:2099
# benf.85.f5[,1] <- gfd85.f5.benf
# benf.85.f5[,2] <- mir85.f5.benf
# benf.85.f5[,3] <- ces85.f5.benf
# # head(benf.85.f5)
# benf.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) benf.85.f5.up[i] <- max(benf.85.f5[i,])
# benf.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) benf.85.f5.lo[i] <- min(benf.85.f5[i,])
# 
# # # SRES A1B
# # benf.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(benf.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(benf.a1b.f5) <- 1991:2039
# # benf.a1b.f5[,1] <- cccA1B.f5.benf
# # benf.a1b.f5[,2] <- echA1B.f5.benf
# # benf.a1b.f5[,3] <- mirA1B.f5.benf
# # # head(benf.a1b.f5)
# # benf.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) benf.a1b.f5.up[i] <- max(benf.a1b.f5[i,])
# # benf.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) benf.a1b.f5.lo[i] <- min(benf.a1b.f5[i,])
# 
# # Benthic.forager ----- f6 *F_equil*
# # RCP 4.5
# # Everything up through 2080
# benf.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(benf.45.f6.80) <- c("gfd","mir","ces")
# row.names(benf.45.f6.80) <- 1991:2080
# benf.45.f6.80[,1] <- gfd45.f6.benf[1:90]
# benf.45.f6.80[,2] <- mir45.f6.benf[1:90]
# benf.45.f6.80[,3] <- ces45.f6.benf
# # head(benf.45.f6.80)
# benf.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) benf.45.f6.80.up[i] <- max(benf.45.f6.80[i,])
# benf.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) benf.45.f6.80.lo[i] <- min(benf.45.f6.80[i,])
# # Everything from 2081-2099
# benf.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(benf.45.f6.99) <- c("gfd","mir")
# row.names(benf.45.f6.99) <- 2081:2099
# benf.45.f6.99[,1] <- gfd45.f6.benf[91:109]
# benf.45.f6.99[,2] <- mir45.f6.benf[91:109]
# # head(benf.45.f6.99)
# benf.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) benf.45.f6.99.up[i] <- max(benf.45.f6.99[i,])
# benf.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) benf.45.f6.99.lo[i] <- min(benf.45.f6.99[i,])
# # now append these two time periods
# benf.45.f6.up <- c(benf.45.f6.80.up,benf.45.f6.99.up)
# benf.45.f6.lo <- c(benf.45.f6.80.lo,benf.45.f6.99.lo)
# 
# # RCP 8.5
# benf.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(benf.85.f6) <- c("gfd","mir","ces")
# row.names(benf.85.f6) <- 1991:2099
# benf.85.f6[,1] <- gfd85.f6.benf
# benf.85.f6[,2] <- mir85.f6.benf
# benf.85.f6[,3] <- ces85.f6.benf
# # head(benf.85.f6)
# benf.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) benf.85.f6.up[i] <- max(benf.85.f6[i,])
# benf.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) benf.85.f6.lo[i] <- min(benf.85.f6[i,])
# 
# # # SRES A1B
# # benf.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(benf.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(benf.a1b.f6) <- 1991:2039
# # benf.a1b.f6[,1] <- cccA1B.f6.benf
# # benf.a1b.f6[,2] <- echA1B.f6.benf
# # benf.a1b.f6[,3] <- mirA1B.f6.benf
# # # head(benf.a1b.f6)
# # benf.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) benf.a1b.f6.up[i] <- max(benf.a1b.f6[i,])
# # benf.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) benf.a1b.f6.lo[i] <- min(benf.a1b.f6[i,])


# ============================================================================ #
# Motile.epifauna - f1 status quo
# RCP 4.5
# Everything up through 2080
mote.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mote.45.f1.80) <- c("gfd","mir","ces")
row.names(mote.45.f1.80) <- 1991:2080
mote.45.f1.80[,1] <- gfd45.f1.mote[1:90]
mote.45.f1.80[,2] <- mir45.f1.mote[1:90]
mote.45.f1.80[,3] <- ces45.f1.mote
# head(mote.45.f1.80)
mote.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mote.45.f1.80.up[i] <- max(mote.45.f1.80[i,])
mote.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mote.45.f1.80.lo[i] <- min(mote.45.f1.80[i,])
# Everything from 2081-2099
mote.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mote.45.f1.99) <- c("gfd","mir")
row.names(mote.45.f1.99) <- 2081:2099
mote.45.f1.99[,1] <- gfd45.f1.mote[91:109]
mote.45.f1.99[,2] <- mir45.f1.mote[91:109]
# head(mote.45.f1.99)
mote.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mote.45.f1.99.up[i] <- max(mote.45.f1.99[i,])
mote.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mote.45.f1.99.lo[i] <- min(mote.45.f1.99[i,])
# now append these two time periods
mote.45.f1.up <- c(mote.45.f1.80.up,mote.45.f1.99.up)
mote.45.f1.lo <- c(mote.45.f1.80.lo,mote.45.f1.99.lo)

# RCP 8.5
mote.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mote.85.f1) <- c("gfd","mir","ces")
row.names(mote.85.f1) <- 1991:2099
mote.85.f1[,1] <- gfd85.f1.mote
mote.85.f1[,2] <- mir85.f1.mote
mote.85.f1[,3] <- ces85.f1.mote
# head(mote.85.f1)
mote.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mote.85.f1.up[i] <- max(mote.85.f1[i,])
mote.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mote.85.f1.lo[i] <- min(mote.85.f1[i,])

# # SRES A1B
# mote.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mote.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(mote.a1b.f1) <- 1991:2039
# mote.a1b.f1[,1] <- cccA1B.f1.mote
# mote.a1b.f1[,2] <- echA1B.f1.mote
# mote.a1b.f1[,3] <- mirA1B.f1.mote
# # head(mote.a1b.f1)
# mote.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mote.a1b.f1.up[i] <- max(mote.a1b.f1[i,])
# mote.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mote.a1b.f1.lo[i] <- min(mote.a1b.f1[i,])

# Motile.epifauna ----- f2 *more gadid catch*
# RCP 4.5
# Everything up through 2080
mote.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mote.45.f2.80) <- c("gfd","mir","ces")
row.names(mote.45.f2.80) <- 1991:2080
mote.45.f2.80[,1] <- gfd45.f2.mote[1:90]
mote.45.f2.80[,2] <- mir45.f2.mote[1:90]
mote.45.f2.80[,3] <- ces45.f2.mote
# head(mote.45.f2.80)
mote.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mote.45.f2.80.up[i] <- max(mote.45.f2.80[i,])
mote.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mote.45.f2.80.lo[i] <- min(mote.45.f2.80[i,])
# Everything from 2081-2099
mote.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mote.45.f2.99) <- c("gfd","mir")
row.names(mote.45.f2.99) <- 2081:2099
mote.45.f2.99[,1] <- gfd45.f2.mote[91:109]
mote.45.f2.99[,2] <- mir45.f2.mote[91:109]
# head(mote.45.f2.99)
mote.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mote.45.f2.99.up[i] <- max(mote.45.f2.99[i,])
mote.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mote.45.f2.99.lo[i] <- min(mote.45.f2.99[i,])
# now append these two time periods
mote.45.f2.up <- c(mote.45.f2.80.up,mote.45.f2.99.up)
mote.45.f2.lo <- c(mote.45.f2.80.lo,mote.45.f2.99.lo)

# RCP 8.5
mote.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mote.85.f2) <- c("gfd","mir","ces")
row.names(mote.85.f2) <- 1991:2099
mote.85.f2[,1] <- gfd85.f2.mote
mote.85.f2[,2] <- mir85.f2.mote
mote.85.f2[,3] <- ces85.f2.mote
# head(mote.85.f2)
mote.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mote.85.f2.up[i] <- max(mote.85.f2[i,])
mote.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mote.85.f2.lo[i] <- min(mote.85.f2[i,])

# # SRES A1B
# mote.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mote.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(mote.a1b.f2) <- 1991:2039
# mote.a1b.f2[,1] <- cccA1B.f2.mote
# mote.a1b.f2[,2] <- echA1B.f2.mote
# mote.a1b.f2[,3] <- mirA1B.f2.mote
# # head(mote.a1b.f2)
# mote.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mote.a1b.f2.up[i] <- max(mote.a1b.f2[i,])
# mote.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mote.a1b.f2.lo[i] <- min(mote.a1b.f2[i,])

# Motile.epifauna ----- f3 *more flatfish catch*
# RCP 4.5
# Everything up through 2080
mote.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mote.45.f3.80) <- c("gfd","mir","ces")
row.names(mote.45.f3.80) <- 1991:2080
mote.45.f3.80[,1] <- gfd45.f3.mote[1:90]
mote.45.f3.80[,2] <- mir45.f3.mote[1:90]
mote.45.f3.80[,3] <- ces45.f3.mote
# head(mote.45.f3.80)
mote.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mote.45.f3.80.up[i] <- max(mote.45.f3.80[i,])
mote.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mote.45.f3.80.lo[i] <- min(mote.45.f3.80[i,])
# Everything from 2081-2099
mote.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mote.45.f3.99) <- c("gfd","mir")
row.names(mote.45.f3.99) <- 2081:2099
mote.45.f3.99[,1] <- gfd45.f3.mote[91:109]
mote.45.f3.99[,2] <- mir45.f3.mote[91:109]
# head(mote.45.f3.99)
mote.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mote.45.f3.99.up[i] <- max(mote.45.f3.99[i,])
mote.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mote.45.f3.99.lo[i] <- min(mote.45.f3.99[i,])
# now append these two time periods
mote.45.f3.up <- c(mote.45.f3.80.up,mote.45.f3.99.up)
mote.45.f3.lo <- c(mote.45.f3.80.lo,mote.45.f3.99.lo)

# RCP 8.5
mote.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mote.85.f3) <- c("gfd","mir","ces")
row.names(mote.85.f3) <- 1991:2099
mote.85.f3[,1] <- gfd85.f3.mote
mote.85.f3[,2] <- mir85.f3.mote
mote.85.f3[,3] <- ces85.f3.mote
# head(mote.85.f3)
mote.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mote.85.f3.up[i] <- max(mote.85.f3[i,])
mote.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mote.85.f3.lo[i] <- min(mote.85.f3[i,])

# # SRES A1B
# mote.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mote.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(mote.a1b.f3) <- 1991:2039
# mote.a1b.f3[,1] <- cccA1B.f3.mote
# mote.a1b.f3[,2] <- echA1B.f3.mote
# mote.a1b.f3[,3] <- mirA1B.f3.mote
# # head(mote.a1b.f3)
# mote.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mote.a1b.f3.up[i] <- max(mote.a1b.f3[i,])
# mote.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mote.a1b.f3.lo[i] <- min(mote.a1b.f3[i,])

# Motile.epifauna ----- f4 *no fishing*
# RCP 4.5
# Everything up through 2080
mote.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mote.45.f4.80) <- c("gfd","mir","ces")
row.names(mote.45.f4.80) <- 1991:2080
mote.45.f4.80[,1] <- gfd45.f4.mote[1:90]
mote.45.f4.80[,2] <- mir45.f4.mote[1:90]
mote.45.f4.80[,3] <- ces45.f4.mote
# head(mote.45.f4.80)
mote.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mote.45.f4.80.up[i] <- max(mote.45.f4.80[i,])
mote.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mote.45.f4.80.lo[i] <- min(mote.45.f4.80[i,])
# Everything from 2081-2099
mote.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mote.45.f4.99) <- c("gfd","mir")
row.names(mote.45.f4.99) <- 2081:2099
mote.45.f4.99[,1] <- gfd45.f4.mote[91:109]
mote.45.f4.99[,2] <- mir45.f4.mote[91:109]
# head(mote.45.f4.99)
mote.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mote.45.f4.99.up[i] <- max(mote.45.f4.99[i,])
mote.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mote.45.f4.99.lo[i] <- min(mote.45.f4.99[i,])
# now append these two time periods
mote.45.f4.up <- c(mote.45.f4.80.up,mote.45.f4.99.up)
mote.45.f4.lo <- c(mote.45.f4.80.lo,mote.45.f4.99.lo)

# RCP 8.5
mote.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mote.85.f4) <- c("gfd","mir","ces")
row.names(mote.85.f4) <- 1991:2099
mote.85.f4[,1] <- gfd85.f4.mote
mote.85.f4[,2] <- mir85.f4.mote
mote.85.f4[,3] <- ces85.f4.mote
# head(mote.85.f4)
mote.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mote.85.f4.up[i] <- max(mote.85.f4[i,])
mote.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mote.85.f4.lo[i] <- min(mote.85.f4[i,])

# # SRES A1B
# mote.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mote.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(mote.a1b.f4) <- 1991:2039
# mote.a1b.f4[,1] <- cccA1B.f4.mote
# mote.a1b.f4[,2] <- echA1B.f4.mote
# mote.a1b.f4[,3] <- mirA1B.f4.mote
# # head(mote.a1b.f4)
# mote.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mote.a1b.f4.up[i] <- max(mote.a1b.f4[i,])
# mote.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mote.a1b.f4.lo[i] <- min(mote.a1b.f4[i,])

# # Motile.epifauna ----- f5 *ABC*
# # RCP 4.5
# # Everything up through 2080
# mote.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(mote.45.f5.80) <- c("gfd","mir","ces")
# row.names(mote.45.f5.80) <- 1991:2080
# mote.45.f5.80[,1] <- gfd45.f5.mote[1:90]
# mote.45.f5.80[,2] <- mir45.f5.mote[1:90]
# mote.45.f5.80[,3] <- ces45.f5.mote
# # head(mote.45.f5.80)
# mote.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) mote.45.f5.80.up[i] <- max(mote.45.f5.80[i,])
# mote.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) mote.45.f5.80.lo[i] <- min(mote.45.f5.80[i,])
# # Everything from 2081-2099
# mote.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(mote.45.f5.99) <- c("gfd","mir")
# row.names(mote.45.f5.99) <- 2081:2099
# mote.45.f5.99[,1] <- gfd45.f5.mote[91:109]
# mote.45.f5.99[,2] <- mir45.f5.mote[91:109]
# # head(mote.45.f5.99)
# mote.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) mote.45.f5.99.up[i] <- max(mote.45.f5.99[i,])
# mote.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) mote.45.f5.99.lo[i] <- min(mote.45.f5.99[i,])
# # now append these two time periods
# mote.45.f5.up <- c(mote.45.f5.80.up,mote.45.f5.99.up)
# mote.45.f5.lo <- c(mote.45.f5.80.lo,mote.45.f5.99.lo)
# 
# # RCP 8.5
# mote.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(mote.85.f5) <- c("gfd","mir","ces")
# row.names(mote.85.f5) <- 1991:2099
# mote.85.f5[,1] <- gfd85.f5.mote
# mote.85.f5[,2] <- mir85.f5.mote
# mote.85.f5[,3] <- ces85.f5.mote
# # head(mote.85.f5)
# mote.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mote.85.f5.up[i] <- max(mote.85.f5[i,])
# mote.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mote.85.f5.lo[i] <- min(mote.85.f5[i,])
# 
# # # SRES A1B
# # mote.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(mote.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(mote.a1b.f5) <- 1991:2039
# # mote.a1b.f5[,1] <- cccA1B.f5.mote
# # mote.a1b.f5[,2] <- echA1B.f5.mote
# # mote.a1b.f5[,3] <- mirA1B.f5.mote
# # # head(mote.a1b.f5)
# # mote.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) mote.a1b.f5.up[i] <- max(mote.a1b.f5[i,])
# # mote.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) mote.a1b.f5.lo[i] <- min(mote.a1b.f5[i,])
# 
# # Motile.epifauna ----- f6 *F_equil*
# # RCP 4.5
# # Everything up through 2080
# mote.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(mote.45.f6.80) <- c("gfd","mir","ces")
# row.names(mote.45.f6.80) <- 1991:2080
# mote.45.f6.80[,1] <- gfd45.f6.mote[1:90]
# mote.45.f6.80[,2] <- mir45.f6.mote[1:90]
# mote.45.f6.80[,3] <- ces45.f6.mote
# # head(mote.45.f6.80)
# mote.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) mote.45.f6.80.up[i] <- max(mote.45.f6.80[i,])
# mote.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) mote.45.f6.80.lo[i] <- min(mote.45.f6.80[i,])
# # Everything from 2081-2099
# mote.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(mote.45.f6.99) <- c("gfd","mir")
# row.names(mote.45.f6.99) <- 2081:2099
# mote.45.f6.99[,1] <- gfd45.f6.mote[91:109]
# mote.45.f6.99[,2] <- mir45.f6.mote[91:109]
# # head(mote.45.f6.99)
# mote.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) mote.45.f6.99.up[i] <- max(mote.45.f6.99[i,])
# mote.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) mote.45.f6.99.lo[i] <- min(mote.45.f6.99[i,])
# # now append these two time periods
# mote.45.f6.up <- c(mote.45.f6.80.up,mote.45.f6.99.up)
# mote.45.f6.lo <- c(mote.45.f6.80.lo,mote.45.f6.99.lo)
# 
# # RCP 8.5
# mote.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(mote.85.f6) <- c("gfd","mir","ces")
# row.names(mote.85.f6) <- 1991:2099
# mote.85.f6[,1] <- gfd85.f6.mote
# mote.85.f6[,2] <- mir85.f6.mote
# mote.85.f6[,3] <- ces85.f6.mote
# # head(mote.85.f6)
# mote.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mote.85.f6.up[i] <- max(mote.85.f6[i,])
# mote.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) mote.85.f6.lo[i] <- min(mote.85.f6[i,])
# 
# # # SRES A1B
# # mote.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(mote.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(mote.a1b.f6) <- 1991:2039
# # mote.a1b.f6[,1] <- cccA1B.f6.mote
# # mote.a1b.f6[,2] <- echA1B.f6.mote
# # mote.a1b.f6[,3] <- mirA1B.f6.mote
# # # head(mote.a1b.f6)
# # mote.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) mote.a1b.f6.up[i] <- max(mote.a1b.f6[i,])
# # mote.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) mote.a1b.f6.lo[i] <- min(mote.a1b.f6[i,])


# ============================================================================ #
# Pelagic.forager - f1 status quo
# RCP 4.5
# Everything up through 2080
pelf.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pelf.45.f1.80) <- c("gfd","mir","ces")
row.names(pelf.45.f1.80) <- 1991:2080
pelf.45.f1.80[,1] <- gfd45.f1.pelf[1:90]
pelf.45.f1.80[,2] <- mir45.f1.pelf[1:90]
pelf.45.f1.80[,3] <- ces45.f1.pelf
# head(pelf.45.f1.80)
pelf.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pelf.45.f1.80.up[i] <- max(pelf.45.f1.80[i,])
pelf.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pelf.45.f1.80.lo[i] <- min(pelf.45.f1.80[i,])
# Everything from 2081-2099
pelf.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pelf.45.f1.99) <- c("gfd","mir")
row.names(pelf.45.f1.99) <- 2081:2099
pelf.45.f1.99[,1] <- gfd45.f1.pelf[91:109]
pelf.45.f1.99[,2] <- mir45.f1.pelf[91:109]
# head(pelf.45.f1.99)
pelf.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pelf.45.f1.99.up[i] <- max(pelf.45.f1.99[i,])
pelf.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pelf.45.f1.99.lo[i] <- min(pelf.45.f1.99[i,])
# now append these two time periods
pelf.45.f1.up <- c(pelf.45.f1.80.up,pelf.45.f1.99.up)
pelf.45.f1.lo <- c(pelf.45.f1.80.lo,pelf.45.f1.99.lo)

# RCP 8.5
pelf.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pelf.85.f1) <- c("gfd","mir","ces")
row.names(pelf.85.f1) <- 1991:2099
pelf.85.f1[,1] <- gfd85.f1.pelf
pelf.85.f1[,2] <- mir85.f1.pelf
pelf.85.f1[,3] <- ces85.f1.pelf
# head(pelf.85.f1)
pelf.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pelf.85.f1.up[i] <- max(pelf.85.f1[i,])
pelf.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pelf.85.f1.lo[i] <- min(pelf.85.f1[i,])

# # SRES A1B
# pelf.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pelf.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(pelf.a1b.f1) <- 1991:2039
# pelf.a1b.f1[,1] <- cccA1B.f1.pelf
# pelf.a1b.f1[,2] <- echA1B.f1.pelf
# pelf.a1b.f1[,3] <- mirA1B.f1.pelf
# # head(pelf.a1b.f1)
# pelf.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pelf.a1b.f1.up[i] <- max(pelf.a1b.f1[i,])
# pelf.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pelf.a1b.f1.lo[i] <- min(pelf.a1b.f1[i,])

# Pelagic.forager ----- f2 *more gadid catch*
# RCP 4.5
# Everything up through 2080
pelf.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pelf.45.f2.80) <- c("gfd","mir","ces")
row.names(pelf.45.f2.80) <- 1991:2080
pelf.45.f2.80[,1] <- gfd45.f2.pelf[1:90]
pelf.45.f2.80[,2] <- mir45.f2.pelf[1:90]
pelf.45.f2.80[,3] <- ces45.f2.pelf
# head(pelf.45.f2.80)
pelf.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pelf.45.f2.80.up[i] <- max(pelf.45.f2.80[i,])
pelf.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pelf.45.f2.80.lo[i] <- min(pelf.45.f2.80[i,])
# Everything from 2081-2099
pelf.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pelf.45.f2.99) <- c("gfd","mir")
row.names(pelf.45.f2.99) <- 2081:2099
pelf.45.f2.99[,1] <- gfd45.f2.pelf[91:109]
pelf.45.f2.99[,2] <- mir45.f2.pelf[91:109]
# head(pelf.45.f2.99)
pelf.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pelf.45.f2.99.up[i] <- max(pelf.45.f2.99[i,])
pelf.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pelf.45.f2.99.lo[i] <- min(pelf.45.f2.99[i,])
# now append these two time periods
pelf.45.f2.up <- c(pelf.45.f2.80.up,pelf.45.f2.99.up)
pelf.45.f2.lo <- c(pelf.45.f2.80.lo,pelf.45.f2.99.lo)

# RCP 8.5
pelf.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pelf.85.f2) <- c("gfd","mir","ces")
row.names(pelf.85.f2) <- 1991:2099
pelf.85.f2[,1] <- gfd85.f2.pelf
pelf.85.f2[,2] <- mir85.f2.pelf
pelf.85.f2[,3] <- ces85.f2.pelf
# head(pelf.85.f2)
pelf.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pelf.85.f2.up[i] <- max(pelf.85.f2[i,])
pelf.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pelf.85.f2.lo[i] <- min(pelf.85.f2[i,])

# # SRES A1B
# pelf.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pelf.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(pelf.a1b.f2) <- 1991:2039
# pelf.a1b.f2[,1] <- cccA1B.f2.pelf
# pelf.a1b.f2[,2] <- echA1B.f2.pelf
# pelf.a1b.f2[,3] <- mirA1B.f2.pelf
# # head(pelf.a1b.f2)
# pelf.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pelf.a1b.f2.up[i] <- max(pelf.a1b.f2[i,])
# pelf.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pelf.a1b.f2.lo[i] <- min(pelf.a1b.f2[i,])

# Pelagic.forager ----- f3 *more flatfish catch*
# RCP 4.5
# Everything up through 2080
pelf.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pelf.45.f3.80) <- c("gfd","mir","ces")
row.names(pelf.45.f3.80) <- 1991:2080
pelf.45.f3.80[,1] <- gfd45.f3.pelf[1:90]
pelf.45.f3.80[,2] <- mir45.f3.pelf[1:90]
pelf.45.f3.80[,3] <- ces45.f3.pelf
# head(pelf.45.f3.80)
pelf.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pelf.45.f3.80.up[i] <- max(pelf.45.f3.80[i,])
pelf.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pelf.45.f3.80.lo[i] <- min(pelf.45.f3.80[i,])
# Everything from 2081-2099
pelf.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pelf.45.f3.99) <- c("gfd","mir")
row.names(pelf.45.f3.99) <- 2081:2099
pelf.45.f3.99[,1] <- gfd45.f3.pelf[91:109]
pelf.45.f3.99[,2] <- mir45.f3.pelf[91:109]
# head(pelf.45.f3.99)
pelf.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pelf.45.f3.99.up[i] <- max(pelf.45.f3.99[i,])
pelf.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pelf.45.f3.99.lo[i] <- min(pelf.45.f3.99[i,])
# now append these two time periods
pelf.45.f3.up <- c(pelf.45.f3.80.up,pelf.45.f3.99.up)
pelf.45.f3.lo <- c(pelf.45.f3.80.lo,pelf.45.f3.99.lo)

# RCP 8.5
pelf.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pelf.85.f3) <- c("gfd","mir","ces")
row.names(pelf.85.f3) <- 1991:2099
pelf.85.f3[,1] <- gfd85.f3.pelf
pelf.85.f3[,2] <- mir85.f3.pelf
pelf.85.f3[,3] <- ces85.f3.pelf
# head(pelf.85.f3)
pelf.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pelf.85.f3.up[i] <- max(pelf.85.f3[i,])
pelf.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pelf.85.f3.lo[i] <- min(pelf.85.f3[i,])

# # SRES A1B
# pelf.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pelf.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(pelf.a1b.f3) <- 1991:2039
# pelf.a1b.f3[,1] <- cccA1B.f3.pelf
# pelf.a1b.f3[,2] <- echA1B.f3.pelf
# pelf.a1b.f3[,3] <- mirA1B.f3.pelf
# # head(pelf.a1b.f3)
# pelf.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pelf.a1b.f3.up[i] <- max(pelf.a1b.f3[i,])
# pelf.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pelf.a1b.f3.lo[i] <- min(pelf.a1b.f3[i,])

# Pelagic.forager ----- f4 *no fishing*
# RCP 4.5
# Everything up through 2080
pelf.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pelf.45.f4.80) <- c("gfd","mir","ces")
row.names(pelf.45.f4.80) <- 1991:2080
pelf.45.f4.80[,1] <- gfd45.f4.pelf[1:90]
pelf.45.f4.80[,2] <- mir45.f4.pelf[1:90]
pelf.45.f4.80[,3] <- ces45.f4.pelf
# head(pelf.45.f4.80)
pelf.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pelf.45.f4.80.up[i] <- max(pelf.45.f4.80[i,])
pelf.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pelf.45.f4.80.lo[i] <- min(pelf.45.f4.80[i,])
# Everything from 2081-2099
pelf.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pelf.45.f4.99) <- c("gfd","mir")
row.names(pelf.45.f4.99) <- 2081:2099
pelf.45.f4.99[,1] <- gfd45.f4.pelf[91:109]
pelf.45.f4.99[,2] <- mir45.f4.pelf[91:109]
# head(pelf.45.f4.99)
pelf.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pelf.45.f4.99.up[i] <- max(pelf.45.f4.99[i,])
pelf.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pelf.45.f4.99.lo[i] <- min(pelf.45.f4.99[i,])
# now append these two time periods
pelf.45.f4.up <- c(pelf.45.f4.80.up,pelf.45.f4.99.up)
pelf.45.f4.lo <- c(pelf.45.f4.80.lo,pelf.45.f4.99.lo)

# RCP 8.5
pelf.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pelf.85.f4) <- c("gfd","mir","ces")
row.names(pelf.85.f4) <- 1991:2099
pelf.85.f4[,1] <- gfd85.f4.pelf
pelf.85.f4[,2] <- mir85.f4.pelf
pelf.85.f4[,3] <- ces85.f4.pelf
# head(pelf.85.f4)
pelf.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pelf.85.f4.up[i] <- max(pelf.85.f4[i,])
pelf.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pelf.85.f4.lo[i] <- min(pelf.85.f4[i,])

# # SRES A1B
# pelf.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pelf.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(pelf.a1b.f4) <- 1991:2039
# pelf.a1b.f4[,1] <- cccA1B.f4.pelf
# pelf.a1b.f4[,2] <- echA1B.f4.pelf
# pelf.a1b.f4[,3] <- mirA1B.f4.pelf
# # head(pelf.a1b.f4)
# pelf.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pelf.a1b.f4.up[i] <- max(pelf.a1b.f4[i,])
# pelf.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pelf.a1b.f4.lo[i] <- min(pelf.a1b.f4[i,])

# # Pelagic.forager ----- f5 *ABC*
# # RCP 4.5
# # Everything up through 2080
# pelf.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(pelf.45.f5.80) <- c("gfd","mir","ces")
# row.names(pelf.45.f5.80) <- 1991:2080
# pelf.45.f5.80[,1] <- gfd45.f5.pelf[1:90]
# pelf.45.f5.80[,2] <- mir45.f5.pelf[1:90]
# pelf.45.f5.80[,3] <- ces45.f5.pelf
# # head(pelf.45.f5.80)
# pelf.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) pelf.45.f5.80.up[i] <- max(pelf.45.f5.80[i,])
# pelf.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) pelf.45.f5.80.lo[i] <- min(pelf.45.f5.80[i,])
# # Everything from 2081-2099
# pelf.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(pelf.45.f5.99) <- c("gfd","mir")
# row.names(pelf.45.f5.99) <- 2081:2099
# pelf.45.f5.99[,1] <- gfd45.f5.pelf[91:109]
# pelf.45.f5.99[,2] <- mir45.f5.pelf[91:109]
# # head(pelf.45.f5.99)
# pelf.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) pelf.45.f5.99.up[i] <- max(pelf.45.f5.99[i,])
# pelf.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) pelf.45.f5.99.lo[i] <- min(pelf.45.f5.99[i,])
# # now append these two time periods
# pelf.45.f5.up <- c(pelf.45.f5.80.up,pelf.45.f5.99.up)
# pelf.45.f5.lo <- c(pelf.45.f5.80.lo,pelf.45.f5.99.lo)
# 
# # RCP 8.5
# pelf.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(pelf.85.f5) <- c("gfd","mir","ces")
# row.names(pelf.85.f5) <- 1991:2099
# pelf.85.f5[,1] <- gfd85.f5.pelf
# pelf.85.f5[,2] <- mir85.f5.pelf
# pelf.85.f5[,3] <- ces85.f5.pelf
# # head(pelf.85.f5)
# pelf.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) pelf.85.f5.up[i] <- max(pelf.85.f5[i,])
# pelf.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) pelf.85.f5.lo[i] <- min(pelf.85.f5[i,])
# 
# # # SRES A1B
# # pelf.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(pelf.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(pelf.a1b.f5) <- 1991:2039
# # pelf.a1b.f5[,1] <- cccA1B.f5.pelf
# # pelf.a1b.f5[,2] <- echA1B.f5.pelf
# # pelf.a1b.f5[,3] <- mirA1B.f5.pelf
# # # head(pelf.a1b.f5)
# # pelf.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) pelf.a1b.f5.up[i] <- max(pelf.a1b.f5[i,])
# # pelf.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) pelf.a1b.f5.lo[i] <- min(pelf.a1b.f5[i,])
# 
# # Pelagic.forager ----- f6 *F_equil*
# # RCP 4.5
# # Everything up through 2080
# pelf.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(pelf.45.f6.80) <- c("gfd","mir","ces")
# row.names(pelf.45.f6.80) <- 1991:2080
# pelf.45.f6.80[,1] <- gfd45.f6.pelf[1:90]
# pelf.45.f6.80[,2] <- mir45.f6.pelf[1:90]
# pelf.45.f6.80[,3] <- ces45.f6.pelf
# # head(pelf.45.f6.80)
# pelf.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) pelf.45.f6.80.up[i] <- max(pelf.45.f6.80[i,])
# pelf.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) pelf.45.f6.80.lo[i] <- min(pelf.45.f6.80[i,])
# # Everything from 2081-2099
# pelf.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(pelf.45.f6.99) <- c("gfd","mir")
# row.names(pelf.45.f6.99) <- 2081:2099
# pelf.45.f6.99[,1] <- gfd45.f6.pelf[91:109]
# pelf.45.f6.99[,2] <- mir45.f6.pelf[91:109]
# # head(pelf.45.f6.99)
# pelf.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) pelf.45.f6.99.up[i] <- max(pelf.45.f6.99[i,])
# pelf.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) pelf.45.f6.99.lo[i] <- min(pelf.45.f6.99[i,])
# # now append these two time periods
# pelf.45.f6.up <- c(pelf.45.f6.80.up,pelf.45.f6.99.up)
# pelf.45.f6.lo <- c(pelf.45.f6.80.lo,pelf.45.f6.99.lo)
# 
# # RCP 8.5
# pelf.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(pelf.85.f6) <- c("gfd","mir","ces")
# row.names(pelf.85.f6) <- 1991:2099
# pelf.85.f6[,1] <- gfd85.f6.pelf
# pelf.85.f6[,2] <- mir85.f6.pelf
# pelf.85.f6[,3] <- ces85.f6.pelf
# # head(pelf.85.f6)
# pelf.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) pelf.85.f6.up[i] <- max(pelf.85.f6[i,])
# pelf.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) pelf.85.f6.lo[i] <- min(pelf.85.f6[i,])
# 
# # # SRES A1B
# # pelf.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(pelf.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(pelf.a1b.f6) <- 1991:2039
# # pelf.a1b.f6[,1] <- cccA1B.f6.pelf
# # pelf.a1b.f6[,2] <- echA1B.f6.pelf
# # pelf.a1b.f6[,3] <- mirA1B.f6.pelf
# # # head(pelf.a1b.f6)
# # pelf.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) pelf.a1b.f6.up[i] <- max(pelf.a1b.f6[i,])
# # pelf.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) pelf.a1b.f6.lo[i] <- min(pelf.a1b.f6[i,])


# ---------------------------------------------------------------------------- #
# Infauna ----- f1 *Status quo*
# RCP 4.5
# Everything up through 2080
infa.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infa.45.f1.80) <- c("gfd","mir","ces")
row.names(infa.45.f1.80) <- 1991:2080
infa.45.f1.80[,1] <- gfd45.f1.infa[1:90]
infa.45.f1.80[,2] <- mir45.f1.infa[1:90]
infa.45.f1.80[,3] <- ces45.f1.infa
# head(infa.45.f1.80)
infa.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infa.45.f1.80.up[i] <- max(infa.45.f1.80[i,])
infa.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infa.45.f1.80.lo[i] <- min(infa.45.f1.80[i,])
# Everything from 2081-2099
infa.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infa.45.f1.99) <- c("gfd","mir")
row.names(infa.45.f1.99) <- 2081:2099
infa.45.f1.99[,1] <- gfd45.f1.infa[91:109]
infa.45.f1.99[,2] <- mir45.f1.infa[91:109]
# head(infa.45.f1.99)
infa.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infa.45.f1.99.up[i] <- max(infa.45.f1.99[i,])
infa.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infa.45.f1.99.lo[i] <- min(infa.45.f1.99[i,])
# now append these two time periods
infa.45.f1.up <- c(infa.45.f1.80.up,infa.45.f1.99.up)
infa.45.f1.lo <- c(infa.45.f1.80.lo,infa.45.f1.99.lo)

# RCP 8.5
infa.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infa.85.f1) <- c("gfd","mir","ces")
row.names(infa.85.f1) <- 1991:2099
infa.85.f1[,1] <- gfd85.f1.infa
infa.85.f1[,2] <- mir85.f1.infa
infa.85.f1[,3] <- ces85.f1.infa
# head(infa.85.f1)
infa.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infa.85.f1.up[i] <- max(infa.85.f1[i,])
infa.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infa.85.f1.lo[i] <- min(infa.85.f1[i,])

# # SRES A1B
# infa.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infa.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(infa.a1b.f1) <- 1991:2039
# infa.a1b.f1[,1] <- cccA1B.f1.infa
# infa.a1b.f1[,2] <- echA1B.f1.infa
# infa.a1b.f1[,3] <- mirA1B.f1.infa
# # head(infa.a1b.f1)
# infa.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infa.a1b.f1.up[i] <- max(infa.a1b.f1[i,])
# infa.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infa.a1b.f1.lo[i] <- min(infa.a1b.f1[i,])

# Infauna ----- f2 *more gadid catch*
# RCP 4.5
# Everything up through 2080
infa.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infa.45.f2.80) <- c("gfd","mir","ces")
row.names(infa.45.f2.80) <- 1991:2080
infa.45.f2.80[,1] <- gfd45.f2.infa[1:90]
infa.45.f2.80[,2] <- mir45.f2.infa[1:90]
infa.45.f2.80[,3] <- ces45.f2.infa
# head(infa.45.f2.80)
infa.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infa.45.f2.80.up[i] <- max(infa.45.f2.80[i,])
infa.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infa.45.f2.80.lo[i] <- min(infa.45.f2.80[i,])
# Everything from 2081-2099
infa.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infa.45.f2.99) <- c("gfd","mir")
row.names(infa.45.f2.99) <- 2081:2099
infa.45.f2.99[,1] <- gfd45.f2.infa[91:109]
infa.45.f2.99[,2] <- mir45.f2.infa[91:109]
# head(infa.45.f2.99)
infa.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infa.45.f2.99.up[i] <- max(infa.45.f2.99[i,])
infa.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infa.45.f2.99.lo[i] <- min(infa.45.f2.99[i,])
# now append these two time periods
infa.45.f2.up <- c(infa.45.f2.80.up,infa.45.f2.99.up)
infa.45.f2.lo <- c(infa.45.f2.80.lo,infa.45.f2.99.lo)

# RCP 8.5
infa.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infa.85.f2) <- c("gfd","mir","ces")
row.names(infa.85.f2) <- 1991:2099
infa.85.f2[,1] <- gfd85.f2.infa
infa.85.f2[,2] <- mir85.f2.infa
infa.85.f2[,3] <- ces85.f2.infa
# head(infa.85.f2)
infa.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infa.85.f2.up[i] <- max(infa.85.f2[i,])
infa.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infa.85.f2.lo[i] <- min(infa.85.f2[i,])

# # SRES A1B
# infa.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infa.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(infa.a1b.f2) <- 1991:2039
# infa.a1b.f2[,1] <- cccA1B.f2.infa
# infa.a1b.f2[,2] <- echA1B.f2.infa
# infa.a1b.f2[,3] <- mirA1B.f2.infa
# # head(infa.a1b.f2)
# infa.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infa.a1b.f2.up[i] <- max(infa.a1b.f2[i,])
# infa.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infa.a1b.f2.lo[i] <- min(infa.a1b.f2[i,])

# Infauna ----- f3 *more flatfish catch*
# RCP 4.5
# Everything up through 2080
infa.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infa.45.f3.80) <- c("gfd","mir","ces")
row.names(infa.45.f3.80) <- 1991:2080
infa.45.f3.80[,1] <- gfd45.f3.infa[1:90]
infa.45.f3.80[,2] <- mir45.f3.infa[1:90]
infa.45.f3.80[,3] <- ces45.f3.infa
# head(infa.45.f3.80)
infa.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infa.45.f3.80.up[i] <- max(infa.45.f3.80[i,])
infa.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infa.45.f3.80.lo[i] <- min(infa.45.f3.80[i,])
# Everything from 2081-2099
infa.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infa.45.f3.99) <- c("gfd","mir")
row.names(infa.45.f3.99) <- 2081:2099
infa.45.f3.99[,1] <- gfd45.f3.infa[91:109]
infa.45.f3.99[,2] <- mir45.f3.infa[91:109]
# head(infa.45.f3.99)
infa.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infa.45.f3.99.up[i] <- max(infa.45.f3.99[i,])
infa.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infa.45.f3.99.lo[i] <- min(infa.45.f3.99[i,])
# now append these two time periods
infa.45.f3.up <- c(infa.45.f3.80.up,infa.45.f3.99.up)
infa.45.f3.lo <- c(infa.45.f3.80.lo,infa.45.f3.99.lo)

# RCP 8.5
infa.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infa.85.f3) <- c("gfd","mir","ces")
row.names(infa.85.f3) <- 1991:2099
infa.85.f3[,1] <- gfd85.f3.infa
infa.85.f3[,2] <- mir85.f3.infa
infa.85.f3[,3] <- ces85.f3.infa
# head(infa.85.f3)
infa.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infa.85.f3.up[i] <- max(infa.85.f3[i,])
infa.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infa.85.f3.lo[i] <- min(infa.85.f3[i,])

# # SRES A1B
# infa.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infa.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(infa.a1b.f3) <- 1991:2039
# infa.a1b.f3[,1] <- cccA1B.f3.infa
# infa.a1b.f3[,2] <- echA1B.f3.infa
# infa.a1b.f3[,3] <- mirA1B.f3.infa
# # head(infa.a1b.f3)
# infa.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infa.a1b.f3.up[i] <- max(infa.a1b.f3[i,])
# infa.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infa.a1b.f3.lo[i] <- min(infa.a1b.f3[i,])

# Infauna ----- f4 *no fishing*
# RCP 4.5
# Everything up through 2080
infa.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infa.45.f4.80) <- c("gfd","mir","ces")
row.names(infa.45.f4.80) <- 1991:2080
infa.45.f4.80[,1] <- gfd45.f4.infa[1:90]
infa.45.f4.80[,2] <- mir45.f4.infa[1:90]
infa.45.f4.80[,3] <- ces45.f4.infa
# head(infa.45.f4.80)
infa.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infa.45.f4.80.up[i] <- max(infa.45.f4.80[i,])
infa.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infa.45.f4.80.lo[i] <- min(infa.45.f4.80[i,])
# Everything from 2081-2099
infa.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infa.45.f4.99) <- c("gfd","mir")
row.names(infa.45.f4.99) <- 2081:2099
infa.45.f4.99[,1] <- gfd45.f4.infa[91:109]
infa.45.f4.99[,2] <- mir45.f4.infa[91:109]
# head(infa.45.f4.99)
infa.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infa.45.f4.99.up[i] <- max(infa.45.f4.99[i,])
infa.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infa.45.f4.99.lo[i] <- min(infa.45.f4.99[i,])
# now append these two time periods
infa.45.f4.up <- c(infa.45.f4.80.up,infa.45.f4.99.up)
infa.45.f4.lo <- c(infa.45.f4.80.lo,infa.45.f4.99.lo)

# RCP 8.5
infa.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infa.85.f4) <- c("gfd","mir","ces")
row.names(infa.85.f4) <- 1991:2099
infa.85.f4[,1] <- gfd85.f4.infa
infa.85.f4[,2] <- mir85.f4.infa
infa.85.f4[,3] <- ces85.f4.infa
# head(infa.85.f4)
infa.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infa.85.f4.up[i] <- max(infa.85.f4[i,])
infa.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infa.85.f4.lo[i] <- min(infa.85.f4[i,])

# # SRES A1B
# infa.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infa.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(infa.a1b.f4) <- 1991:2039
# infa.a1b.f4[,1] <- cccA1B.f4.infa
# infa.a1b.f4[,2] <- echA1B.f4.infa
# infa.a1b.f4[,3] <- mirA1B.f4.infa
# # head(infa.a1b.f4)
# infa.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infa.a1b.f4.up[i] <- max(infa.a1b.f4[i,])
# infa.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infa.a1b.f4.lo[i] <- min(infa.a1b.f4[i,])

# # Infauna ----- f5 *ABC*
# # RCP 4.5
# # Everything up through 2080
# infa.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(infa.45.f5.80) <- c("gfd","mir","ces")
# row.names(infa.45.f5.80) <- 1991:2080
# infa.45.f5.80[,1] <- gfd45.f5.infa[1:90]
# infa.45.f5.80[,2] <- mir45.f5.infa[1:90]
# infa.45.f5.80[,3] <- ces45.f5.infa
# # head(infa.45.f5.80)
# infa.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) infa.45.f5.80.up[i] <- max(infa.45.f5.80[i,])
# infa.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) infa.45.f5.80.lo[i] <- min(infa.45.f5.80[i,])
# # Everything from 2081-2099
# infa.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(infa.45.f5.99) <- c("gfd","mir")
# row.names(infa.45.f5.99) <- 2081:2099
# infa.45.f5.99[,1] <- gfd45.f5.infa[91:109]
# infa.45.f5.99[,2] <- mir45.f5.infa[91:109]
# # head(infa.45.f5.99)
# infa.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) infa.45.f5.99.up[i] <- max(infa.45.f5.99[i,])
# infa.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) infa.45.f5.99.lo[i] <- min(infa.45.f5.99[i,])
# # now append these two time periods
# infa.45.f5.up <- c(infa.45.f5.80.up,infa.45.f5.99.up)
# infa.45.f5.lo <- c(infa.45.f5.80.lo,infa.45.f5.99.lo)
# 
# # RCP 8.5
# infa.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(infa.85.f5) <- c("gfd","mir","ces")
# row.names(infa.85.f5) <- 1991:2099
# infa.85.f5[,1] <- gfd85.f5.infa
# infa.85.f5[,2] <- mir85.f5.infa
# infa.85.f5[,3] <- ces85.f5.infa
# # head(infa.85.f5)
# infa.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) infa.85.f5.up[i] <- max(infa.85.f5[i,])
# infa.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) infa.85.f5.lo[i] <- min(infa.85.f5[i,])
# 
# # # SRES A1B
# # infa.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(infa.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(infa.a1b.f5) <- 1991:2039
# # infa.a1b.f5[,1] <- cccA1B.f5.infa
# # infa.a1b.f5[,2] <- echA1B.f5.infa
# # infa.a1b.f5[,3] <- mirA1B.f5.infa
# # # head(infa.a1b.f5)
# # infa.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) infa.a1b.f5.up[i] <- max(infa.a1b.f5[i,])
# # infa.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) infa.a1b.f5.lo[i] <- min(infa.a1b.f5[i,])
# 
# # Infauna ----- f6 *F_equil*
# # RCP 4.5
# # Everything up through 2080
# infa.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(infa.45.f6.80) <- c("gfd","mir","ces")
# row.names(infa.45.f6.80) <- 1991:2080
# infa.45.f6.80[,1] <- gfd45.f6.infa[1:90]
# infa.45.f6.80[,2] <- mir45.f6.infa[1:90]
# infa.45.f6.80[,3] <- ces45.f6.infa
# # head(infa.45.f6.80)
# infa.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) infa.45.f6.80.up[i] <- max(infa.45.f6.80[i,])
# infa.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) infa.45.f6.80.lo[i] <- min(infa.45.f6.80[i,])
# # Everything from 2081-2099
# infa.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(infa.45.f6.99) <- c("gfd","mir")
# row.names(infa.45.f6.99) <- 2081:2099
# infa.45.f6.99[,1] <- gfd45.f6.infa[91:109]
# infa.45.f6.99[,2] <- mir45.f6.infa[91:109]
# # head(infa.45.f6.99)
# infa.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) infa.45.f6.99.up[i] <- max(infa.45.f6.99[i,])
# infa.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) infa.45.f6.99.lo[i] <- min(infa.45.f6.99[i,])
# # now append these two time periods
# infa.45.f6.up <- c(infa.45.f6.80.up,infa.45.f6.99.up)
# infa.45.f6.lo <- c(infa.45.f6.80.lo,infa.45.f6.99.lo)
# 
# # RCP 8.5
# infa.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(infa.85.f6) <- c("gfd","mir","ces")
# row.names(infa.85.f6) <- 1991:2099
# infa.85.f6[,1] <- gfd85.f6.infa
# infa.85.f6[,2] <- mir85.f6.infa
# infa.85.f6[,3] <- ces85.f6.infa
# # head(infa.85.f6)
# infa.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) infa.85.f6.up[i] <- max(infa.85.f6[i,])
# infa.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) infa.85.f6.lo[i] <- min(infa.85.f6[i,])
# 
# # # SRES A1B
# # infa.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(infa.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(infa.a1b.f6) <- 1991:2039
# # infa.a1b.f6[,1] <- cccA1B.f6.infa
# # infa.a1b.f6[,2] <- echA1B.f6.infa
# # infa.a1b.f6[,3] <- mirA1B.f6.infa
# # # head(infa.a1b.f6)
# # infa.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) infa.a1b.f6.up[i] <- max(infa.a1b.f6[i,])
# # infa.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) infa.a1b.f6.lo[i] <- min(infa.a1b.f6[i,])


# ---------------------------------------------------------------------------- #
# Structural.epifauna ----- f1 *Status quo*
# RCP 4.5
# Everything up through 2080
sepi.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sepi.45.f1.80) <- c("gfd","mir","ces")
row.names(sepi.45.f1.80) <- 1991:2080
sepi.45.f1.80[,1] <- gfd45.f1.sepi[1:90]
sepi.45.f1.80[,2] <- mir45.f1.sepi[1:90]
sepi.45.f1.80[,3] <- ces45.f1.sepi
# head(sepi.45.f1.80)
sepi.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sepi.45.f1.80.up[i] <- max(sepi.45.f1.80[i,])
sepi.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sepi.45.f1.80.lo[i] <- min(sepi.45.f1.80[i,])
# Everything from 2081-2099
sepi.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sepi.45.f1.99) <- c("gfd","mir")
row.names(sepi.45.f1.99) <- 2081:2099
sepi.45.f1.99[,1] <- gfd45.f1.sepi[91:109]
sepi.45.f1.99[,2] <- mir45.f1.sepi[91:109]
# head(sepi.45.f1.99)
sepi.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sepi.45.f1.99.up[i] <- max(sepi.45.f1.99[i,])
sepi.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sepi.45.f1.99.lo[i] <- min(sepi.45.f1.99[i,])
# now append these two time periods
sepi.45.f1.up <- c(sepi.45.f1.80.up,sepi.45.f1.99.up)
sepi.45.f1.lo <- c(sepi.45.f1.80.lo,sepi.45.f1.99.lo)

# RCP 8.5
sepi.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sepi.85.f1) <- c("gfd","mir","ces")
row.names(sepi.85.f1) <- 1991:2099
sepi.85.f1[,1] <- gfd85.f1.sepi
sepi.85.f1[,2] <- mir85.f1.sepi
sepi.85.f1[,3] <- ces85.f1.sepi
# head(sepi.85.f1)
sepi.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sepi.85.f1.up[i] <- max(sepi.85.f1[i,])
sepi.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sepi.85.f1.lo[i] <- min(sepi.85.f1[i,])

# # SRES A1B
# sepi.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sepi.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sepi.a1b.f1) <- 1991:2039
# sepi.a1b.f1[,1] <- cccA1B.f1.sepi
# sepi.a1b.f1[,2] <- echA1B.f1.sepi
# sepi.a1b.f1[,3] <- mirA1B.f1.sepi
# # head(sepi.a1b.f1)
# sepi.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sepi.a1b.f1.up[i] <- max(sepi.a1b.f1[i,])
# sepi.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sepi.a1b.f1.lo[i] <- min(sepi.a1b.f1[i,])

# Structural.epifauna ----- f2 *more gadid catch*
# RCP 4.5
# Everything up through 2080
sepi.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sepi.45.f2.80) <- c("gfd","mir","ces")
row.names(sepi.45.f2.80) <- 1991:2080
sepi.45.f2.80[,1] <- gfd45.f2.sepi[1:90]
sepi.45.f2.80[,2] <- mir45.f2.sepi[1:90]
sepi.45.f2.80[,3] <- ces45.f2.sepi
# head(sepi.45.f2.80)
sepi.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sepi.45.f2.80.up[i] <- max(sepi.45.f2.80[i,])
sepi.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sepi.45.f2.80.lo[i] <- min(sepi.45.f2.80[i,])
# Everything from 2081-2099
sepi.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sepi.45.f2.99) <- c("gfd","mir")
row.names(sepi.45.f2.99) <- 2081:2099
sepi.45.f2.99[,1] <- gfd45.f2.sepi[91:109]
sepi.45.f2.99[,2] <- mir45.f2.sepi[91:109]
# head(sepi.45.f2.99)
sepi.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sepi.45.f2.99.up[i] <- max(sepi.45.f2.99[i,])
sepi.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sepi.45.f2.99.lo[i] <- min(sepi.45.f2.99[i,])
# now append these two time periods
sepi.45.f2.up <- c(sepi.45.f2.80.up,sepi.45.f2.99.up)
sepi.45.f2.lo <- c(sepi.45.f2.80.lo,sepi.45.f2.99.lo)

# RCP 8.5
sepi.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sepi.85.f2) <- c("gfd","mir","ces")
row.names(sepi.85.f2) <- 1991:2099
sepi.85.f2[,1] <- gfd85.f2.sepi
sepi.85.f2[,2] <- mir85.f2.sepi
sepi.85.f2[,3] <- ces85.f2.sepi
# head(sepi.85.f2)
sepi.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sepi.85.f2.up[i] <- max(sepi.85.f2[i,])
sepi.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sepi.85.f2.lo[i] <- min(sepi.85.f2[i,])

# # SRES A1B
# sepi.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sepi.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(sepi.a1b.f2) <- 1991:2039
# sepi.a1b.f2[,1] <- cccA1B.f2.sepi
# sepi.a1b.f2[,2] <- echA1B.f2.sepi
# sepi.a1b.f2[,3] <- mirA1B.f2.sepi
# # head(sepi.a1b.f2)
# sepi.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sepi.a1b.f2.up[i] <- max(sepi.a1b.f2[i,])
# sepi.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sepi.a1b.f2.lo[i] <- min(sepi.a1b.f2[i,])

# Structural.epifauna ----- f3 *more flatfish catch*
# RCP 4.5
# Everything up through 2080
sepi.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sepi.45.f3.80) <- c("gfd","mir","ces")
row.names(sepi.45.f3.80) <- 1991:2080
sepi.45.f3.80[,1] <- gfd45.f3.sepi[1:90]
sepi.45.f3.80[,2] <- mir45.f3.sepi[1:90]
sepi.45.f3.80[,3] <- ces45.f3.sepi
# head(sepi.45.f3.80)
sepi.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sepi.45.f3.80.up[i] <- max(sepi.45.f3.80[i,])
sepi.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sepi.45.f3.80.lo[i] <- min(sepi.45.f3.80[i,])
# Everything from 2081-2099
sepi.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sepi.45.f3.99) <- c("gfd","mir")
row.names(sepi.45.f3.99) <- 2081:2099
sepi.45.f3.99[,1] <- gfd45.f3.sepi[91:109]
sepi.45.f3.99[,2] <- mir45.f3.sepi[91:109]
# head(sepi.45.f3.99)
sepi.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sepi.45.f3.99.up[i] <- max(sepi.45.f3.99[i,])
sepi.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sepi.45.f3.99.lo[i] <- min(sepi.45.f3.99[i,])
# now append these two time periods
sepi.45.f3.up <- c(sepi.45.f3.80.up,sepi.45.f3.99.up)
sepi.45.f3.lo <- c(sepi.45.f3.80.lo,sepi.45.f3.99.lo)

# RCP 8.5
sepi.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sepi.85.f3) <- c("gfd","mir","ces")
row.names(sepi.85.f3) <- 1991:2099
sepi.85.f3[,1] <- gfd85.f3.sepi
sepi.85.f3[,2] <- mir85.f3.sepi
sepi.85.f3[,3] <- ces85.f3.sepi
# head(sepi.85.f3)
sepi.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sepi.85.f3.up[i] <- max(sepi.85.f3[i,])
sepi.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sepi.85.f3.lo[i] <- min(sepi.85.f3[i,])

# # SRES A1B
# sepi.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sepi.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(sepi.a1b.f3) <- 1991:2039
# sepi.a1b.f3[,1] <- cccA1B.f3.sepi
# sepi.a1b.f3[,2] <- echA1B.f3.sepi
# sepi.a1b.f3[,3] <- mirA1B.f3.sepi
# # head(sepi.a1b.f3)
# sepi.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sepi.a1b.f3.up[i] <- max(sepi.a1b.f3[i,])
# sepi.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sepi.a1b.f3.lo[i] <- min(sepi.a1b.f3[i,])

# Structural.epifauna ----- f4 *no fishing*
# RCP 4.5
# Everything up through 2080
sepi.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sepi.45.f4.80) <- c("gfd","mir","ces")
row.names(sepi.45.f4.80) <- 1991:2080
sepi.45.f4.80[,1] <- gfd45.f4.sepi[1:90]
sepi.45.f4.80[,2] <- mir45.f4.sepi[1:90]
sepi.45.f4.80[,3] <- ces45.f4.sepi
# head(sepi.45.f4.80)
sepi.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sepi.45.f4.80.up[i] <- max(sepi.45.f4.80[i,])
sepi.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sepi.45.f4.80.lo[i] <- min(sepi.45.f4.80[i,])
# Everything from 2081-2099
sepi.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sepi.45.f4.99) <- c("gfd","mir")
row.names(sepi.45.f4.99) <- 2081:2099
sepi.45.f4.99[,1] <- gfd45.f4.sepi[91:109]
sepi.45.f4.99[,2] <- mir45.f4.sepi[91:109]
# head(sepi.45.f4.99)
sepi.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sepi.45.f4.99.up[i] <- max(sepi.45.f4.99[i,])
sepi.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sepi.45.f4.99.lo[i] <- min(sepi.45.f4.99[i,])
# now append these two time periods
sepi.45.f4.up <- c(sepi.45.f4.80.up,sepi.45.f4.99.up)
sepi.45.f4.lo <- c(sepi.45.f4.80.lo,sepi.45.f4.99.lo)

# RCP 8.5
sepi.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sepi.85.f4) <- c("gfd","mir","ces")
row.names(sepi.85.f4) <- 1991:2099
sepi.85.f4[,1] <- gfd85.f4.sepi
sepi.85.f4[,2] <- mir85.f4.sepi
sepi.85.f4[,3] <- ces85.f4.sepi
# head(sepi.85.f4)
sepi.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sepi.85.f4.up[i] <- max(sepi.85.f4[i,])
sepi.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sepi.85.f4.lo[i] <- min(sepi.85.f4[i,])

# # SRES A1B
# sepi.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sepi.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(sepi.a1b.f4) <- 1991:2039
# sepi.a1b.f4[,1] <- cccA1B.f4.sepi
# sepi.a1b.f4[,2] <- echA1B.f4.sepi
# sepi.a1b.f4[,3] <- mirA1B.f4.sepi
# # head(sepi.a1b.f4)
# sepi.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sepi.a1b.f4.up[i] <- max(sepi.a1b.f4[i,])
# sepi.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sepi.a1b.f4.lo[i] <- min(sepi.a1b.f4[i,])

# # Structural.epifauna ----- f5 *ABC*
# # RCP 4.5
# # Everything up through 2080
# sepi.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(sepi.45.f5.80) <- c("gfd","mir","ces")
# row.names(sepi.45.f5.80) <- 1991:2080
# sepi.45.f5.80[,1] <- gfd45.f5.sepi[1:90]
# sepi.45.f5.80[,2] <- mir45.f5.sepi[1:90]
# sepi.45.f5.80[,3] <- ces45.f5.sepi
# # head(sepi.45.f5.80)
# sepi.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) sepi.45.f5.80.up[i] <- max(sepi.45.f5.80[i,])
# sepi.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) sepi.45.f5.80.lo[i] <- min(sepi.45.f5.80[i,])
# # Everything from 2081-2099
# sepi.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(sepi.45.f5.99) <- c("gfd","mir")
# row.names(sepi.45.f5.99) <- 2081:2099
# sepi.45.f5.99[,1] <- gfd45.f5.sepi[91:109]
# sepi.45.f5.99[,2] <- mir45.f5.sepi[91:109]
# # head(sepi.45.f5.99)
# sepi.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) sepi.45.f5.99.up[i] <- max(sepi.45.f5.99[i,])
# sepi.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) sepi.45.f5.99.lo[i] <- min(sepi.45.f5.99[i,])
# # now append these two time periods
# sepi.45.f5.up <- c(sepi.45.f5.80.up,sepi.45.f5.99.up)
# sepi.45.f5.lo <- c(sepi.45.f5.80.lo,sepi.45.f5.99.lo)
# 
# # RCP 8.5
# sepi.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(sepi.85.f5) <- c("gfd","mir","ces")
# row.names(sepi.85.f5) <- 1991:2099
# sepi.85.f5[,1] <- gfd85.f5.sepi
# sepi.85.f5[,2] <- mir85.f5.sepi
# sepi.85.f5[,3] <- ces85.f5.sepi
# # head(sepi.85.f5)
# sepi.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) sepi.85.f5.up[i] <- max(sepi.85.f5[i,])
# sepi.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) sepi.85.f5.lo[i] <- min(sepi.85.f5[i,])
# 
# # # SRES A1B
# # sepi.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(sepi.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(sepi.a1b.f5) <- 1991:2039
# # sepi.a1b.f5[,1] <- cccA1B.f5.sepi
# # sepi.a1b.f5[,2] <- echA1B.f5.sepi
# # sepi.a1b.f5[,3] <- mirA1B.f5.sepi
# # # head(sepi.a1b.f5)
# # sepi.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) sepi.a1b.f5.up[i] <- max(sepi.a1b.f5[i,])
# # sepi.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) sepi.a1b.f5.lo[i] <- min(sepi.a1b.f5[i,])
# 
# # Structural.epifauna ----- f6 *F_equil*
# # RCP 4.5
# # Everything up through 2080
# sepi.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(sepi.45.f6.80) <- c("gfd","mir","ces")
# row.names(sepi.45.f6.80) <- 1991:2080
# sepi.45.f6.80[,1] <- gfd45.f6.sepi[1:90]
# sepi.45.f6.80[,2] <- mir45.f6.sepi[1:90]
# sepi.45.f6.80[,3] <- ces45.f6.sepi
# # head(sepi.45.f6.80)
# sepi.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) sepi.45.f6.80.up[i] <- max(sepi.45.f6.80[i,])
# sepi.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) sepi.45.f6.80.lo[i] <- min(sepi.45.f6.80[i,])
# # Everything from 2081-2099
# sepi.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(sepi.45.f6.99) <- c("gfd","mir")
# row.names(sepi.45.f6.99) <- 2081:2099
# sepi.45.f6.99[,1] <- gfd45.f6.sepi[91:109]
# sepi.45.f6.99[,2] <- mir45.f6.sepi[91:109]
# # head(sepi.45.f6.99)
# sepi.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) sepi.45.f6.99.up[i] <- max(sepi.45.f6.99[i,])
# sepi.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) sepi.45.f6.99.lo[i] <- min(sepi.45.f6.99[i,])
# # now append these two time periods
# sepi.45.f6.up <- c(sepi.45.f6.80.up,sepi.45.f6.99.up)
# sepi.45.f6.lo <- c(sepi.45.f6.80.lo,sepi.45.f6.99.lo)
# 
# # RCP 8.5
# sepi.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(sepi.85.f6) <- c("gfd","mir","ces")
# row.names(sepi.85.f6) <- 1991:2099
# sepi.85.f6[,1] <- gfd85.f6.sepi
# sepi.85.f6[,2] <- mir85.f6.sepi
# sepi.85.f6[,3] <- ces85.f6.sepi
# # head(sepi.85.f6)
# sepi.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) sepi.85.f6.up[i] <- max(sepi.85.f6[i,])
# sepi.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) sepi.85.f6.lo[i] <- min(sepi.85.f6[i,])
# 
# # # SRES A1B
# # sepi.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(sepi.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(sepi.a1b.f6) <- 1991:2039
# # sepi.a1b.f6[,1] <- cccA1B.f6.sepi
# # sepi.a1b.f6[,2] <- echA1B.f6.sepi
# # sepi.a1b.f6[,3] <- mirA1B.f6.sepi
# # # head(sepi.a1b.f6)
# # sepi.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) sepi.a1b.f6.up[i] <- max(sepi.a1b.f6[i,])
# # sepi.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) sepi.a1b.f6.lo[i] <- min(sepi.a1b.f6[i,])


# ---------------------------------------------------------------------------- #
# Shrimp ----- f1 *Status quo*
# RCP 4.5
# Everything up through 2080
shmp.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shmp.45.f1.80) <- c("gfd","mir","ces")
row.names(shmp.45.f1.80) <- 1991:2080
shmp.45.f1.80[,1] <- gfd45.f1.shmp[1:90]
shmp.45.f1.80[,2] <- mir45.f1.shmp[1:90]
shmp.45.f1.80[,3] <- ces45.f1.shmp
# head(shmp.45.f1.80)
shmp.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shmp.45.f1.80.up[i] <- max(shmp.45.f1.80[i,])
shmp.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shmp.45.f1.80.lo[i] <- min(shmp.45.f1.80[i,])
# Everything from 2081-2099
shmp.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shmp.45.f1.99) <- c("gfd","mir")
row.names(shmp.45.f1.99) <- 2081:2099
shmp.45.f1.99[,1] <- gfd45.f1.shmp[91:109]
shmp.45.f1.99[,2] <- mir45.f1.shmp[91:109]
# head(shmp.45.f1.99)
shmp.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shmp.45.f1.99.up[i] <- max(shmp.45.f1.99[i,])
shmp.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shmp.45.f1.99.lo[i] <- min(shmp.45.f1.99[i,])
# now append these two time periods
shmp.45.f1.up <- c(shmp.45.f1.80.up,shmp.45.f1.99.up)
shmp.45.f1.lo <- c(shmp.45.f1.80.lo,shmp.45.f1.99.lo)

# RCP 8.5
shmp.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shmp.85.f1) <- c("gfd","mir","ces")
row.names(shmp.85.f1) <- 1991:2099
shmp.85.f1[,1] <- gfd85.f1.shmp
shmp.85.f1[,2] <- mir85.f1.shmp
shmp.85.f1[,3] <- ces85.f1.shmp
# head(shmp.85.f1)
shmp.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shmp.85.f1.up[i] <- max(shmp.85.f1[i,])
shmp.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shmp.85.f1.lo[i] <- min(shmp.85.f1[i,])

# # SRES A1B
# shmp.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shmp.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(shmp.a1b.f1) <- 1991:2039
# shmp.a1b.f1[,1] <- cccA1B.f1.shmp
# shmp.a1b.f1[,2] <- echA1B.f1.shmp
# shmp.a1b.f1[,3] <- mirA1B.f1.shmp
# # head(shmp.a1b.f1)
# shmp.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shmp.a1b.f1.up[i] <- max(shmp.a1b.f1[i,])
# shmp.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shmp.a1b.f1.lo[i] <- min(shmp.a1b.f1[i,])

# Shrimp ----- f2 *more gadid catch*
# RCP 4.5
# Everything up through 2080
shmp.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shmp.45.f2.80) <- c("gfd","mir","ces")
row.names(shmp.45.f2.80) <- 1991:2080
shmp.45.f2.80[,1] <- gfd45.f2.shmp[1:90]
shmp.45.f2.80[,2] <- mir45.f2.shmp[1:90]
shmp.45.f2.80[,3] <- ces45.f2.shmp
# head(shmp.45.f2.80)
shmp.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shmp.45.f2.80.up[i] <- max(shmp.45.f2.80[i,])
shmp.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shmp.45.f2.80.lo[i] <- min(shmp.45.f2.80[i,])
# Everything from 2081-2099
shmp.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shmp.45.f2.99) <- c("gfd","mir")
row.names(shmp.45.f2.99) <- 2081:2099
shmp.45.f2.99[,1] <- gfd45.f2.shmp[91:109]
shmp.45.f2.99[,2] <- mir45.f2.shmp[91:109]
# head(shmp.45.f2.99)
shmp.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shmp.45.f2.99.up[i] <- max(shmp.45.f2.99[i,])
shmp.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shmp.45.f2.99.lo[i] <- min(shmp.45.f2.99[i,])
# now append these two time periods
shmp.45.f2.up <- c(shmp.45.f2.80.up,shmp.45.f2.99.up)
shmp.45.f2.lo <- c(shmp.45.f2.80.lo,shmp.45.f2.99.lo)

# RCP 8.5
shmp.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shmp.85.f2) <- c("gfd","mir","ces")
row.names(shmp.85.f2) <- 1991:2099
shmp.85.f2[,1] <- gfd85.f2.shmp
shmp.85.f2[,2] <- mir85.f2.shmp
shmp.85.f2[,3] <- ces85.f2.shmp
# head(shmp.85.f2)
shmp.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shmp.85.f2.up[i] <- max(shmp.85.f2[i,])
shmp.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shmp.85.f2.lo[i] <- min(shmp.85.f2[i,])

# # SRES A1B
# shmp.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shmp.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(shmp.a1b.f2) <- 1991:2039
# shmp.a1b.f2[,1] <- cccA1B.f2.shmp
# shmp.a1b.f2[,2] <- echA1B.f2.shmp
# shmp.a1b.f2[,3] <- mirA1B.f2.shmp
# # head(shmp.a1b.f2)
# shmp.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shmp.a1b.f2.up[i] <- max(shmp.a1b.f2[i,])
# shmp.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shmp.a1b.f2.lo[i] <- min(shmp.a1b.f2[i,])

# Shrimp ----- f3 *more flatfish catch*
# RCP 4.5
# Everything up through 2080
shmp.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shmp.45.f3.80) <- c("gfd","mir","ces")
row.names(shmp.45.f3.80) <- 1991:2080
shmp.45.f3.80[,1] <- gfd45.f3.shmp[1:90]
shmp.45.f3.80[,2] <- mir45.f3.shmp[1:90]
shmp.45.f3.80[,3] <- ces45.f3.shmp
# head(shmp.45.f3.80)
shmp.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shmp.45.f3.80.up[i] <- max(shmp.45.f3.80[i,])
shmp.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shmp.45.f3.80.lo[i] <- min(shmp.45.f3.80[i,])
# Everything from 2081-2099
shmp.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shmp.45.f3.99) <- c("gfd","mir")
row.names(shmp.45.f3.99) <- 2081:2099
shmp.45.f3.99[,1] <- gfd45.f3.shmp[91:109]
shmp.45.f3.99[,2] <- mir45.f3.shmp[91:109]
# head(shmp.45.f3.99)
shmp.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shmp.45.f3.99.up[i] <- max(shmp.45.f3.99[i,])
shmp.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shmp.45.f3.99.lo[i] <- min(shmp.45.f3.99[i,])
# now append these two time periods
shmp.45.f3.up <- c(shmp.45.f3.80.up,shmp.45.f3.99.up)
shmp.45.f3.lo <- c(shmp.45.f3.80.lo,shmp.45.f3.99.lo)

# RCP 8.5
shmp.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shmp.85.f3) <- c("gfd","mir","ces")
row.names(shmp.85.f3) <- 1991:2099
shmp.85.f3[,1] <- gfd85.f3.shmp
shmp.85.f3[,2] <- mir85.f3.shmp
shmp.85.f3[,3] <- ces85.f3.shmp
# head(shmp.85.f3)
shmp.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shmp.85.f3.up[i] <- max(shmp.85.f3[i,])
shmp.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shmp.85.f3.lo[i] <- min(shmp.85.f3[i,])

# # SRES A1B
# shmp.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shmp.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(shmp.a1b.f3) <- 1991:2039
# shmp.a1b.f3[,1] <- cccA1B.f3.shmp
# shmp.a1b.f3[,2] <- echA1B.f3.shmp
# shmp.a1b.f3[,3] <- mirA1B.f3.shmp
# # head(shmp.a1b.f3)
# shmp.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shmp.a1b.f3.up[i] <- max(shmp.a1b.f3[i,])
# shmp.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shmp.a1b.f3.lo[i] <- min(shmp.a1b.f3[i,])

# Shrimp ----- f4 *no fishing*
# RCP 4.5
# Everything up through 2080
shmp.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shmp.45.f4.80) <- c("gfd","mir","ces")
row.names(shmp.45.f4.80) <- 1991:2080
shmp.45.f4.80[,1] <- gfd45.f4.shmp[1:90]
shmp.45.f4.80[,2] <- mir45.f4.shmp[1:90]
shmp.45.f4.80[,3] <- ces45.f4.shmp
# head(shmp.45.f4.80)
shmp.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shmp.45.f4.80.up[i] <- max(shmp.45.f4.80[i,])
shmp.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shmp.45.f4.80.lo[i] <- min(shmp.45.f4.80[i,])
# Everything from 2081-2099
shmp.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shmp.45.f4.99) <- c("gfd","mir")
row.names(shmp.45.f4.99) <- 2081:2099
shmp.45.f4.99[,1] <- gfd45.f4.shmp[91:109]
shmp.45.f4.99[,2] <- mir45.f4.shmp[91:109]
# head(shmp.45.f4.99)
shmp.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shmp.45.f4.99.up[i] <- max(shmp.45.f4.99[i,])
shmp.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shmp.45.f4.99.lo[i] <- min(shmp.45.f4.99[i,])
# now append these two time periods
shmp.45.f4.up <- c(shmp.45.f4.80.up,shmp.45.f4.99.up)
shmp.45.f4.lo <- c(shmp.45.f4.80.lo,shmp.45.f4.99.lo)

# RCP 8.5
shmp.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shmp.85.f4) <- c("gfd","mir","ces")
row.names(shmp.85.f4) <- 1991:2099
shmp.85.f4[,1] <- gfd85.f4.shmp
shmp.85.f4[,2] <- mir85.f4.shmp
shmp.85.f4[,3] <- ces85.f4.shmp
# head(shmp.85.f4)
shmp.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shmp.85.f4.up[i] <- max(shmp.85.f4[i,])
shmp.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shmp.85.f4.lo[i] <- min(shmp.85.f4[i,])

# # SRES A1B
# shmp.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shmp.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(shmp.a1b.f4) <- 1991:2039
# shmp.a1b.f4[,1] <- cccA1B.f4.shmp
# shmp.a1b.f4[,2] <- echA1B.f4.shmp
# shmp.a1b.f4[,3] <- mirA1B.f4.shmp
# # head(shmp.a1b.f4)
# shmp.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shmp.a1b.f4.up[i] <- max(shmp.a1b.f4[i,])
# shmp.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shmp.a1b.f4.lo[i] <- min(shmp.a1b.f4[i,])

# # Shrimp ----- f5 *ABC*
# # RCP 4.5
# # Everything up through 2080
# shmp.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(shmp.45.f5.80) <- c("gfd","mir","ces")
# row.names(shmp.45.f5.80) <- 1991:2080
# shmp.45.f5.80[,1] <- gfd45.f5.shmp[1:90]
# shmp.45.f5.80[,2] <- mir45.f5.shmp[1:90]
# shmp.45.f5.80[,3] <- ces45.f5.shmp
# # head(shmp.45.f5.80)
# shmp.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) shmp.45.f5.80.up[i] <- max(shmp.45.f5.80[i,])
# shmp.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) shmp.45.f5.80.lo[i] <- min(shmp.45.f5.80[i,])
# # Everything from 2081-2099
# shmp.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(shmp.45.f5.99) <- c("gfd","mir")
# row.names(shmp.45.f5.99) <- 2081:2099
# shmp.45.f5.99[,1] <- gfd45.f5.shmp[91:109]
# shmp.45.f5.99[,2] <- mir45.f5.shmp[91:109]
# # head(shmp.45.f5.99)
# shmp.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) shmp.45.f5.99.up[i] <- max(shmp.45.f5.99[i,])
# shmp.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) shmp.45.f5.99.lo[i] <- min(shmp.45.f5.99[i,])
# # now append these two time periods
# shmp.45.f5.up <- c(shmp.45.f5.80.up,shmp.45.f5.99.up)
# shmp.45.f5.lo <- c(shmp.45.f5.80.lo,shmp.45.f5.99.lo)
# 
# # RCP 8.5
# shmp.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(shmp.85.f5) <- c("gfd","mir","ces")
# row.names(shmp.85.f5) <- 1991:2099
# shmp.85.f5[,1] <- gfd85.f5.shmp
# shmp.85.f5[,2] <- mir85.f5.shmp
# shmp.85.f5[,3] <- ces85.f5.shmp
# # head(shmp.85.f5)
# shmp.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) shmp.85.f5.up[i] <- max(shmp.85.f5[i,])
# shmp.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) shmp.85.f5.lo[i] <- min(shmp.85.f5[i,])
# 
# # # SRES A1B
# # shmp.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(shmp.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(shmp.a1b.f5) <- 1991:2039
# # shmp.a1b.f5[,1] <- cccA1B.f5.shmp
# # shmp.a1b.f5[,2] <- echA1B.f5.shmp
# # shmp.a1b.f5[,3] <- mirA1B.f5.shmp
# # # head(shmp.a1b.f5)
# # shmp.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) shmp.a1b.f5.up[i] <- max(shmp.a1b.f5[i,])
# # shmp.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) shmp.a1b.f5.lo[i] <- min(shmp.a1b.f5[i,])
# 
# # Shrimp ----- f6 *F_equil*
# # RCP 4.5
# # Everything up through 2080
# shmp.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(shmp.45.f6.80) <- c("gfd","mir","ces")
# row.names(shmp.45.f6.80) <- 1991:2080
# shmp.45.f6.80[,1] <- gfd45.f6.shmp[1:90]
# shmp.45.f6.80[,2] <- mir45.f6.shmp[1:90]
# shmp.45.f6.80[,3] <- ces45.f6.shmp
# # head(shmp.45.f6.80)
# shmp.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) shmp.45.f6.80.up[i] <- max(shmp.45.f6.80[i,])
# shmp.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) shmp.45.f6.80.lo[i] <- min(shmp.45.f6.80[i,])
# # Everything from 2081-2099
# shmp.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(shmp.45.f6.99) <- c("gfd","mir")
# row.names(shmp.45.f6.99) <- 2081:2099
# shmp.45.f6.99[,1] <- gfd45.f6.shmp[91:109]
# shmp.45.f6.99[,2] <- mir45.f6.shmp[91:109]
# # head(shmp.45.f6.99)
# shmp.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) shmp.45.f6.99.up[i] <- max(shmp.45.f6.99[i,])
# shmp.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) shmp.45.f6.99.lo[i] <- min(shmp.45.f6.99[i,])
# # now append these two time periods
# shmp.45.f6.up <- c(shmp.45.f6.80.up,shmp.45.f6.99.up)
# shmp.45.f6.lo <- c(shmp.45.f6.80.lo,shmp.45.f6.99.lo)
# 
# # RCP 8.5
# shmp.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(shmp.85.f6) <- c("gfd","mir","ces")
# row.names(shmp.85.f6) <- 1991:2099
# shmp.85.f6[,1] <- gfd85.f6.shmp
# shmp.85.f6[,2] <- mir85.f6.shmp
# shmp.85.f6[,3] <- ces85.f6.shmp
# # head(shmp.85.f6)
# shmp.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) shmp.85.f6.up[i] <- max(shmp.85.f6[i,])
# shmp.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) shmp.85.f6.lo[i] <- min(shmp.85.f6[i,])
# 
# # # SRES A1B
# # shmp.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(shmp.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(shmp.a1b.f6) <- 1991:2039
# # shmp.a1b.f6[,1] <- cccA1B.f6.shmp
# # shmp.a1b.f6[,2] <- echA1B.f6.shmp
# # shmp.a1b.f6[,3] <- mirA1B.f6.shmp
# # # head(shmp.a1b.f6)
# # shmp.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) shmp.a1b.f6.up[i] <- max(shmp.a1b.f6[i,])
# # shmp.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) shmp.a1b.f6.lo[i] <- min(shmp.a1b.f6[i,])

