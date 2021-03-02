# end of sim outcomes relative to the last 10 of the hindcast

# Calculate means of the final 10 years of the hindcast ---------------------- #
# This will be the same for all GCM/RCP/SRES/Fishing scenario combinations
# because it is the hindcast. I'm using GFDL RCP 4.5 but it could be any of them.

# There are 69 living. I'm not going to keep track of detritus for this.
hind_mean <- matrix(nrow=1, ncol=bal$NUM_LIVING)
for (i in 1:(bal$NUM_LIVING)) {
  hind_mean[,i] <- mean(gfd45.f1.91.add$annual_Biomass[18:27,i+1])
}
colnames(hind_mean) <- colnames(gfd45.f1.91.add$annual_Biomass[,2:70])

# ============================================================================ #
# ---------------------------------------------------------------------------- #
# RCP 4.5 at 2080 for all fishing scenarios
# f1
RelB_45.f1_2080 <- matrix(nrow=3, ncol=bal$NUM_LIVING)
for (i in 1:(bal$NUM_LIVING)) {
  RelB_45.f1_2080[1,i] <- (mean(gfd45.f1.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f1.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f1.91.add$annual_Biomass[18:27,i+1])
  RelB_45.f1_2080[2,i] <- (mean(mir45.f1.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f1.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f1.91.add$annual_Biomass[18:27,i+1])
  RelB_45.f1_2080[3,i] <- (mean(ces45.f1.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f1.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f1.91.add$annual_Biomass[18:27,i+1])
}
rownames(RelB_45.f1_2080) <- c("gfd","mir","ces")
colnames(RelB_45.f1_2080) <- colnames(gfd45.f1.91.add$annual_Biomass[,2:70])
# f2
RelB_45.f2_2080 <- matrix(nrow=3, ncol=bal$NUM_LIVING)
for (i in 1:(bal$NUM_LIVING)) {
  RelB_45.f2_2080[1,i] <- (mean(gfd45.f2.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f2.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f2.91.add$annual_Biomass[18:27,i+1])
  RelB_45.f2_2080[2,i] <- (mean(mir45.f2.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f2.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f2.91.add$annual_Biomass[18:27,i+1])
  RelB_45.f2_2080[3,i] <- (mean(ces45.f2.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f2.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f2.91.add$annual_Biomass[18:27,i+1])
}
rownames(RelB_45.f2_2080) <- c("gfd","mir","ces")
colnames(RelB_45.f2_2080) <- colnames(gfd45.f2.91.add$annual_Biomass[,2:70])
# f3
RelB_45.f3_2080 <- matrix(nrow=3, ncol=bal$NUM_LIVING)
for (i in 1:(bal$NUM_LIVING)) {
  RelB_45.f3_2080[1,i] <- (mean(gfd45.f3.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f3.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f3.91.add$annual_Biomass[18:27,i+1])
  RelB_45.f3_2080[2,i] <- (mean(mir45.f3.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f3.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f3.91.add$annual_Biomass[18:27,i+1])
  RelB_45.f3_2080[3,i] <- (mean(ces45.f3.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f3.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f3.91.add$annual_Biomass[18:27,i+1])
}
rownames(RelB_45.f3_2080) <- c("gfd","mir","ces")
colnames(RelB_45.f3_2080) <- colnames(gfd45.f3.91.add$annual_Biomass[,2:70])
# f4
RelB_45.f4_2080 <- matrix(nrow=3, ncol=bal$NUM_LIVING)
for (i in 1:(bal$NUM_LIVING)) {
  RelB_45.f4_2080[1,i] <- (mean(gfd45.f4.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f4.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f4.91.add$annual_Biomass[18:27,i+1])
  RelB_45.f4_2080[2,i] <- (mean(mir45.f4.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f4.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f4.91.add$annual_Biomass[18:27,i+1])
  RelB_45.f4_2080[3,i] <- (mean(ces45.f4.91.add$annual_Biomass[81:90,i+1])-mean(gfd45.f4.91.add$annual_Biomass[18:27,i+1]))/mean(gfd45.f4.91.add$annual_Biomass[18:27,i+1])
}
rownames(RelB_45.f4_2080) <- c("gfd","mir","ces")
colnames(RelB_45.f4_2080) <- colnames(gfd45.f4.91.add$annual_Biomass[,2:70])

# ============================================================================ #
# ---------------------------------------------------------------------------- #
# RCP 8.5 at 2080 for all fishing scenarios
# f1
RelB_85.f1_2080 <- matrix(nrow=3, ncol=bal$NUM_LIVING)
for (i in 1:(bal$NUM_LIVING)) {
  RelB_85.f1_2080[1,i] <- (mean(gfd85.f1.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f1.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f1.91.add$annual_Biomass[18:27,i+1])
  RelB_85.f1_2080[2,i] <- (mean(mir85.f1.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f1.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f1.91.add$annual_Biomass[18:27,i+1])
  RelB_85.f1_2080[3,i] <- (mean(ces85.f1.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f1.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f1.91.add$annual_Biomass[18:27,i+1])
}
rownames(RelB_85.f1_2080) <- c("gfd","mir","ces")
colnames(RelB_85.f1_2080) <- colnames(gfd85.f1.91.add$annual_Biomass[,2:70])
# f2
RelB_85.f2_2080 <- matrix(nrow=3, ncol=bal$NUM_LIVING)
for (i in 1:(bal$NUM_LIVING)) {
  RelB_85.f2_2080[1,i] <- (mean(gfd85.f2.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f2.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f2.91.add$annual_Biomass[18:27,i+1])
  RelB_85.f2_2080[2,i] <- (mean(mir85.f2.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f2.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f2.91.add$annual_Biomass[18:27,i+1])
  RelB_85.f2_2080[3,i] <- (mean(ces85.f2.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f2.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f2.91.add$annual_Biomass[18:27,i+1])
}
rownames(RelB_85.f2_2080) <- c("gfd","mir","ces")
colnames(RelB_85.f2_2080) <- colnames(gfd85.f2.91.add$annual_Biomass[,2:70])
# f3
RelB_85.f3_2080 <- matrix(nrow=3, ncol=bal$NUM_LIVING)
for (i in 1:(bal$NUM_LIVING)) {
  RelB_85.f3_2080[1,i] <- (mean(gfd85.f3.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f3.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f3.91.add$annual_Biomass[18:27,i+1])
  RelB_85.f3_2080[2,i] <- (mean(mir85.f3.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f3.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f3.91.add$annual_Biomass[18:27,i+1])
  RelB_85.f3_2080[3,i] <- (mean(ces85.f3.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f3.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f3.91.add$annual_Biomass[18:27,i+1])
}
rownames(RelB_85.f3_2080) <- c("gfd","mir","ces")
colnames(RelB_85.f3_2080) <- colnames(gfd85.f3.91.add$annual_Biomass[,2:70])
# f4
RelB_85.f4_2080 <- matrix(nrow=3, ncol=bal$NUM_LIVING)
for (i in 1:(bal$NUM_LIVING)) {
  RelB_85.f4_2080[1,i] <- (mean(gfd85.f4.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f4.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f4.91.add$annual_Biomass[18:27,i+1])
  RelB_85.f4_2080[2,i] <- (mean(mir85.f4.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f4.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f4.91.add$annual_Biomass[18:27,i+1])
  RelB_85.f4_2080[3,i] <- (mean(ces85.f4.91.add$annual_Biomass[81:90,i+1])-mean(gfd85.f4.91.add$annual_Biomass[18:27,i+1]))/mean(gfd85.f4.91.add$annual_Biomass[18:27,i+1])
}
rownames(RelB_85.f4_2080) <- c("gfd","mir","ces")
colnames(RelB_85.f4_2080) <- colnames(gfd85.f4.91.add$annual_Biomass[,2:70])



# ============================================================================ #
# Apex Predators - Combine into single matrices ------------------------------ #
# GFDL
apex.gfd.2080.45 <- cbind(c(RelB_45.f1_2080[1,Apex.predator]),c(RelB_45.f2_2080[1,Apex.predator]),
                          c(RelB_45.f3_2080[1,Apex.predator]),c(RelB_45.f4_2080[1,Apex.predator]))
apex.gfd.2080.85 <- cbind(c(RelB_85.f1_2080[1,Apex.predator]),c(RelB_85.f2_2080[1,Apex.predator]),
                          c(RelB_85.f3_2080[1,Apex.predator]),c(RelB_85.f4_2080[1,Apex.predator]))
apex.gfd.2080    <- rbind(apex.gfd.2080.45,apex.gfd.2080.85)
colnames(apex.gfd.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(apex.gfd.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(apex.gfd.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")
# MIROC
apex.mir.2080.45 <- cbind(c(RelB_45.f1_2080[2,Apex.predator]),c(RelB_45.f2_2080[2,Apex.predator]),
                          c(RelB_45.f3_2080[2,Apex.predator]),c(RelB_45.f4_2080[2,Apex.predator]))
apex.mir.2080.85 <- cbind(c(RelB_85.f1_2080[2,Apex.predator]),c(RelB_85.f2_2080[2,Apex.predator]),
                          c(RelB_85.f3_2080[2,Apex.predator]),c(RelB_85.f4_2080[2,Apex.predator]))
apex.mir.2080    <- rbind(apex.mir.2080.45,apex.mir.2080.85)
colnames(apex.mir.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(apex.mir.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(apex.mir.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")
# CESM
apex.ces.2080.45 <- cbind(c(RelB_45.f1_2080[3,Apex.predator]),c(RelB_45.f2_2080[3,Apex.predator]),
                          c(RelB_45.f3_2080[3,Apex.predator]),c(RelB_45.f4_2080[3,Apex.predator]))
apex.ces.2080.85 <- cbind(c(RelB_85.f1_2080[3,Apex.predator]),c(RelB_85.f2_2080[3,Apex.predator]),
                          c(RelB_85.f3_2080[3,Apex.predator]),c(RelB_85.f4_2080[3,Apex.predator]))
apex.ces.2080    <- rbind(apex.ces.2080.45,apex.ces.2080.85)
colnames(apex.ces.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(apex.ces.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(apex.ces.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")

# Benthic foragers - Combine into single matrices ---------------------------- #
# GFDL
benf.gfd.2080.45 <- cbind(c(RelB_45.f1_2080[1,Benthic.forager]),c(RelB_45.f2_2080[1,Benthic.forager]),
                          c(RelB_45.f3_2080[1,Benthic.forager]),c(RelB_45.f4_2080[1,Benthic.forager]))
benf.gfd.2080.85 <- cbind(c(RelB_85.f1_2080[1,Benthic.forager]),c(RelB_85.f2_2080[1,Benthic.forager]),
                          c(RelB_85.f3_2080[1,Benthic.forager]),c(RelB_85.f4_2080[1,Benthic.forager]))
benf.gfd.2080    <- rbind(benf.gfd.2080.45,benf.gfd.2080.85)
colnames(benf.gfd.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(benf.gfd.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(benf.gfd.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")
# MIROC
benf.mir.2080.45 <- cbind(c(RelB_45.f1_2080[2,Benthic.forager]),c(RelB_45.f2_2080[2,Benthic.forager]),
                          c(RelB_45.f3_2080[2,Benthic.forager]),c(RelB_45.f4_2080[2,Benthic.forager]))
benf.mir.2080.85 <- cbind(c(RelB_85.f1_2080[2,Benthic.forager]),c(RelB_85.f2_2080[2,Benthic.forager]),
                          c(RelB_85.f3_2080[2,Benthic.forager]),c(RelB_85.f4_2080[2,Benthic.forager]))
benf.mir.2080    <- rbind(benf.mir.2080.45,benf.mir.2080.85)
colnames(benf.mir.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(benf.mir.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(benf.mir.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")
# CESM
benf.ces.2080.45 <- cbind(c(RelB_45.f1_2080[3,Benthic.forager]),c(RelB_45.f2_2080[3,Benthic.forager]),
                          c(RelB_45.f3_2080[3,Benthic.forager]),c(RelB_45.f4_2080[3,Benthic.forager]))
benf.ces.2080.85 <- cbind(c(RelB_85.f1_2080[3,Benthic.forager]),c(RelB_85.f2_2080[3,Benthic.forager]),
                          c(RelB_85.f3_2080[3,Benthic.forager]),c(RelB_85.f4_2080[3,Benthic.forager]))
benf.ces.2080    <- rbind(benf.ces.2080.45,benf.ces.2080.85)
colnames(benf.ces.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(benf.ces.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(benf.ces.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")

# Motile epifauna - Combine into single matrices ----------------------------- #
# GFDL
mote.gfd.2080.45 <- cbind(c(RelB_45.f1_2080[1,Motile.epifauna]),c(RelB_45.f2_2080[1,Motile.epifauna]),
                          c(RelB_45.f3_2080[1,Motile.epifauna]),c(RelB_45.f4_2080[1,Motile.epifauna]))
mote.gfd.2080.85 <- cbind(c(RelB_85.f1_2080[1,Motile.epifauna]),c(RelB_85.f2_2080[1,Motile.epifauna]),
                          c(RelB_85.f3_2080[1,Motile.epifauna]),c(RelB_85.f4_2080[1,Motile.epifauna]))
mote.gfd.2080    <- rbind(mote.gfd.2080.45,mote.gfd.2080.85)
colnames(mote.gfd.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(mote.gfd.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(mote.gfd.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")
# MIROC
mote.mir.2080.45 <- cbind(c(RelB_45.f1_2080[2,Motile.epifauna]),c(RelB_45.f2_2080[2,Motile.epifauna]),
                          c(RelB_45.f3_2080[2,Motile.epifauna]),c(RelB_45.f4_2080[2,Motile.epifauna]))
mote.mir.2080.85 <- cbind(c(RelB_85.f1_2080[2,Motile.epifauna]),c(RelB_85.f2_2080[2,Motile.epifauna]),
                          c(RelB_85.f3_2080[2,Motile.epifauna]),c(RelB_85.f4_2080[2,Motile.epifauna]))
mote.mir.2080    <- rbind(mote.mir.2080.45,mote.mir.2080.85)
colnames(mote.mir.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(mote.mir.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(mote.mir.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")
# CESM
mote.ces.2080.45 <- cbind(c(RelB_45.f1_2080[3,Motile.epifauna]),c(RelB_45.f2_2080[3,Motile.epifauna]),
                          c(RelB_45.f3_2080[3,Motile.epifauna]),c(RelB_45.f4_2080[3,Motile.epifauna]))
mote.ces.2080.85 <- cbind(c(RelB_85.f1_2080[3,Motile.epifauna]),c(RelB_85.f2_2080[3,Motile.epifauna]),
                          c(RelB_85.f3_2080[3,Motile.epifauna]),c(RelB_85.f4_2080[3,Motile.epifauna]))
mote.ces.2080    <- rbind(mote.ces.2080.45,mote.ces.2080.85)
colnames(mote.ces.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(mote.ces.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(mote.ces.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")

# Pelagic foragers - Combine into single matrices ---------------------------- #
# GFDL
pelf.gfd.2080.45 <- cbind(c(RelB_45.f1_2080[1,Pelagic.forager]),c(RelB_45.f2_2080[1,Pelagic.forager]),
                          c(RelB_45.f3_2080[1,Pelagic.forager]),c(RelB_45.f4_2080[1,Pelagic.forager]))
pelf.gfd.2080.85 <- cbind(c(RelB_85.f1_2080[1,Pelagic.forager]),c(RelB_85.f2_2080[1,Pelagic.forager]),
                          c(RelB_85.f3_2080[1,Pelagic.forager]),c(RelB_85.f4_2080[1,Pelagic.forager]))
pelf.gfd.2080    <- rbind(pelf.gfd.2080.45,pelf.gfd.2080.85)
colnames(pelf.gfd.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(pelf.gfd.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(pelf.gfd.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")
# MIROC
pelf.mir.2080.45 <- cbind(c(RelB_45.f1_2080[2,Pelagic.forager]),c(RelB_45.f2_2080[2,Pelagic.forager]),
                          c(RelB_45.f3_2080[2,Pelagic.forager]),c(RelB_45.f4_2080[2,Pelagic.forager]))
pelf.mir.2080.85 <- cbind(c(RelB_85.f1_2080[2,Pelagic.forager]),c(RelB_85.f2_2080[2,Pelagic.forager]),
                          c(RelB_85.f3_2080[2,Pelagic.forager]),c(RelB_85.f4_2080[2,Pelagic.forager]))
pelf.mir.2080    <- rbind(pelf.mir.2080.45,pelf.mir.2080.85)
colnames(pelf.mir.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(pelf.mir.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(pelf.mir.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")
# CESM
pelf.ces.2080.45 <- cbind(c(RelB_45.f1_2080[3,Pelagic.forager]),c(RelB_45.f2_2080[3,Pelagic.forager]),
                          c(RelB_45.f3_2080[3,Pelagic.forager]),c(RelB_45.f4_2080[3,Pelagic.forager]))
pelf.ces.2080.85 <- cbind(c(RelB_85.f1_2080[3,Pelagic.forager]),c(RelB_85.f2_2080[3,Pelagic.forager]),
                          c(RelB_85.f3_2080[3,Pelagic.forager]),c(RelB_85.f4_2080[3,Pelagic.forager]))
pelf.ces.2080    <- rbind(pelf.ces.2080.45,pelf.ces.2080.85)
colnames(pelf.ces.2080) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(pelf.ces.2080.45) <- c("Status Quo","More gadid","More flats","No fishing")
colnames(pelf.ces.2080.85) <- c("Status Quo","More gadid","More flats","No fishing")


