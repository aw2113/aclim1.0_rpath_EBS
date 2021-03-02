# For reference the Pelagic.forager species are:
Pelagic.forager <- c("Atka.mackerel","Auklets","Baleen.whales","Capelin","Gr.Turbot_Juv",
                     "Herring","Jellyfish","Mycto.bathy","North.rockfish","Oth.rockfish",
                     "Other.forage","POP","Rougheye.rock","Salmon.returning",
                     "Salmon.smolts","Sandlance","Squids","W.pollock_Adu","W.pollock_Juv")

rcp.yrs <- 1991:2099
a1b.yrs <- 1991:2039
ces.yrs <- 1991:2080


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Atka.mackerel biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
atkaB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atkaB.45.f1.80) <- c("gfd","mir","ces")
row.names(atkaB.45.f1.80) <- 1991:2080
atkaB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Atka.mackerel"]
atkaB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Atka.mackerel"]
atkaB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Atka.mackerel"]
# head(atkaB.45.f1.80)
atkaB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaB.45.f1.80.up[i] <- max(atkaB.45.f1.80[i,])
atkaB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaB.45.f1.80.lo[i] <- min(atkaB.45.f1.80[i,])
# Everything from 2081-2099
atkaB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atkaB.45.f1.99) <- c("gfd","mir")
row.names(atkaB.45.f1.99) <- 2081:2099
atkaB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Atka.mackerel"]
atkaB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Atka.mackerel"]
# head(atkaB.45.f1.99)
atkaB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaB.45.f1.99.up[i] <- max(atkaB.45.f1.99[i,])
atkaB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaB.45.f1.99.lo[i] <- min(atkaB.45.f1.99[i,])
# now append these two time periods
atkaB.45.f1.up <- c(atkaB.45.f1.80.up,atkaB.45.f1.99.up)
atkaB.45.f1.lo <- c(atkaB.45.f1.80.lo,atkaB.45.f1.99.lo)

# RCP 8.5
atkaB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atkaB.85.f1) <- c("gfd","mir","ces")
row.names(atkaB.85.f1) <- 1991:2099
atkaB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Atka.mackerel"]
atkaB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Atka.mackerel"]
atkaB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Atka.mackerel"]
# head(atkaB.85.f1)
atkaB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaB.85.f1.up[i] <- max(atkaB.85.f1[i,])
atkaB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaB.85.f1.lo[i] <- min(atkaB.85.f1[i,])

# # SRES A1B
# atkaB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atkaB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(atkaB.a1b.f1) <- 1991:2039
# atkaB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Atka.mackerel"]
# atkaB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Atka.mackerel"]
# atkaB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Atka.mackerel"]
# # head(atkaB.a1b.f1)
# atkaB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaB.a1b.f1.up[i] <- max(atkaB.a1b.f1[i,])
# atkaB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaB.a1b.f1.lo[i] <- min(atkaB.a1b.f1[i,])

# Atka.mackerel Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
atkaC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atkaC.45.f1.80) <- c("gfd","mir","ces")
row.names(atkaC.45.f1.80) <- 1991:2080
atkaC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Atka.mackerel"]
atkaC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Atka.mackerel"]
atkaC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Atka.mackerel"]
# head(atkaC.45.f1.80)
atkaC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaC.45.f1.80.up[i] <- max(atkaC.45.f1.80[i,])
atkaC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaC.45.f1.80.lo[i] <- min(atkaC.45.f1.80[i,])
# Everything from 2081-2099
atkaC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atkaC.45.f1.99) <- c("gfd","mir")
row.names(atkaC.45.f1.99) <- 2081:2099
atkaC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Atka.mackerel"]
atkaC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Atka.mackerel"]
# head(atkaC.45.f1.99)
atkaC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaC.45.f1.99.up[i] <- max(atkaC.45.f1.99[i,])
atkaC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaC.45.f1.99.lo[i] <- min(atkaC.45.f1.99[i,])
# now append these two time periods
atkaC.45.f1.up <- c(atkaC.45.f1.80.up,atkaC.45.f1.99.up)
atkaC.45.f1.lo <- c(atkaC.45.f1.80.lo,atkaC.45.f1.99.lo)

# RCP 8.5
atkaC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atkaC.85.f1) <- c("gfd","mir","ces")
row.names(atkaC.85.f1) <- 1991:2099
atkaC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Atka.mackerel"]
atkaC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Atka.mackerel"]
atkaC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Atka.mackerel"]
# head(atkaC.85.f1)
atkaC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaC.85.f1.up[i] <- max(atkaC.85.f1[i,])
atkaC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaC.85.f1.lo[i] <- min(atkaC.85.f1[i,])

# # SRES A1B
# atkaC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atkaC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(atkaC.a1b.f1) <- 1991:2039
# atkaC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Atka.mackerel"]
# atkaC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Atka.mackerel"]
# atkaC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Atka.mackerel"]
# # head(atkaC.a1b.f1)
# atkaC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaC.a1b.f1.up[i] <- max(atkaC.a1b.f1[i,])
# atkaC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaC.a1b.f1.lo[i] <- min(atkaC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Atka.mackerel F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
atkaB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atkaB.45.f2.80) <- c("gfd","mir","ces")
row.names(atkaB.45.f2.80) <- 1991:2080
atkaB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Atka.mackerel"]
atkaB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Atka.mackerel"]
atkaB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Atka.mackerel"]
# head(atkaB.45.f2.80)
atkaB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaB.45.f2.80.up[i] <- max(atkaB.45.f2.80[i,])
atkaB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaB.45.f2.80.lo[i] <- min(atkaB.45.f2.80[i,])
# Everything from 2081-2099
atkaB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atkaB.45.f2.99) <- c("gfd","mir")
row.names(atkaB.45.f2.99) <- 2081:2099
atkaB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Atka.mackerel"]
atkaB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Atka.mackerel"]
# head(atkaB.45.f2.99)
atkaB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaB.45.f2.99.up[i] <- max(atkaB.45.f2.99[i,])
atkaB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaB.45.f2.99.lo[i] <- min(atkaB.45.f2.99[i,])
# now append these two time periods
atkaB.45.f2.up <- c(atkaB.45.f2.80.up,atkaB.45.f2.99.up)
atkaB.45.f2.lo <- c(atkaB.45.f2.80.lo,atkaB.45.f2.99.lo)

# RCP 8.5
atkaB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atkaB.85.f2) <- c("gfd","mir","ces")
row.names(atkaB.85.f2) <- 1991:2099
atkaB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Atka.mackerel"]
atkaB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Atka.mackerel"]
atkaB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Atka.mackerel"]
# head(atkaB.85.f2)
atkaB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaB.85.f2.up[i] <- max(atkaB.85.f2[i,])
atkaB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaB.85.f2.lo[i] <- min(atkaB.85.f2[i,])

# # SRES A1B
# atkaB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atkaB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(atkaB.a1b.f2) <- 1991:2039
# atkaB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Atka.mackerel"]
# atkaB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Atka.mackerel"]
# atkaB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Atka.mackerel"]
# # head(atkaB.a1b.f2)
# atkaB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaB.a1b.f2.up[i] <- max(atkaB.a1b.f2[i,])
# atkaB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaB.a1b.f2.lo[i] <- min(atkaB.a1b.f2[i,])

# Atka.mackerel Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
atkaC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atkaC.45.f2.80) <- c("gfd","mir","ces")
row.names(atkaC.45.f2.80) <- 1991:2080
atkaC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Atka.mackerel"]
atkaC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Atka.mackerel"]
atkaC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Atka.mackerel"]
# head(atkaC.45.f2.80)
atkaC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaC.45.f2.80.up[i] <- max(atkaC.45.f2.80[i,])
atkaC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaC.45.f2.80.lo[i] <- min(atkaC.45.f2.80[i,])
# Everything from 2081-2099
atkaC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atkaC.45.f2.99) <- c("gfd","mir")
row.names(atkaC.45.f2.99) <- 2081:2099
atkaC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Atka.mackerel"]
atkaC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Atka.mackerel"]
# head(atkaC.45.f2.99)
atkaC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaC.45.f2.99.up[i] <- max(atkaC.45.f2.99[i,])
atkaC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaC.45.f2.99.lo[i] <- min(atkaC.45.f2.99[i,])
# now append these two time periods
atkaC.45.f2.up <- c(atkaC.45.f2.80.up,atkaC.45.f2.99.up)
atkaC.45.f2.lo <- c(atkaC.45.f2.80.lo,atkaC.45.f2.99.lo)

# RCP 8.5
atkaC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atkaC.85.f2) <- c("gfd","mir","ces")
row.names(atkaC.85.f2) <- 1991:2099
atkaC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Atka.mackerel"]
atkaC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Atka.mackerel"]
atkaC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Atka.mackerel"]
# head(atkaC.85.f2)
atkaC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaC.85.f2.up[i] <- max(atkaC.85.f2[i,])
atkaC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaC.85.f2.lo[i] <- min(atkaC.85.f2[i,])

# # SRES A1B
# atkaC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atkaC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(atkaC.a1b.f2) <- 1991:2039
# atkaC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Atka.mackerel"]
# atkaC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Atka.mackerel"]
# atkaC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Atka.mackerel"]
# # head(atkaC.a1b.f2)
# atkaC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaC.a1b.f2.up[i] <- max(atkaC.a1b.f2[i,])
# atkaC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaC.a1b.f2.lo[i] <- min(atkaC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Atka.mackerel F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
atkaB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atkaB.45.f3.80) <- c("gfd","mir","ces")
row.names(atkaB.45.f3.80) <- 1991:2080
atkaB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Atka.mackerel"]
atkaB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Atka.mackerel"]
atkaB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Atka.mackerel"]
# head(atkaB.45.f3.80)
atkaB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaB.45.f3.80.up[i] <- max(atkaB.45.f3.80[i,])
atkaB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaB.45.f3.80.lo[i] <- min(atkaB.45.f3.80[i,])
# Everything from 2081-2099
atkaB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atkaB.45.f3.99) <- c("gfd","mir")
row.names(atkaB.45.f3.99) <- 2081:2099
atkaB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Atka.mackerel"]
atkaB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Atka.mackerel"]
# head(atkaB.45.f3.99)
atkaB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaB.45.f3.99.up[i] <- max(atkaB.45.f3.99[i,])
atkaB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaB.45.f3.99.lo[i] <- min(atkaB.45.f3.99[i,])
# now append these two time periods
atkaB.45.f3.up <- c(atkaB.45.f3.80.up,atkaB.45.f3.99.up)
atkaB.45.f3.lo <- c(atkaB.45.f3.80.lo,atkaB.45.f3.99.lo)

# RCP 8.5
atkaB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atkaB.85.f3) <- c("gfd","mir","ces")
row.names(atkaB.85.f3) <- 1991:2099
atkaB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Atka.mackerel"]
atkaB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Atka.mackerel"]
atkaB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Atka.mackerel"]
# head(atkaB.85.f3)
atkaB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaB.85.f3.up[i] <- max(atkaB.85.f3[i,])
atkaB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaB.85.f3.lo[i] <- min(atkaB.85.f3[i,])

# # SRES A1B
# atkaB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atkaB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(atkaB.a1b.f3) <- 1991:2039
# atkaB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Atka.mackerel"]
# atkaB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Atka.mackerel"]
# atkaB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Atka.mackerel"]
# # head(atkaB.a1b.f3)
# atkaB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaB.a1b.f3.up[i] <- max(atkaB.a1b.f3[i,])
# atkaB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaB.a1b.f3.lo[i] <- min(atkaB.a1b.f3[i,])

# Atka.mackerel Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
atkaC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atkaC.45.f3.80) <- c("gfd","mir","ces")
row.names(atkaC.45.f3.80) <- 1991:2080
atkaC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Atka.mackerel"]
atkaC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Atka.mackerel"]
atkaC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Atka.mackerel"]
# head(atkaC.45.f3.80)
atkaC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaC.45.f3.80.up[i] <- max(atkaC.45.f3.80[i,])
atkaC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaC.45.f3.80.lo[i] <- min(atkaC.45.f3.80[i,])
# Everything from 2081-2099
atkaC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atkaC.45.f3.99) <- c("gfd","mir")
row.names(atkaC.45.f3.99) <- 2081:2099
atkaC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Atka.mackerel"]
atkaC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Atka.mackerel"]
# head(atkaC.45.f3.99)
atkaC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaC.45.f3.99.up[i] <- max(atkaC.45.f3.99[i,])
atkaC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaC.45.f3.99.lo[i] <- min(atkaC.45.f3.99[i,])
# now append these two time periods
atkaC.45.f3.up <- c(atkaC.45.f3.80.up,atkaC.45.f3.99.up)
atkaC.45.f3.lo <- c(atkaC.45.f3.80.lo,atkaC.45.f3.99.lo)

# RCP 8.5
atkaC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atkaC.85.f3) <- c("gfd","mir","ces")
row.names(atkaC.85.f3) <- 1991:2099
atkaC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Atka.mackerel"]
atkaC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Atka.mackerel"]
atkaC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Atka.mackerel"]
# head(atkaC.85.f3)
atkaC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaC.85.f3.up[i] <- max(atkaC.85.f3[i,])
atkaC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaC.85.f3.lo[i] <- min(atkaC.85.f3[i,])

# # SRES A1B
# atkaC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atkaC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(atkaC.a1b.f3) <- 1991:2039
# atkaC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Atka.mackerel"]
# atkaC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Atka.mackerel"]
# atkaC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Atka.mackerel"]
# # head(atkaC.a1b.f3)
# atkaC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaC.a1b.f3.up[i] <- max(atkaC.a1b.f3[i,])
# atkaC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaC.a1b.f3.lo[i] <- min(atkaC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Atka.mackerel F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
atkaB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atkaB.45.f4.80) <- c("gfd","mir","ces")
row.names(atkaB.45.f4.80) <- 1991:2080
atkaB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Atka.mackerel"]
atkaB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Atka.mackerel"]
atkaB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Atka.mackerel"]
# head(atkaB.45.f4.80)
atkaB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaB.45.f4.80.up[i] <- max(atkaB.45.f4.80[i,])
atkaB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaB.45.f4.80.lo[i] <- min(atkaB.45.f4.80[i,])
# Everything from 2081-2099
atkaB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atkaB.45.f4.99) <- c("gfd","mir")
row.names(atkaB.45.f4.99) <- 2081:2099
atkaB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Atka.mackerel"]
atkaB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Atka.mackerel"]
# head(atkaB.45.f4.99)
atkaB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaB.45.f4.99.up[i] <- max(atkaB.45.f4.99[i,])
atkaB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaB.45.f4.99.lo[i] <- min(atkaB.45.f4.99[i,])
# now append these two time periods
atkaB.45.f4.up <- c(atkaB.45.f4.80.up,atkaB.45.f4.99.up)
atkaB.45.f4.lo <- c(atkaB.45.f4.80.lo,atkaB.45.f4.99.lo)

# RCP 8.5
atkaB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atkaB.85.f4) <- c("gfd","mir","ces")
row.names(atkaB.85.f4) <- 1991:2099
atkaB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Atka.mackerel"]
atkaB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Atka.mackerel"]
atkaB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Atka.mackerel"]
# head(atkaB.85.f4)
atkaB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaB.85.f4.up[i] <- max(atkaB.85.f4[i,])
atkaB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaB.85.f4.lo[i] <- min(atkaB.85.f4[i,])

# # SRES A1B
# atkaB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atkaB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(atkaB.a1b.f4) <- 1991:2039
# atkaB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Atka.mackerel"]
# atkaB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Atka.mackerel"]
# atkaB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Atka.mackerel"]
# # head(atkaB.a1b.f4)
# atkaB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaB.a1b.f4.up[i] <- max(atkaB.a1b.f4[i,])
# atkaB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaB.a1b.f4.lo[i] <- min(atkaB.a1b.f4[i,])

# Atka.mackerel Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
atkaC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atkaC.45.f4.80) <- c("gfd","mir","ces")
row.names(atkaC.45.f4.80) <- 1991:2080
atkaC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Atka.mackerel"]
atkaC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Atka.mackerel"]
atkaC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Atka.mackerel"]
# head(atkaC.45.f4.80)
atkaC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaC.45.f4.80.up[i] <- max(atkaC.45.f4.80[i,])
atkaC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atkaC.45.f4.80.lo[i] <- min(atkaC.45.f4.80[i,])
# Everything from 2081-2099
atkaC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atkaC.45.f4.99) <- c("gfd","mir")
row.names(atkaC.45.f4.99) <- 2081:2099
atkaC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Atka.mackerel"]
atkaC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Atka.mackerel"]
# head(atkaC.45.f4.99)
atkaC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaC.45.f4.99.up[i] <- max(atkaC.45.f4.99[i,])
atkaC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atkaC.45.f4.99.lo[i] <- min(atkaC.45.f4.99[i,])
# now append these two time periods
atkaC.45.f4.up <- c(atkaC.45.f4.80.up,atkaC.45.f4.99.up)
atkaC.45.f4.lo <- c(atkaC.45.f4.80.lo,atkaC.45.f4.99.lo)

# RCP 8.5
atkaC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atkaC.85.f4) <- c("gfd","mir","ces")
row.names(atkaC.85.f4) <- 1991:2099
atkaC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Atka.mackerel"]
atkaC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Atka.mackerel"]
atkaC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Atka.mackerel"]
# head(atkaC.85.f4)
atkaC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaC.85.f4.up[i] <- max(atkaC.85.f4[i,])
atkaC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atkaC.85.f4.lo[i] <- min(atkaC.85.f4[i,])

# # SRES A1B
# atkaC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atkaC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(atkaC.a1b.f4) <- 1991:2039
# atkaC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Atka.mackerel"]
# atkaC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Atka.mackerel"]
# atkaC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Atka.mackerel"]
# # head(atkaC.a1b.f4)
# atkaC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaC.a1b.f4.up[i] <- max(atkaC.a1b.f4[i,])
# atkaC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atkaC.a1b.f4.lo[i] <- min(atkaC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Capelin biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
capeB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(capeB.45.f1.80) <- c("gfd","mir","ces")
row.names(capeB.45.f1.80) <- 1991:2080
capeB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Capelin"]
capeB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Capelin"]
capeB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Capelin"]
# head(capeB.45.f1.80)
capeB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeB.45.f1.80.up[i] <- max(capeB.45.f1.80[i,])
capeB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeB.45.f1.80.lo[i] <- min(capeB.45.f1.80[i,])
# Everything from 2081-2099
capeB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(capeB.45.f1.99) <- c("gfd","mir")
row.names(capeB.45.f1.99) <- 2081:2099
capeB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Capelin"]
capeB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Capelin"]
# head(capeB.45.f1.99)
capeB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeB.45.f1.99.up[i] <- max(capeB.45.f1.99[i,])
capeB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeB.45.f1.99.lo[i] <- min(capeB.45.f1.99[i,])
# now append these two time periods
capeB.45.f1.up <- c(capeB.45.f1.80.up,capeB.45.f1.99.up)
capeB.45.f1.lo <- c(capeB.45.f1.80.lo,capeB.45.f1.99.lo)

# RCP 8.5
capeB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(capeB.85.f1) <- c("gfd","mir","ces")
row.names(capeB.85.f1) <- 1991:2099
capeB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Capelin"]
capeB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Capelin"]
capeB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Capelin"]
# head(capeB.85.f1)
capeB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeB.85.f1.up[i] <- max(capeB.85.f1[i,])
capeB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeB.85.f1.lo[i] <- min(capeB.85.f1[i,])

# # SRES A1B
# capeB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(capeB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(capeB.a1b.f1) <- 1991:2039
# capeB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Capelin"]
# capeB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Capelin"]
# capeB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Capelin"]
# # head(capeB.a1b.f1)
# capeB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeB.a1b.f1.up[i] <- max(capeB.a1b.f1[i,])
# capeB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeB.a1b.f1.lo[i] <- min(capeB.a1b.f1[i,])

# Capelin Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
capeC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(capeC.45.f1.80) <- c("gfd","mir","ces")
row.names(capeC.45.f1.80) <- 1991:2080
capeC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Capelin"]
capeC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Capelin"]
capeC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Capelin"]
# head(capeC.45.f1.80)
capeC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeC.45.f1.80.up[i] <- max(capeC.45.f1.80[i,])
capeC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeC.45.f1.80.lo[i] <- min(capeC.45.f1.80[i,])
# Everything from 2081-2099
capeC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(capeC.45.f1.99) <- c("gfd","mir")
row.names(capeC.45.f1.99) <- 2081:2099
capeC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Capelin"]
capeC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Capelin"]
# head(capeC.45.f1.99)
capeC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeC.45.f1.99.up[i] <- max(capeC.45.f1.99[i,])
capeC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeC.45.f1.99.lo[i] <- min(capeC.45.f1.99[i,])
# now append these two time periods
capeC.45.f1.up <- c(capeC.45.f1.80.up,capeC.45.f1.99.up)
capeC.45.f1.lo <- c(capeC.45.f1.80.lo,capeC.45.f1.99.lo)

# RCP 8.5
capeC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(capeC.85.f1) <- c("gfd","mir","ces")
row.names(capeC.85.f1) <- 1991:2099
capeC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Capelin"]
capeC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Capelin"]
capeC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Capelin"]
# head(capeC.85.f1)
capeC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeC.85.f1.up[i] <- max(capeC.85.f1[i,])
capeC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeC.85.f1.lo[i] <- min(capeC.85.f1[i,])

# # SRES A1B
# capeC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(capeC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(capeC.a1b.f1) <- 1991:2039
# capeC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Capelin"]
# capeC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Capelin"]
# capeC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Capelin"]
# # head(capeC.a1b.f1)
# capeC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeC.a1b.f1.up[i] <- max(capeC.a1b.f1[i,])
# capeC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeC.a1b.f1.lo[i] <- min(capeC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Capelin F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
capeB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(capeB.45.f2.80) <- c("gfd","mir","ces")
row.names(capeB.45.f2.80) <- 1991:2080
capeB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Capelin"]
capeB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Capelin"]
capeB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Capelin"]
# head(capeB.45.f2.80)
capeB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeB.45.f2.80.up[i] <- max(capeB.45.f2.80[i,])
capeB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeB.45.f2.80.lo[i] <- min(capeB.45.f2.80[i,])
# Everything from 2081-2099
capeB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(capeB.45.f2.99) <- c("gfd","mir")
row.names(capeB.45.f2.99) <- 2081:2099
capeB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Capelin"]
capeB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Capelin"]
# head(capeB.45.f2.99)
capeB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeB.45.f2.99.up[i] <- max(capeB.45.f2.99[i,])
capeB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeB.45.f2.99.lo[i] <- min(capeB.45.f2.99[i,])
# now append these two time periods
capeB.45.f2.up <- c(capeB.45.f2.80.up,capeB.45.f2.99.up)
capeB.45.f2.lo <- c(capeB.45.f2.80.lo,capeB.45.f2.99.lo)

# RCP 8.5
capeB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(capeB.85.f2) <- c("gfd","mir","ces")
row.names(capeB.85.f2) <- 1991:2099
capeB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Capelin"]
capeB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Capelin"]
capeB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Capelin"]
# head(capeB.85.f2)
capeB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeB.85.f2.up[i] <- max(capeB.85.f2[i,])
capeB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeB.85.f2.lo[i] <- min(capeB.85.f2[i,])

# # SRES A1B
# capeB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(capeB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(capeB.a1b.f2) <- 1991:2039
# capeB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Capelin"]
# capeB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Capelin"]
# capeB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Capelin"]
# # head(capeB.a1b.f2)
# capeB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeB.a1b.f2.up[i] <- max(capeB.a1b.f2[i,])
# capeB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeB.a1b.f2.lo[i] <- min(capeB.a1b.f2[i,])

# Capelin Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
capeC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(capeC.45.f2.80) <- c("gfd","mir","ces")
row.names(capeC.45.f2.80) <- 1991:2080
capeC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Capelin"]
capeC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Capelin"]
capeC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Capelin"]
# head(capeC.45.f2.80)
capeC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeC.45.f2.80.up[i] <- max(capeC.45.f2.80[i,])
capeC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeC.45.f2.80.lo[i] <- min(capeC.45.f2.80[i,])
# Everything from 2081-2099
capeC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(capeC.45.f2.99) <- c("gfd","mir")
row.names(capeC.45.f2.99) <- 2081:2099
capeC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Capelin"]
capeC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Capelin"]
# head(capeC.45.f2.99)
capeC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeC.45.f2.99.up[i] <- max(capeC.45.f2.99[i,])
capeC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeC.45.f2.99.lo[i] <- min(capeC.45.f2.99[i,])
# now append these two time periods
capeC.45.f2.up <- c(capeC.45.f2.80.up,capeC.45.f2.99.up)
capeC.45.f2.lo <- c(capeC.45.f2.80.lo,capeC.45.f2.99.lo)

# RCP 8.5
capeC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(capeC.85.f2) <- c("gfd","mir","ces")
row.names(capeC.85.f2) <- 1991:2099
capeC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Capelin"]
capeC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Capelin"]
capeC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Capelin"]
# head(capeC.85.f2)
capeC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeC.85.f2.up[i] <- max(capeC.85.f2[i,])
capeC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeC.85.f2.lo[i] <- min(capeC.85.f2[i,])

# # SRES A1B
# capeC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(capeC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(capeC.a1b.f2) <- 1991:2039
# capeC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Capelin"]
# capeC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Capelin"]
# capeC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Capelin"]
# # head(capeC.a1b.f2)
# capeC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeC.a1b.f2.up[i] <- max(capeC.a1b.f2[i,])
# capeC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeC.a1b.f2.lo[i] <- min(capeC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Capelin F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
capeB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(capeB.45.f3.80) <- c("gfd","mir","ces")
row.names(capeB.45.f3.80) <- 1991:2080
capeB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Capelin"]
capeB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Capelin"]
capeB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Capelin"]
# head(capeB.45.f3.80)
capeB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeB.45.f3.80.up[i] <- max(capeB.45.f3.80[i,])
capeB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeB.45.f3.80.lo[i] <- min(capeB.45.f3.80[i,])
# Everything from 2081-2099
capeB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(capeB.45.f3.99) <- c("gfd","mir")
row.names(capeB.45.f3.99) <- 2081:2099
capeB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Capelin"]
capeB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Capelin"]
# head(capeB.45.f3.99)
capeB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeB.45.f3.99.up[i] <- max(capeB.45.f3.99[i,])
capeB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeB.45.f3.99.lo[i] <- min(capeB.45.f3.99[i,])
# now append these two time periods
capeB.45.f3.up <- c(capeB.45.f3.80.up,capeB.45.f3.99.up)
capeB.45.f3.lo <- c(capeB.45.f3.80.lo,capeB.45.f3.99.lo)

# RCP 8.5
capeB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(capeB.85.f3) <- c("gfd","mir","ces")
row.names(capeB.85.f3) <- 1991:2099
capeB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Capelin"]
capeB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Capelin"]
capeB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Capelin"]
# head(capeB.85.f3)
capeB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeB.85.f3.up[i] <- max(capeB.85.f3[i,])
capeB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeB.85.f3.lo[i] <- min(capeB.85.f3[i,])

# # SRES A1B
# capeB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(capeB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(capeB.a1b.f3) <- 1991:2039
# capeB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Capelin"]
# capeB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Capelin"]
# capeB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Capelin"]
# # head(capeB.a1b.f3)
# capeB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeB.a1b.f3.up[i] <- max(capeB.a1b.f3[i,])
# capeB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeB.a1b.f3.lo[i] <- min(capeB.a1b.f3[i,])

# Capelin Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
capeC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(capeC.45.f3.80) <- c("gfd","mir","ces")
row.names(capeC.45.f3.80) <- 1991:2080
capeC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Capelin"]
capeC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Capelin"]
capeC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Capelin"]
# head(capeC.45.f3.80)
capeC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeC.45.f3.80.up[i] <- max(capeC.45.f3.80[i,])
capeC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeC.45.f3.80.lo[i] <- min(capeC.45.f3.80[i,])
# Everything from 2081-2099
capeC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(capeC.45.f3.99) <- c("gfd","mir")
row.names(capeC.45.f3.99) <- 2081:2099
capeC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Capelin"]
capeC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Capelin"]
# head(capeC.45.f3.99)
capeC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeC.45.f3.99.up[i] <- max(capeC.45.f3.99[i,])
capeC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeC.45.f3.99.lo[i] <- min(capeC.45.f3.99[i,])
# now append these two time periods
capeC.45.f3.up <- c(capeC.45.f3.80.up,capeC.45.f3.99.up)
capeC.45.f3.lo <- c(capeC.45.f3.80.lo,capeC.45.f3.99.lo)

# RCP 8.5
capeC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(capeC.85.f3) <- c("gfd","mir","ces")
row.names(capeC.85.f3) <- 1991:2099
capeC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Capelin"]
capeC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Capelin"]
capeC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Capelin"]
# head(capeC.85.f3)
capeC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeC.85.f3.up[i] <- max(capeC.85.f3[i,])
capeC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeC.85.f3.lo[i] <- min(capeC.85.f3[i,])

# # SRES A1B
# capeC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(capeC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(capeC.a1b.f3) <- 1991:2039
# capeC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Capelin"]
# capeC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Capelin"]
# capeC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Capelin"]
# # head(capeC.a1b.f3)
# capeC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeC.a1b.f3.up[i] <- max(capeC.a1b.f3[i,])
# capeC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeC.a1b.f3.lo[i] <- min(capeC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Capelin F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
capeB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(capeB.45.f4.80) <- c("gfd","mir","ces")
row.names(capeB.45.f4.80) <- 1991:2080
capeB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Capelin"]
capeB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Capelin"]
capeB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Capelin"]
# head(capeB.45.f4.80)
capeB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeB.45.f4.80.up[i] <- max(capeB.45.f4.80[i,])
capeB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeB.45.f4.80.lo[i] <- min(capeB.45.f4.80[i,])
# Everything from 2081-2099
capeB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(capeB.45.f4.99) <- c("gfd","mir")
row.names(capeB.45.f4.99) <- 2081:2099
capeB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Capelin"]
capeB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Capelin"]
# head(capeB.45.f4.99)
capeB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeB.45.f4.99.up[i] <- max(capeB.45.f4.99[i,])
capeB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeB.45.f4.99.lo[i] <- min(capeB.45.f4.99[i,])
# now append these two time periods
capeB.45.f4.up <- c(capeB.45.f4.80.up,capeB.45.f4.99.up)
capeB.45.f4.lo <- c(capeB.45.f4.80.lo,capeB.45.f4.99.lo)

# RCP 8.5
capeB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(capeB.85.f4) <- c("gfd","mir","ces")
row.names(capeB.85.f4) <- 1991:2099
capeB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Capelin"]
capeB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Capelin"]
capeB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Capelin"]
# head(capeB.85.f4)
capeB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeB.85.f4.up[i] <- max(capeB.85.f4[i,])
capeB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeB.85.f4.lo[i] <- min(capeB.85.f4[i,])

# # SRES A1B
# capeB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(capeB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(capeB.a1b.f4) <- 1991:2039
# capeB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Capelin"]
# capeB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Capelin"]
# capeB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Capelin"]
# # head(capeB.a1b.f4)
# capeB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeB.a1b.f4.up[i] <- max(capeB.a1b.f4[i,])
# capeB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeB.a1b.f4.lo[i] <- min(capeB.a1b.f4[i,])

# Capelin Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
capeC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(capeC.45.f4.80) <- c("gfd","mir","ces")
row.names(capeC.45.f4.80) <- 1991:2080
capeC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Capelin"]
capeC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Capelin"]
capeC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Capelin"]
# head(capeC.45.f4.80)
capeC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeC.45.f4.80.up[i] <- max(capeC.45.f4.80[i,])
capeC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) capeC.45.f4.80.lo[i] <- min(capeC.45.f4.80[i,])
# Everything from 2081-2099
capeC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(capeC.45.f4.99) <- c("gfd","mir")
row.names(capeC.45.f4.99) <- 2081:2099
capeC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Capelin"]
capeC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Capelin"]
# head(capeC.45.f4.99)
capeC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeC.45.f4.99.up[i] <- max(capeC.45.f4.99[i,])
capeC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) capeC.45.f4.99.lo[i] <- min(capeC.45.f4.99[i,])
# now append these two time periods
capeC.45.f4.up <- c(capeC.45.f4.80.up,capeC.45.f4.99.up)
capeC.45.f4.lo <- c(capeC.45.f4.80.lo,capeC.45.f4.99.lo)

# RCP 8.5
capeC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(capeC.85.f4) <- c("gfd","mir","ces")
row.names(capeC.85.f4) <- 1991:2099
capeC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Capelin"]
capeC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Capelin"]
capeC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Capelin"]
# head(capeC.85.f4)
capeC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeC.85.f4.up[i] <- max(capeC.85.f4[i,])
capeC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) capeC.85.f4.lo[i] <- min(capeC.85.f4[i,])

# # SRES A1B
# capeC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(capeC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(capeC.a1b.f4) <- 1991:2039
# capeC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Capelin"]
# capeC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Capelin"]
# capeC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Capelin"]
# # head(capeC.a1b.f4)
# capeC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeC.a1b.f4.up[i] <- max(capeC.a1b.f4[i,])
# capeC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) capeC.a1b.f4.lo[i] <- min(capeC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Gr.Turbot_Juv biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
gtjB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gtjB.45.f1.80) <- c("gfd","mir","ces")
row.names(gtjB.45.f1.80) <- 1991:2080
gtjB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Gr.Turbot_Juv"]
gtjB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Gr.Turbot_Juv"]
gtjB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# head(gtjB.45.f1.80)
gtjB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjB.45.f1.80.up[i] <- max(gtjB.45.f1.80[i,])
gtjB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjB.45.f1.80.lo[i] <- min(gtjB.45.f1.80[i,])
# Everything from 2081-2099
gtjB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gtjB.45.f1.99) <- c("gfd","mir")
row.names(gtjB.45.f1.99) <- 2081:2099
gtjB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Gr.Turbot_Juv"]
gtjB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Gr.Turbot_Juv"]
# head(gtjB.45.f1.99)
gtjB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjB.45.f1.99.up[i] <- max(gtjB.45.f1.99[i,])
gtjB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjB.45.f1.99.lo[i] <- min(gtjB.45.f1.99[i,])
# now append these two time periods
gtjB.45.f1.up <- c(gtjB.45.f1.80.up,gtjB.45.f1.99.up)
gtjB.45.f1.lo <- c(gtjB.45.f1.80.lo,gtjB.45.f1.99.lo)

# RCP 8.5
gtjB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gtjB.85.f1) <- c("gfd","mir","ces")
row.names(gtjB.85.f1) <- 1991:2099
gtjB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
gtjB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
gtjB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# head(gtjB.85.f1)
gtjB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjB.85.f1.up[i] <- max(gtjB.85.f1[i,])
gtjB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjB.85.f1.lo[i] <- min(gtjB.85.f1[i,])

# # SRES A1B
# gtjB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gtjB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(gtjB.a1b.f1) <- 1991:2039
# gtjB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# gtjB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# gtjB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# # head(gtjB.a1b.f1)
# gtjB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjB.a1b.f1.up[i] <- max(gtjB.a1b.f1[i,])
# gtjB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjB.a1b.f1.lo[i] <- min(gtjB.a1b.f1[i,])

# Gr.Turbot_Juv Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
gtjC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gtjC.45.f1.80) <- c("gfd","mir","ces")
row.names(gtjC.45.f1.80) <- 1991:2080
gtjC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Gr.Turbot_Juv"]
gtjC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Gr.Turbot_Juv"]
gtjC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# head(gtjC.45.f1.80)
gtjC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjC.45.f1.80.up[i] <- max(gtjC.45.f1.80[i,])
gtjC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjC.45.f1.80.lo[i] <- min(gtjC.45.f1.80[i,])
# Everything from 2081-2099
gtjC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gtjC.45.f1.99) <- c("gfd","mir")
row.names(gtjC.45.f1.99) <- 2081:2099
gtjC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Gr.Turbot_Juv"]
gtjC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Gr.Turbot_Juv"]
# head(gtjC.45.f1.99)
gtjC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjC.45.f1.99.up[i] <- max(gtjC.45.f1.99[i,])
gtjC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjC.45.f1.99.lo[i] <- min(gtjC.45.f1.99[i,])
# now append these two time periods
gtjC.45.f1.up <- c(gtjC.45.f1.80.up,gtjC.45.f1.99.up)
gtjC.45.f1.lo <- c(gtjC.45.f1.80.lo,gtjC.45.f1.99.lo)

# RCP 8.5
gtjC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gtjC.85.f1) <- c("gfd","mir","ces")
row.names(gtjC.85.f1) <- 1991:2099
gtjC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Gr.Turbot_Juv"]
gtjC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Gr.Turbot_Juv"]
gtjC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# head(gtjC.85.f1)
gtjC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjC.85.f1.up[i] <- max(gtjC.85.f1[i,])
gtjC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjC.85.f1.lo[i] <- min(gtjC.85.f1[i,])

# # SRES A1B
# gtjC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gtjC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(gtjC.a1b.f1) <- 1991:2039
# gtjC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# gtjC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# gtjC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# # head(gtjC.a1b.f1)
# gtjC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjC.a1b.f1.up[i] <- max(gtjC.a1b.f1[i,])
# gtjC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjC.a1b.f1.lo[i] <- min(gtjC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Gr.Turbot_Juv F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
gtjB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gtjB.45.f2.80) <- c("gfd","mir","ces")
row.names(gtjB.45.f2.80) <- 1991:2080
gtjB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Gr.Turbot_Juv"]
gtjB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Gr.Turbot_Juv"]
gtjB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# head(gtjB.45.f2.80)
gtjB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjB.45.f2.80.up[i] <- max(gtjB.45.f2.80[i,])
gtjB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjB.45.f2.80.lo[i] <- min(gtjB.45.f2.80[i,])
# Everything from 2081-2099
gtjB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gtjB.45.f2.99) <- c("gfd","mir")
row.names(gtjB.45.f2.99) <- 2081:2099
gtjB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Gr.Turbot_Juv"]
gtjB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Gr.Turbot_Juv"]
# head(gtjB.45.f2.99)
gtjB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjB.45.f2.99.up[i] <- max(gtjB.45.f2.99[i,])
gtjB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjB.45.f2.99.lo[i] <- min(gtjB.45.f2.99[i,])
# now append these two time periods
gtjB.45.f2.up <- c(gtjB.45.f2.80.up,gtjB.45.f2.99.up)
gtjB.45.f2.lo <- c(gtjB.45.f2.80.lo,gtjB.45.f2.99.lo)

# RCP 8.5
gtjB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gtjB.85.f2) <- c("gfd","mir","ces")
row.names(gtjB.85.f2) <- 1991:2099
gtjB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
gtjB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
gtjB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# head(gtjB.85.f2)
gtjB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjB.85.f2.up[i] <- max(gtjB.85.f2[i,])
gtjB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjB.85.f2.lo[i] <- min(gtjB.85.f2[i,])

# # SRES A1B
# gtjB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gtjB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(gtjB.a1b.f2) <- 1991:2039
# gtjB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# gtjB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# gtjB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# # head(gtjB.a1b.f2)
# gtjB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjB.a1b.f2.up[i] <- max(gtjB.a1b.f2[i,])
# gtjB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjB.a1b.f2.lo[i] <- min(gtjB.a1b.f2[i,])

# Gr.Turbot_Juv Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
gtjC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gtjC.45.f2.80) <- c("gfd","mir","ces")
row.names(gtjC.45.f2.80) <- 1991:2080
gtjC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Gr.Turbot_Juv"]
gtjC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Gr.Turbot_Juv"]
gtjC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# head(gtjC.45.f2.80)
gtjC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjC.45.f2.80.up[i] <- max(gtjC.45.f2.80[i,])
gtjC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjC.45.f2.80.lo[i] <- min(gtjC.45.f2.80[i,])
# Everything from 2081-2099
gtjC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gtjC.45.f2.99) <- c("gfd","mir")
row.names(gtjC.45.f2.99) <- 2081:2099
gtjC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Gr.Turbot_Juv"]
gtjC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Gr.Turbot_Juv"]
# head(gtjC.45.f2.99)
gtjC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjC.45.f2.99.up[i] <- max(gtjC.45.f2.99[i,])
gtjC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjC.45.f2.99.lo[i] <- min(gtjC.45.f2.99[i,])
# now append these two time periods
gtjC.45.f2.up <- c(gtjC.45.f2.80.up,gtjC.45.f2.99.up)
gtjC.45.f2.lo <- c(gtjC.45.f2.80.lo,gtjC.45.f2.99.lo)

# RCP 8.5
gtjC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gtjC.85.f2) <- c("gfd","mir","ces")
row.names(gtjC.85.f2) <- 1991:2099
gtjC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Gr.Turbot_Juv"]
gtjC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Gr.Turbot_Juv"]
gtjC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# head(gtjC.85.f2)
gtjC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjC.85.f2.up[i] <- max(gtjC.85.f2[i,])
gtjC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjC.85.f2.lo[i] <- min(gtjC.85.f2[i,])

# # SRES A1B
# gtjC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gtjC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(gtjC.a1b.f2) <- 1991:2039
# gtjC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# gtjC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# gtjC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# # head(gtjC.a1b.f2)
# gtjC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjC.a1b.f2.up[i] <- max(gtjC.a1b.f2[i,])
# gtjC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjC.a1b.f2.lo[i] <- min(gtjC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Gr.Turbot_Juv F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
gtjB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gtjB.45.f3.80) <- c("gfd","mir","ces")
row.names(gtjB.45.f3.80) <- 1991:2080
gtjB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Gr.Turbot_Juv"]
gtjB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Gr.Turbot_Juv"]
gtjB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# head(gtjB.45.f3.80)
gtjB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjB.45.f3.80.up[i] <- max(gtjB.45.f3.80[i,])
gtjB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjB.45.f3.80.lo[i] <- min(gtjB.45.f3.80[i,])
# Everything from 2081-2099
gtjB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gtjB.45.f3.99) <- c("gfd","mir")
row.names(gtjB.45.f3.99) <- 2081:2099
gtjB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Gr.Turbot_Juv"]
gtjB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Gr.Turbot_Juv"]
# head(gtjB.45.f3.99)
gtjB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjB.45.f3.99.up[i] <- max(gtjB.45.f3.99[i,])
gtjB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjB.45.f3.99.lo[i] <- min(gtjB.45.f3.99[i,])
# now append these two time periods
gtjB.45.f3.up <- c(gtjB.45.f3.80.up,gtjB.45.f3.99.up)
gtjB.45.f3.lo <- c(gtjB.45.f3.80.lo,gtjB.45.f3.99.lo)

# RCP 8.5
gtjB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gtjB.85.f3) <- c("gfd","mir","ces")
row.names(gtjB.85.f3) <- 1991:2099
gtjB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
gtjB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
gtjB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# head(gtjB.85.f3)
gtjB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjB.85.f3.up[i] <- max(gtjB.85.f3[i,])
gtjB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjB.85.f3.lo[i] <- min(gtjB.85.f3[i,])

# # SRES A1B
# gtjB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gtjB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(gtjB.a1b.f3) <- 1991:2039
# gtjB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# gtjB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# gtjB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# # head(gtjB.a1b.f3)
# gtjB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjB.a1b.f3.up[i] <- max(gtjB.a1b.f3[i,])
# gtjB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjB.a1b.f3.lo[i] <- min(gtjB.a1b.f3[i,])

# Gr.Turbot_Juv Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
gtjC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gtjC.45.f3.80) <- c("gfd","mir","ces")
row.names(gtjC.45.f3.80) <- 1991:2080
gtjC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Gr.Turbot_Juv"]
gtjC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Gr.Turbot_Juv"]
gtjC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# head(gtjC.45.f3.80)
gtjC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjC.45.f3.80.up[i] <- max(gtjC.45.f3.80[i,])
gtjC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjC.45.f3.80.lo[i] <- min(gtjC.45.f3.80[i,])
# Everything from 2081-2099
gtjC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gtjC.45.f3.99) <- c("gfd","mir")
row.names(gtjC.45.f3.99) <- 2081:2099
gtjC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Gr.Turbot_Juv"]
gtjC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Gr.Turbot_Juv"]
# head(gtjC.45.f3.99)
gtjC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjC.45.f3.99.up[i] <- max(gtjC.45.f3.99[i,])
gtjC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjC.45.f3.99.lo[i] <- min(gtjC.45.f3.99[i,])
# now append these two time periods
gtjC.45.f3.up <- c(gtjC.45.f3.80.up,gtjC.45.f3.99.up)
gtjC.45.f3.lo <- c(gtjC.45.f3.80.lo,gtjC.45.f3.99.lo)

# RCP 8.5
gtjC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gtjC.85.f3) <- c("gfd","mir","ces")
row.names(gtjC.85.f3) <- 1991:2099
gtjC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Gr.Turbot_Juv"]
gtjC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Gr.Turbot_Juv"]
gtjC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# head(gtjC.85.f3)
gtjC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjC.85.f3.up[i] <- max(gtjC.85.f3[i,])
gtjC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjC.85.f3.lo[i] <- min(gtjC.85.f3[i,])

# # SRES A1B
# gtjC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gtjC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(gtjC.a1b.f3) <- 1991:2039
# gtjC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# gtjC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# gtjC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# # head(gtjC.a1b.f3)
# gtjC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjC.a1b.f3.up[i] <- max(gtjC.a1b.f3[i,])
# gtjC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjC.a1b.f3.lo[i] <- min(gtjC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Gr.Turbot_Juv F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
gtjB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gtjB.45.f4.80) <- c("gfd","mir","ces")
row.names(gtjB.45.f4.80) <- 1991:2080
gtjB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Gr.Turbot_Juv"]
gtjB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Gr.Turbot_Juv"]
gtjB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# head(gtjB.45.f4.80)
gtjB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjB.45.f4.80.up[i] <- max(gtjB.45.f4.80[i,])
gtjB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjB.45.f4.80.lo[i] <- min(gtjB.45.f4.80[i,])
# Everything from 2081-2099
gtjB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gtjB.45.f4.99) <- c("gfd","mir")
row.names(gtjB.45.f4.99) <- 2081:2099
gtjB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Gr.Turbot_Juv"]
gtjB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Gr.Turbot_Juv"]
# head(gtjB.45.f4.99)
gtjB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjB.45.f4.99.up[i] <- max(gtjB.45.f4.99[i,])
gtjB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjB.45.f4.99.lo[i] <- min(gtjB.45.f4.99[i,])
# now append these two time periods
gtjB.45.f4.up <- c(gtjB.45.f4.80.up,gtjB.45.f4.99.up)
gtjB.45.f4.lo <- c(gtjB.45.f4.80.lo,gtjB.45.f4.99.lo)

# RCP 8.5
gtjB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gtjB.85.f4) <- c("gfd","mir","ces")
row.names(gtjB.85.f4) <- 1991:2099
gtjB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
gtjB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
gtjB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# head(gtjB.85.f4)
gtjB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjB.85.f4.up[i] <- max(gtjB.85.f4[i,])
gtjB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjB.85.f4.lo[i] <- min(gtjB.85.f4[i,])

# # SRES A1B
# gtjB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gtjB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(gtjB.a1b.f4) <- 1991:2039
# gtjB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# gtjB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# gtjB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Gr.Turbot_Juv"]
# # head(gtjB.a1b.f4)
# gtjB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjB.a1b.f4.up[i] <- max(gtjB.a1b.f4[i,])
# gtjB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjB.a1b.f4.lo[i] <- min(gtjB.a1b.f4[i,])

# Gr.Turbot_Juv Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
gtjC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gtjC.45.f4.80) <- c("gfd","mir","ces")
row.names(gtjC.45.f4.80) <- 1991:2080
gtjC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Gr.Turbot_Juv"]
gtjC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Gr.Turbot_Juv"]
gtjC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# head(gtjC.45.f4.80)
gtjC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjC.45.f4.80.up[i] <- max(gtjC.45.f4.80[i,])
gtjC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gtjC.45.f4.80.lo[i] <- min(gtjC.45.f4.80[i,])
# Everything from 2081-2099
gtjC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gtjC.45.f4.99) <- c("gfd","mir")
row.names(gtjC.45.f4.99) <- 2081:2099
gtjC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Gr.Turbot_Juv"]
gtjC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Gr.Turbot_Juv"]
# head(gtjC.45.f4.99)
gtjC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjC.45.f4.99.up[i] <- max(gtjC.45.f4.99[i,])
gtjC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gtjC.45.f4.99.lo[i] <- min(gtjC.45.f4.99[i,])
# now append these two time periods
gtjC.45.f4.up <- c(gtjC.45.f4.80.up,gtjC.45.f4.99.up)
gtjC.45.f4.lo <- c(gtjC.45.f4.80.lo,gtjC.45.f4.99.lo)

# RCP 8.5
gtjC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gtjC.85.f4) <- c("gfd","mir","ces")
row.names(gtjC.85.f4) <- 1991:2099
gtjC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Gr.Turbot_Juv"]
gtjC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Gr.Turbot_Juv"]
gtjC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# head(gtjC.85.f4)
gtjC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjC.85.f4.up[i] <- max(gtjC.85.f4[i,])
gtjC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gtjC.85.f4.lo[i] <- min(gtjC.85.f4[i,])

# # SRES A1B
# gtjC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gtjC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(gtjC.a1b.f4) <- 1991:2039
# gtjC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# gtjC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# gtjC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Gr.Turbot_Juv"]
# # head(gtjC.a1b.f4)
# gtjC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjC.a1b.f4.up[i] <- max(gtjC.a1b.f4[i,])
# gtjC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gtjC.a1b.f4.lo[i] <- min(gtjC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Herring biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
herB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(herB.45.f1.80) <- c("gfd","mir","ces")
row.names(herB.45.f1.80) <- 1991:2080
herB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Herring"]
herB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Herring"]
herB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Herring"]
# head(herB.45.f1.80)
herB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) herB.45.f1.80.up[i] <- max(herB.45.f1.80[i,])
herB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) herB.45.f1.80.lo[i] <- min(herB.45.f1.80[i,])
# Everything from 2081-2099
herB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(herB.45.f1.99) <- c("gfd","mir")
row.names(herB.45.f1.99) <- 2081:2099
herB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Herring"]
herB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Herring"]
# head(herB.45.f1.99)
herB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) herB.45.f1.99.up[i] <- max(herB.45.f1.99[i,])
herB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) herB.45.f1.99.lo[i] <- min(herB.45.f1.99[i,])
# now append these two time periods
herB.45.f1.up <- c(herB.45.f1.80.up,herB.45.f1.99.up)
herB.45.f1.lo <- c(herB.45.f1.80.lo,herB.45.f1.99.lo)

# RCP 8.5
herB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(herB.85.f1) <- c("gfd","mir","ces")
row.names(herB.85.f1) <- 1991:2099
herB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Herring"]
herB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Herring"]
herB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Herring"]
# head(herB.85.f1)
herB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) herB.85.f1.up[i] <- max(herB.85.f1[i,])
herB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) herB.85.f1.lo[i] <- min(herB.85.f1[i,])

# # SRES A1B
# herB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(herB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(herB.a1b.f1) <- 1991:2039
# herB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Herring"]
# herB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Herring"]
# herB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Herring"]
# # head(herB.a1b.f1)
# herB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herB.a1b.f1.up[i] <- max(herB.a1b.f1[i,])
# herB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herB.a1b.f1.lo[i] <- min(herB.a1b.f1[i,])

# Herring Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
herC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(herC.45.f1.80) <- c("gfd","mir","ces")
row.names(herC.45.f1.80) <- 1991:2080
herC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Herring"]
herC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Herring"]
herC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Herring"]
# head(herC.45.f1.80)
herC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) herC.45.f1.80.up[i] <- max(herC.45.f1.80[i,])
herC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) herC.45.f1.80.lo[i] <- min(herC.45.f1.80[i,])
# Everything from 2081-2099
herC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(herC.45.f1.99) <- c("gfd","mir")
row.names(herC.45.f1.99) <- 2081:2099
herC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Herring"]
herC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Herring"]
# head(herC.45.f1.99)
herC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) herC.45.f1.99.up[i] <- max(herC.45.f1.99[i,])
herC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) herC.45.f1.99.lo[i] <- min(herC.45.f1.99[i,])
# now append these two time periods
herC.45.f1.up <- c(herC.45.f1.80.up,herC.45.f1.99.up)
herC.45.f1.lo <- c(herC.45.f1.80.lo,herC.45.f1.99.lo)

# RCP 8.5
herC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(herC.85.f1) <- c("gfd","mir","ces")
row.names(herC.85.f1) <- 1991:2099
herC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Herring"]
herC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Herring"]
herC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Herring"]
# head(herC.85.f1)
herC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) herC.85.f1.up[i] <- max(herC.85.f1[i,])
herC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) herC.85.f1.lo[i] <- min(herC.85.f1[i,])

# # SRES A1B
# herC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(herC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(herC.a1b.f1) <- 1991:2039
# herC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Herring"]
# herC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Herring"]
# herC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Herring"]
# # head(herC.a1b.f1)
# herC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herC.a1b.f1.up[i] <- max(herC.a1b.f1[i,])
# herC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herC.a1b.f1.lo[i] <- min(herC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Herring F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
herB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(herB.45.f2.80) <- c("gfd","mir","ces")
row.names(herB.45.f2.80) <- 1991:2080
herB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Herring"]
herB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Herring"]
herB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Herring"]
# head(herB.45.f2.80)
herB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) herB.45.f2.80.up[i] <- max(herB.45.f2.80[i,])
herB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) herB.45.f2.80.lo[i] <- min(herB.45.f2.80[i,])
# Everything from 2081-2099
herB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(herB.45.f2.99) <- c("gfd","mir")
row.names(herB.45.f2.99) <- 2081:2099
herB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Herring"]
herB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Herring"]
# head(herB.45.f2.99)
herB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) herB.45.f2.99.up[i] <- max(herB.45.f2.99[i,])
herB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) herB.45.f2.99.lo[i] <- min(herB.45.f2.99[i,])
# now append these two time periods
herB.45.f2.up <- c(herB.45.f2.80.up,herB.45.f2.99.up)
herB.45.f2.lo <- c(herB.45.f2.80.lo,herB.45.f2.99.lo)

# RCP 8.5
herB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(herB.85.f2) <- c("gfd","mir","ces")
row.names(herB.85.f2) <- 1991:2099
herB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Herring"]
herB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Herring"]
herB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Herring"]
# head(herB.85.f2)
herB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) herB.85.f2.up[i] <- max(herB.85.f2[i,])
herB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) herB.85.f2.lo[i] <- min(herB.85.f2[i,])

# # SRES A1B
# herB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(herB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(herB.a1b.f2) <- 1991:2039
# herB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Herring"]
# herB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Herring"]
# herB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Herring"]
# # head(herB.a1b.f2)
# herB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herB.a1b.f2.up[i] <- max(herB.a1b.f2[i,])
# herB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herB.a1b.f2.lo[i] <- min(herB.a1b.f2[i,])

# Herring Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
herC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(herC.45.f2.80) <- c("gfd","mir","ces")
row.names(herC.45.f2.80) <- 1991:2080
herC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Herring"]
herC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Herring"]
herC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Herring"]
# head(herC.45.f2.80)
herC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) herC.45.f2.80.up[i] <- max(herC.45.f2.80[i,])
herC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) herC.45.f2.80.lo[i] <- min(herC.45.f2.80[i,])
# Everything from 2081-2099
herC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(herC.45.f2.99) <- c("gfd","mir")
row.names(herC.45.f2.99) <- 2081:2099
herC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Herring"]
herC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Herring"]
# head(herC.45.f2.99)
herC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) herC.45.f2.99.up[i] <- max(herC.45.f2.99[i,])
herC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) herC.45.f2.99.lo[i] <- min(herC.45.f2.99[i,])
# now append these two time periods
herC.45.f2.up <- c(herC.45.f2.80.up,herC.45.f2.99.up)
herC.45.f2.lo <- c(herC.45.f2.80.lo,herC.45.f2.99.lo)

# RCP 8.5
herC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(herC.85.f2) <- c("gfd","mir","ces")
row.names(herC.85.f2) <- 1991:2099
herC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Herring"]
herC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Herring"]
herC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Herring"]
# head(herC.85.f2)
herC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) herC.85.f2.up[i] <- max(herC.85.f2[i,])
herC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) herC.85.f2.lo[i] <- min(herC.85.f2[i,])

# # SRES A1B
# herC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(herC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(herC.a1b.f2) <- 1991:2039
# herC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Herring"]
# herC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Herring"]
# herC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Herring"]
# # head(herC.a1b.f2)
# herC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herC.a1b.f2.up[i] <- max(herC.a1b.f2[i,])
# herC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herC.a1b.f2.lo[i] <- min(herC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Herring F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
herB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(herB.45.f3.80) <- c("gfd","mir","ces")
row.names(herB.45.f3.80) <- 1991:2080
herB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Herring"]
herB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Herring"]
herB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Herring"]
# head(herB.45.f3.80)
herB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) herB.45.f3.80.up[i] <- max(herB.45.f3.80[i,])
herB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) herB.45.f3.80.lo[i] <- min(herB.45.f3.80[i,])
# Everything from 2081-2099
herB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(herB.45.f3.99) <- c("gfd","mir")
row.names(herB.45.f3.99) <- 2081:2099
herB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Herring"]
herB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Herring"]
# head(herB.45.f3.99)
herB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) herB.45.f3.99.up[i] <- max(herB.45.f3.99[i,])
herB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) herB.45.f3.99.lo[i] <- min(herB.45.f3.99[i,])
# now append these two time periods
herB.45.f3.up <- c(herB.45.f3.80.up,herB.45.f3.99.up)
herB.45.f3.lo <- c(herB.45.f3.80.lo,herB.45.f3.99.lo)

# RCP 8.5
herB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(herB.85.f3) <- c("gfd","mir","ces")
row.names(herB.85.f3) <- 1991:2099
herB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Herring"]
herB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Herring"]
herB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Herring"]
# head(herB.85.f3)
herB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) herB.85.f3.up[i] <- max(herB.85.f3[i,])
herB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) herB.85.f3.lo[i] <- min(herB.85.f3[i,])

# # SRES A1B
# herB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(herB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(herB.a1b.f3) <- 1991:2039
# herB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Herring"]
# herB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Herring"]
# herB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Herring"]
# # head(herB.a1b.f3)
# herB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herB.a1b.f3.up[i] <- max(herB.a1b.f3[i,])
# herB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herB.a1b.f3.lo[i] <- min(herB.a1b.f3[i,])

# Herring Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
herC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(herC.45.f3.80) <- c("gfd","mir","ces")
row.names(herC.45.f3.80) <- 1991:2080
herC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Herring"]
herC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Herring"]
herC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Herring"]
# head(herC.45.f3.80)
herC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) herC.45.f3.80.up[i] <- max(herC.45.f3.80[i,])
herC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) herC.45.f3.80.lo[i] <- min(herC.45.f3.80[i,])
# Everything from 2081-2099
herC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(herC.45.f3.99) <- c("gfd","mir")
row.names(herC.45.f3.99) <- 2081:2099
herC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Herring"]
herC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Herring"]
# head(herC.45.f3.99)
herC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) herC.45.f3.99.up[i] <- max(herC.45.f3.99[i,])
herC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) herC.45.f3.99.lo[i] <- min(herC.45.f3.99[i,])
# now append these two time periods
herC.45.f3.up <- c(herC.45.f3.80.up,herC.45.f3.99.up)
herC.45.f3.lo <- c(herC.45.f3.80.lo,herC.45.f3.99.lo)

# RCP 8.5
herC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(herC.85.f3) <- c("gfd","mir","ces")
row.names(herC.85.f3) <- 1991:2099
herC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Herring"]
herC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Herring"]
herC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Herring"]
# head(herC.85.f3)
herC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) herC.85.f3.up[i] <- max(herC.85.f3[i,])
herC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) herC.85.f3.lo[i] <- min(herC.85.f3[i,])

# # SRES A1B
# herC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(herC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(herC.a1b.f3) <- 1991:2039
# herC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Herring"]
# herC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Herring"]
# herC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Herring"]
# # head(herC.a1b.f3)
# herC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herC.a1b.f3.up[i] <- max(herC.a1b.f3[i,])
# herC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herC.a1b.f3.lo[i] <- min(herC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Herring F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
herB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(herB.45.f4.80) <- c("gfd","mir","ces")
row.names(herB.45.f4.80) <- 1991:2080
herB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Herring"]
herB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Herring"]
herB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Herring"]
# head(herB.45.f4.80)
herB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) herB.45.f4.80.up[i] <- max(herB.45.f4.80[i,])
herB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) herB.45.f4.80.lo[i] <- min(herB.45.f4.80[i,])
# Everything from 2081-2099
herB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(herB.45.f4.99) <- c("gfd","mir")
row.names(herB.45.f4.99) <- 2081:2099
herB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Herring"]
herB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Herring"]
# head(herB.45.f4.99)
herB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) herB.45.f4.99.up[i] <- max(herB.45.f4.99[i,])
herB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) herB.45.f4.99.lo[i] <- min(herB.45.f4.99[i,])
# now append these two time periods
herB.45.f4.up <- c(herB.45.f4.80.up,herB.45.f4.99.up)
herB.45.f4.lo <- c(herB.45.f4.80.lo,herB.45.f4.99.lo)

# RCP 8.5
herB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(herB.85.f4) <- c("gfd","mir","ces")
row.names(herB.85.f4) <- 1991:2099
herB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Herring"]
herB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Herring"]
herB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Herring"]
# head(herB.85.f4)
herB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) herB.85.f4.up[i] <- max(herB.85.f4[i,])
herB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) herB.85.f4.lo[i] <- min(herB.85.f4[i,])

# # SRES A1B
# herB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(herB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(herB.a1b.f4) <- 1991:2039
# herB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Herring"]
# herB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Herring"]
# herB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Herring"]
# # head(herB.a1b.f4)
# herB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herB.a1b.f4.up[i] <- max(herB.a1b.f4[i,])
# herB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herB.a1b.f4.lo[i] <- min(herB.a1b.f4[i,])

# Herring Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
herC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(herC.45.f4.80) <- c("gfd","mir","ces")
row.names(herC.45.f4.80) <- 1991:2080
herC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Herring"]
herC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Herring"]
herC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Herring"]
# head(herC.45.f4.80)
herC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) herC.45.f4.80.up[i] <- max(herC.45.f4.80[i,])
herC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) herC.45.f4.80.lo[i] <- min(herC.45.f4.80[i,])
# Everything from 2081-2099
herC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(herC.45.f4.99) <- c("gfd","mir")
row.names(herC.45.f4.99) <- 2081:2099
herC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Herring"]
herC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Herring"]
# head(herC.45.f4.99)
herC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) herC.45.f4.99.up[i] <- max(herC.45.f4.99[i,])
herC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) herC.45.f4.99.lo[i] <- min(herC.45.f4.99[i,])
# now append these two time periods
herC.45.f4.up <- c(herC.45.f4.80.up,herC.45.f4.99.up)
herC.45.f4.lo <- c(herC.45.f4.80.lo,herC.45.f4.99.lo)

# RCP 8.5
herC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(herC.85.f4) <- c("gfd","mir","ces")
row.names(herC.85.f4) <- 1991:2099
herC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Herring"]
herC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Herring"]
herC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Herring"]
# head(herC.85.f4)
herC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) herC.85.f4.up[i] <- max(herC.85.f4[i,])
herC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) herC.85.f4.lo[i] <- min(herC.85.f4[i,])

# # SRES A1B
# herC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(herC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(herC.a1b.f4) <- 1991:2039
# herC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Herring"]
# herC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Herring"]
# herC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Herring"]
# # head(herC.a1b.f4)
# herC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herC.a1b.f4.up[i] <- max(herC.a1b.f4[i,])
# herC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) herC.a1b.f4.lo[i] <- min(herC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Jellyfish biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
jlyB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(jlyB.45.f1.80) <- c("gfd","mir","ces")
row.names(jlyB.45.f1.80) <- 1991:2080
jlyB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Jellyfish"]
jlyB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Jellyfish"]
jlyB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Jellyfish"]
# head(jlyB.45.f1.80)
jlyB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyB.45.f1.80.up[i] <- max(jlyB.45.f1.80[i,])
jlyB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyB.45.f1.80.lo[i] <- min(jlyB.45.f1.80[i,])
# Everything from 2081-2099
jlyB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(jlyB.45.f1.99) <- c("gfd","mir")
row.names(jlyB.45.f1.99) <- 2081:2099
jlyB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Jellyfish"]
jlyB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Jellyfish"]
# head(jlyB.45.f1.99)
jlyB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyB.45.f1.99.up[i] <- max(jlyB.45.f1.99[i,])
jlyB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyB.45.f1.99.lo[i] <- min(jlyB.45.f1.99[i,])
# now append these two time periods
jlyB.45.f1.up <- c(jlyB.45.f1.80.up,jlyB.45.f1.99.up)
jlyB.45.f1.lo <- c(jlyB.45.f1.80.lo,jlyB.45.f1.99.lo)

# RCP 8.5
jlyB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(jlyB.85.f1) <- c("gfd","mir","ces")
row.names(jlyB.85.f1) <- 1991:2099
jlyB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Jellyfish"]
jlyB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Jellyfish"]
jlyB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Jellyfish"]
# head(jlyB.85.f1)
jlyB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyB.85.f1.up[i] <- max(jlyB.85.f1[i,])
jlyB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyB.85.f1.lo[i] <- min(jlyB.85.f1[i,])

# # SRES A1B
# jlyB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(jlyB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(jlyB.a1b.f1) <- 1991:2039
# jlyB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Jellyfish"]
# jlyB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Jellyfish"]
# jlyB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Jellyfish"]
# # head(jlyB.a1b.f1)
# jlyB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyB.a1b.f1.up[i] <- max(jlyB.a1b.f1[i,])
# jlyB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyB.a1b.f1.lo[i] <- min(jlyB.a1b.f1[i,])

# Jellyfish Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
jlyC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(jlyC.45.f1.80) <- c("gfd","mir","ces")
row.names(jlyC.45.f1.80) <- 1991:2080
jlyC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Jellyfish"]
jlyC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Jellyfish"]
jlyC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Jellyfish"]
# head(jlyC.45.f1.80)
jlyC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyC.45.f1.80.up[i] <- max(jlyC.45.f1.80[i,])
jlyC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyC.45.f1.80.lo[i] <- min(jlyC.45.f1.80[i,])
# Everything from 2081-2099
jlyC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(jlyC.45.f1.99) <- c("gfd","mir")
row.names(jlyC.45.f1.99) <- 2081:2099
jlyC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Jellyfish"]
jlyC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Jellyfish"]
# head(jlyC.45.f1.99)
jlyC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyC.45.f1.99.up[i] <- max(jlyC.45.f1.99[i,])
jlyC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyC.45.f1.99.lo[i] <- min(jlyC.45.f1.99[i,])
# now append these two time periods
jlyC.45.f1.up <- c(jlyC.45.f1.80.up,jlyC.45.f1.99.up)
jlyC.45.f1.lo <- c(jlyC.45.f1.80.lo,jlyC.45.f1.99.lo)

# RCP 8.5
jlyC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(jlyC.85.f1) <- c("gfd","mir","ces")
row.names(jlyC.85.f1) <- 1991:2099
jlyC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Jellyfish"]
jlyC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Jellyfish"]
jlyC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Jellyfish"]
# head(jlyC.85.f1)
jlyC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyC.85.f1.up[i] <- max(jlyC.85.f1[i,])
jlyC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyC.85.f1.lo[i] <- min(jlyC.85.f1[i,])

# # SRES A1B
# jlyC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(jlyC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(jlyC.a1b.f1) <- 1991:2039
# jlyC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Jellyfish"]
# jlyC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Jellyfish"]
# jlyC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Jellyfish"]
# # head(jlyC.a1b.f1)
# jlyC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyC.a1b.f1.up[i] <- max(jlyC.a1b.f1[i,])
# jlyC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyC.a1b.f1.lo[i] <- min(jlyC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Jellyfish F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
jlyB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(jlyB.45.f2.80) <- c("gfd","mir","ces")
row.names(jlyB.45.f2.80) <- 1991:2080
jlyB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Jellyfish"]
jlyB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Jellyfish"]
jlyB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Jellyfish"]
# head(jlyB.45.f2.80)
jlyB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyB.45.f2.80.up[i] <- max(jlyB.45.f2.80[i,])
jlyB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyB.45.f2.80.lo[i] <- min(jlyB.45.f2.80[i,])
# Everything from 2081-2099
jlyB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(jlyB.45.f2.99) <- c("gfd","mir")
row.names(jlyB.45.f2.99) <- 2081:2099
jlyB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Jellyfish"]
jlyB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Jellyfish"]
# head(jlyB.45.f2.99)
jlyB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyB.45.f2.99.up[i] <- max(jlyB.45.f2.99[i,])
jlyB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyB.45.f2.99.lo[i] <- min(jlyB.45.f2.99[i,])
# now append these two time periods
jlyB.45.f2.up <- c(jlyB.45.f2.80.up,jlyB.45.f2.99.up)
jlyB.45.f2.lo <- c(jlyB.45.f2.80.lo,jlyB.45.f2.99.lo)

# RCP 8.5
jlyB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(jlyB.85.f2) <- c("gfd","mir","ces")
row.names(jlyB.85.f2) <- 1991:2099
jlyB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Jellyfish"]
jlyB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Jellyfish"]
jlyB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Jellyfish"]
# head(jlyB.85.f2)
jlyB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyB.85.f2.up[i] <- max(jlyB.85.f2[i,])
jlyB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyB.85.f2.lo[i] <- min(jlyB.85.f2[i,])

# # SRES A1B
# jlyB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(jlyB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(jlyB.a1b.f2) <- 1991:2039
# jlyB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Jellyfish"]
# jlyB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Jellyfish"]
# jlyB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Jellyfish"]
# # head(jlyB.a1b.f2)
# jlyB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyB.a1b.f2.up[i] <- max(jlyB.a1b.f2[i,])
# jlyB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyB.a1b.f2.lo[i] <- min(jlyB.a1b.f2[i,])

# Jellyfish Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
jlyC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(jlyC.45.f2.80) <- c("gfd","mir","ces")
row.names(jlyC.45.f2.80) <- 1991:2080
jlyC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Jellyfish"]
jlyC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Jellyfish"]
jlyC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Jellyfish"]
# head(jlyC.45.f2.80)
jlyC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyC.45.f2.80.up[i] <- max(jlyC.45.f2.80[i,])
jlyC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyC.45.f2.80.lo[i] <- min(jlyC.45.f2.80[i,])
# Everything from 2081-2099
jlyC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(jlyC.45.f2.99) <- c("gfd","mir")
row.names(jlyC.45.f2.99) <- 2081:2099
jlyC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Jellyfish"]
jlyC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Jellyfish"]
# head(jlyC.45.f2.99)
jlyC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyC.45.f2.99.up[i] <- max(jlyC.45.f2.99[i,])
jlyC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyC.45.f2.99.lo[i] <- min(jlyC.45.f2.99[i,])
# now append these two time periods
jlyC.45.f2.up <- c(jlyC.45.f2.80.up,jlyC.45.f2.99.up)
jlyC.45.f2.lo <- c(jlyC.45.f2.80.lo,jlyC.45.f2.99.lo)

# RCP 8.5
jlyC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(jlyC.85.f2) <- c("gfd","mir","ces")
row.names(jlyC.85.f2) <- 1991:2099
jlyC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Jellyfish"]
jlyC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Jellyfish"]
jlyC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Jellyfish"]
# head(jlyC.85.f2)
jlyC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyC.85.f2.up[i] <- max(jlyC.85.f2[i,])
jlyC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyC.85.f2.lo[i] <- min(jlyC.85.f2[i,])

# # SRES A1B
# jlyC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(jlyC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(jlyC.a1b.f2) <- 1991:2039
# jlyC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Jellyfish"]
# jlyC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Jellyfish"]
# jlyC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Jellyfish"]
# # head(jlyC.a1b.f2)
# jlyC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyC.a1b.f2.up[i] <- max(jlyC.a1b.f2[i,])
# jlyC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyC.a1b.f2.lo[i] <- min(jlyC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Jellyfish F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
jlyB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(jlyB.45.f3.80) <- c("gfd","mir","ces")
row.names(jlyB.45.f3.80) <- 1991:2080
jlyB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Jellyfish"]
jlyB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Jellyfish"]
jlyB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Jellyfish"]
# head(jlyB.45.f3.80)
jlyB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyB.45.f3.80.up[i] <- max(jlyB.45.f3.80[i,])
jlyB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyB.45.f3.80.lo[i] <- min(jlyB.45.f3.80[i,])
# Everything from 2081-2099
jlyB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(jlyB.45.f3.99) <- c("gfd","mir")
row.names(jlyB.45.f3.99) <- 2081:2099
jlyB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Jellyfish"]
jlyB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Jellyfish"]
# head(jlyB.45.f3.99)
jlyB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyB.45.f3.99.up[i] <- max(jlyB.45.f3.99[i,])
jlyB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyB.45.f3.99.lo[i] <- min(jlyB.45.f3.99[i,])
# now append these two time periods
jlyB.45.f3.up <- c(jlyB.45.f3.80.up,jlyB.45.f3.99.up)
jlyB.45.f3.lo <- c(jlyB.45.f3.80.lo,jlyB.45.f3.99.lo)

# RCP 8.5
jlyB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(jlyB.85.f3) <- c("gfd","mir","ces")
row.names(jlyB.85.f3) <- 1991:2099
jlyB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Jellyfish"]
jlyB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Jellyfish"]
jlyB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Jellyfish"]
# head(jlyB.85.f3)
jlyB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyB.85.f3.up[i] <- max(jlyB.85.f3[i,])
jlyB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyB.85.f3.lo[i] <- min(jlyB.85.f3[i,])

# # SRES A1B
# jlyB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(jlyB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(jlyB.a1b.f3) <- 1991:2039
# jlyB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Jellyfish"]
# jlyB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Jellyfish"]
# jlyB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Jellyfish"]
# # head(jlyB.a1b.f3)
# jlyB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyB.a1b.f3.up[i] <- max(jlyB.a1b.f3[i,])
# jlyB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyB.a1b.f3.lo[i] <- min(jlyB.a1b.f3[i,])

# Jellyfish Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
jlyC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(jlyC.45.f3.80) <- c("gfd","mir","ces")
row.names(jlyC.45.f3.80) <- 1991:2080
jlyC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Jellyfish"]
jlyC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Jellyfish"]
jlyC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Jellyfish"]
# head(jlyC.45.f3.80)
jlyC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyC.45.f3.80.up[i] <- max(jlyC.45.f3.80[i,])
jlyC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyC.45.f3.80.lo[i] <- min(jlyC.45.f3.80[i,])
# Everything from 2081-2099
jlyC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(jlyC.45.f3.99) <- c("gfd","mir")
row.names(jlyC.45.f3.99) <- 2081:2099
jlyC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Jellyfish"]
jlyC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Jellyfish"]
# head(jlyC.45.f3.99)
jlyC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyC.45.f3.99.up[i] <- max(jlyC.45.f3.99[i,])
jlyC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyC.45.f3.99.lo[i] <- min(jlyC.45.f3.99[i,])
# now append these two time periods
jlyC.45.f3.up <- c(jlyC.45.f3.80.up,jlyC.45.f3.99.up)
jlyC.45.f3.lo <- c(jlyC.45.f3.80.lo,jlyC.45.f3.99.lo)

# RCP 8.5
jlyC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(jlyC.85.f3) <- c("gfd","mir","ces")
row.names(jlyC.85.f3) <- 1991:2099
jlyC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Jellyfish"]
jlyC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Jellyfish"]
jlyC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Jellyfish"]
# head(jlyC.85.f3)
jlyC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyC.85.f3.up[i] <- max(jlyC.85.f3[i,])
jlyC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyC.85.f3.lo[i] <- min(jlyC.85.f3[i,])

# # SRES A1B
# jlyC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(jlyC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(jlyC.a1b.f3) <- 1991:2039
# jlyC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Jellyfish"]
# jlyC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Jellyfish"]
# jlyC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Jellyfish"]
# # head(jlyC.a1b.f3)
# jlyC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyC.a1b.f3.up[i] <- max(jlyC.a1b.f3[i,])
# jlyC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyC.a1b.f3.lo[i] <- min(jlyC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Jellyfish F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
jlyB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(jlyB.45.f4.80) <- c("gfd","mir","ces")
row.names(jlyB.45.f4.80) <- 1991:2080
jlyB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Jellyfish"]
jlyB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Jellyfish"]
jlyB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Jellyfish"]
# head(jlyB.45.f4.80)
jlyB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyB.45.f4.80.up[i] <- max(jlyB.45.f4.80[i,])
jlyB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyB.45.f4.80.lo[i] <- min(jlyB.45.f4.80[i,])
# Everything from 2081-2099
jlyB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(jlyB.45.f4.99) <- c("gfd","mir")
row.names(jlyB.45.f4.99) <- 2081:2099
jlyB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Jellyfish"]
jlyB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Jellyfish"]
# head(jlyB.45.f4.99)
jlyB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyB.45.f4.99.up[i] <- max(jlyB.45.f4.99[i,])
jlyB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyB.45.f4.99.lo[i] <- min(jlyB.45.f4.99[i,])
# now append these two time periods
jlyB.45.f4.up <- c(jlyB.45.f4.80.up,jlyB.45.f4.99.up)
jlyB.45.f4.lo <- c(jlyB.45.f4.80.lo,jlyB.45.f4.99.lo)

# RCP 8.5
jlyB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(jlyB.85.f4) <- c("gfd","mir","ces")
row.names(jlyB.85.f4) <- 1991:2099
jlyB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Jellyfish"]
jlyB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Jellyfish"]
jlyB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Jellyfish"]
# head(jlyB.85.f4)
jlyB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyB.85.f4.up[i] <- max(jlyB.85.f4[i,])
jlyB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyB.85.f4.lo[i] <- min(jlyB.85.f4[i,])

# # SRES A1B
# jlyB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(jlyB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(jlyB.a1b.f4) <- 1991:2039
# jlyB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Jellyfish"]
# jlyB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Jellyfish"]
# jlyB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Jellyfish"]
# # head(jlyB.a1b.f4)
# jlyB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyB.a1b.f4.up[i] <- max(jlyB.a1b.f4[i,])
# jlyB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyB.a1b.f4.lo[i] <- min(jlyB.a1b.f4[i,])

# Jellyfish Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
jlyC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(jlyC.45.f4.80) <- c("gfd","mir","ces")
row.names(jlyC.45.f4.80) <- 1991:2080
jlyC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Jellyfish"]
jlyC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Jellyfish"]
jlyC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Jellyfish"]
# head(jlyC.45.f4.80)
jlyC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyC.45.f4.80.up[i] <- max(jlyC.45.f4.80[i,])
jlyC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) jlyC.45.f4.80.lo[i] <- min(jlyC.45.f4.80[i,])
# Everything from 2081-2099
jlyC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(jlyC.45.f4.99) <- c("gfd","mir")
row.names(jlyC.45.f4.99) <- 2081:2099
jlyC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Jellyfish"]
jlyC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Jellyfish"]
# head(jlyC.45.f4.99)
jlyC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyC.45.f4.99.up[i] <- max(jlyC.45.f4.99[i,])
jlyC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) jlyC.45.f4.99.lo[i] <- min(jlyC.45.f4.99[i,])
# now append these two time periods
jlyC.45.f4.up <- c(jlyC.45.f4.80.up,jlyC.45.f4.99.up)
jlyC.45.f4.lo <- c(jlyC.45.f4.80.lo,jlyC.45.f4.99.lo)

# RCP 8.5
jlyC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(jlyC.85.f4) <- c("gfd","mir","ces")
row.names(jlyC.85.f4) <- 1991:2099
jlyC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Jellyfish"]
jlyC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Jellyfish"]
jlyC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Jellyfish"]
# head(jlyC.85.f4)
jlyC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyC.85.f4.up[i] <- max(jlyC.85.f4[i,])
jlyC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) jlyC.85.f4.lo[i] <- min(jlyC.85.f4[i,])

# # SRES A1B
# jlyC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(jlyC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(jlyC.a1b.f4) <- 1991:2039
# jlyC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Jellyfish"]
# jlyC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Jellyfish"]
# jlyC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Jellyfish"]
# # head(jlyC.a1b.f4)
# jlyC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyC.a1b.f4.up[i] <- max(jlyC.a1b.f4[i,])
# jlyC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) jlyC.a1b.f4.lo[i] <- min(jlyC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Mycto.bathy biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
mybtB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mybtB.45.f1.80) <- c("gfd","mir","ces")
row.names(mybtB.45.f1.80) <- 1991:2080
mybtB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Mycto.bathy"]
mybtB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Mycto.bathy"]
mybtB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Mycto.bathy"]
# head(mybtB.45.f1.80)
mybtB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtB.45.f1.80.up[i] <- max(mybtB.45.f1.80[i,])
mybtB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtB.45.f1.80.lo[i] <- min(mybtB.45.f1.80[i,])
# Everything from 2081-2099
mybtB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mybtB.45.f1.99) <- c("gfd","mir")
row.names(mybtB.45.f1.99) <- 2081:2099
mybtB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Mycto.bathy"]
mybtB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Mycto.bathy"]
# head(mybtB.45.f1.99)
mybtB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtB.45.f1.99.up[i] <- max(mybtB.45.f1.99[i,])
mybtB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtB.45.f1.99.lo[i] <- min(mybtB.45.f1.99[i,])
# now append these two time periods
mybtB.45.f1.up <- c(mybtB.45.f1.80.up,mybtB.45.f1.99.up)
mybtB.45.f1.lo <- c(mybtB.45.f1.80.lo,mybtB.45.f1.99.lo)

# RCP 8.5
mybtB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mybtB.85.f1) <- c("gfd","mir","ces")
row.names(mybtB.85.f1) <- 1991:2099
mybtB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Mycto.bathy"]
mybtB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Mycto.bathy"]
mybtB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Mycto.bathy"]
# head(mybtB.85.f1)
mybtB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtB.85.f1.up[i] <- max(mybtB.85.f1[i,])
mybtB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtB.85.f1.lo[i] <- min(mybtB.85.f1[i,])

# # SRES A1B
# mybtB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mybtB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(mybtB.a1b.f1) <- 1991:2039
# mybtB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Mycto.bathy"]
# mybtB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Mycto.bathy"]
# mybtB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Mycto.bathy"]
# # head(mybtB.a1b.f1)
# mybtB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtB.a1b.f1.up[i] <- max(mybtB.a1b.f1[i,])
# mybtB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtB.a1b.f1.lo[i] <- min(mybtB.a1b.f1[i,])

# Mycto.bathy Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
mybtC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mybtC.45.f1.80) <- c("gfd","mir","ces")
row.names(mybtC.45.f1.80) <- 1991:2080
mybtC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Mycto.bathy"]
mybtC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Mycto.bathy"]
mybtC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Mycto.bathy"]
# head(mybtC.45.f1.80)
mybtC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtC.45.f1.80.up[i] <- max(mybtC.45.f1.80[i,])
mybtC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtC.45.f1.80.lo[i] <- min(mybtC.45.f1.80[i,])
# Everything from 2081-2099
mybtC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mybtC.45.f1.99) <- c("gfd","mir")
row.names(mybtC.45.f1.99) <- 2081:2099
mybtC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Mycto.bathy"]
mybtC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Mycto.bathy"]
# head(mybtC.45.f1.99)
mybtC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtC.45.f1.99.up[i] <- max(mybtC.45.f1.99[i,])
mybtC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtC.45.f1.99.lo[i] <- min(mybtC.45.f1.99[i,])
# now append these two time periods
mybtC.45.f1.up <- c(mybtC.45.f1.80.up,mybtC.45.f1.99.up)
mybtC.45.f1.lo <- c(mybtC.45.f1.80.lo,mybtC.45.f1.99.lo)

# RCP 8.5
mybtC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mybtC.85.f1) <- c("gfd","mir","ces")
row.names(mybtC.85.f1) <- 1991:2099
mybtC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Mycto.bathy"]
mybtC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Mycto.bathy"]
mybtC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Mycto.bathy"]
# head(mybtC.85.f1)
mybtC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtC.85.f1.up[i] <- max(mybtC.85.f1[i,])
mybtC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtC.85.f1.lo[i] <- min(mybtC.85.f1[i,])

# # SRES A1B
# mybtC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mybtC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(mybtC.a1b.f1) <- 1991:2039
# mybtC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Mycto.bathy"]
# mybtC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Mycto.bathy"]
# mybtC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Mycto.bathy"]
# # head(mybtC.a1b.f1)
# mybtC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtC.a1b.f1.up[i] <- max(mybtC.a1b.f1[i,])
# mybtC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtC.a1b.f1.lo[i] <- min(mybtC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Mycto.bathy F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
mybtB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mybtB.45.f2.80) <- c("gfd","mir","ces")
row.names(mybtB.45.f2.80) <- 1991:2080
mybtB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Mycto.bathy"]
mybtB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Mycto.bathy"]
mybtB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Mycto.bathy"]
# head(mybtB.45.f2.80)
mybtB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtB.45.f2.80.up[i] <- max(mybtB.45.f2.80[i,])
mybtB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtB.45.f2.80.lo[i] <- min(mybtB.45.f2.80[i,])
# Everything from 2081-2099
mybtB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mybtB.45.f2.99) <- c("gfd","mir")
row.names(mybtB.45.f2.99) <- 2081:2099
mybtB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Mycto.bathy"]
mybtB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Mycto.bathy"]
# head(mybtB.45.f2.99)
mybtB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtB.45.f2.99.up[i] <- max(mybtB.45.f2.99[i,])
mybtB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtB.45.f2.99.lo[i] <- min(mybtB.45.f2.99[i,])
# now append these two time periods
mybtB.45.f2.up <- c(mybtB.45.f2.80.up,mybtB.45.f2.99.up)
mybtB.45.f2.lo <- c(mybtB.45.f2.80.lo,mybtB.45.f2.99.lo)

# RCP 8.5
mybtB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mybtB.85.f2) <- c("gfd","mir","ces")
row.names(mybtB.85.f2) <- 1991:2099
mybtB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Mycto.bathy"]
mybtB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Mycto.bathy"]
mybtB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Mycto.bathy"]
# head(mybtB.85.f2)
mybtB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtB.85.f2.up[i] <- max(mybtB.85.f2[i,])
mybtB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtB.85.f2.lo[i] <- min(mybtB.85.f2[i,])

# # SRES A1B
# mybtB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mybtB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(mybtB.a1b.f2) <- 1991:2039
# mybtB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Mycto.bathy"]
# mybtB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Mycto.bathy"]
# mybtB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Mycto.bathy"]
# # head(mybtB.a1b.f2)
# mybtB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtB.a1b.f2.up[i] <- max(mybtB.a1b.f2[i,])
# mybtB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtB.a1b.f2.lo[i] <- min(mybtB.a1b.f2[i,])

# Mycto.bathy Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
mybtC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mybtC.45.f2.80) <- c("gfd","mir","ces")
row.names(mybtC.45.f2.80) <- 1991:2080
mybtC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Mycto.bathy"]
mybtC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Mycto.bathy"]
mybtC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Mycto.bathy"]
# head(mybtC.45.f2.80)
mybtC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtC.45.f2.80.up[i] <- max(mybtC.45.f2.80[i,])
mybtC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtC.45.f2.80.lo[i] <- min(mybtC.45.f2.80[i,])
# Everything from 2081-2099
mybtC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mybtC.45.f2.99) <- c("gfd","mir")
row.names(mybtC.45.f2.99) <- 2081:2099
mybtC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Mycto.bathy"]
mybtC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Mycto.bathy"]
# head(mybtC.45.f2.99)
mybtC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtC.45.f2.99.up[i] <- max(mybtC.45.f2.99[i,])
mybtC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtC.45.f2.99.lo[i] <- min(mybtC.45.f2.99[i,])
# now append these two time periods
mybtC.45.f2.up <- c(mybtC.45.f2.80.up,mybtC.45.f2.99.up)
mybtC.45.f2.lo <- c(mybtC.45.f2.80.lo,mybtC.45.f2.99.lo)

# RCP 8.5
mybtC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mybtC.85.f2) <- c("gfd","mir","ces")
row.names(mybtC.85.f2) <- 1991:2099
mybtC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Mycto.bathy"]
mybtC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Mycto.bathy"]
mybtC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Mycto.bathy"]
# head(mybtC.85.f2)
mybtC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtC.85.f2.up[i] <- max(mybtC.85.f2[i,])
mybtC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtC.85.f2.lo[i] <- min(mybtC.85.f2[i,])

# # SRES A1B
# mybtC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mybtC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(mybtC.a1b.f2) <- 1991:2039
# mybtC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Mycto.bathy"]
# mybtC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Mycto.bathy"]
# mybtC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Mycto.bathy"]
# # head(mybtC.a1b.f2)
# mybtC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtC.a1b.f2.up[i] <- max(mybtC.a1b.f2[i,])
# mybtC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtC.a1b.f2.lo[i] <- min(mybtC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Mycto.bathy F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
mybtB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mybtB.45.f3.80) <- c("gfd","mir","ces")
row.names(mybtB.45.f3.80) <- 1991:2080
mybtB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Mycto.bathy"]
mybtB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Mycto.bathy"]
mybtB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Mycto.bathy"]
# head(mybtB.45.f3.80)
mybtB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtB.45.f3.80.up[i] <- max(mybtB.45.f3.80[i,])
mybtB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtB.45.f3.80.lo[i] <- min(mybtB.45.f3.80[i,])
# Everything from 2081-2099
mybtB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mybtB.45.f3.99) <- c("gfd","mir")
row.names(mybtB.45.f3.99) <- 2081:2099
mybtB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Mycto.bathy"]
mybtB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Mycto.bathy"]
# head(mybtB.45.f3.99)
mybtB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtB.45.f3.99.up[i] <- max(mybtB.45.f3.99[i,])
mybtB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtB.45.f3.99.lo[i] <- min(mybtB.45.f3.99[i,])
# now append these two time periods
mybtB.45.f3.up <- c(mybtB.45.f3.80.up,mybtB.45.f3.99.up)
mybtB.45.f3.lo <- c(mybtB.45.f3.80.lo,mybtB.45.f3.99.lo)

# RCP 8.5
mybtB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mybtB.85.f3) <- c("gfd","mir","ces")
row.names(mybtB.85.f3) <- 1991:2099
mybtB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Mycto.bathy"]
mybtB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Mycto.bathy"]
mybtB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Mycto.bathy"]
# head(mybtB.85.f3)
mybtB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtB.85.f3.up[i] <- max(mybtB.85.f3[i,])
mybtB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtB.85.f3.lo[i] <- min(mybtB.85.f3[i,])

# # SRES A1B
# mybtB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mybtB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(mybtB.a1b.f3) <- 1991:2039
# mybtB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Mycto.bathy"]
# mybtB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Mycto.bathy"]
# mybtB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Mycto.bathy"]
# # head(mybtB.a1b.f3)
# mybtB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtB.a1b.f3.up[i] <- max(mybtB.a1b.f3[i,])
# mybtB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtB.a1b.f3.lo[i] <- min(mybtB.a1b.f3[i,])

# Mycto.bathy Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
mybtC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mybtC.45.f3.80) <- c("gfd","mir","ces")
row.names(mybtC.45.f3.80) <- 1991:2080
mybtC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Mycto.bathy"]
mybtC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Mycto.bathy"]
mybtC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Mycto.bathy"]
# head(mybtC.45.f3.80)
mybtC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtC.45.f3.80.up[i] <- max(mybtC.45.f3.80[i,])
mybtC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtC.45.f3.80.lo[i] <- min(mybtC.45.f3.80[i,])
# Everything from 2081-2099
mybtC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mybtC.45.f3.99) <- c("gfd","mir")
row.names(mybtC.45.f3.99) <- 2081:2099
mybtC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Mycto.bathy"]
mybtC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Mycto.bathy"]
# head(mybtC.45.f3.99)
mybtC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtC.45.f3.99.up[i] <- max(mybtC.45.f3.99[i,])
mybtC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtC.45.f3.99.lo[i] <- min(mybtC.45.f3.99[i,])
# now append these two time periods
mybtC.45.f3.up <- c(mybtC.45.f3.80.up,mybtC.45.f3.99.up)
mybtC.45.f3.lo <- c(mybtC.45.f3.80.lo,mybtC.45.f3.99.lo)

# RCP 8.5
mybtC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mybtC.85.f3) <- c("gfd","mir","ces")
row.names(mybtC.85.f3) <- 1991:2099
mybtC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Mycto.bathy"]
mybtC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Mycto.bathy"]
mybtC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Mycto.bathy"]
# head(mybtC.85.f3)
mybtC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtC.85.f3.up[i] <- max(mybtC.85.f3[i,])
mybtC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtC.85.f3.lo[i] <- min(mybtC.85.f3[i,])

# # SRES A1B
# mybtC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mybtC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(mybtC.a1b.f3) <- 1991:2039
# mybtC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Mycto.bathy"]
# mybtC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Mycto.bathy"]
# mybtC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Mycto.bathy"]
# # head(mybtC.a1b.f3)
# mybtC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtC.a1b.f3.up[i] <- max(mybtC.a1b.f3[i,])
# mybtC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtC.a1b.f3.lo[i] <- min(mybtC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Mycto.bathy F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
mybtB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mybtB.45.f4.80) <- c("gfd","mir","ces")
row.names(mybtB.45.f4.80) <- 1991:2080
mybtB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Mycto.bathy"]
mybtB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Mycto.bathy"]
mybtB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Mycto.bathy"]
# head(mybtB.45.f4.80)
mybtB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtB.45.f4.80.up[i] <- max(mybtB.45.f4.80[i,])
mybtB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtB.45.f4.80.lo[i] <- min(mybtB.45.f4.80[i,])
# Everything from 2081-2099
mybtB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mybtB.45.f4.99) <- c("gfd","mir")
row.names(mybtB.45.f4.99) <- 2081:2099
mybtB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Mycto.bathy"]
mybtB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Mycto.bathy"]
# head(mybtB.45.f4.99)
mybtB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtB.45.f4.99.up[i] <- max(mybtB.45.f4.99[i,])
mybtB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtB.45.f4.99.lo[i] <- min(mybtB.45.f4.99[i,])
# now append these two time periods
mybtB.45.f4.up <- c(mybtB.45.f4.80.up,mybtB.45.f4.99.up)
mybtB.45.f4.lo <- c(mybtB.45.f4.80.lo,mybtB.45.f4.99.lo)

# RCP 8.5
mybtB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mybtB.85.f4) <- c("gfd","mir","ces")
row.names(mybtB.85.f4) <- 1991:2099
mybtB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Mycto.bathy"]
mybtB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Mycto.bathy"]
mybtB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Mycto.bathy"]
# head(mybtB.85.f4)
mybtB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtB.85.f4.up[i] <- max(mybtB.85.f4[i,])
mybtB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtB.85.f4.lo[i] <- min(mybtB.85.f4[i,])

# # SRES A1B
# mybtB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mybtB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(mybtB.a1b.f4) <- 1991:2039
# mybtB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Mycto.bathy"]
# mybtB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Mycto.bathy"]
# mybtB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Mycto.bathy"]
# # head(mybtB.a1b.f4)
# mybtB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtB.a1b.f4.up[i] <- max(mybtB.a1b.f4[i,])
# mybtB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtB.a1b.f4.lo[i] <- min(mybtB.a1b.f4[i,])

# Mycto.bathy Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
mybtC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mybtC.45.f4.80) <- c("gfd","mir","ces")
row.names(mybtC.45.f4.80) <- 1991:2080
mybtC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Mycto.bathy"]
mybtC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Mycto.bathy"]
mybtC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Mycto.bathy"]
# head(mybtC.45.f4.80)
mybtC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtC.45.f4.80.up[i] <- max(mybtC.45.f4.80[i,])
mybtC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mybtC.45.f4.80.lo[i] <- min(mybtC.45.f4.80[i,])
# Everything from 2081-2099
mybtC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mybtC.45.f4.99) <- c("gfd","mir")
row.names(mybtC.45.f4.99) <- 2081:2099
mybtC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Mycto.bathy"]
mybtC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Mycto.bathy"]
# head(mybtC.45.f4.99)
mybtC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtC.45.f4.99.up[i] <- max(mybtC.45.f4.99[i,])
mybtC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mybtC.45.f4.99.lo[i] <- min(mybtC.45.f4.99[i,])
# now append these two time periods
mybtC.45.f4.up <- c(mybtC.45.f4.80.up,mybtC.45.f4.99.up)
mybtC.45.f4.lo <- c(mybtC.45.f4.80.lo,mybtC.45.f4.99.lo)

# RCP 8.5
mybtC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mybtC.85.f4) <- c("gfd","mir","ces")
row.names(mybtC.85.f4) <- 1991:2099
mybtC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Mycto.bathy"]
mybtC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Mycto.bathy"]
mybtC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Mycto.bathy"]
# head(mybtC.85.f4)
mybtC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtC.85.f4.up[i] <- max(mybtC.85.f4[i,])
mybtC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mybtC.85.f4.lo[i] <- min(mybtC.85.f4[i,])

# # SRES A1B
# mybtC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mybtC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(mybtC.a1b.f4) <- 1991:2039
# mybtC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Mycto.bathy"]
# mybtC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Mycto.bathy"]
# mybtC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Mycto.bathy"]
# # head(mybtC.a1b.f4)
# mybtC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtC.a1b.f4.up[i] <- max(mybtC.a1b.f4[i,])
# mybtC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mybtC.a1b.f4.lo[i] <- min(mybtC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# North.rockfish biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
nrkfB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrkfB.45.f1.80) <- c("gfd","mir","ces")
row.names(nrkfB.45.f1.80) <- 1991:2080
nrkfB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"North.rockfish"]
nrkfB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"North.rockfish"]
nrkfB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"North.rockfish"]
# head(nrkfB.45.f1.80)
nrkfB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfB.45.f1.80.up[i] <- max(nrkfB.45.f1.80[i,])
nrkfB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfB.45.f1.80.lo[i] <- min(nrkfB.45.f1.80[i,])
# Everything from 2081-2099
nrkfB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrkfB.45.f1.99) <- c("gfd","mir")
row.names(nrkfB.45.f1.99) <- 2081:2099
nrkfB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"North.rockfish"]
nrkfB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"North.rockfish"]
# head(nrkfB.45.f1.99)
nrkfB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfB.45.f1.99.up[i] <- max(nrkfB.45.f1.99[i,])
nrkfB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfB.45.f1.99.lo[i] <- min(nrkfB.45.f1.99[i,])
# now append these two time periods
nrkfB.45.f1.up <- c(nrkfB.45.f1.80.up,nrkfB.45.f1.99.up)
nrkfB.45.f1.lo <- c(nrkfB.45.f1.80.lo,nrkfB.45.f1.99.lo)

# RCP 8.5
nrkfB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrkfB.85.f1) <- c("gfd","mir","ces")
row.names(nrkfB.85.f1) <- 1991:2099
nrkfB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"North.rockfish"]
nrkfB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"North.rockfish"]
nrkfB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"North.rockfish"]
# head(nrkfB.85.f1)
nrkfB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfB.85.f1.up[i] <- max(nrkfB.85.f1[i,])
nrkfB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfB.85.f1.lo[i] <- min(nrkfB.85.f1[i,])

# # SRES A1B
# nrkfB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrkfB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrkfB.a1b.f1) <- 1991:2039
# nrkfB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"North.rockfish"]
# nrkfB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"North.rockfish"]
# nrkfB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"North.rockfish"]
# # head(nrkfB.a1b.f1)
# nrkfB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfB.a1b.f1.up[i] <- max(nrkfB.a1b.f1[i,])
# nrkfB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfB.a1b.f1.lo[i] <- min(nrkfB.a1b.f1[i,])

# North.rockfish Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
nrkfC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrkfC.45.f1.80) <- c("gfd","mir","ces")
row.names(nrkfC.45.f1.80) <- 1991:2080
nrkfC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"North.rockfish"]
nrkfC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"North.rockfish"]
nrkfC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"North.rockfish"]
# head(nrkfC.45.f1.80)
nrkfC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfC.45.f1.80.up[i] <- max(nrkfC.45.f1.80[i,])
nrkfC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfC.45.f1.80.lo[i] <- min(nrkfC.45.f1.80[i,])
# Everything from 2081-2099
nrkfC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrkfC.45.f1.99) <- c("gfd","mir")
row.names(nrkfC.45.f1.99) <- 2081:2099
nrkfC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"North.rockfish"]
nrkfC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"North.rockfish"]
# head(nrkfC.45.f1.99)
nrkfC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfC.45.f1.99.up[i] <- max(nrkfC.45.f1.99[i,])
nrkfC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfC.45.f1.99.lo[i] <- min(nrkfC.45.f1.99[i,])
# now append these two time periods
nrkfC.45.f1.up <- c(nrkfC.45.f1.80.up,nrkfC.45.f1.99.up)
nrkfC.45.f1.lo <- c(nrkfC.45.f1.80.lo,nrkfC.45.f1.99.lo)

# RCP 8.5
nrkfC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrkfC.85.f1) <- c("gfd","mir","ces")
row.names(nrkfC.85.f1) <- 1991:2099
nrkfC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"North.rockfish"]
nrkfC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"North.rockfish"]
nrkfC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"North.rockfish"]
# head(nrkfC.85.f1)
nrkfC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfC.85.f1.up[i] <- max(nrkfC.85.f1[i,])
nrkfC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfC.85.f1.lo[i] <- min(nrkfC.85.f1[i,])

# # SRES A1B
# nrkfC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrkfC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrkfC.a1b.f1) <- 1991:2039
# nrkfC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"North.rockfish"]
# nrkfC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"North.rockfish"]
# nrkfC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"North.rockfish"]
# # head(nrkfC.a1b.f1)
# nrkfC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfC.a1b.f1.up[i] <- max(nrkfC.a1b.f1[i,])
# nrkfC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfC.a1b.f1.lo[i] <- min(nrkfC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# North.rockfish F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
nrkfB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrkfB.45.f2.80) <- c("gfd","mir","ces")
row.names(nrkfB.45.f2.80) <- 1991:2080
nrkfB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"North.rockfish"]
nrkfB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"North.rockfish"]
nrkfB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"North.rockfish"]
# head(nrkfB.45.f2.80)
nrkfB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfB.45.f2.80.up[i] <- max(nrkfB.45.f2.80[i,])
nrkfB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfB.45.f2.80.lo[i] <- min(nrkfB.45.f2.80[i,])
# Everything from 2081-2099
nrkfB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrkfB.45.f2.99) <- c("gfd","mir")
row.names(nrkfB.45.f2.99) <- 2081:2099
nrkfB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"North.rockfish"]
nrkfB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"North.rockfish"]
# head(nrkfB.45.f2.99)
nrkfB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfB.45.f2.99.up[i] <- max(nrkfB.45.f2.99[i,])
nrkfB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfB.45.f2.99.lo[i] <- min(nrkfB.45.f2.99[i,])
# now append these two time periods
nrkfB.45.f2.up <- c(nrkfB.45.f2.80.up,nrkfB.45.f2.99.up)
nrkfB.45.f2.lo <- c(nrkfB.45.f2.80.lo,nrkfB.45.f2.99.lo)

# RCP 8.5
nrkfB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrkfB.85.f2) <- c("gfd","mir","ces")
row.names(nrkfB.85.f2) <- 1991:2099
nrkfB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"North.rockfish"]
nrkfB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"North.rockfish"]
nrkfB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"North.rockfish"]
# head(nrkfB.85.f2)
nrkfB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfB.85.f2.up[i] <- max(nrkfB.85.f2[i,])
nrkfB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfB.85.f2.lo[i] <- min(nrkfB.85.f2[i,])

# # SRES A1B
# nrkfB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrkfB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrkfB.a1b.f2) <- 1991:2039
# nrkfB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"North.rockfish"]
# nrkfB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"North.rockfish"]
# nrkfB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"North.rockfish"]
# # head(nrkfB.a1b.f2)
# nrkfB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfB.a1b.f2.up[i] <- max(nrkfB.a1b.f2[i,])
# nrkfB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfB.a1b.f2.lo[i] <- min(nrkfB.a1b.f2[i,])

# North.rockfish Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
nrkfC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrkfC.45.f2.80) <- c("gfd","mir","ces")
row.names(nrkfC.45.f2.80) <- 1991:2080
nrkfC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"North.rockfish"]
nrkfC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"North.rockfish"]
nrkfC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"North.rockfish"]
# head(nrkfC.45.f2.80)
nrkfC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfC.45.f2.80.up[i] <- max(nrkfC.45.f2.80[i,])
nrkfC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfC.45.f2.80.lo[i] <- min(nrkfC.45.f2.80[i,])
# Everything from 2081-2099
nrkfC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrkfC.45.f2.99) <- c("gfd","mir")
row.names(nrkfC.45.f2.99) <- 2081:2099
nrkfC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"North.rockfish"]
nrkfC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"North.rockfish"]
# head(nrkfC.45.f2.99)
nrkfC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfC.45.f2.99.up[i] <- max(nrkfC.45.f2.99[i,])
nrkfC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfC.45.f2.99.lo[i] <- min(nrkfC.45.f2.99[i,])
# now append these two time periods
nrkfC.45.f2.up <- c(nrkfC.45.f2.80.up,nrkfC.45.f2.99.up)
nrkfC.45.f2.lo <- c(nrkfC.45.f2.80.lo,nrkfC.45.f2.99.lo)

# RCP 8.5
nrkfC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrkfC.85.f2) <- c("gfd","mir","ces")
row.names(nrkfC.85.f2) <- 1991:2099
nrkfC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"North.rockfish"]
nrkfC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"North.rockfish"]
nrkfC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"North.rockfish"]
# head(nrkfC.85.f2)
nrkfC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfC.85.f2.up[i] <- max(nrkfC.85.f2[i,])
nrkfC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfC.85.f2.lo[i] <- min(nrkfC.85.f2[i,])

# # SRES A1B
# nrkfC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrkfC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrkfC.a1b.f2) <- 1991:2039
# nrkfC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"North.rockfish"]
# nrkfC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"North.rockfish"]
# nrkfC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"North.rockfish"]
# # head(nrkfC.a1b.f2)
# nrkfC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfC.a1b.f2.up[i] <- max(nrkfC.a1b.f2[i,])
# nrkfC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfC.a1b.f2.lo[i] <- min(nrkfC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# North.rockfish F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
nrkfB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrkfB.45.f3.80) <- c("gfd","mir","ces")
row.names(nrkfB.45.f3.80) <- 1991:2080
nrkfB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"North.rockfish"]
nrkfB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"North.rockfish"]
nrkfB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"North.rockfish"]
# head(nrkfB.45.f3.80)
nrkfB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfB.45.f3.80.up[i] <- max(nrkfB.45.f3.80[i,])
nrkfB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfB.45.f3.80.lo[i] <- min(nrkfB.45.f3.80[i,])
# Everything from 2081-2099
nrkfB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrkfB.45.f3.99) <- c("gfd","mir")
row.names(nrkfB.45.f3.99) <- 2081:2099
nrkfB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"North.rockfish"]
nrkfB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"North.rockfish"]
# head(nrkfB.45.f3.99)
nrkfB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfB.45.f3.99.up[i] <- max(nrkfB.45.f3.99[i,])
nrkfB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfB.45.f3.99.lo[i] <- min(nrkfB.45.f3.99[i,])
# now append these two time periods
nrkfB.45.f3.up <- c(nrkfB.45.f3.80.up,nrkfB.45.f3.99.up)
nrkfB.45.f3.lo <- c(nrkfB.45.f3.80.lo,nrkfB.45.f3.99.lo)

# RCP 8.5
nrkfB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrkfB.85.f3) <- c("gfd","mir","ces")
row.names(nrkfB.85.f3) <- 1991:2099
nrkfB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"North.rockfish"]
nrkfB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"North.rockfish"]
nrkfB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"North.rockfish"]
# head(nrkfB.85.f3)
nrkfB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfB.85.f3.up[i] <- max(nrkfB.85.f3[i,])
nrkfB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfB.85.f3.lo[i] <- min(nrkfB.85.f3[i,])

# # SRES A1B
# nrkfB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrkfB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrkfB.a1b.f3) <- 1991:2039
# nrkfB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"North.rockfish"]
# nrkfB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"North.rockfish"]
# nrkfB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"North.rockfish"]
# # head(nrkfB.a1b.f3)
# nrkfB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfB.a1b.f3.up[i] <- max(nrkfB.a1b.f3[i,])
# nrkfB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfB.a1b.f3.lo[i] <- min(nrkfB.a1b.f3[i,])

# North.rockfish Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
nrkfC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrkfC.45.f3.80) <- c("gfd","mir","ces")
row.names(nrkfC.45.f3.80) <- 1991:2080
nrkfC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"North.rockfish"]
nrkfC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"North.rockfish"]
nrkfC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"North.rockfish"]
# head(nrkfC.45.f3.80)
nrkfC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfC.45.f3.80.up[i] <- max(nrkfC.45.f3.80[i,])
nrkfC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfC.45.f3.80.lo[i] <- min(nrkfC.45.f3.80[i,])
# Everything from 2081-2099
nrkfC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrkfC.45.f3.99) <- c("gfd","mir")
row.names(nrkfC.45.f3.99) <- 2081:2099
nrkfC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"North.rockfish"]
nrkfC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"North.rockfish"]
# head(nrkfC.45.f3.99)
nrkfC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfC.45.f3.99.up[i] <- max(nrkfC.45.f3.99[i,])
nrkfC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfC.45.f3.99.lo[i] <- min(nrkfC.45.f3.99[i,])
# now append these two time periods
nrkfC.45.f3.up <- c(nrkfC.45.f3.80.up,nrkfC.45.f3.99.up)
nrkfC.45.f3.lo <- c(nrkfC.45.f3.80.lo,nrkfC.45.f3.99.lo)

# RCP 8.5
nrkfC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrkfC.85.f3) <- c("gfd","mir","ces")
row.names(nrkfC.85.f3) <- 1991:2099
nrkfC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"North.rockfish"]
nrkfC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"North.rockfish"]
nrkfC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"North.rockfish"]
# head(nrkfC.85.f3)
nrkfC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfC.85.f3.up[i] <- max(nrkfC.85.f3[i,])
nrkfC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfC.85.f3.lo[i] <- min(nrkfC.85.f3[i,])

# # SRES A1B
# nrkfC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrkfC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrkfC.a1b.f3) <- 1991:2039
# nrkfC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"North.rockfish"]
# nrkfC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"North.rockfish"]
# nrkfC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"North.rockfish"]
# # head(nrkfC.a1b.f3)
# nrkfC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfC.a1b.f3.up[i] <- max(nrkfC.a1b.f3[i,])
# nrkfC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfC.a1b.f3.lo[i] <- min(nrkfC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# North.rockfish F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
nrkfB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrkfB.45.f4.80) <- c("gfd","mir","ces")
row.names(nrkfB.45.f4.80) <- 1991:2080
nrkfB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"North.rockfish"]
nrkfB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"North.rockfish"]
nrkfB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"North.rockfish"]
# head(nrkfB.45.f4.80)
nrkfB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfB.45.f4.80.up[i] <- max(nrkfB.45.f4.80[i,])
nrkfB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfB.45.f4.80.lo[i] <- min(nrkfB.45.f4.80[i,])
# Everything from 2081-2099
nrkfB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrkfB.45.f4.99) <- c("gfd","mir")
row.names(nrkfB.45.f4.99) <- 2081:2099
nrkfB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"North.rockfish"]
nrkfB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"North.rockfish"]
# head(nrkfB.45.f4.99)
nrkfB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfB.45.f4.99.up[i] <- max(nrkfB.45.f4.99[i,])
nrkfB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfB.45.f4.99.lo[i] <- min(nrkfB.45.f4.99[i,])
# now append these two time periods
nrkfB.45.f4.up <- c(nrkfB.45.f4.80.up,nrkfB.45.f4.99.up)
nrkfB.45.f4.lo <- c(nrkfB.45.f4.80.lo,nrkfB.45.f4.99.lo)

# RCP 8.5
nrkfB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrkfB.85.f4) <- c("gfd","mir","ces")
row.names(nrkfB.85.f4) <- 1991:2099
nrkfB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"North.rockfish"]
nrkfB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"North.rockfish"]
nrkfB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"North.rockfish"]
# head(nrkfB.85.f4)
nrkfB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfB.85.f4.up[i] <- max(nrkfB.85.f4[i,])
nrkfB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfB.85.f4.lo[i] <- min(nrkfB.85.f4[i,])

# # SRES A1B
# nrkfB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrkfB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrkfB.a1b.f4) <- 1991:2039
# nrkfB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"North.rockfish"]
# nrkfB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"North.rockfish"]
# nrkfB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"North.rockfish"]
# # head(nrkfB.a1b.f4)
# nrkfB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfB.a1b.f4.up[i] <- max(nrkfB.a1b.f4[i,])
# nrkfB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfB.a1b.f4.lo[i] <- min(nrkfB.a1b.f4[i,])

# North.rockfish Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
nrkfC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrkfC.45.f4.80) <- c("gfd","mir","ces")
row.names(nrkfC.45.f4.80) <- 1991:2080
nrkfC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"North.rockfish"]
nrkfC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"North.rockfish"]
nrkfC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"North.rockfish"]
# head(nrkfC.45.f4.80)
nrkfC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfC.45.f4.80.up[i] <- max(nrkfC.45.f4.80[i,])
nrkfC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrkfC.45.f4.80.lo[i] <- min(nrkfC.45.f4.80[i,])
# Everything from 2081-2099
nrkfC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrkfC.45.f4.99) <- c("gfd","mir")
row.names(nrkfC.45.f4.99) <- 2081:2099
nrkfC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"North.rockfish"]
nrkfC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"North.rockfish"]
# head(nrkfC.45.f4.99)
nrkfC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfC.45.f4.99.up[i] <- max(nrkfC.45.f4.99[i,])
nrkfC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrkfC.45.f4.99.lo[i] <- min(nrkfC.45.f4.99[i,])
# now append these two time periods
nrkfC.45.f4.up <- c(nrkfC.45.f4.80.up,nrkfC.45.f4.99.up)
nrkfC.45.f4.lo <- c(nrkfC.45.f4.80.lo,nrkfC.45.f4.99.lo)

# RCP 8.5
nrkfC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrkfC.85.f4) <- c("gfd","mir","ces")
row.names(nrkfC.85.f4) <- 1991:2099
nrkfC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"North.rockfish"]
nrkfC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"North.rockfish"]
nrkfC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"North.rockfish"]
# head(nrkfC.85.f4)
nrkfC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfC.85.f4.up[i] <- max(nrkfC.85.f4[i,])
nrkfC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrkfC.85.f4.lo[i] <- min(nrkfC.85.f4[i,])

# # SRES A1B
# nrkfC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrkfC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrkfC.a1b.f4) <- 1991:2039
# nrkfC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"North.rockfish"]
# nrkfC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"North.rockfish"]
# nrkfC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"North.rockfish"]
# # head(nrkfC.a1b.f4)
# nrkfC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfC.a1b.f4.up[i] <- max(nrkfC.a1b.f4[i,])
# nrkfC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrkfC.a1b.f4.lo[i] <- min(nrkfC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Oth.rockfish biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
orkfB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(orkfB.45.f1.80) <- c("gfd","mir","ces")
row.names(orkfB.45.f1.80) <- 1991:2080
orkfB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Oth.rockfish"]
orkfB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Oth.rockfish"]
orkfB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Oth.rockfish"]
# head(orkfB.45.f1.80)
orkfB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfB.45.f1.80.up[i] <- max(orkfB.45.f1.80[i,])
orkfB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfB.45.f1.80.lo[i] <- min(orkfB.45.f1.80[i,])
# Everything from 2081-2099
orkfB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(orkfB.45.f1.99) <- c("gfd","mir")
row.names(orkfB.45.f1.99) <- 2081:2099
orkfB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Oth.rockfish"]
orkfB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Oth.rockfish"]
# head(orkfB.45.f1.99)
orkfB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfB.45.f1.99.up[i] <- max(orkfB.45.f1.99[i,])
orkfB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfB.45.f1.99.lo[i] <- min(orkfB.45.f1.99[i,])
# now append these two time periods
orkfB.45.f1.up <- c(orkfB.45.f1.80.up,orkfB.45.f1.99.up)
orkfB.45.f1.lo <- c(orkfB.45.f1.80.lo,orkfB.45.f1.99.lo)

# RCP 8.5
orkfB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(orkfB.85.f1) <- c("gfd","mir","ces")
row.names(orkfB.85.f1) <- 1991:2099
orkfB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Oth.rockfish"]
orkfB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Oth.rockfish"]
orkfB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Oth.rockfish"]
# head(orkfB.85.f1)
orkfB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfB.85.f1.up[i] <- max(orkfB.85.f1[i,])
orkfB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfB.85.f1.lo[i] <- min(orkfB.85.f1[i,])

# # SRES A1B
# orkfB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(orkfB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(orkfB.a1b.f1) <- 1991:2039
# orkfB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Oth.rockfish"]
# orkfB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Oth.rockfish"]
# orkfB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Oth.rockfish"]
# # head(orkfB.a1b.f1)
# orkfB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfB.a1b.f1.up[i] <- max(orkfB.a1b.f1[i,])
# orkfB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfB.a1b.f1.lo[i] <- min(orkfB.a1b.f1[i,])

# Oth.rockfish Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
orkfC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(orkfC.45.f1.80) <- c("gfd","mir","ces")
row.names(orkfC.45.f1.80) <- 1991:2080
orkfC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Oth.rockfish"]
orkfC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Oth.rockfish"]
orkfC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Oth.rockfish"]
# head(orkfC.45.f1.80)
orkfC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfC.45.f1.80.up[i] <- max(orkfC.45.f1.80[i,])
orkfC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfC.45.f1.80.lo[i] <- min(orkfC.45.f1.80[i,])
# Everything from 2081-2099
orkfC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(orkfC.45.f1.99) <- c("gfd","mir")
row.names(orkfC.45.f1.99) <- 2081:2099
orkfC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Oth.rockfish"]
orkfC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Oth.rockfish"]
# head(orkfC.45.f1.99)
orkfC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfC.45.f1.99.up[i] <- max(orkfC.45.f1.99[i,])
orkfC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfC.45.f1.99.lo[i] <- min(orkfC.45.f1.99[i,])
# now append these two time periods
orkfC.45.f1.up <- c(orkfC.45.f1.80.up,orkfC.45.f1.99.up)
orkfC.45.f1.lo <- c(orkfC.45.f1.80.lo,orkfC.45.f1.99.lo)

# RCP 8.5
orkfC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(orkfC.85.f1) <- c("gfd","mir","ces")
row.names(orkfC.85.f1) <- 1991:2099
orkfC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Oth.rockfish"]
orkfC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Oth.rockfish"]
orkfC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Oth.rockfish"]
# head(orkfC.85.f1)
orkfC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfC.85.f1.up[i] <- max(orkfC.85.f1[i,])
orkfC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfC.85.f1.lo[i] <- min(orkfC.85.f1[i,])

# # SRES A1B
# orkfC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(orkfC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(orkfC.a1b.f1) <- 1991:2039
# orkfC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Oth.rockfish"]
# orkfC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Oth.rockfish"]
# orkfC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Oth.rockfish"]
# # head(orkfC.a1b.f1)
# orkfC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfC.a1b.f1.up[i] <- max(orkfC.a1b.f1[i,])
# orkfC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfC.a1b.f1.lo[i] <- min(orkfC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Oth.rockfish F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
orkfB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(orkfB.45.f2.80) <- c("gfd","mir","ces")
row.names(orkfB.45.f2.80) <- 1991:2080
orkfB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Oth.rockfish"]
orkfB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Oth.rockfish"]
orkfB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Oth.rockfish"]
# head(orkfB.45.f2.80)
orkfB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfB.45.f2.80.up[i] <- max(orkfB.45.f2.80[i,])
orkfB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfB.45.f2.80.lo[i] <- min(orkfB.45.f2.80[i,])
# Everything from 2081-2099
orkfB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(orkfB.45.f2.99) <- c("gfd","mir")
row.names(orkfB.45.f2.99) <- 2081:2099
orkfB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Oth.rockfish"]
orkfB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Oth.rockfish"]
# head(orkfB.45.f2.99)
orkfB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfB.45.f2.99.up[i] <- max(orkfB.45.f2.99[i,])
orkfB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfB.45.f2.99.lo[i] <- min(orkfB.45.f2.99[i,])
# now append these two time periods
orkfB.45.f2.up <- c(orkfB.45.f2.80.up,orkfB.45.f2.99.up)
orkfB.45.f2.lo <- c(orkfB.45.f2.80.lo,orkfB.45.f2.99.lo)

# RCP 8.5
orkfB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(orkfB.85.f2) <- c("gfd","mir","ces")
row.names(orkfB.85.f2) <- 1991:2099
orkfB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Oth.rockfish"]
orkfB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Oth.rockfish"]
orkfB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Oth.rockfish"]
# head(orkfB.85.f2)
orkfB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfB.85.f2.up[i] <- max(orkfB.85.f2[i,])
orkfB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfB.85.f2.lo[i] <- min(orkfB.85.f2[i,])

# # SRES A1B
# orkfB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(orkfB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(orkfB.a1b.f2) <- 1991:2039
# orkfB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Oth.rockfish"]
# orkfB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Oth.rockfish"]
# orkfB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Oth.rockfish"]
# # head(orkfB.a1b.f2)
# orkfB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfB.a1b.f2.up[i] <- max(orkfB.a1b.f2[i,])
# orkfB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfB.a1b.f2.lo[i] <- min(orkfB.a1b.f2[i,])

# Oth.rockfish Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
orkfC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(orkfC.45.f2.80) <- c("gfd","mir","ces")
row.names(orkfC.45.f2.80) <- 1991:2080
orkfC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Oth.rockfish"]
orkfC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Oth.rockfish"]
orkfC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Oth.rockfish"]
# head(orkfC.45.f2.80)
orkfC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfC.45.f2.80.up[i] <- max(orkfC.45.f2.80[i,])
orkfC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfC.45.f2.80.lo[i] <- min(orkfC.45.f2.80[i,])
# Everything from 2081-2099
orkfC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(orkfC.45.f2.99) <- c("gfd","mir")
row.names(orkfC.45.f2.99) <- 2081:2099
orkfC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Oth.rockfish"]
orkfC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Oth.rockfish"]
# head(orkfC.45.f2.99)
orkfC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfC.45.f2.99.up[i] <- max(orkfC.45.f2.99[i,])
orkfC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfC.45.f2.99.lo[i] <- min(orkfC.45.f2.99[i,])
# now append these two time periods
orkfC.45.f2.up <- c(orkfC.45.f2.80.up,orkfC.45.f2.99.up)
orkfC.45.f2.lo <- c(orkfC.45.f2.80.lo,orkfC.45.f2.99.lo)

# RCP 8.5
orkfC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(orkfC.85.f2) <- c("gfd","mir","ces")
row.names(orkfC.85.f2) <- 1991:2099
orkfC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Oth.rockfish"]
orkfC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Oth.rockfish"]
orkfC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Oth.rockfish"]
# head(orkfC.85.f2)
orkfC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfC.85.f2.up[i] <- max(orkfC.85.f2[i,])
orkfC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfC.85.f2.lo[i] <- min(orkfC.85.f2[i,])

# # SRES A1B
# orkfC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(orkfC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(orkfC.a1b.f2) <- 1991:2039
# orkfC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Oth.rockfish"]
# orkfC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Oth.rockfish"]
# orkfC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Oth.rockfish"]
# # head(orkfC.a1b.f2)
# orkfC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfC.a1b.f2.up[i] <- max(orkfC.a1b.f2[i,])
# orkfC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfC.a1b.f2.lo[i] <- min(orkfC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Oth.rockfish F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
orkfB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(orkfB.45.f3.80) <- c("gfd","mir","ces")
row.names(orkfB.45.f3.80) <- 1991:2080
orkfB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Oth.rockfish"]
orkfB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Oth.rockfish"]
orkfB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Oth.rockfish"]
# head(orkfB.45.f3.80)
orkfB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfB.45.f3.80.up[i] <- max(orkfB.45.f3.80[i,])
orkfB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfB.45.f3.80.lo[i] <- min(orkfB.45.f3.80[i,])
# Everything from 2081-2099
orkfB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(orkfB.45.f3.99) <- c("gfd","mir")
row.names(orkfB.45.f3.99) <- 2081:2099
orkfB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Oth.rockfish"]
orkfB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Oth.rockfish"]
# head(orkfB.45.f3.99)
orkfB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfB.45.f3.99.up[i] <- max(orkfB.45.f3.99[i,])
orkfB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfB.45.f3.99.lo[i] <- min(orkfB.45.f3.99[i,])
# now append these two time periods
orkfB.45.f3.up <- c(orkfB.45.f3.80.up,orkfB.45.f3.99.up)
orkfB.45.f3.lo <- c(orkfB.45.f3.80.lo,orkfB.45.f3.99.lo)

# RCP 8.5
orkfB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(orkfB.85.f3) <- c("gfd","mir","ces")
row.names(orkfB.85.f3) <- 1991:2099
orkfB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Oth.rockfish"]
orkfB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Oth.rockfish"]
orkfB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Oth.rockfish"]
# head(orkfB.85.f3)
orkfB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfB.85.f3.up[i] <- max(orkfB.85.f3[i,])
orkfB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfB.85.f3.lo[i] <- min(orkfB.85.f3[i,])

# # SRES A1B
# orkfB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(orkfB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(orkfB.a1b.f3) <- 1991:2039
# orkfB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Oth.rockfish"]
# orkfB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Oth.rockfish"]
# orkfB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Oth.rockfish"]
# # head(orkfB.a1b.f3)
# orkfB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfB.a1b.f3.up[i] <- max(orkfB.a1b.f3[i,])
# orkfB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfB.a1b.f3.lo[i] <- min(orkfB.a1b.f3[i,])

# Oth.rockfish Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
orkfC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(orkfC.45.f3.80) <- c("gfd","mir","ces")
row.names(orkfC.45.f3.80) <- 1991:2080
orkfC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Oth.rockfish"]
orkfC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Oth.rockfish"]
orkfC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Oth.rockfish"]
# head(orkfC.45.f3.80)
orkfC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfC.45.f3.80.up[i] <- max(orkfC.45.f3.80[i,])
orkfC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfC.45.f3.80.lo[i] <- min(orkfC.45.f3.80[i,])
# Everything from 2081-2099
orkfC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(orkfC.45.f3.99) <- c("gfd","mir")
row.names(orkfC.45.f3.99) <- 2081:2099
orkfC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Oth.rockfish"]
orkfC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Oth.rockfish"]
# head(orkfC.45.f3.99)
orkfC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfC.45.f3.99.up[i] <- max(orkfC.45.f3.99[i,])
orkfC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfC.45.f3.99.lo[i] <- min(orkfC.45.f3.99[i,])
# now append these two time periods
orkfC.45.f3.up <- c(orkfC.45.f3.80.up,orkfC.45.f3.99.up)
orkfC.45.f3.lo <- c(orkfC.45.f3.80.lo,orkfC.45.f3.99.lo)

# RCP 8.5
orkfC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(orkfC.85.f3) <- c("gfd","mir","ces")
row.names(orkfC.85.f3) <- 1991:2099
orkfC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Oth.rockfish"]
orkfC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Oth.rockfish"]
orkfC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Oth.rockfish"]
# head(orkfC.85.f3)
orkfC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfC.85.f3.up[i] <- max(orkfC.85.f3[i,])
orkfC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfC.85.f3.lo[i] <- min(orkfC.85.f3[i,])

# # SRES A1B
# orkfC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(orkfC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(orkfC.a1b.f3) <- 1991:2039
# orkfC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Oth.rockfish"]
# orkfC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Oth.rockfish"]
# orkfC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Oth.rockfish"]
# # head(orkfC.a1b.f3)
# orkfC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfC.a1b.f3.up[i] <- max(orkfC.a1b.f3[i,])
# orkfC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfC.a1b.f3.lo[i] <- min(orkfC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Oth.rockfish F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
orkfB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(orkfB.45.f4.80) <- c("gfd","mir","ces")
row.names(orkfB.45.f4.80) <- 1991:2080
orkfB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Oth.rockfish"]
orkfB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Oth.rockfish"]
orkfB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Oth.rockfish"]
# head(orkfB.45.f4.80)
orkfB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfB.45.f4.80.up[i] <- max(orkfB.45.f4.80[i,])
orkfB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfB.45.f4.80.lo[i] <- min(orkfB.45.f4.80[i,])
# Everything from 2081-2099
orkfB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(orkfB.45.f4.99) <- c("gfd","mir")
row.names(orkfB.45.f4.99) <- 2081:2099
orkfB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Oth.rockfish"]
orkfB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Oth.rockfish"]
# head(orkfB.45.f4.99)
orkfB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfB.45.f4.99.up[i] <- max(orkfB.45.f4.99[i,])
orkfB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfB.45.f4.99.lo[i] <- min(orkfB.45.f4.99[i,])
# now append these two time periods
orkfB.45.f4.up <- c(orkfB.45.f4.80.up,orkfB.45.f4.99.up)
orkfB.45.f4.lo <- c(orkfB.45.f4.80.lo,orkfB.45.f4.99.lo)

# RCP 8.5
orkfB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(orkfB.85.f4) <- c("gfd","mir","ces")
row.names(orkfB.85.f4) <- 1991:2099
orkfB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Oth.rockfish"]
orkfB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Oth.rockfish"]
orkfB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Oth.rockfish"]
# head(orkfB.85.f4)
orkfB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfB.85.f4.up[i] <- max(orkfB.85.f4[i,])
orkfB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfB.85.f4.lo[i] <- min(orkfB.85.f4[i,])

# # SRES A1B
# orkfB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(orkfB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(orkfB.a1b.f4) <- 1991:2039
# orkfB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Oth.rockfish"]
# orkfB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Oth.rockfish"]
# orkfB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Oth.rockfish"]
# # head(orkfB.a1b.f4)
# orkfB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfB.a1b.f4.up[i] <- max(orkfB.a1b.f4[i,])
# orkfB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfB.a1b.f4.lo[i] <- min(orkfB.a1b.f4[i,])

# Oth.rockfish Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
orkfC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(orkfC.45.f4.80) <- c("gfd","mir","ces")
row.names(orkfC.45.f4.80) <- 1991:2080
orkfC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Oth.rockfish"]
orkfC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Oth.rockfish"]
orkfC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Oth.rockfish"]
# head(orkfC.45.f4.80)
orkfC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfC.45.f4.80.up[i] <- max(orkfC.45.f4.80[i,])
orkfC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) orkfC.45.f4.80.lo[i] <- min(orkfC.45.f4.80[i,])
# Everything from 2081-2099
orkfC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(orkfC.45.f4.99) <- c("gfd","mir")
row.names(orkfC.45.f4.99) <- 2081:2099
orkfC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Oth.rockfish"]
orkfC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Oth.rockfish"]
# head(orkfC.45.f4.99)
orkfC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfC.45.f4.99.up[i] <- max(orkfC.45.f4.99[i,])
orkfC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) orkfC.45.f4.99.lo[i] <- min(orkfC.45.f4.99[i,])
# now append these two time periods
orkfC.45.f4.up <- c(orkfC.45.f4.80.up,orkfC.45.f4.99.up)
orkfC.45.f4.lo <- c(orkfC.45.f4.80.lo,orkfC.45.f4.99.lo)

# RCP 8.5
orkfC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(orkfC.85.f4) <- c("gfd","mir","ces")
row.names(orkfC.85.f4) <- 1991:2099
orkfC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Oth.rockfish"]
orkfC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Oth.rockfish"]
orkfC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Oth.rockfish"]
# head(orkfC.85.f4)
orkfC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfC.85.f4.up[i] <- max(orkfC.85.f4[i,])
orkfC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) orkfC.85.f4.lo[i] <- min(orkfC.85.f4[i,])

# # SRES A1B
# orkfC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(orkfC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(orkfC.a1b.f4) <- 1991:2039
# orkfC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Oth.rockfish"]
# orkfC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Oth.rockfish"]
# orkfC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Oth.rockfish"]
# # head(orkfC.a1b.f4)
# orkfC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfC.a1b.f4.up[i] <- max(orkfC.a1b.f4[i,])
# orkfC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) orkfC.a1b.f4.lo[i] <- min(orkfC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Other.forage biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
ofrgB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ofrgB.45.f1.80) <- c("gfd","mir","ces")
row.names(ofrgB.45.f1.80) <- 1991:2080
ofrgB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Other.forage"]
ofrgB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Other.forage"]
ofrgB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Other.forage"]
# head(ofrgB.45.f1.80)
ofrgB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgB.45.f1.80.up[i] <- max(ofrgB.45.f1.80[i,])
ofrgB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgB.45.f1.80.lo[i] <- min(ofrgB.45.f1.80[i,])
# Everything from 2081-2099
ofrgB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ofrgB.45.f1.99) <- c("gfd","mir")
row.names(ofrgB.45.f1.99) <- 2081:2099
ofrgB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Other.forage"]
ofrgB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Other.forage"]
# head(ofrgB.45.f1.99)
ofrgB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgB.45.f1.99.up[i] <- max(ofrgB.45.f1.99[i,])
ofrgB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgB.45.f1.99.lo[i] <- min(ofrgB.45.f1.99[i,])
# now append these two time periods
ofrgB.45.f1.up <- c(ofrgB.45.f1.80.up,ofrgB.45.f1.99.up)
ofrgB.45.f1.lo <- c(ofrgB.45.f1.80.lo,ofrgB.45.f1.99.lo)

# RCP 8.5
ofrgB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ofrgB.85.f1) <- c("gfd","mir","ces")
row.names(ofrgB.85.f1) <- 1991:2099
ofrgB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Other.forage"]
ofrgB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Other.forage"]
ofrgB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Other.forage"]
# head(ofrgB.85.f1)
ofrgB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgB.85.f1.up[i] <- max(ofrgB.85.f1[i,])
ofrgB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgB.85.f1.lo[i] <- min(ofrgB.85.f1[i,])

# # SRES A1B
# ofrgB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ofrgB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(ofrgB.a1b.f1) <- 1991:2039
# ofrgB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Other.forage"]
# ofrgB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Other.forage"]
# ofrgB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Other.forage"]
# # head(ofrgB.a1b.f1)
# ofrgB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgB.a1b.f1.up[i] <- max(ofrgB.a1b.f1[i,])
# ofrgB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgB.a1b.f1.lo[i] <- min(ofrgB.a1b.f1[i,])

# Other.forage Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
ofrgC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ofrgC.45.f1.80) <- c("gfd","mir","ces")
row.names(ofrgC.45.f1.80) <- 1991:2080
ofrgC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Other.forage"]
ofrgC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Other.forage"]
ofrgC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Other.forage"]
# head(ofrgC.45.f1.80)
ofrgC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgC.45.f1.80.up[i] <- max(ofrgC.45.f1.80[i,])
ofrgC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgC.45.f1.80.lo[i] <- min(ofrgC.45.f1.80[i,])
# Everything from 2081-2099
ofrgC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ofrgC.45.f1.99) <- c("gfd","mir")
row.names(ofrgC.45.f1.99) <- 2081:2099
ofrgC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Other.forage"]
ofrgC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Other.forage"]
# head(ofrgC.45.f1.99)
ofrgC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgC.45.f1.99.up[i] <- max(ofrgC.45.f1.99[i,])
ofrgC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgC.45.f1.99.lo[i] <- min(ofrgC.45.f1.99[i,])
# now append these two time periods
ofrgC.45.f1.up <- c(ofrgC.45.f1.80.up,ofrgC.45.f1.99.up)
ofrgC.45.f1.lo <- c(ofrgC.45.f1.80.lo,ofrgC.45.f1.99.lo)

# RCP 8.5
ofrgC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ofrgC.85.f1) <- c("gfd","mir","ces")
row.names(ofrgC.85.f1) <- 1991:2099
ofrgC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Other.forage"]
ofrgC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Other.forage"]
ofrgC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Other.forage"]
# head(ofrgC.85.f1)
ofrgC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgC.85.f1.up[i] <- max(ofrgC.85.f1[i,])
ofrgC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgC.85.f1.lo[i] <- min(ofrgC.85.f1[i,])

# # SRES A1B
# ofrgC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ofrgC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(ofrgC.a1b.f1) <- 1991:2039
# ofrgC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Other.forage"]
# ofrgC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Other.forage"]
# ofrgC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Other.forage"]
# # head(ofrgC.a1b.f1)
# ofrgC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgC.a1b.f1.up[i] <- max(ofrgC.a1b.f1[i,])
# ofrgC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgC.a1b.f1.lo[i] <- min(ofrgC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Other.forage F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
ofrgB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ofrgB.45.f2.80) <- c("gfd","mir","ces")
row.names(ofrgB.45.f2.80) <- 1991:2080
ofrgB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Other.forage"]
ofrgB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Other.forage"]
ofrgB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Other.forage"]
# head(ofrgB.45.f2.80)
ofrgB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgB.45.f2.80.up[i] <- max(ofrgB.45.f2.80[i,])
ofrgB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgB.45.f2.80.lo[i] <- min(ofrgB.45.f2.80[i,])
# Everything from 2081-2099
ofrgB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ofrgB.45.f2.99) <- c("gfd","mir")
row.names(ofrgB.45.f2.99) <- 2081:2099
ofrgB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Other.forage"]
ofrgB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Other.forage"]
# head(ofrgB.45.f2.99)
ofrgB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgB.45.f2.99.up[i] <- max(ofrgB.45.f2.99[i,])
ofrgB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgB.45.f2.99.lo[i] <- min(ofrgB.45.f2.99[i,])
# now append these two time periods
ofrgB.45.f2.up <- c(ofrgB.45.f2.80.up,ofrgB.45.f2.99.up)
ofrgB.45.f2.lo <- c(ofrgB.45.f2.80.lo,ofrgB.45.f2.99.lo)

# RCP 8.5
ofrgB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ofrgB.85.f2) <- c("gfd","mir","ces")
row.names(ofrgB.85.f2) <- 1991:2099
ofrgB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Other.forage"]
ofrgB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Other.forage"]
ofrgB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Other.forage"]
# head(ofrgB.85.f2)
ofrgB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgB.85.f2.up[i] <- max(ofrgB.85.f2[i,])
ofrgB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgB.85.f2.lo[i] <- min(ofrgB.85.f2[i,])

# # SRES A1B
# ofrgB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ofrgB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(ofrgB.a1b.f2) <- 1991:2039
# ofrgB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Other.forage"]
# ofrgB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Other.forage"]
# ofrgB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Other.forage"]
# # head(ofrgB.a1b.f2)
# ofrgB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgB.a1b.f2.up[i] <- max(ofrgB.a1b.f2[i,])
# ofrgB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgB.a1b.f2.lo[i] <- min(ofrgB.a1b.f2[i,])

# Other.forage Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
ofrgC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ofrgC.45.f2.80) <- c("gfd","mir","ces")
row.names(ofrgC.45.f2.80) <- 1991:2080
ofrgC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Other.forage"]
ofrgC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Other.forage"]
ofrgC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Other.forage"]
# head(ofrgC.45.f2.80)
ofrgC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgC.45.f2.80.up[i] <- max(ofrgC.45.f2.80[i,])
ofrgC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgC.45.f2.80.lo[i] <- min(ofrgC.45.f2.80[i,])
# Everything from 2081-2099
ofrgC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ofrgC.45.f2.99) <- c("gfd","mir")
row.names(ofrgC.45.f2.99) <- 2081:2099
ofrgC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Other.forage"]
ofrgC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Other.forage"]
# head(ofrgC.45.f2.99)
ofrgC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgC.45.f2.99.up[i] <- max(ofrgC.45.f2.99[i,])
ofrgC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgC.45.f2.99.lo[i] <- min(ofrgC.45.f2.99[i,])
# now append these two time periods
ofrgC.45.f2.up <- c(ofrgC.45.f2.80.up,ofrgC.45.f2.99.up)
ofrgC.45.f2.lo <- c(ofrgC.45.f2.80.lo,ofrgC.45.f2.99.lo)

# RCP 8.5
ofrgC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ofrgC.85.f2) <- c("gfd","mir","ces")
row.names(ofrgC.85.f2) <- 1991:2099
ofrgC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Other.forage"]
ofrgC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Other.forage"]
ofrgC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Other.forage"]
# head(ofrgC.85.f2)
ofrgC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgC.85.f2.up[i] <- max(ofrgC.85.f2[i,])
ofrgC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgC.85.f2.lo[i] <- min(ofrgC.85.f2[i,])

# # SRES A1B
# ofrgC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ofrgC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(ofrgC.a1b.f2) <- 1991:2039
# ofrgC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Other.forage"]
# ofrgC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Other.forage"]
# ofrgC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Other.forage"]
# # head(ofrgC.a1b.f2)
# ofrgC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgC.a1b.f2.up[i] <- max(ofrgC.a1b.f2[i,])
# ofrgC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgC.a1b.f2.lo[i] <- min(ofrgC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Other.forage F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
ofrgB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ofrgB.45.f3.80) <- c("gfd","mir","ces")
row.names(ofrgB.45.f3.80) <- 1991:2080
ofrgB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Other.forage"]
ofrgB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Other.forage"]
ofrgB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Other.forage"]
# head(ofrgB.45.f3.80)
ofrgB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgB.45.f3.80.up[i] <- max(ofrgB.45.f3.80[i,])
ofrgB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgB.45.f3.80.lo[i] <- min(ofrgB.45.f3.80[i,])
# Everything from 2081-2099
ofrgB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ofrgB.45.f3.99) <- c("gfd","mir")
row.names(ofrgB.45.f3.99) <- 2081:2099
ofrgB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Other.forage"]
ofrgB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Other.forage"]
# head(ofrgB.45.f3.99)
ofrgB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgB.45.f3.99.up[i] <- max(ofrgB.45.f3.99[i,])
ofrgB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgB.45.f3.99.lo[i] <- min(ofrgB.45.f3.99[i,])
# now append these two time periods
ofrgB.45.f3.up <- c(ofrgB.45.f3.80.up,ofrgB.45.f3.99.up)
ofrgB.45.f3.lo <- c(ofrgB.45.f3.80.lo,ofrgB.45.f3.99.lo)

# RCP 8.5
ofrgB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ofrgB.85.f3) <- c("gfd","mir","ces")
row.names(ofrgB.85.f3) <- 1991:2099
ofrgB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Other.forage"]
ofrgB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Other.forage"]
ofrgB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Other.forage"]
# head(ofrgB.85.f3)
ofrgB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgB.85.f3.up[i] <- max(ofrgB.85.f3[i,])
ofrgB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgB.85.f3.lo[i] <- min(ofrgB.85.f3[i,])

# # SRES A1B
# ofrgB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ofrgB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(ofrgB.a1b.f3) <- 1991:2039
# ofrgB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Other.forage"]
# ofrgB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Other.forage"]
# ofrgB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Other.forage"]
# # head(ofrgB.a1b.f3)
# ofrgB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgB.a1b.f3.up[i] <- max(ofrgB.a1b.f3[i,])
# ofrgB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgB.a1b.f3.lo[i] <- min(ofrgB.a1b.f3[i,])

# Other.forage Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
ofrgC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ofrgC.45.f3.80) <- c("gfd","mir","ces")
row.names(ofrgC.45.f3.80) <- 1991:2080
ofrgC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Other.forage"]
ofrgC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Other.forage"]
ofrgC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Other.forage"]
# head(ofrgC.45.f3.80)
ofrgC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgC.45.f3.80.up[i] <- max(ofrgC.45.f3.80[i,])
ofrgC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgC.45.f3.80.lo[i] <- min(ofrgC.45.f3.80[i,])
# Everything from 2081-2099
ofrgC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ofrgC.45.f3.99) <- c("gfd","mir")
row.names(ofrgC.45.f3.99) <- 2081:2099
ofrgC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Other.forage"]
ofrgC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Other.forage"]
# head(ofrgC.45.f3.99)
ofrgC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgC.45.f3.99.up[i] <- max(ofrgC.45.f3.99[i,])
ofrgC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgC.45.f3.99.lo[i] <- min(ofrgC.45.f3.99[i,])
# now append these two time periods
ofrgC.45.f3.up <- c(ofrgC.45.f3.80.up,ofrgC.45.f3.99.up)
ofrgC.45.f3.lo <- c(ofrgC.45.f3.80.lo,ofrgC.45.f3.99.lo)

# RCP 8.5
ofrgC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ofrgC.85.f3) <- c("gfd","mir","ces")
row.names(ofrgC.85.f3) <- 1991:2099
ofrgC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Other.forage"]
ofrgC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Other.forage"]
ofrgC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Other.forage"]
# head(ofrgC.85.f3)
ofrgC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgC.85.f3.up[i] <- max(ofrgC.85.f3[i,])
ofrgC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgC.85.f3.lo[i] <- min(ofrgC.85.f3[i,])

# # SRES A1B
# ofrgC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ofrgC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(ofrgC.a1b.f3) <- 1991:2039
# ofrgC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Other.forage"]
# ofrgC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Other.forage"]
# ofrgC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Other.forage"]
# # head(ofrgC.a1b.f3)
# ofrgC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgC.a1b.f3.up[i] <- max(ofrgC.a1b.f3[i,])
# ofrgC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgC.a1b.f3.lo[i] <- min(ofrgC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Other.forage F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
ofrgB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ofrgB.45.f4.80) <- c("gfd","mir","ces")
row.names(ofrgB.45.f4.80) <- 1991:2080
ofrgB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Other.forage"]
ofrgB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Other.forage"]
ofrgB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Other.forage"]
# head(ofrgB.45.f4.80)
ofrgB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgB.45.f4.80.up[i] <- max(ofrgB.45.f4.80[i,])
ofrgB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgB.45.f4.80.lo[i] <- min(ofrgB.45.f4.80[i,])
# Everything from 2081-2099
ofrgB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ofrgB.45.f4.99) <- c("gfd","mir")
row.names(ofrgB.45.f4.99) <- 2081:2099
ofrgB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Other.forage"]
ofrgB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Other.forage"]
# head(ofrgB.45.f4.99)
ofrgB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgB.45.f4.99.up[i] <- max(ofrgB.45.f4.99[i,])
ofrgB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgB.45.f4.99.lo[i] <- min(ofrgB.45.f4.99[i,])
# now append these two time periods
ofrgB.45.f4.up <- c(ofrgB.45.f4.80.up,ofrgB.45.f4.99.up)
ofrgB.45.f4.lo <- c(ofrgB.45.f4.80.lo,ofrgB.45.f4.99.lo)

# RCP 8.5
ofrgB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ofrgB.85.f4) <- c("gfd","mir","ces")
row.names(ofrgB.85.f4) <- 1991:2099
ofrgB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Other.forage"]
ofrgB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Other.forage"]
ofrgB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Other.forage"]
# head(ofrgB.85.f4)
ofrgB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgB.85.f4.up[i] <- max(ofrgB.85.f4[i,])
ofrgB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgB.85.f4.lo[i] <- min(ofrgB.85.f4[i,])

# # SRES A1B
# ofrgB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ofrgB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(ofrgB.a1b.f4) <- 1991:2039
# ofrgB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Other.forage"]
# ofrgB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Other.forage"]
# ofrgB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Other.forage"]
# # head(ofrgB.a1b.f4)
# ofrgB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgB.a1b.f4.up[i] <- max(ofrgB.a1b.f4[i,])
# ofrgB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgB.a1b.f4.lo[i] <- min(ofrgB.a1b.f4[i,])

# Other.forage Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
ofrgC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ofrgC.45.f4.80) <- c("gfd","mir","ces")
row.names(ofrgC.45.f4.80) <- 1991:2080
ofrgC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Other.forage"]
ofrgC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Other.forage"]
ofrgC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Other.forage"]
# head(ofrgC.45.f4.80)
ofrgC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgC.45.f4.80.up[i] <- max(ofrgC.45.f4.80[i,])
ofrgC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ofrgC.45.f4.80.lo[i] <- min(ofrgC.45.f4.80[i,])
# Everything from 2081-2099
ofrgC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ofrgC.45.f4.99) <- c("gfd","mir")
row.names(ofrgC.45.f4.99) <- 2081:2099
ofrgC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Other.forage"]
ofrgC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Other.forage"]
# head(ofrgC.45.f4.99)
ofrgC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgC.45.f4.99.up[i] <- max(ofrgC.45.f4.99[i,])
ofrgC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ofrgC.45.f4.99.lo[i] <- min(ofrgC.45.f4.99[i,])
# now append these two time periods
ofrgC.45.f4.up <- c(ofrgC.45.f4.80.up,ofrgC.45.f4.99.up)
ofrgC.45.f4.lo <- c(ofrgC.45.f4.80.lo,ofrgC.45.f4.99.lo)

# RCP 8.5
ofrgC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ofrgC.85.f4) <- c("gfd","mir","ces")
row.names(ofrgC.85.f4) <- 1991:2099
ofrgC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Other.forage"]
ofrgC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Other.forage"]
ofrgC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Other.forage"]
# head(ofrgC.85.f4)
ofrgC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgC.85.f4.up[i] <- max(ofrgC.85.f4[i,])
ofrgC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ofrgC.85.f4.lo[i] <- min(ofrgC.85.f4[i,])

# # SRES A1B
# ofrgC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ofrgC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(ofrgC.a1b.f4) <- 1991:2039
# ofrgC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Other.forage"]
# ofrgC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Other.forage"]
# ofrgC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Other.forage"]
# # head(ofrgC.a1b.f4)
# ofrgC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgC.a1b.f4.up[i] <- max(ofrgC.a1b.f4[i,])
# ofrgC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ofrgC.a1b.f4.lo[i] <- min(ofrgC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# POP biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
popB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(popB.45.f1.80) <- c("gfd","mir","ces")
row.names(popB.45.f1.80) <- 1991:2080
popB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"POP"]
popB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"POP"]
popB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"POP"]
# head(popB.45.f1.80)
popB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) popB.45.f1.80.up[i] <- max(popB.45.f1.80[i,])
popB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) popB.45.f1.80.lo[i] <- min(popB.45.f1.80[i,])
# Everything from 2081-2099
popB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(popB.45.f1.99) <- c("gfd","mir")
row.names(popB.45.f1.99) <- 2081:2099
popB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"POP"]
popB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"POP"]
# head(popB.45.f1.99)
popB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) popB.45.f1.99.up[i] <- max(popB.45.f1.99[i,])
popB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) popB.45.f1.99.lo[i] <- min(popB.45.f1.99[i,])
# now append these two time periods
popB.45.f1.up <- c(popB.45.f1.80.up,popB.45.f1.99.up)
popB.45.f1.lo <- c(popB.45.f1.80.lo,popB.45.f1.99.lo)

# RCP 8.5
popB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(popB.85.f1) <- c("gfd","mir","ces")
row.names(popB.85.f1) <- 1991:2099
popB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"POP"]
popB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"POP"]
popB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"POP"]
# head(popB.85.f1)
popB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) popB.85.f1.up[i] <- max(popB.85.f1[i,])
popB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) popB.85.f1.lo[i] <- min(popB.85.f1[i,])

# # SRES A1B
# popB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(popB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(popB.a1b.f1) <- 1991:2039
# popB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"POP"]
# popB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"POP"]
# popB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"POP"]
# # head(popB.a1b.f1)
# popB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popB.a1b.f1.up[i] <- max(popB.a1b.f1[i,])
# popB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popB.a1b.f1.lo[i] <- min(popB.a1b.f1[i,])

# POP Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
popC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(popC.45.f1.80) <- c("gfd","mir","ces")
row.names(popC.45.f1.80) <- 1991:2080
popC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"POP"]
popC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"POP"]
popC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"POP"]
# head(popC.45.f1.80)
popC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) popC.45.f1.80.up[i] <- max(popC.45.f1.80[i,])
popC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) popC.45.f1.80.lo[i] <- min(popC.45.f1.80[i,])
# Everything from 2081-2099
popC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(popC.45.f1.99) <- c("gfd","mir")
row.names(popC.45.f1.99) <- 2081:2099
popC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"POP"]
popC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"POP"]
# head(popC.45.f1.99)
popC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) popC.45.f1.99.up[i] <- max(popC.45.f1.99[i,])
popC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) popC.45.f1.99.lo[i] <- min(popC.45.f1.99[i,])
# now append these two time periods
popC.45.f1.up <- c(popC.45.f1.80.up,popC.45.f1.99.up)
popC.45.f1.lo <- c(popC.45.f1.80.lo,popC.45.f1.99.lo)

# RCP 8.5
popC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(popC.85.f1) <- c("gfd","mir","ces")
row.names(popC.85.f1) <- 1991:2099
popC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"POP"]
popC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"POP"]
popC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"POP"]
# head(popC.85.f1)
popC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) popC.85.f1.up[i] <- max(popC.85.f1[i,])
popC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) popC.85.f1.lo[i] <- min(popC.85.f1[i,])

# # SRES A1B
# popC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(popC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(popC.a1b.f1) <- 1991:2039
# popC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"POP"]
# popC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"POP"]
# popC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"POP"]
# # head(popC.a1b.f1)
# popC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popC.a1b.f1.up[i] <- max(popC.a1b.f1[i,])
# popC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popC.a1b.f1.lo[i] <- min(popC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# POP F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
popB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(popB.45.f2.80) <- c("gfd","mir","ces")
row.names(popB.45.f2.80) <- 1991:2080
popB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"POP"]
popB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"POP"]
popB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"POP"]
# head(popB.45.f2.80)
popB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) popB.45.f2.80.up[i] <- max(popB.45.f2.80[i,])
popB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) popB.45.f2.80.lo[i] <- min(popB.45.f2.80[i,])
# Everything from 2081-2099
popB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(popB.45.f2.99) <- c("gfd","mir")
row.names(popB.45.f2.99) <- 2081:2099
popB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"POP"]
popB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"POP"]
# head(popB.45.f2.99)
popB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) popB.45.f2.99.up[i] <- max(popB.45.f2.99[i,])
popB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) popB.45.f2.99.lo[i] <- min(popB.45.f2.99[i,])
# now append these two time periods
popB.45.f2.up <- c(popB.45.f2.80.up,popB.45.f2.99.up)
popB.45.f2.lo <- c(popB.45.f2.80.lo,popB.45.f2.99.lo)

# RCP 8.5
popB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(popB.85.f2) <- c("gfd","mir","ces")
row.names(popB.85.f2) <- 1991:2099
popB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"POP"]
popB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"POP"]
popB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"POP"]
# head(popB.85.f2)
popB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) popB.85.f2.up[i] <- max(popB.85.f2[i,])
popB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) popB.85.f2.lo[i] <- min(popB.85.f2[i,])

# # SRES A1B
# popB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(popB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(popB.a1b.f2) <- 1991:2039
# popB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"POP"]
# popB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"POP"]
# popB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"POP"]
# # head(popB.a1b.f2)
# popB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popB.a1b.f2.up[i] <- max(popB.a1b.f2[i,])
# popB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popB.a1b.f2.lo[i] <- min(popB.a1b.f2[i,])

# POP Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
popC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(popC.45.f2.80) <- c("gfd","mir","ces")
row.names(popC.45.f2.80) <- 1991:2080
popC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"POP"]
popC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"POP"]
popC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"POP"]
# head(popC.45.f2.80)
popC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) popC.45.f2.80.up[i] <- max(popC.45.f2.80[i,])
popC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) popC.45.f2.80.lo[i] <- min(popC.45.f2.80[i,])
# Everything from 2081-2099
popC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(popC.45.f2.99) <- c("gfd","mir")
row.names(popC.45.f2.99) <- 2081:2099
popC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"POP"]
popC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"POP"]
# head(popC.45.f2.99)
popC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) popC.45.f2.99.up[i] <- max(popC.45.f2.99[i,])
popC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) popC.45.f2.99.lo[i] <- min(popC.45.f2.99[i,])
# now append these two time periods
popC.45.f2.up <- c(popC.45.f2.80.up,popC.45.f2.99.up)
popC.45.f2.lo <- c(popC.45.f2.80.lo,popC.45.f2.99.lo)

# RCP 8.5
popC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(popC.85.f2) <- c("gfd","mir","ces")
row.names(popC.85.f2) <- 1991:2099
popC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"POP"]
popC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"POP"]
popC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"POP"]
# head(popC.85.f2)
popC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) popC.85.f2.up[i] <- max(popC.85.f2[i,])
popC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) popC.85.f2.lo[i] <- min(popC.85.f2[i,])

# # SRES A1B
# popC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(popC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(popC.a1b.f2) <- 1991:2039
# popC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"POP"]
# popC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"POP"]
# popC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"POP"]
# # head(popC.a1b.f2)
# popC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popC.a1b.f2.up[i] <- max(popC.a1b.f2[i,])
# popC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popC.a1b.f2.lo[i] <- min(popC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# POP F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
popB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(popB.45.f3.80) <- c("gfd","mir","ces")
row.names(popB.45.f3.80) <- 1991:2080
popB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"POP"]
popB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"POP"]
popB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"POP"]
# head(popB.45.f3.80)
popB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) popB.45.f3.80.up[i] <- max(popB.45.f3.80[i,])
popB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) popB.45.f3.80.lo[i] <- min(popB.45.f3.80[i,])
# Everything from 2081-2099
popB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(popB.45.f3.99) <- c("gfd","mir")
row.names(popB.45.f3.99) <- 2081:2099
popB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"POP"]
popB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"POP"]
# head(popB.45.f3.99)
popB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) popB.45.f3.99.up[i] <- max(popB.45.f3.99[i,])
popB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) popB.45.f3.99.lo[i] <- min(popB.45.f3.99[i,])
# now append these two time periods
popB.45.f3.up <- c(popB.45.f3.80.up,popB.45.f3.99.up)
popB.45.f3.lo <- c(popB.45.f3.80.lo,popB.45.f3.99.lo)

# RCP 8.5
popB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(popB.85.f3) <- c("gfd","mir","ces")
row.names(popB.85.f3) <- 1991:2099
popB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"POP"]
popB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"POP"]
popB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"POP"]
# head(popB.85.f3)
popB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) popB.85.f3.up[i] <- max(popB.85.f3[i,])
popB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) popB.85.f3.lo[i] <- min(popB.85.f3[i,])

# # SRES A1B
# popB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(popB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(popB.a1b.f3) <- 1991:2039
# popB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"POP"]
# popB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"POP"]
# popB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"POP"]
# # head(popB.a1b.f3)
# popB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popB.a1b.f3.up[i] <- max(popB.a1b.f3[i,])
# popB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popB.a1b.f3.lo[i] <- min(popB.a1b.f3[i,])

# POP Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
popC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(popC.45.f3.80) <- c("gfd","mir","ces")
row.names(popC.45.f3.80) <- 1991:2080
popC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"POP"]
popC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"POP"]
popC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"POP"]
# head(popC.45.f3.80)
popC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) popC.45.f3.80.up[i] <- max(popC.45.f3.80[i,])
popC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) popC.45.f3.80.lo[i] <- min(popC.45.f3.80[i,])
# Everything from 2081-2099
popC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(popC.45.f3.99) <- c("gfd","mir")
row.names(popC.45.f3.99) <- 2081:2099
popC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"POP"]
popC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"POP"]
# head(popC.45.f3.99)
popC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) popC.45.f3.99.up[i] <- max(popC.45.f3.99[i,])
popC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) popC.45.f3.99.lo[i] <- min(popC.45.f3.99[i,])
# now append these two time periods
popC.45.f3.up <- c(popC.45.f3.80.up,popC.45.f3.99.up)
popC.45.f3.lo <- c(popC.45.f3.80.lo,popC.45.f3.99.lo)

# RCP 8.5
popC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(popC.85.f3) <- c("gfd","mir","ces")
row.names(popC.85.f3) <- 1991:2099
popC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"POP"]
popC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"POP"]
popC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"POP"]
# head(popC.85.f3)
popC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) popC.85.f3.up[i] <- max(popC.85.f3[i,])
popC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) popC.85.f3.lo[i] <- min(popC.85.f3[i,])

# # SRES A1B
# popC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(popC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(popC.a1b.f3) <- 1991:2039
# popC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"POP"]
# popC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"POP"]
# popC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"POP"]
# # head(popC.a1b.f3)
# popC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popC.a1b.f3.up[i] <- max(popC.a1b.f3[i,])
# popC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popC.a1b.f3.lo[i] <- min(popC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# POP F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
popB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(popB.45.f4.80) <- c("gfd","mir","ces")
row.names(popB.45.f4.80) <- 1991:2080
popB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"POP"]
popB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"POP"]
popB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"POP"]
# head(popB.45.f4.80)
popB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) popB.45.f4.80.up[i] <- max(popB.45.f4.80[i,])
popB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) popB.45.f4.80.lo[i] <- min(popB.45.f4.80[i,])
# Everything from 2081-2099
popB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(popB.45.f4.99) <- c("gfd","mir")
row.names(popB.45.f4.99) <- 2081:2099
popB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"POP"]
popB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"POP"]
# head(popB.45.f4.99)
popB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) popB.45.f4.99.up[i] <- max(popB.45.f4.99[i,])
popB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) popB.45.f4.99.lo[i] <- min(popB.45.f4.99[i,])
# now append these two time periods
popB.45.f4.up <- c(popB.45.f4.80.up,popB.45.f4.99.up)
popB.45.f4.lo <- c(popB.45.f4.80.lo,popB.45.f4.99.lo)

# RCP 8.5
popB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(popB.85.f4) <- c("gfd","mir","ces")
row.names(popB.85.f4) <- 1991:2099
popB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"POP"]
popB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"POP"]
popB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"POP"]
# head(popB.85.f4)
popB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) popB.85.f4.up[i] <- max(popB.85.f4[i,])
popB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) popB.85.f4.lo[i] <- min(popB.85.f4[i,])

# # SRES A1B
# popB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(popB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(popB.a1b.f4) <- 1991:2039
# popB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"POP"]
# popB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"POP"]
# popB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"POP"]
# # head(popB.a1b.f4)
# popB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popB.a1b.f4.up[i] <- max(popB.a1b.f4[i,])
# popB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popB.a1b.f4.lo[i] <- min(popB.a1b.f4[i,])

# POP Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
popC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(popC.45.f4.80) <- c("gfd","mir","ces")
row.names(popC.45.f4.80) <- 1991:2080
popC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"POP"]
popC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"POP"]
popC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"POP"]
# head(popC.45.f4.80)
popC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) popC.45.f4.80.up[i] <- max(popC.45.f4.80[i,])
popC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) popC.45.f4.80.lo[i] <- min(popC.45.f4.80[i,])
# Everything from 2081-2099
popC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(popC.45.f4.99) <- c("gfd","mir")
row.names(popC.45.f4.99) <- 2081:2099
popC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"POP"]
popC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"POP"]
# head(popC.45.f4.99)
popC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) popC.45.f4.99.up[i] <- max(popC.45.f4.99[i,])
popC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) popC.45.f4.99.lo[i] <- min(popC.45.f4.99[i,])
# now append these two time periods
popC.45.f4.up <- c(popC.45.f4.80.up,popC.45.f4.99.up)
popC.45.f4.lo <- c(popC.45.f4.80.lo,popC.45.f4.99.lo)

# RCP 8.5
popC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(popC.85.f4) <- c("gfd","mir","ces")
row.names(popC.85.f4) <- 1991:2099
popC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"POP"]
popC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"POP"]
popC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"POP"]
# head(popC.85.f4)
popC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) popC.85.f4.up[i] <- max(popC.85.f4[i,])
popC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) popC.85.f4.lo[i] <- min(popC.85.f4[i,])

# # SRES A1B
# popC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(popC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(popC.a1b.f4) <- 1991:2039
# popC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"POP"]
# popC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"POP"]
# popC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"POP"]
# # head(popC.a1b.f4)
# popC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popC.a1b.f4.up[i] <- max(popC.a1b.f4[i,])
# popC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) popC.a1b.f4.lo[i] <- min(popC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Rougheye.rock biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
reyeB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(reyeB.45.f1.80) <- c("gfd","mir","ces")
row.names(reyeB.45.f1.80) <- 1991:2080
reyeB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Rougheye.rock"]
reyeB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Rougheye.rock"]
reyeB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Rougheye.rock"]
# head(reyeB.45.f1.80)
reyeB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeB.45.f1.80.up[i] <- max(reyeB.45.f1.80[i,])
reyeB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeB.45.f1.80.lo[i] <- min(reyeB.45.f1.80[i,])
# Everything from 2081-2099
reyeB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(reyeB.45.f1.99) <- c("gfd","mir")
row.names(reyeB.45.f1.99) <- 2081:2099
reyeB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Rougheye.rock"]
reyeB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Rougheye.rock"]
# head(reyeB.45.f1.99)
reyeB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeB.45.f1.99.up[i] <- max(reyeB.45.f1.99[i,])
reyeB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeB.45.f1.99.lo[i] <- min(reyeB.45.f1.99[i,])
# now append these two time periods
reyeB.45.f1.up <- c(reyeB.45.f1.80.up,reyeB.45.f1.99.up)
reyeB.45.f1.lo <- c(reyeB.45.f1.80.lo,reyeB.45.f1.99.lo)

# RCP 8.5
reyeB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(reyeB.85.f1) <- c("gfd","mir","ces")
row.names(reyeB.85.f1) <- 1991:2099
reyeB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Rougheye.rock"]
reyeB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Rougheye.rock"]
reyeB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Rougheye.rock"]
# head(reyeB.85.f1)
reyeB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeB.85.f1.up[i] <- max(reyeB.85.f1[i,])
reyeB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeB.85.f1.lo[i] <- min(reyeB.85.f1[i,])

# # SRES A1B
# reyeB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(reyeB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(reyeB.a1b.f1) <- 1991:2039
# reyeB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Rougheye.rock"]
# reyeB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Rougheye.rock"]
# reyeB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Rougheye.rock"]
# # head(reyeB.a1b.f1)
# reyeB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeB.a1b.f1.up[i] <- max(reyeB.a1b.f1[i,])
# reyeB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeB.a1b.f1.lo[i] <- min(reyeB.a1b.f1[i,])

# Rougheye.rock Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
reyeC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(reyeC.45.f1.80) <- c("gfd","mir","ces")
row.names(reyeC.45.f1.80) <- 1991:2080
reyeC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Rougheye.rock"]
reyeC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Rougheye.rock"]
reyeC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Rougheye.rock"]
# head(reyeC.45.f1.80)
reyeC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeC.45.f1.80.up[i] <- max(reyeC.45.f1.80[i,])
reyeC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeC.45.f1.80.lo[i] <- min(reyeC.45.f1.80[i,])
# Everything from 2081-2099
reyeC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(reyeC.45.f1.99) <- c("gfd","mir")
row.names(reyeC.45.f1.99) <- 2081:2099
reyeC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Rougheye.rock"]
reyeC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Rougheye.rock"]
# head(reyeC.45.f1.99)
reyeC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeC.45.f1.99.up[i] <- max(reyeC.45.f1.99[i,])
reyeC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeC.45.f1.99.lo[i] <- min(reyeC.45.f1.99[i,])
# now append these two time periods
reyeC.45.f1.up <- c(reyeC.45.f1.80.up,reyeC.45.f1.99.up)
reyeC.45.f1.lo <- c(reyeC.45.f1.80.lo,reyeC.45.f1.99.lo)

# RCP 8.5
reyeC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(reyeC.85.f1) <- c("gfd","mir","ces")
row.names(reyeC.85.f1) <- 1991:2099
reyeC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Rougheye.rock"]
reyeC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Rougheye.rock"]
reyeC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Rougheye.rock"]
# head(reyeC.85.f1)
reyeC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeC.85.f1.up[i] <- max(reyeC.85.f1[i,])
reyeC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeC.85.f1.lo[i] <- min(reyeC.85.f1[i,])

# # SRES A1B
# reyeC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(reyeC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(reyeC.a1b.f1) <- 1991:2039
# reyeC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Rougheye.rock"]
# reyeC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Rougheye.rock"]
# reyeC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Rougheye.rock"]
# # head(reyeC.a1b.f1)
# reyeC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeC.a1b.f1.up[i] <- max(reyeC.a1b.f1[i,])
# reyeC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeC.a1b.f1.lo[i] <- min(reyeC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Rougheye.rock F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
reyeB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(reyeB.45.f2.80) <- c("gfd","mir","ces")
row.names(reyeB.45.f2.80) <- 1991:2080
reyeB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Rougheye.rock"]
reyeB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Rougheye.rock"]
reyeB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Rougheye.rock"]
# head(reyeB.45.f2.80)
reyeB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeB.45.f2.80.up[i] <- max(reyeB.45.f2.80[i,])
reyeB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeB.45.f2.80.lo[i] <- min(reyeB.45.f2.80[i,])
# Everything from 2081-2099
reyeB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(reyeB.45.f2.99) <- c("gfd","mir")
row.names(reyeB.45.f2.99) <- 2081:2099
reyeB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Rougheye.rock"]
reyeB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Rougheye.rock"]
# head(reyeB.45.f2.99)
reyeB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeB.45.f2.99.up[i] <- max(reyeB.45.f2.99[i,])
reyeB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeB.45.f2.99.lo[i] <- min(reyeB.45.f2.99[i,])
# now append these two time periods
reyeB.45.f2.up <- c(reyeB.45.f2.80.up,reyeB.45.f2.99.up)
reyeB.45.f2.lo <- c(reyeB.45.f2.80.lo,reyeB.45.f2.99.lo)

# RCP 8.5
reyeB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(reyeB.85.f2) <- c("gfd","mir","ces")
row.names(reyeB.85.f2) <- 1991:2099
reyeB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Rougheye.rock"]
reyeB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Rougheye.rock"]
reyeB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Rougheye.rock"]
# head(reyeB.85.f2)
reyeB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeB.85.f2.up[i] <- max(reyeB.85.f2[i,])
reyeB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeB.85.f2.lo[i] <- min(reyeB.85.f2[i,])

# # SRES A1B
# reyeB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(reyeB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(reyeB.a1b.f2) <- 1991:2039
# reyeB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Rougheye.rock"]
# reyeB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Rougheye.rock"]
# reyeB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Rougheye.rock"]
# # head(reyeB.a1b.f2)
# reyeB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeB.a1b.f2.up[i] <- max(reyeB.a1b.f2[i,])
# reyeB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeB.a1b.f2.lo[i] <- min(reyeB.a1b.f2[i,])

# Rougheye.rock Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
reyeC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(reyeC.45.f2.80) <- c("gfd","mir","ces")
row.names(reyeC.45.f2.80) <- 1991:2080
reyeC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Rougheye.rock"]
reyeC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Rougheye.rock"]
reyeC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Rougheye.rock"]
# head(reyeC.45.f2.80)
reyeC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeC.45.f2.80.up[i] <- max(reyeC.45.f2.80[i,])
reyeC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeC.45.f2.80.lo[i] <- min(reyeC.45.f2.80[i,])
# Everything from 2081-2099
reyeC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(reyeC.45.f2.99) <- c("gfd","mir")
row.names(reyeC.45.f2.99) <- 2081:2099
reyeC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Rougheye.rock"]
reyeC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Rougheye.rock"]
# head(reyeC.45.f2.99)
reyeC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeC.45.f2.99.up[i] <- max(reyeC.45.f2.99[i,])
reyeC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeC.45.f2.99.lo[i] <- min(reyeC.45.f2.99[i,])
# now append these two time periods
reyeC.45.f2.up <- c(reyeC.45.f2.80.up,reyeC.45.f2.99.up)
reyeC.45.f2.lo <- c(reyeC.45.f2.80.lo,reyeC.45.f2.99.lo)

# RCP 8.5
reyeC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(reyeC.85.f2) <- c("gfd","mir","ces")
row.names(reyeC.85.f2) <- 1991:2099
reyeC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Rougheye.rock"]
reyeC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Rougheye.rock"]
reyeC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Rougheye.rock"]
# head(reyeC.85.f2)
reyeC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeC.85.f2.up[i] <- max(reyeC.85.f2[i,])
reyeC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeC.85.f2.lo[i] <- min(reyeC.85.f2[i,])

# # SRES A1B
# reyeC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(reyeC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(reyeC.a1b.f2) <- 1991:2039
# reyeC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Rougheye.rock"]
# reyeC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Rougheye.rock"]
# reyeC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Rougheye.rock"]
# # head(reyeC.a1b.f2)
# reyeC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeC.a1b.f2.up[i] <- max(reyeC.a1b.f2[i,])
# reyeC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeC.a1b.f2.lo[i] <- min(reyeC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Rougheye.rock F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
reyeB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(reyeB.45.f3.80) <- c("gfd","mir","ces")
row.names(reyeB.45.f3.80) <- 1991:2080
reyeB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Rougheye.rock"]
reyeB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Rougheye.rock"]
reyeB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Rougheye.rock"]
# head(reyeB.45.f3.80)
reyeB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeB.45.f3.80.up[i] <- max(reyeB.45.f3.80[i,])
reyeB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeB.45.f3.80.lo[i] <- min(reyeB.45.f3.80[i,])
# Everything from 2081-2099
reyeB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(reyeB.45.f3.99) <- c("gfd","mir")
row.names(reyeB.45.f3.99) <- 2081:2099
reyeB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Rougheye.rock"]
reyeB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Rougheye.rock"]
# head(reyeB.45.f3.99)
reyeB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeB.45.f3.99.up[i] <- max(reyeB.45.f3.99[i,])
reyeB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeB.45.f3.99.lo[i] <- min(reyeB.45.f3.99[i,])
# now append these two time periods
reyeB.45.f3.up <- c(reyeB.45.f3.80.up,reyeB.45.f3.99.up)
reyeB.45.f3.lo <- c(reyeB.45.f3.80.lo,reyeB.45.f3.99.lo)

# RCP 8.5
reyeB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(reyeB.85.f3) <- c("gfd","mir","ces")
row.names(reyeB.85.f3) <- 1991:2099
reyeB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Rougheye.rock"]
reyeB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Rougheye.rock"]
reyeB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Rougheye.rock"]
# head(reyeB.85.f3)
reyeB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeB.85.f3.up[i] <- max(reyeB.85.f3[i,])
reyeB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeB.85.f3.lo[i] <- min(reyeB.85.f3[i,])

# # SRES A1B
# reyeB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(reyeB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(reyeB.a1b.f3) <- 1991:2039
# reyeB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Rougheye.rock"]
# reyeB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Rougheye.rock"]
# reyeB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Rougheye.rock"]
# # head(reyeB.a1b.f3)
# reyeB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeB.a1b.f3.up[i] <- max(reyeB.a1b.f3[i,])
# reyeB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeB.a1b.f3.lo[i] <- min(reyeB.a1b.f3[i,])

# Rougheye.rock Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
reyeC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(reyeC.45.f3.80) <- c("gfd","mir","ces")
row.names(reyeC.45.f3.80) <- 1991:2080
reyeC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Rougheye.rock"]
reyeC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Rougheye.rock"]
reyeC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Rougheye.rock"]
# head(reyeC.45.f3.80)
reyeC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeC.45.f3.80.up[i] <- max(reyeC.45.f3.80[i,])
reyeC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeC.45.f3.80.lo[i] <- min(reyeC.45.f3.80[i,])
# Everything from 2081-2099
reyeC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(reyeC.45.f3.99) <- c("gfd","mir")
row.names(reyeC.45.f3.99) <- 2081:2099
reyeC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Rougheye.rock"]
reyeC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Rougheye.rock"]
# head(reyeC.45.f3.99)
reyeC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeC.45.f3.99.up[i] <- max(reyeC.45.f3.99[i,])
reyeC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeC.45.f3.99.lo[i] <- min(reyeC.45.f3.99[i,])
# now append these two time periods
reyeC.45.f3.up <- c(reyeC.45.f3.80.up,reyeC.45.f3.99.up)
reyeC.45.f3.lo <- c(reyeC.45.f3.80.lo,reyeC.45.f3.99.lo)

# RCP 8.5
reyeC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(reyeC.85.f3) <- c("gfd","mir","ces")
row.names(reyeC.85.f3) <- 1991:2099
reyeC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Rougheye.rock"]
reyeC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Rougheye.rock"]
reyeC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Rougheye.rock"]
# head(reyeC.85.f3)
reyeC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeC.85.f3.up[i] <- max(reyeC.85.f3[i,])
reyeC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeC.85.f3.lo[i] <- min(reyeC.85.f3[i,])

# # SRES A1B
# reyeC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(reyeC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(reyeC.a1b.f3) <- 1991:2039
# reyeC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Rougheye.rock"]
# reyeC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Rougheye.rock"]
# reyeC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Rougheye.rock"]
# # head(reyeC.a1b.f3)
# reyeC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeC.a1b.f3.up[i] <- max(reyeC.a1b.f3[i,])
# reyeC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeC.a1b.f3.lo[i] <- min(reyeC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Rougheye.rock F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
reyeB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(reyeB.45.f4.80) <- c("gfd","mir","ces")
row.names(reyeB.45.f4.80) <- 1991:2080
reyeB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Rougheye.rock"]
reyeB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Rougheye.rock"]
reyeB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Rougheye.rock"]
# head(reyeB.45.f4.80)
reyeB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeB.45.f4.80.up[i] <- max(reyeB.45.f4.80[i,])
reyeB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeB.45.f4.80.lo[i] <- min(reyeB.45.f4.80[i,])
# Everything from 2081-2099
reyeB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(reyeB.45.f4.99) <- c("gfd","mir")
row.names(reyeB.45.f4.99) <- 2081:2099
reyeB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Rougheye.rock"]
reyeB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Rougheye.rock"]
# head(reyeB.45.f4.99)
reyeB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeB.45.f4.99.up[i] <- max(reyeB.45.f4.99[i,])
reyeB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeB.45.f4.99.lo[i] <- min(reyeB.45.f4.99[i,])
# now append these two time periods
reyeB.45.f4.up <- c(reyeB.45.f4.80.up,reyeB.45.f4.99.up)
reyeB.45.f4.lo <- c(reyeB.45.f4.80.lo,reyeB.45.f4.99.lo)

# RCP 8.5
reyeB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(reyeB.85.f4) <- c("gfd","mir","ces")
row.names(reyeB.85.f4) <- 1991:2099
reyeB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Rougheye.rock"]
reyeB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Rougheye.rock"]
reyeB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Rougheye.rock"]
# head(reyeB.85.f4)
reyeB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeB.85.f4.up[i] <- max(reyeB.85.f4[i,])
reyeB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeB.85.f4.lo[i] <- min(reyeB.85.f4[i,])

# # SRES A1B
# reyeB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(reyeB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(reyeB.a1b.f4) <- 1991:2039
# reyeB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Rougheye.rock"]
# reyeB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Rougheye.rock"]
# reyeB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Rougheye.rock"]
# # head(reyeB.a1b.f4)
# reyeB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeB.a1b.f4.up[i] <- max(reyeB.a1b.f4[i,])
# reyeB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeB.a1b.f4.lo[i] <- min(reyeB.a1b.f4[i,])

# Rougheye.rock Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
reyeC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(reyeC.45.f4.80) <- c("gfd","mir","ces")
row.names(reyeC.45.f4.80) <- 1991:2080
reyeC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Rougheye.rock"]
reyeC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Rougheye.rock"]
reyeC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Rougheye.rock"]
# head(reyeC.45.f4.80)
reyeC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeC.45.f4.80.up[i] <- max(reyeC.45.f4.80[i,])
reyeC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) reyeC.45.f4.80.lo[i] <- min(reyeC.45.f4.80[i,])
# Everything from 2081-2099
reyeC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(reyeC.45.f4.99) <- c("gfd","mir")
row.names(reyeC.45.f4.99) <- 2081:2099
reyeC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Rougheye.rock"]
reyeC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Rougheye.rock"]
# head(reyeC.45.f4.99)
reyeC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeC.45.f4.99.up[i] <- max(reyeC.45.f4.99[i,])
reyeC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) reyeC.45.f4.99.lo[i] <- min(reyeC.45.f4.99[i,])
# now append these two time periods
reyeC.45.f4.up <- c(reyeC.45.f4.80.up,reyeC.45.f4.99.up)
reyeC.45.f4.lo <- c(reyeC.45.f4.80.lo,reyeC.45.f4.99.lo)

# RCP 8.5
reyeC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(reyeC.85.f4) <- c("gfd","mir","ces")
row.names(reyeC.85.f4) <- 1991:2099
reyeC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Rougheye.rock"]
reyeC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Rougheye.rock"]
reyeC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Rougheye.rock"]
# head(reyeC.85.f4)
reyeC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeC.85.f4.up[i] <- max(reyeC.85.f4[i,])
reyeC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) reyeC.85.f4.lo[i] <- min(reyeC.85.f4[i,])

# # SRES A1B
# reyeC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(reyeC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(reyeC.a1b.f4) <- 1991:2039
# reyeC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Rougheye.rock"]
# reyeC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Rougheye.rock"]
# reyeC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Rougheye.rock"]
# # head(reyeC.a1b.f4)
# reyeC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeC.a1b.f4.up[i] <- max(reyeC.a1b.f4[i,])
# reyeC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) reyeC.a1b.f4.lo[i] <- min(reyeC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Salmon.returning biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
salrB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salrB.45.f1.80) <- c("gfd","mir","ces")
row.names(salrB.45.f1.80) <- 1991:2080
salrB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Salmon.returning"]
salrB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Salmon.returning"]
salrB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Salmon.returning"]
# head(salrB.45.f1.80)
salrB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrB.45.f1.80.up[i] <- max(salrB.45.f1.80[i,])
salrB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrB.45.f1.80.lo[i] <- min(salrB.45.f1.80[i,])
# Everything from 2081-2099
salrB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salrB.45.f1.99) <- c("gfd","mir")
row.names(salrB.45.f1.99) <- 2081:2099
salrB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Salmon.returning"]
salrB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Salmon.returning"]
# head(salrB.45.f1.99)
salrB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrB.45.f1.99.up[i] <- max(salrB.45.f1.99[i,])
salrB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrB.45.f1.99.lo[i] <- min(salrB.45.f1.99[i,])
# now append these two time periods
salrB.45.f1.up <- c(salrB.45.f1.80.up,salrB.45.f1.99.up)
salrB.45.f1.lo <- c(salrB.45.f1.80.lo,salrB.45.f1.99.lo)

# RCP 8.5
salrB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salrB.85.f1) <- c("gfd","mir","ces")
row.names(salrB.85.f1) <- 1991:2099
salrB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Salmon.returning"]
salrB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Salmon.returning"]
salrB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Salmon.returning"]
# head(salrB.85.f1)
salrB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrB.85.f1.up[i] <- max(salrB.85.f1[i,])
salrB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrB.85.f1.lo[i] <- min(salrB.85.f1[i,])

# # SRES A1B
# salrB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salrB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(salrB.a1b.f1) <- 1991:2039
# salrB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Salmon.returning"]
# salrB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Salmon.returning"]
# salrB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Salmon.returning"]
# # head(salrB.a1b.f1)
# salrB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrB.a1b.f1.up[i] <- max(salrB.a1b.f1[i,])
# salrB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrB.a1b.f1.lo[i] <- min(salrB.a1b.f1[i,])

# Salmon.returning Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
salrC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salrC.45.f1.80) <- c("gfd","mir","ces")
row.names(salrC.45.f1.80) <- 1991:2080
salrC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Salmon.returning"]
salrC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Salmon.returning"]
salrC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Salmon.returning"]
# head(salrC.45.f1.80)
salrC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrC.45.f1.80.up[i] <- max(salrC.45.f1.80[i,])
salrC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrC.45.f1.80.lo[i] <- min(salrC.45.f1.80[i,])
# Everything from 2081-2099
salrC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salrC.45.f1.99) <- c("gfd","mir")
row.names(salrC.45.f1.99) <- 2081:2099
salrC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Salmon.returning"]
salrC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Salmon.returning"]
# head(salrC.45.f1.99)
salrC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrC.45.f1.99.up[i] <- max(salrC.45.f1.99[i,])
salrC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrC.45.f1.99.lo[i] <- min(salrC.45.f1.99[i,])
# now append these two time periods
salrC.45.f1.up <- c(salrC.45.f1.80.up,salrC.45.f1.99.up)
salrC.45.f1.lo <- c(salrC.45.f1.80.lo,salrC.45.f1.99.lo)

# RCP 8.5
salrC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salrC.85.f1) <- c("gfd","mir","ces")
row.names(salrC.85.f1) <- 1991:2099
salrC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Salmon.returning"]
salrC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Salmon.returning"]
salrC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Salmon.returning"]
# head(salrC.85.f1)
salrC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrC.85.f1.up[i] <- max(salrC.85.f1[i,])
salrC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrC.85.f1.lo[i] <- min(salrC.85.f1[i,])

# # SRES A1B
# salrC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salrC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(salrC.a1b.f1) <- 1991:2039
# salrC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Salmon.returning"]
# salrC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Salmon.returning"]
# salrC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Salmon.returning"]
# # head(salrC.a1b.f1)
# salrC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrC.a1b.f1.up[i] <- max(salrC.a1b.f1[i,])
# salrC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrC.a1b.f1.lo[i] <- min(salrC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Salmon.returning F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
salrB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salrB.45.f2.80) <- c("gfd","mir","ces")
row.names(salrB.45.f2.80) <- 1991:2080
salrB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Salmon.returning"]
salrB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Salmon.returning"]
salrB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Salmon.returning"]
# head(salrB.45.f2.80)
salrB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrB.45.f2.80.up[i] <- max(salrB.45.f2.80[i,])
salrB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrB.45.f2.80.lo[i] <- min(salrB.45.f2.80[i,])
# Everything from 2081-2099
salrB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salrB.45.f2.99) <- c("gfd","mir")
row.names(salrB.45.f2.99) <- 2081:2099
salrB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Salmon.returning"]
salrB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Salmon.returning"]
# head(salrB.45.f2.99)
salrB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrB.45.f2.99.up[i] <- max(salrB.45.f2.99[i,])
salrB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrB.45.f2.99.lo[i] <- min(salrB.45.f2.99[i,])
# now append these two time periods
salrB.45.f2.up <- c(salrB.45.f2.80.up,salrB.45.f2.99.up)
salrB.45.f2.lo <- c(salrB.45.f2.80.lo,salrB.45.f2.99.lo)

# RCP 8.5
salrB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salrB.85.f2) <- c("gfd","mir","ces")
row.names(salrB.85.f2) <- 1991:2099
salrB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Salmon.returning"]
salrB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Salmon.returning"]
salrB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Salmon.returning"]
# head(salrB.85.f2)
salrB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrB.85.f2.up[i] <- max(salrB.85.f2[i,])
salrB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrB.85.f2.lo[i] <- min(salrB.85.f2[i,])

# # SRES A1B
# salrB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salrB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(salrB.a1b.f2) <- 1991:2039
# salrB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Salmon.returning"]
# salrB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Salmon.returning"]
# salrB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Salmon.returning"]
# # head(salrB.a1b.f2)
# salrB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrB.a1b.f2.up[i] <- max(salrB.a1b.f2[i,])
# salrB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrB.a1b.f2.lo[i] <- min(salrB.a1b.f2[i,])

# Salmon.returning Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
salrC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salrC.45.f2.80) <- c("gfd","mir","ces")
row.names(salrC.45.f2.80) <- 1991:2080
salrC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Salmon.returning"]
salrC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Salmon.returning"]
salrC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Salmon.returning"]
# head(salrC.45.f2.80)
salrC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrC.45.f2.80.up[i] <- max(salrC.45.f2.80[i,])
salrC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrC.45.f2.80.lo[i] <- min(salrC.45.f2.80[i,])
# Everything from 2081-2099
salrC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salrC.45.f2.99) <- c("gfd","mir")
row.names(salrC.45.f2.99) <- 2081:2099
salrC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Salmon.returning"]
salrC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Salmon.returning"]
# head(salrC.45.f2.99)
salrC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrC.45.f2.99.up[i] <- max(salrC.45.f2.99[i,])
salrC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrC.45.f2.99.lo[i] <- min(salrC.45.f2.99[i,])
# now append these two time periods
salrC.45.f2.up <- c(salrC.45.f2.80.up,salrC.45.f2.99.up)
salrC.45.f2.lo <- c(salrC.45.f2.80.lo,salrC.45.f2.99.lo)

# RCP 8.5
salrC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salrC.85.f2) <- c("gfd","mir","ces")
row.names(salrC.85.f2) <- 1991:2099
salrC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Salmon.returning"]
salrC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Salmon.returning"]
salrC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Salmon.returning"]
# head(salrC.85.f2)
salrC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrC.85.f2.up[i] <- max(salrC.85.f2[i,])
salrC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrC.85.f2.lo[i] <- min(salrC.85.f2[i,])

# # SRES A1B
# salrC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salrC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(salrC.a1b.f2) <- 1991:2039
# salrC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Salmon.returning"]
# salrC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Salmon.returning"]
# salrC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Salmon.returning"]
# # head(salrC.a1b.f2)
# salrC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrC.a1b.f2.up[i] <- max(salrC.a1b.f2[i,])
# salrC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrC.a1b.f2.lo[i] <- min(salrC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Salmon.returning F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
salrB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salrB.45.f3.80) <- c("gfd","mir","ces")
row.names(salrB.45.f3.80) <- 1991:2080
salrB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Salmon.returning"]
salrB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Salmon.returning"]
salrB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Salmon.returning"]
# head(salrB.45.f3.80)
salrB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrB.45.f3.80.up[i] <- max(salrB.45.f3.80[i,])
salrB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrB.45.f3.80.lo[i] <- min(salrB.45.f3.80[i,])
# Everything from 2081-2099
salrB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salrB.45.f3.99) <- c("gfd","mir")
row.names(salrB.45.f3.99) <- 2081:2099
salrB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Salmon.returning"]
salrB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Salmon.returning"]
# head(salrB.45.f3.99)
salrB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrB.45.f3.99.up[i] <- max(salrB.45.f3.99[i,])
salrB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrB.45.f3.99.lo[i] <- min(salrB.45.f3.99[i,])
# now append these two time periods
salrB.45.f3.up <- c(salrB.45.f3.80.up,salrB.45.f3.99.up)
salrB.45.f3.lo <- c(salrB.45.f3.80.lo,salrB.45.f3.99.lo)

# RCP 8.5
salrB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salrB.85.f3) <- c("gfd","mir","ces")
row.names(salrB.85.f3) <- 1991:2099
salrB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Salmon.returning"]
salrB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Salmon.returning"]
salrB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Salmon.returning"]
# head(salrB.85.f3)
salrB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrB.85.f3.up[i] <- max(salrB.85.f3[i,])
salrB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrB.85.f3.lo[i] <- min(salrB.85.f3[i,])

# # SRES A1B
# salrB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salrB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(salrB.a1b.f3) <- 1991:2039
# salrB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Salmon.returning"]
# salrB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Salmon.returning"]
# salrB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Salmon.returning"]
# # head(salrB.a1b.f3)
# salrB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrB.a1b.f3.up[i] <- max(salrB.a1b.f3[i,])
# salrB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrB.a1b.f3.lo[i] <- min(salrB.a1b.f3[i,])

# Salmon.returning Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
salrC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salrC.45.f3.80) <- c("gfd","mir","ces")
row.names(salrC.45.f3.80) <- 1991:2080
salrC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Salmon.returning"]
salrC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Salmon.returning"]
salrC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Salmon.returning"]
# head(salrC.45.f3.80)
salrC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrC.45.f3.80.up[i] <- max(salrC.45.f3.80[i,])
salrC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrC.45.f3.80.lo[i] <- min(salrC.45.f3.80[i,])
# Everything from 2081-2099
salrC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salrC.45.f3.99) <- c("gfd","mir")
row.names(salrC.45.f3.99) <- 2081:2099
salrC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Salmon.returning"]
salrC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Salmon.returning"]
# head(salrC.45.f3.99)
salrC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrC.45.f3.99.up[i] <- max(salrC.45.f3.99[i,])
salrC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrC.45.f3.99.lo[i] <- min(salrC.45.f3.99[i,])
# now append these two time periods
salrC.45.f3.up <- c(salrC.45.f3.80.up,salrC.45.f3.99.up)
salrC.45.f3.lo <- c(salrC.45.f3.80.lo,salrC.45.f3.99.lo)

# RCP 8.5
salrC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salrC.85.f3) <- c("gfd","mir","ces")
row.names(salrC.85.f3) <- 1991:2099
salrC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Salmon.returning"]
salrC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Salmon.returning"]
salrC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Salmon.returning"]
# head(salrC.85.f3)
salrC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrC.85.f3.up[i] <- max(salrC.85.f3[i,])
salrC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrC.85.f3.lo[i] <- min(salrC.85.f3[i,])

# # SRES A1B
# salrC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salrC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(salrC.a1b.f3) <- 1991:2039
# salrC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Salmon.returning"]
# salrC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Salmon.returning"]
# salrC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Salmon.returning"]
# # head(salrC.a1b.f3)
# salrC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrC.a1b.f3.up[i] <- max(salrC.a1b.f3[i,])
# salrC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrC.a1b.f3.lo[i] <- min(salrC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Salmon.returning F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
salrB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salrB.45.f4.80) <- c("gfd","mir","ces")
row.names(salrB.45.f4.80) <- 1991:2080
salrB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Salmon.returning"]
salrB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Salmon.returning"]
salrB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Salmon.returning"]
# head(salrB.45.f4.80)
salrB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrB.45.f4.80.up[i] <- max(salrB.45.f4.80[i,])
salrB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrB.45.f4.80.lo[i] <- min(salrB.45.f4.80[i,])
# Everything from 2081-2099
salrB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salrB.45.f4.99) <- c("gfd","mir")
row.names(salrB.45.f4.99) <- 2081:2099
salrB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Salmon.returning"]
salrB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Salmon.returning"]
# head(salrB.45.f4.99)
salrB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrB.45.f4.99.up[i] <- max(salrB.45.f4.99[i,])
salrB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrB.45.f4.99.lo[i] <- min(salrB.45.f4.99[i,])
# now append these two time periods
salrB.45.f4.up <- c(salrB.45.f4.80.up,salrB.45.f4.99.up)
salrB.45.f4.lo <- c(salrB.45.f4.80.lo,salrB.45.f4.99.lo)

# RCP 8.5
salrB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salrB.85.f4) <- c("gfd","mir","ces")
row.names(salrB.85.f4) <- 1991:2099
salrB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Salmon.returning"]
salrB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Salmon.returning"]
salrB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Salmon.returning"]
# head(salrB.85.f4)
salrB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrB.85.f4.up[i] <- max(salrB.85.f4[i,])
salrB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrB.85.f4.lo[i] <- min(salrB.85.f4[i,])

# # SRES A1B
# salrB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salrB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(salrB.a1b.f4) <- 1991:2039
# salrB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Salmon.returning"]
# salrB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Salmon.returning"]
# salrB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Salmon.returning"]
# # head(salrB.a1b.f4)
# salrB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrB.a1b.f4.up[i] <- max(salrB.a1b.f4[i,])
# salrB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrB.a1b.f4.lo[i] <- min(salrB.a1b.f4[i,])

# Salmon.returning Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
salrC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salrC.45.f4.80) <- c("gfd","mir","ces")
row.names(salrC.45.f4.80) <- 1991:2080
salrC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Salmon.returning"]
salrC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Salmon.returning"]
salrC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Salmon.returning"]
# head(salrC.45.f4.80)
salrC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrC.45.f4.80.up[i] <- max(salrC.45.f4.80[i,])
salrC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salrC.45.f4.80.lo[i] <- min(salrC.45.f4.80[i,])
# Everything from 2081-2099
salrC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salrC.45.f4.99) <- c("gfd","mir")
row.names(salrC.45.f4.99) <- 2081:2099
salrC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Salmon.returning"]
salrC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Salmon.returning"]
# head(salrC.45.f4.99)
salrC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrC.45.f4.99.up[i] <- max(salrC.45.f4.99[i,])
salrC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salrC.45.f4.99.lo[i] <- min(salrC.45.f4.99[i,])
# now append these two time periods
salrC.45.f4.up <- c(salrC.45.f4.80.up,salrC.45.f4.99.up)
salrC.45.f4.lo <- c(salrC.45.f4.80.lo,salrC.45.f4.99.lo)

# RCP 8.5
salrC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salrC.85.f4) <- c("gfd","mir","ces")
row.names(salrC.85.f4) <- 1991:2099
salrC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Salmon.returning"]
salrC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Salmon.returning"]
salrC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Salmon.returning"]
# head(salrC.85.f4)
salrC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrC.85.f4.up[i] <- max(salrC.85.f4[i,])
salrC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salrC.85.f4.lo[i] <- min(salrC.85.f4[i,])

# # SRES A1B
# salrC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salrC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(salrC.a1b.f4) <- 1991:2039
# salrC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Salmon.returning"]
# salrC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Salmon.returning"]
# salrC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Salmon.returning"]
# # head(salrC.a1b.f4)
# salrC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrC.a1b.f4.up[i] <- max(salrC.a1b.f4[i,])
# salrC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salrC.a1b.f4.lo[i] <- min(salrC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Salmon.smolts biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
salsB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salsB.45.f1.80) <- c("gfd","mir","ces")
row.names(salsB.45.f1.80) <- 1991:2080
salsB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Salmon.smolts"]
salsB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Salmon.smolts"]
salsB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Salmon.smolts"]
# head(salsB.45.f1.80)
salsB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsB.45.f1.80.up[i] <- max(salsB.45.f1.80[i,])
salsB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsB.45.f1.80.lo[i] <- min(salsB.45.f1.80[i,])
# Everything from 2081-2099
salsB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salsB.45.f1.99) <- c("gfd","mir")
row.names(salsB.45.f1.99) <- 2081:2099
salsB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Salmon.smolts"]
salsB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Salmon.smolts"]
# head(salsB.45.f1.99)
salsB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsB.45.f1.99.up[i] <- max(salsB.45.f1.99[i,])
salsB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsB.45.f1.99.lo[i] <- min(salsB.45.f1.99[i,])
# now append these two time periods
salsB.45.f1.up <- c(salsB.45.f1.80.up,salsB.45.f1.99.up)
salsB.45.f1.lo <- c(salsB.45.f1.80.lo,salsB.45.f1.99.lo)

# RCP 8.5
salsB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salsB.85.f1) <- c("gfd","mir","ces")
row.names(salsB.85.f1) <- 1991:2099
salsB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Salmon.smolts"]
salsB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Salmon.smolts"]
salsB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Salmon.smolts"]
# head(salsB.85.f1)
salsB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsB.85.f1.up[i] <- max(salsB.85.f1[i,])
salsB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsB.85.f1.lo[i] <- min(salsB.85.f1[i,])

# # SRES A1B
# salsB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salsB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(salsB.a1b.f1) <- 1991:2039
# salsB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Salmon.smolts"]
# salsB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Salmon.smolts"]
# salsB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Salmon.smolts"]
# # head(salsB.a1b.f1)
# salsB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsB.a1b.f1.up[i] <- max(salsB.a1b.f1[i,])
# salsB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsB.a1b.f1.lo[i] <- min(salsB.a1b.f1[i,])

# Salmon.smolts Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
salsC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salsC.45.f1.80) <- c("gfd","mir","ces")
row.names(salsC.45.f1.80) <- 1991:2080
salsC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Salmon.smolts"]
salsC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Salmon.smolts"]
salsC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Salmon.smolts"]
# head(salsC.45.f1.80)
salsC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsC.45.f1.80.up[i] <- max(salsC.45.f1.80[i,])
salsC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsC.45.f1.80.lo[i] <- min(salsC.45.f1.80[i,])
# Everything from 2081-2099
salsC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salsC.45.f1.99) <- c("gfd","mir")
row.names(salsC.45.f1.99) <- 2081:2099
salsC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Salmon.smolts"]
salsC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Salmon.smolts"]
# head(salsC.45.f1.99)
salsC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsC.45.f1.99.up[i] <- max(salsC.45.f1.99[i,])
salsC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsC.45.f1.99.lo[i] <- min(salsC.45.f1.99[i,])
# now append these two time periods
salsC.45.f1.up <- c(salsC.45.f1.80.up,salsC.45.f1.99.up)
salsC.45.f1.lo <- c(salsC.45.f1.80.lo,salsC.45.f1.99.lo)

# RCP 8.5
salsC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salsC.85.f1) <- c("gfd","mir","ces")
row.names(salsC.85.f1) <- 1991:2099
salsC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Salmon.smolts"]
salsC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Salmon.smolts"]
salsC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Salmon.smolts"]
# head(salsC.85.f1)
salsC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsC.85.f1.up[i] <- max(salsC.85.f1[i,])
salsC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsC.85.f1.lo[i] <- min(salsC.85.f1[i,])

# # SRES A1B
# salsC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salsC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(salsC.a1b.f1) <- 1991:2039
# salsC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Salmon.smolts"]
# salsC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Salmon.smolts"]
# salsC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Salmon.smolts"]
# # head(salsC.a1b.f1)
# salsC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsC.a1b.f1.up[i] <- max(salsC.a1b.f1[i,])
# salsC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsC.a1b.f1.lo[i] <- min(salsC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Salmon.smolts F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
salsB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salsB.45.f2.80) <- c("gfd","mir","ces")
row.names(salsB.45.f2.80) <- 1991:2080
salsB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Salmon.smolts"]
salsB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Salmon.smolts"]
salsB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Salmon.smolts"]
# head(salsB.45.f2.80)
salsB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsB.45.f2.80.up[i] <- max(salsB.45.f2.80[i,])
salsB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsB.45.f2.80.lo[i] <- min(salsB.45.f2.80[i,])
# Everything from 2081-2099
salsB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salsB.45.f2.99) <- c("gfd","mir")
row.names(salsB.45.f2.99) <- 2081:2099
salsB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Salmon.smolts"]
salsB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Salmon.smolts"]
# head(salsB.45.f2.99)
salsB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsB.45.f2.99.up[i] <- max(salsB.45.f2.99[i,])
salsB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsB.45.f2.99.lo[i] <- min(salsB.45.f2.99[i,])
# now append these two time periods
salsB.45.f2.up <- c(salsB.45.f2.80.up,salsB.45.f2.99.up)
salsB.45.f2.lo <- c(salsB.45.f2.80.lo,salsB.45.f2.99.lo)

# RCP 8.5
salsB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salsB.85.f2) <- c("gfd","mir","ces")
row.names(salsB.85.f2) <- 1991:2099
salsB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Salmon.smolts"]
salsB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Salmon.smolts"]
salsB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Salmon.smolts"]
# head(salsB.85.f2)
salsB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsB.85.f2.up[i] <- max(salsB.85.f2[i,])
salsB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsB.85.f2.lo[i] <- min(salsB.85.f2[i,])

# # SRES A1B
# salsB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salsB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(salsB.a1b.f2) <- 1991:2039
# salsB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Salmon.smolts"]
# salsB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Salmon.smolts"]
# salsB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Salmon.smolts"]
# # head(salsB.a1b.f2)
# salsB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsB.a1b.f2.up[i] <- max(salsB.a1b.f2[i,])
# salsB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsB.a1b.f2.lo[i] <- min(salsB.a1b.f2[i,])

# Salmon.smolts Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
salsC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salsC.45.f2.80) <- c("gfd","mir","ces")
row.names(salsC.45.f2.80) <- 1991:2080
salsC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Salmon.smolts"]
salsC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Salmon.smolts"]
salsC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Salmon.smolts"]
# head(salsC.45.f2.80)
salsC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsC.45.f2.80.up[i] <- max(salsC.45.f2.80[i,])
salsC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsC.45.f2.80.lo[i] <- min(salsC.45.f2.80[i,])
# Everything from 2081-2099
salsC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salsC.45.f2.99) <- c("gfd","mir")
row.names(salsC.45.f2.99) <- 2081:2099
salsC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Salmon.smolts"]
salsC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Salmon.smolts"]
# head(salsC.45.f2.99)
salsC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsC.45.f2.99.up[i] <- max(salsC.45.f2.99[i,])
salsC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsC.45.f2.99.lo[i] <- min(salsC.45.f2.99[i,])
# now append these two time periods
salsC.45.f2.up <- c(salsC.45.f2.80.up,salsC.45.f2.99.up)
salsC.45.f2.lo <- c(salsC.45.f2.80.lo,salsC.45.f2.99.lo)

# RCP 8.5
salsC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salsC.85.f2) <- c("gfd","mir","ces")
row.names(salsC.85.f2) <- 1991:2099
salsC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Salmon.smolts"]
salsC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Salmon.smolts"]
salsC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Salmon.smolts"]
# head(salsC.85.f2)
salsC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsC.85.f2.up[i] <- max(salsC.85.f2[i,])
salsC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsC.85.f2.lo[i] <- min(salsC.85.f2[i,])

# # SRES A1B
# salsC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salsC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(salsC.a1b.f2) <- 1991:2039
# salsC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Salmon.smolts"]
# salsC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Salmon.smolts"]
# salsC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Salmon.smolts"]
# # head(salsC.a1b.f2)
# salsC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsC.a1b.f2.up[i] <- max(salsC.a1b.f2[i,])
# salsC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsC.a1b.f2.lo[i] <- min(salsC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Salmon.smolts F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
salsB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salsB.45.f3.80) <- c("gfd","mir","ces")
row.names(salsB.45.f3.80) <- 1991:2080
salsB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Salmon.smolts"]
salsB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Salmon.smolts"]
salsB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Salmon.smolts"]
# head(salsB.45.f3.80)
salsB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsB.45.f3.80.up[i] <- max(salsB.45.f3.80[i,])
salsB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsB.45.f3.80.lo[i] <- min(salsB.45.f3.80[i,])
# Everything from 2081-2099
salsB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salsB.45.f3.99) <- c("gfd","mir")
row.names(salsB.45.f3.99) <- 2081:2099
salsB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Salmon.smolts"]
salsB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Salmon.smolts"]
# head(salsB.45.f3.99)
salsB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsB.45.f3.99.up[i] <- max(salsB.45.f3.99[i,])
salsB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsB.45.f3.99.lo[i] <- min(salsB.45.f3.99[i,])
# now append these two time periods
salsB.45.f3.up <- c(salsB.45.f3.80.up,salsB.45.f3.99.up)
salsB.45.f3.lo <- c(salsB.45.f3.80.lo,salsB.45.f3.99.lo)

# RCP 8.5
salsB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salsB.85.f3) <- c("gfd","mir","ces")
row.names(salsB.85.f3) <- 1991:2099
salsB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Salmon.smolts"]
salsB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Salmon.smolts"]
salsB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Salmon.smolts"]
# head(salsB.85.f3)
salsB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsB.85.f3.up[i] <- max(salsB.85.f3[i,])
salsB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsB.85.f3.lo[i] <- min(salsB.85.f3[i,])

# # SRES A1B
# salsB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salsB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(salsB.a1b.f3) <- 1991:2039
# salsB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Salmon.smolts"]
# salsB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Salmon.smolts"]
# salsB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Salmon.smolts"]
# # head(salsB.a1b.f3)
# salsB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsB.a1b.f3.up[i] <- max(salsB.a1b.f3[i,])
# salsB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsB.a1b.f3.lo[i] <- min(salsB.a1b.f3[i,])

# Salmon.smolts Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
salsC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salsC.45.f3.80) <- c("gfd","mir","ces")
row.names(salsC.45.f3.80) <- 1991:2080
salsC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Salmon.smolts"]
salsC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Salmon.smolts"]
salsC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Salmon.smolts"]
# head(salsC.45.f3.80)
salsC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsC.45.f3.80.up[i] <- max(salsC.45.f3.80[i,])
salsC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsC.45.f3.80.lo[i] <- min(salsC.45.f3.80[i,])
# Everything from 2081-2099
salsC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salsC.45.f3.99) <- c("gfd","mir")
row.names(salsC.45.f3.99) <- 2081:2099
salsC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Salmon.smolts"]
salsC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Salmon.smolts"]
# head(salsC.45.f3.99)
salsC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsC.45.f3.99.up[i] <- max(salsC.45.f3.99[i,])
salsC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsC.45.f3.99.lo[i] <- min(salsC.45.f3.99[i,])
# now append these two time periods
salsC.45.f3.up <- c(salsC.45.f3.80.up,salsC.45.f3.99.up)
salsC.45.f3.lo <- c(salsC.45.f3.80.lo,salsC.45.f3.99.lo)

# RCP 8.5
salsC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salsC.85.f3) <- c("gfd","mir","ces")
row.names(salsC.85.f3) <- 1991:2099
salsC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Salmon.smolts"]
salsC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Salmon.smolts"]
salsC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Salmon.smolts"]
# head(salsC.85.f3)
salsC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsC.85.f3.up[i] <- max(salsC.85.f3[i,])
salsC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsC.85.f3.lo[i] <- min(salsC.85.f3[i,])

# # SRES A1B
# salsC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salsC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(salsC.a1b.f3) <- 1991:2039
# salsC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Salmon.smolts"]
# salsC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Salmon.smolts"]
# salsC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Salmon.smolts"]
# # head(salsC.a1b.f3)
# salsC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsC.a1b.f3.up[i] <- max(salsC.a1b.f3[i,])
# salsC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsC.a1b.f3.lo[i] <- min(salsC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Salmon.smolts F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
salsB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salsB.45.f4.80) <- c("gfd","mir","ces")
row.names(salsB.45.f4.80) <- 1991:2080
salsB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Salmon.smolts"]
salsB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Salmon.smolts"]
salsB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Salmon.smolts"]
# head(salsB.45.f4.80)
salsB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsB.45.f4.80.up[i] <- max(salsB.45.f4.80[i,])
salsB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsB.45.f4.80.lo[i] <- min(salsB.45.f4.80[i,])
# Everything from 2081-2099
salsB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salsB.45.f4.99) <- c("gfd","mir")
row.names(salsB.45.f4.99) <- 2081:2099
salsB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Salmon.smolts"]
salsB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Salmon.smolts"]
# head(salsB.45.f4.99)
salsB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsB.45.f4.99.up[i] <- max(salsB.45.f4.99[i,])
salsB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsB.45.f4.99.lo[i] <- min(salsB.45.f4.99[i,])
# now append these two time periods
salsB.45.f4.up <- c(salsB.45.f4.80.up,salsB.45.f4.99.up)
salsB.45.f4.lo <- c(salsB.45.f4.80.lo,salsB.45.f4.99.lo)

# RCP 8.5
salsB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salsB.85.f4) <- c("gfd","mir","ces")
row.names(salsB.85.f4) <- 1991:2099
salsB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Salmon.smolts"]
salsB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Salmon.smolts"]
salsB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Salmon.smolts"]
# head(salsB.85.f4)
salsB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsB.85.f4.up[i] <- max(salsB.85.f4[i,])
salsB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsB.85.f4.lo[i] <- min(salsB.85.f4[i,])

# # SRES A1B
# salsB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salsB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(salsB.a1b.f4) <- 1991:2039
# salsB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Salmon.smolts"]
# salsB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Salmon.smolts"]
# salsB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Salmon.smolts"]
# # head(salsB.a1b.f4)
# salsB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsB.a1b.f4.up[i] <- max(salsB.a1b.f4[i,])
# salsB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsB.a1b.f4.lo[i] <- min(salsB.a1b.f4[i,])

# Salmon.smolts Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
salsC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(salsC.45.f4.80) <- c("gfd","mir","ces")
row.names(salsC.45.f4.80) <- 1991:2080
salsC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Salmon.smolts"]
salsC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Salmon.smolts"]
salsC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Salmon.smolts"]
# head(salsC.45.f4.80)
salsC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsC.45.f4.80.up[i] <- max(salsC.45.f4.80[i,])
salsC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) salsC.45.f4.80.lo[i] <- min(salsC.45.f4.80[i,])
# Everything from 2081-2099
salsC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(salsC.45.f4.99) <- c("gfd","mir")
row.names(salsC.45.f4.99) <- 2081:2099
salsC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Salmon.smolts"]
salsC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Salmon.smolts"]
# head(salsC.45.f4.99)
salsC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsC.45.f4.99.up[i] <- max(salsC.45.f4.99[i,])
salsC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) salsC.45.f4.99.lo[i] <- min(salsC.45.f4.99[i,])
# now append these two time periods
salsC.45.f4.up <- c(salsC.45.f4.80.up,salsC.45.f4.99.up)
salsC.45.f4.lo <- c(salsC.45.f4.80.lo,salsC.45.f4.99.lo)

# RCP 8.5
salsC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(salsC.85.f4) <- c("gfd","mir","ces")
row.names(salsC.85.f4) <- 1991:2099
salsC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Salmon.smolts"]
salsC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Salmon.smolts"]
salsC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Salmon.smolts"]
# head(salsC.85.f4)
salsC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsC.85.f4.up[i] <- max(salsC.85.f4[i,])
salsC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) salsC.85.f4.lo[i] <- min(salsC.85.f4[i,])

# # SRES A1B
# salsC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(salsC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(salsC.a1b.f4) <- 1991:2039
# salsC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Salmon.smolts"]
# salsC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Salmon.smolts"]
# salsC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Salmon.smolts"]
# # head(salsC.a1b.f4)
# salsC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsC.a1b.f4.up[i] <- max(salsC.a1b.f4[i,])
# salsC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) salsC.a1b.f4.lo[i] <- min(salsC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Sandlance biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
sndlB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sndlB.45.f1.80) <- c("gfd","mir","ces")
row.names(sndlB.45.f1.80) <- 1991:2080
sndlB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Sandlance"]
sndlB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Sandlance"]
sndlB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Sandlance"]
# head(sndlB.45.f1.80)
sndlB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlB.45.f1.80.up[i] <- max(sndlB.45.f1.80[i,])
sndlB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlB.45.f1.80.lo[i] <- min(sndlB.45.f1.80[i,])
# Everything from 2081-2099
sndlB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sndlB.45.f1.99) <- c("gfd","mir")
row.names(sndlB.45.f1.99) <- 2081:2099
sndlB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Sandlance"]
sndlB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Sandlance"]
# head(sndlB.45.f1.99)
sndlB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlB.45.f1.99.up[i] <- max(sndlB.45.f1.99[i,])
sndlB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlB.45.f1.99.lo[i] <- min(sndlB.45.f1.99[i,])
# now append these two time periods
sndlB.45.f1.up <- c(sndlB.45.f1.80.up,sndlB.45.f1.99.up)
sndlB.45.f1.lo <- c(sndlB.45.f1.80.lo,sndlB.45.f1.99.lo)

# RCP 8.5
sndlB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sndlB.85.f1) <- c("gfd","mir","ces")
row.names(sndlB.85.f1) <- 1991:2099
sndlB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Sandlance"]
sndlB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Sandlance"]
sndlB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Sandlance"]
# head(sndlB.85.f1)
sndlB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlB.85.f1.up[i] <- max(sndlB.85.f1[i,])
sndlB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlB.85.f1.lo[i] <- min(sndlB.85.f1[i,])

# # SRES A1B
# sndlB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sndlB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sndlB.a1b.f1) <- 1991:2039
# sndlB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Sandlance"]
# sndlB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Sandlance"]
# sndlB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Sandlance"]
# # head(sndlB.a1b.f1)
# sndlB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlB.a1b.f1.up[i] <- max(sndlB.a1b.f1[i,])
# sndlB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlB.a1b.f1.lo[i] <- min(sndlB.a1b.f1[i,])

# Sandlance Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
sndlC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sndlC.45.f1.80) <- c("gfd","mir","ces")
row.names(sndlC.45.f1.80) <- 1991:2080
sndlC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Sandlance"]
sndlC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Sandlance"]
sndlC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Sandlance"]
# head(sndlC.45.f1.80)
sndlC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlC.45.f1.80.up[i] <- max(sndlC.45.f1.80[i,])
sndlC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlC.45.f1.80.lo[i] <- min(sndlC.45.f1.80[i,])
# Everything from 2081-2099
sndlC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sndlC.45.f1.99) <- c("gfd","mir")
row.names(sndlC.45.f1.99) <- 2081:2099
sndlC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Sandlance"]
sndlC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Sandlance"]
# head(sndlC.45.f1.99)
sndlC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlC.45.f1.99.up[i] <- max(sndlC.45.f1.99[i,])
sndlC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlC.45.f1.99.lo[i] <- min(sndlC.45.f1.99[i,])
# now append these two time periods
sndlC.45.f1.up <- c(sndlC.45.f1.80.up,sndlC.45.f1.99.up)
sndlC.45.f1.lo <- c(sndlC.45.f1.80.lo,sndlC.45.f1.99.lo)

# RCP 8.5
sndlC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sndlC.85.f1) <- c("gfd","mir","ces")
row.names(sndlC.85.f1) <- 1991:2099
sndlC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Sandlance"]
sndlC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Sandlance"]
sndlC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Sandlance"]
# head(sndlC.85.f1)
sndlC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlC.85.f1.up[i] <- max(sndlC.85.f1[i,])
sndlC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlC.85.f1.lo[i] <- min(sndlC.85.f1[i,])

# # SRES A1B
# sndlC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sndlC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sndlC.a1b.f1) <- 1991:2039
# sndlC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Sandlance"]
# sndlC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Sandlance"]
# sndlC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Sandlance"]
# # head(sndlC.a1b.f1)
# sndlC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlC.a1b.f1.up[i] <- max(sndlC.a1b.f1[i,])
# sndlC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlC.a1b.f1.lo[i] <- min(sndlC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Sandlance F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
sndlB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sndlB.45.f2.80) <- c("gfd","mir","ces")
row.names(sndlB.45.f2.80) <- 1991:2080
sndlB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Sandlance"]
sndlB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Sandlance"]
sndlB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Sandlance"]
# head(sndlB.45.f2.80)
sndlB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlB.45.f2.80.up[i] <- max(sndlB.45.f2.80[i,])
sndlB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlB.45.f2.80.lo[i] <- min(sndlB.45.f2.80[i,])
# Everything from 2081-2099
sndlB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sndlB.45.f2.99) <- c("gfd","mir")
row.names(sndlB.45.f2.99) <- 2081:2099
sndlB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Sandlance"]
sndlB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Sandlance"]
# head(sndlB.45.f2.99)
sndlB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlB.45.f2.99.up[i] <- max(sndlB.45.f2.99[i,])
sndlB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlB.45.f2.99.lo[i] <- min(sndlB.45.f2.99[i,])
# now append these two time periods
sndlB.45.f2.up <- c(sndlB.45.f2.80.up,sndlB.45.f2.99.up)
sndlB.45.f2.lo <- c(sndlB.45.f2.80.lo,sndlB.45.f2.99.lo)

# RCP 8.5
sndlB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sndlB.85.f2) <- c("gfd","mir","ces")
row.names(sndlB.85.f2) <- 1991:2099
sndlB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Sandlance"]
sndlB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Sandlance"]
sndlB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Sandlance"]
# head(sndlB.85.f2)
sndlB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlB.85.f2.up[i] <- max(sndlB.85.f2[i,])
sndlB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlB.85.f2.lo[i] <- min(sndlB.85.f2[i,])

# # SRES A1B
# sndlB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sndlB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(sndlB.a1b.f2) <- 1991:2039
# sndlB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Sandlance"]
# sndlB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Sandlance"]
# sndlB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Sandlance"]
# # head(sndlB.a1b.f2)
# sndlB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlB.a1b.f2.up[i] <- max(sndlB.a1b.f2[i,])
# sndlB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlB.a1b.f2.lo[i] <- min(sndlB.a1b.f2[i,])

# Sandlance Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
sndlC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sndlC.45.f2.80) <- c("gfd","mir","ces")
row.names(sndlC.45.f2.80) <- 1991:2080
sndlC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Sandlance"]
sndlC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Sandlance"]
sndlC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Sandlance"]
# head(sndlC.45.f2.80)
sndlC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlC.45.f2.80.up[i] <- max(sndlC.45.f2.80[i,])
sndlC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlC.45.f2.80.lo[i] <- min(sndlC.45.f2.80[i,])
# Everything from 2081-2099
sndlC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sndlC.45.f2.99) <- c("gfd","mir")
row.names(sndlC.45.f2.99) <- 2081:2099
sndlC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Sandlance"]
sndlC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Sandlance"]
# head(sndlC.45.f2.99)
sndlC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlC.45.f2.99.up[i] <- max(sndlC.45.f2.99[i,])
sndlC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlC.45.f2.99.lo[i] <- min(sndlC.45.f2.99[i,])
# now append these two time periods
sndlC.45.f2.up <- c(sndlC.45.f2.80.up,sndlC.45.f2.99.up)
sndlC.45.f2.lo <- c(sndlC.45.f2.80.lo,sndlC.45.f2.99.lo)

# RCP 8.5
sndlC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sndlC.85.f2) <- c("gfd","mir","ces")
row.names(sndlC.85.f2) <- 1991:2099
sndlC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Sandlance"]
sndlC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Sandlance"]
sndlC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Sandlance"]
# head(sndlC.85.f2)
sndlC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlC.85.f2.up[i] <- max(sndlC.85.f2[i,])
sndlC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlC.85.f2.lo[i] <- min(sndlC.85.f2[i,])

# # SRES A1B
# sndlC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sndlC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(sndlC.a1b.f2) <- 1991:2039
# sndlC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Sandlance"]
# sndlC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Sandlance"]
# sndlC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Sandlance"]
# # head(sndlC.a1b.f2)
# sndlC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlC.a1b.f2.up[i] <- max(sndlC.a1b.f2[i,])
# sndlC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlC.a1b.f2.lo[i] <- min(sndlC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Sandlance F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
sndlB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sndlB.45.f3.80) <- c("gfd","mir","ces")
row.names(sndlB.45.f3.80) <- 1991:2080
sndlB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Sandlance"]
sndlB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Sandlance"]
sndlB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Sandlance"]
# head(sndlB.45.f3.80)
sndlB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlB.45.f3.80.up[i] <- max(sndlB.45.f3.80[i,])
sndlB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlB.45.f3.80.lo[i] <- min(sndlB.45.f3.80[i,])
# Everything from 2081-2099
sndlB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sndlB.45.f3.99) <- c("gfd","mir")
row.names(sndlB.45.f3.99) <- 2081:2099
sndlB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Sandlance"]
sndlB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Sandlance"]
# head(sndlB.45.f3.99)
sndlB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlB.45.f3.99.up[i] <- max(sndlB.45.f3.99[i,])
sndlB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlB.45.f3.99.lo[i] <- min(sndlB.45.f3.99[i,])
# now append these two time periods
sndlB.45.f3.up <- c(sndlB.45.f3.80.up,sndlB.45.f3.99.up)
sndlB.45.f3.lo <- c(sndlB.45.f3.80.lo,sndlB.45.f3.99.lo)

# RCP 8.5
sndlB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sndlB.85.f3) <- c("gfd","mir","ces")
row.names(sndlB.85.f3) <- 1991:2099
sndlB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Sandlance"]
sndlB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Sandlance"]
sndlB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Sandlance"]
# head(sndlB.85.f3)
sndlB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlB.85.f3.up[i] <- max(sndlB.85.f3[i,])
sndlB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlB.85.f3.lo[i] <- min(sndlB.85.f3[i,])

# # SRES A1B
# sndlB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sndlB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(sndlB.a1b.f3) <- 1991:2039
# sndlB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Sandlance"]
# sndlB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Sandlance"]
# sndlB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Sandlance"]
# # head(sndlB.a1b.f3)
# sndlB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlB.a1b.f3.up[i] <- max(sndlB.a1b.f3[i,])
# sndlB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlB.a1b.f3.lo[i] <- min(sndlB.a1b.f3[i,])

# Sandlance Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
sndlC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sndlC.45.f3.80) <- c("gfd","mir","ces")
row.names(sndlC.45.f3.80) <- 1991:2080
sndlC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Sandlance"]
sndlC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Sandlance"]
sndlC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Sandlance"]
# head(sndlC.45.f3.80)
sndlC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlC.45.f3.80.up[i] <- max(sndlC.45.f3.80[i,])
sndlC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlC.45.f3.80.lo[i] <- min(sndlC.45.f3.80[i,])
# Everything from 2081-2099
sndlC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sndlC.45.f3.99) <- c("gfd","mir")
row.names(sndlC.45.f3.99) <- 2081:2099
sndlC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Sandlance"]
sndlC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Sandlance"]
# head(sndlC.45.f3.99)
sndlC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlC.45.f3.99.up[i] <- max(sndlC.45.f3.99[i,])
sndlC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlC.45.f3.99.lo[i] <- min(sndlC.45.f3.99[i,])
# now append these two time periods
sndlC.45.f3.up <- c(sndlC.45.f3.80.up,sndlC.45.f3.99.up)
sndlC.45.f3.lo <- c(sndlC.45.f3.80.lo,sndlC.45.f3.99.lo)

# RCP 8.5
sndlC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sndlC.85.f3) <- c("gfd","mir","ces")
row.names(sndlC.85.f3) <- 1991:2099
sndlC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Sandlance"]
sndlC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Sandlance"]
sndlC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Sandlance"]
# head(sndlC.85.f3)
sndlC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlC.85.f3.up[i] <- max(sndlC.85.f3[i,])
sndlC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlC.85.f3.lo[i] <- min(sndlC.85.f3[i,])

# # SRES A1B
# sndlC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sndlC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(sndlC.a1b.f3) <- 1991:2039
# sndlC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Sandlance"]
# sndlC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Sandlance"]
# sndlC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Sandlance"]
# # head(sndlC.a1b.f3)
# sndlC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlC.a1b.f3.up[i] <- max(sndlC.a1b.f3[i,])
# sndlC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlC.a1b.f3.lo[i] <- min(sndlC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Sandlance F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
sndlB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sndlB.45.f4.80) <- c("gfd","mir","ces")
row.names(sndlB.45.f4.80) <- 1991:2080
sndlB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Sandlance"]
sndlB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Sandlance"]
sndlB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Sandlance"]
# head(sndlB.45.f4.80)
sndlB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlB.45.f4.80.up[i] <- max(sndlB.45.f4.80[i,])
sndlB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlB.45.f4.80.lo[i] <- min(sndlB.45.f4.80[i,])
# Everything from 2081-2099
sndlB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sndlB.45.f4.99) <- c("gfd","mir")
row.names(sndlB.45.f4.99) <- 2081:2099
sndlB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Sandlance"]
sndlB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Sandlance"]
# head(sndlB.45.f4.99)
sndlB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlB.45.f4.99.up[i] <- max(sndlB.45.f4.99[i,])
sndlB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlB.45.f4.99.lo[i] <- min(sndlB.45.f4.99[i,])
# now append these two time periods
sndlB.45.f4.up <- c(sndlB.45.f4.80.up,sndlB.45.f4.99.up)
sndlB.45.f4.lo <- c(sndlB.45.f4.80.lo,sndlB.45.f4.99.lo)

# RCP 8.5
sndlB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sndlB.85.f4) <- c("gfd","mir","ces")
row.names(sndlB.85.f4) <- 1991:2099
sndlB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Sandlance"]
sndlB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Sandlance"]
sndlB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Sandlance"]
# head(sndlB.85.f4)
sndlB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlB.85.f4.up[i] <- max(sndlB.85.f4[i,])
sndlB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlB.85.f4.lo[i] <- min(sndlB.85.f4[i,])

# # SRES A1B
# sndlB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sndlB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(sndlB.a1b.f4) <- 1991:2039
# sndlB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Sandlance"]
# sndlB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Sandlance"]
# sndlB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Sandlance"]
# # head(sndlB.a1b.f4)
# sndlB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlB.a1b.f4.up[i] <- max(sndlB.a1b.f4[i,])
# sndlB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlB.a1b.f4.lo[i] <- min(sndlB.a1b.f4[i,])

# Sandlance Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
sndlC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sndlC.45.f4.80) <- c("gfd","mir","ces")
row.names(sndlC.45.f4.80) <- 1991:2080
sndlC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Sandlance"]
sndlC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Sandlance"]
sndlC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Sandlance"]
# head(sndlC.45.f4.80)
sndlC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlC.45.f4.80.up[i] <- max(sndlC.45.f4.80[i,])
sndlC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sndlC.45.f4.80.lo[i] <- min(sndlC.45.f4.80[i,])
# Everything from 2081-2099
sndlC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sndlC.45.f4.99) <- c("gfd","mir")
row.names(sndlC.45.f4.99) <- 2081:2099
sndlC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Sandlance"]
sndlC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Sandlance"]
# head(sndlC.45.f4.99)
sndlC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlC.45.f4.99.up[i] <- max(sndlC.45.f4.99[i,])
sndlC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sndlC.45.f4.99.lo[i] <- min(sndlC.45.f4.99[i,])
# now append these two time periods
sndlC.45.f4.up <- c(sndlC.45.f4.80.up,sndlC.45.f4.99.up)
sndlC.45.f4.lo <- c(sndlC.45.f4.80.lo,sndlC.45.f4.99.lo)

# RCP 8.5
sndlC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sndlC.85.f4) <- c("gfd","mir","ces")
row.names(sndlC.85.f4) <- 1991:2099
sndlC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Sandlance"]
sndlC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Sandlance"]
sndlC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Sandlance"]
# head(sndlC.85.f4)
sndlC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlC.85.f4.up[i] <- max(sndlC.85.f4[i,])
sndlC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sndlC.85.f4.lo[i] <- min(sndlC.85.f4[i,])

# # SRES A1B
# sndlC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sndlC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(sndlC.a1b.f4) <- 1991:2039
# sndlC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Sandlance"]
# sndlC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Sandlance"]
# sndlC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Sandlance"]
# # head(sndlC.a1b.f4)
# sndlC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlC.a1b.f4.up[i] <- max(sndlC.a1b.f4[i,])
# sndlC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sndlC.a1b.f4.lo[i] <- min(sndlC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Squids biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
sqdB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sqdB.45.f1.80) <- c("gfd","mir","ces")
row.names(sqdB.45.f1.80) <- 1991:2080
sqdB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Squids"]
sqdB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Squids"]
sqdB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Squids"]
# head(sqdB.45.f1.80)
sqdB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdB.45.f1.80.up[i] <- max(sqdB.45.f1.80[i,])
sqdB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdB.45.f1.80.lo[i] <- min(sqdB.45.f1.80[i,])
# Everything from 2081-2099
sqdB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sqdB.45.f1.99) <- c("gfd","mir")
row.names(sqdB.45.f1.99) <- 2081:2099
sqdB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Squids"]
sqdB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Squids"]
# head(sqdB.45.f1.99)
sqdB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdB.45.f1.99.up[i] <- max(sqdB.45.f1.99[i,])
sqdB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdB.45.f1.99.lo[i] <- min(sqdB.45.f1.99[i,])
# now append these two time periods
sqdB.45.f1.up <- c(sqdB.45.f1.80.up,sqdB.45.f1.99.up)
sqdB.45.f1.lo <- c(sqdB.45.f1.80.lo,sqdB.45.f1.99.lo)

# RCP 8.5
sqdB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sqdB.85.f1) <- c("gfd","mir","ces")
row.names(sqdB.85.f1) <- 1991:2099
sqdB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Squids"]
sqdB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Squids"]
sqdB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Squids"]
# head(sqdB.85.f1)
sqdB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdB.85.f1.up[i] <- max(sqdB.85.f1[i,])
sqdB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdB.85.f1.lo[i] <- min(sqdB.85.f1[i,])

# # SRES A1B
# sqdB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sqdB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sqdB.a1b.f1) <- 1991:2039
# sqdB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Squids"]
# sqdB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Squids"]
# sqdB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Squids"]
# # head(sqdB.a1b.f1)
# sqdB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdB.a1b.f1.up[i] <- max(sqdB.a1b.f1[i,])
# sqdB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdB.a1b.f1.lo[i] <- min(sqdB.a1b.f1[i,])

# Squids Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
sqdC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sqdC.45.f1.80) <- c("gfd","mir","ces")
row.names(sqdC.45.f1.80) <- 1991:2080
sqdC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Squids"]
sqdC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Squids"]
sqdC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Squids"]
# head(sqdC.45.f1.80)
sqdC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdC.45.f1.80.up[i] <- max(sqdC.45.f1.80[i,])
sqdC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdC.45.f1.80.lo[i] <- min(sqdC.45.f1.80[i,])
# Everything from 2081-2099
sqdC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sqdC.45.f1.99) <- c("gfd","mir")
row.names(sqdC.45.f1.99) <- 2081:2099
sqdC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Squids"]
sqdC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Squids"]
# head(sqdC.45.f1.99)
sqdC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdC.45.f1.99.up[i] <- max(sqdC.45.f1.99[i,])
sqdC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdC.45.f1.99.lo[i] <- min(sqdC.45.f1.99[i,])
# now append these two time periods
sqdC.45.f1.up <- c(sqdC.45.f1.80.up,sqdC.45.f1.99.up)
sqdC.45.f1.lo <- c(sqdC.45.f1.80.lo,sqdC.45.f1.99.lo)

# RCP 8.5
sqdC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sqdC.85.f1) <- c("gfd","mir","ces")
row.names(sqdC.85.f1) <- 1991:2099
sqdC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Squids"]
sqdC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Squids"]
sqdC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Squids"]
# head(sqdC.85.f1)
sqdC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdC.85.f1.up[i] <- max(sqdC.85.f1[i,])
sqdC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdC.85.f1.lo[i] <- min(sqdC.85.f1[i,])

# # SRES A1B
# sqdC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sqdC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sqdC.a1b.f1) <- 1991:2039
# sqdC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Squids"]
# sqdC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Squids"]
# sqdC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Squids"]
# # head(sqdC.a1b.f1)
# sqdC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdC.a1b.f1.up[i] <- max(sqdC.a1b.f1[i,])
# sqdC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdC.a1b.f1.lo[i] <- min(sqdC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Squids F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
sqdB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sqdB.45.f2.80) <- c("gfd","mir","ces")
row.names(sqdB.45.f2.80) <- 1991:2080
sqdB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Squids"]
sqdB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Squids"]
sqdB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Squids"]
# head(sqdB.45.f2.80)
sqdB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdB.45.f2.80.up[i] <- max(sqdB.45.f2.80[i,])
sqdB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdB.45.f2.80.lo[i] <- min(sqdB.45.f2.80[i,])
# Everything from 2081-2099
sqdB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sqdB.45.f2.99) <- c("gfd","mir")
row.names(sqdB.45.f2.99) <- 2081:2099
sqdB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Squids"]
sqdB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Squids"]
# head(sqdB.45.f2.99)
sqdB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdB.45.f2.99.up[i] <- max(sqdB.45.f2.99[i,])
sqdB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdB.45.f2.99.lo[i] <- min(sqdB.45.f2.99[i,])
# now append these two time periods
sqdB.45.f2.up <- c(sqdB.45.f2.80.up,sqdB.45.f2.99.up)
sqdB.45.f2.lo <- c(sqdB.45.f2.80.lo,sqdB.45.f2.99.lo)

# RCP 8.5
sqdB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sqdB.85.f2) <- c("gfd","mir","ces")
row.names(sqdB.85.f2) <- 1991:2099
sqdB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Squids"]
sqdB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Squids"]
sqdB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Squids"]
# head(sqdB.85.f2)
sqdB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdB.85.f2.up[i] <- max(sqdB.85.f2[i,])
sqdB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdB.85.f2.lo[i] <- min(sqdB.85.f2[i,])

# # SRES A1B
# sqdB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sqdB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(sqdB.a1b.f2) <- 1991:2039
# sqdB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Squids"]
# sqdB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Squids"]
# sqdB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Squids"]
# # head(sqdB.a1b.f2)
# sqdB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdB.a1b.f2.up[i] <- max(sqdB.a1b.f2[i,])
# sqdB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdB.a1b.f2.lo[i] <- min(sqdB.a1b.f2[i,])

# Squids Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
sqdC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sqdC.45.f2.80) <- c("gfd","mir","ces")
row.names(sqdC.45.f2.80) <- 1991:2080
sqdC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Squids"]
sqdC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Squids"]
sqdC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Squids"]
# head(sqdC.45.f2.80)
sqdC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdC.45.f2.80.up[i] <- max(sqdC.45.f2.80[i,])
sqdC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdC.45.f2.80.lo[i] <- min(sqdC.45.f2.80[i,])
# Everything from 2081-2099
sqdC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sqdC.45.f2.99) <- c("gfd","mir")
row.names(sqdC.45.f2.99) <- 2081:2099
sqdC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Squids"]
sqdC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Squids"]
# head(sqdC.45.f2.99)
sqdC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdC.45.f2.99.up[i] <- max(sqdC.45.f2.99[i,])
sqdC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdC.45.f2.99.lo[i] <- min(sqdC.45.f2.99[i,])
# now append these two time periods
sqdC.45.f2.up <- c(sqdC.45.f2.80.up,sqdC.45.f2.99.up)
sqdC.45.f2.lo <- c(sqdC.45.f2.80.lo,sqdC.45.f2.99.lo)

# RCP 8.5
sqdC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sqdC.85.f2) <- c("gfd","mir","ces")
row.names(sqdC.85.f2) <- 1991:2099
sqdC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Squids"]
sqdC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Squids"]
sqdC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Squids"]
# head(sqdC.85.f2)
sqdC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdC.85.f2.up[i] <- max(sqdC.85.f2[i,])
sqdC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdC.85.f2.lo[i] <- min(sqdC.85.f2[i,])

# # SRES A1B
# sqdC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sqdC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(sqdC.a1b.f2) <- 1991:2039
# sqdC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Squids"]
# sqdC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Squids"]
# sqdC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Squids"]
# # head(sqdC.a1b.f2)
# sqdC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdC.a1b.f2.up[i] <- max(sqdC.a1b.f2[i,])
# sqdC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdC.a1b.f2.lo[i] <- min(sqdC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Squids F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
sqdB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sqdB.45.f3.80) <- c("gfd","mir","ces")
row.names(sqdB.45.f3.80) <- 1991:2080
sqdB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Squids"]
sqdB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Squids"]
sqdB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Squids"]
# head(sqdB.45.f3.80)
sqdB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdB.45.f3.80.up[i] <- max(sqdB.45.f3.80[i,])
sqdB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdB.45.f3.80.lo[i] <- min(sqdB.45.f3.80[i,])
# Everything from 2081-2099
sqdB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sqdB.45.f3.99) <- c("gfd","mir")
row.names(sqdB.45.f3.99) <- 2081:2099
sqdB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Squids"]
sqdB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Squids"]
# head(sqdB.45.f3.99)
sqdB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdB.45.f3.99.up[i] <- max(sqdB.45.f3.99[i,])
sqdB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdB.45.f3.99.lo[i] <- min(sqdB.45.f3.99[i,])
# now append these two time periods
sqdB.45.f3.up <- c(sqdB.45.f3.80.up,sqdB.45.f3.99.up)
sqdB.45.f3.lo <- c(sqdB.45.f3.80.lo,sqdB.45.f3.99.lo)

# RCP 8.5
sqdB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sqdB.85.f3) <- c("gfd","mir","ces")
row.names(sqdB.85.f3) <- 1991:2099
sqdB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Squids"]
sqdB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Squids"]
sqdB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Squids"]
# head(sqdB.85.f3)
sqdB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdB.85.f3.up[i] <- max(sqdB.85.f3[i,])
sqdB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdB.85.f3.lo[i] <- min(sqdB.85.f3[i,])

# # SRES A1B
# sqdB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sqdB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(sqdB.a1b.f3) <- 1991:2039
# sqdB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Squids"]
# sqdB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Squids"]
# sqdB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Squids"]
# # head(sqdB.a1b.f3)
# sqdB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdB.a1b.f3.up[i] <- max(sqdB.a1b.f3[i,])
# sqdB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdB.a1b.f3.lo[i] <- min(sqdB.a1b.f3[i,])

# Squids Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
sqdC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sqdC.45.f3.80) <- c("gfd","mir","ces")
row.names(sqdC.45.f3.80) <- 1991:2080
sqdC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Squids"]
sqdC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Squids"]
sqdC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Squids"]
# head(sqdC.45.f3.80)
sqdC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdC.45.f3.80.up[i] <- max(sqdC.45.f3.80[i,])
sqdC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdC.45.f3.80.lo[i] <- min(sqdC.45.f3.80[i,])
# Everything from 2081-2099
sqdC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sqdC.45.f3.99) <- c("gfd","mir")
row.names(sqdC.45.f3.99) <- 2081:2099
sqdC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Squids"]
sqdC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Squids"]
# head(sqdC.45.f3.99)
sqdC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdC.45.f3.99.up[i] <- max(sqdC.45.f3.99[i,])
sqdC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdC.45.f3.99.lo[i] <- min(sqdC.45.f3.99[i,])
# now append these two time periods
sqdC.45.f3.up <- c(sqdC.45.f3.80.up,sqdC.45.f3.99.up)
sqdC.45.f3.lo <- c(sqdC.45.f3.80.lo,sqdC.45.f3.99.lo)

# RCP 8.5
sqdC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sqdC.85.f3) <- c("gfd","mir","ces")
row.names(sqdC.85.f3) <- 1991:2099
sqdC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Squids"]
sqdC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Squids"]
sqdC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Squids"]
# head(sqdC.85.f3)
sqdC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdC.85.f3.up[i] <- max(sqdC.85.f3[i,])
sqdC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdC.85.f3.lo[i] <- min(sqdC.85.f3[i,])

# # SRES A1B
# sqdC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sqdC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(sqdC.a1b.f3) <- 1991:2039
# sqdC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Squids"]
# sqdC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Squids"]
# sqdC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Squids"]
# # head(sqdC.a1b.f3)
# sqdC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdC.a1b.f3.up[i] <- max(sqdC.a1b.f3[i,])
# sqdC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdC.a1b.f3.lo[i] <- min(sqdC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Squids F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
sqdB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sqdB.45.f4.80) <- c("gfd","mir","ces")
row.names(sqdB.45.f4.80) <- 1991:2080
sqdB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Squids"]
sqdB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Squids"]
sqdB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Squids"]
# head(sqdB.45.f4.80)
sqdB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdB.45.f4.80.up[i] <- max(sqdB.45.f4.80[i,])
sqdB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdB.45.f4.80.lo[i] <- min(sqdB.45.f4.80[i,])
# Everything from 2081-2099
sqdB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sqdB.45.f4.99) <- c("gfd","mir")
row.names(sqdB.45.f4.99) <- 2081:2099
sqdB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Squids"]
sqdB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Squids"]
# head(sqdB.45.f4.99)
sqdB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdB.45.f4.99.up[i] <- max(sqdB.45.f4.99[i,])
sqdB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdB.45.f4.99.lo[i] <- min(sqdB.45.f4.99[i,])
# now append these two time periods
sqdB.45.f4.up <- c(sqdB.45.f4.80.up,sqdB.45.f4.99.up)
sqdB.45.f4.lo <- c(sqdB.45.f4.80.lo,sqdB.45.f4.99.lo)

# RCP 8.5
sqdB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sqdB.85.f4) <- c("gfd","mir","ces")
row.names(sqdB.85.f4) <- 1991:2099
sqdB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Squids"]
sqdB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Squids"]
sqdB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Squids"]
# head(sqdB.85.f4)
sqdB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdB.85.f4.up[i] <- max(sqdB.85.f4[i,])
sqdB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdB.85.f4.lo[i] <- min(sqdB.85.f4[i,])

# # SRES A1B
# sqdB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sqdB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(sqdB.a1b.f4) <- 1991:2039
# sqdB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Squids"]
# sqdB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Squids"]
# sqdB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Squids"]
# # head(sqdB.a1b.f4)
# sqdB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdB.a1b.f4.up[i] <- max(sqdB.a1b.f4[i,])
# sqdB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdB.a1b.f4.lo[i] <- min(sqdB.a1b.f4[i,])

# Squids Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
sqdC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sqdC.45.f4.80) <- c("gfd","mir","ces")
row.names(sqdC.45.f4.80) <- 1991:2080
sqdC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Squids"]
sqdC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Squids"]
sqdC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Squids"]
# head(sqdC.45.f4.80)
sqdC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdC.45.f4.80.up[i] <- max(sqdC.45.f4.80[i,])
sqdC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sqdC.45.f4.80.lo[i] <- min(sqdC.45.f4.80[i,])
# Everything from 2081-2099
sqdC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sqdC.45.f4.99) <- c("gfd","mir")
row.names(sqdC.45.f4.99) <- 2081:2099
sqdC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Squids"]
sqdC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Squids"]
# head(sqdC.45.f4.99)
sqdC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdC.45.f4.99.up[i] <- max(sqdC.45.f4.99[i,])
sqdC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sqdC.45.f4.99.lo[i] <- min(sqdC.45.f4.99[i,])
# now append these two time periods
sqdC.45.f4.up <- c(sqdC.45.f4.80.up,sqdC.45.f4.99.up)
sqdC.45.f4.lo <- c(sqdC.45.f4.80.lo,sqdC.45.f4.99.lo)

# RCP 8.5
sqdC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sqdC.85.f4) <- c("gfd","mir","ces")
row.names(sqdC.85.f4) <- 1991:2099
sqdC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Squids"]
sqdC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Squids"]
sqdC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Squids"]
# head(sqdC.85.f4)
sqdC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdC.85.f4.up[i] <- max(sqdC.85.f4[i,])
sqdC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sqdC.85.f4.lo[i] <- min(sqdC.85.f4[i,])

# # SRES A1B
# sqdC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sqdC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(sqdC.a1b.f4) <- 1991:2039
# sqdC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Squids"]
# sqdC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Squids"]
# sqdC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Squids"]
# # head(sqdC.a1b.f4)
# sqdC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdC.a1b.f4.up[i] <- max(sqdC.a1b.f4[i,])
# sqdC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sqdC.a1b.f4.lo[i] <- min(sqdC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# W.pollock_Juv biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
poljB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(poljB.45.f1.80) <- c("gfd","mir","ces")
row.names(poljB.45.f1.80) <- 1991:2080
poljB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"W.pollock_Juv"]
poljB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"W.pollock_Juv"]
poljB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"W.pollock_Juv"]
# head(poljB.45.f1.80)
poljB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljB.45.f1.80.up[i] <- max(poljB.45.f1.80[i,])
poljB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljB.45.f1.80.lo[i] <- min(poljB.45.f1.80[i,])
# Everything from 2081-2099
poljB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(poljB.45.f1.99) <- c("gfd","mir")
row.names(poljB.45.f1.99) <- 2081:2099
poljB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"W.pollock_Juv"]
poljB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"W.pollock_Juv"]
# head(poljB.45.f1.99)
poljB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljB.45.f1.99.up[i] <- max(poljB.45.f1.99[i,])
poljB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljB.45.f1.99.lo[i] <- min(poljB.45.f1.99[i,])
# now append these two time periods
poljB.45.f1.up <- c(poljB.45.f1.80.up,poljB.45.f1.99.up)
poljB.45.f1.lo <- c(poljB.45.f1.80.lo,poljB.45.f1.99.lo)

# RCP 8.5
poljB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(poljB.85.f1) <- c("gfd","mir","ces")
row.names(poljB.85.f1) <- 1991:2099
poljB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"W.pollock_Juv"]
poljB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"W.pollock_Juv"]
poljB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"W.pollock_Juv"]
# head(poljB.85.f1)
poljB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljB.85.f1.up[i] <- max(poljB.85.f1[i,])
poljB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljB.85.f1.lo[i] <- min(poljB.85.f1[i,])

# # SRES A1B
# poljB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(poljB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(poljB.a1b.f1) <- 1991:2039
# poljB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"W.pollock_Juv"]
# poljB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"W.pollock_Juv"]
# poljB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"W.pollock_Juv"]
# # head(poljB.a1b.f1)
# poljB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljB.a1b.f1.up[i] <- max(poljB.a1b.f1[i,])
# poljB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljB.a1b.f1.lo[i] <- min(poljB.a1b.f1[i,])

# W.pollock_Juv Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
poljC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(poljC.45.f1.80) <- c("gfd","mir","ces")
row.names(poljC.45.f1.80) <- 1991:2080
poljC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"W.pollock_Juv"]
poljC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"W.pollock_Juv"]
poljC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"W.pollock_Juv"]
# head(poljC.45.f1.80)
poljC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljC.45.f1.80.up[i] <- max(poljC.45.f1.80[i,])
poljC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljC.45.f1.80.lo[i] <- min(poljC.45.f1.80[i,])
# Everything from 2081-2099
poljC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(poljC.45.f1.99) <- c("gfd","mir")
row.names(poljC.45.f1.99) <- 2081:2099
poljC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"W.pollock_Juv"]
poljC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"W.pollock_Juv"]
# head(poljC.45.f1.99)
poljC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljC.45.f1.99.up[i] <- max(poljC.45.f1.99[i,])
poljC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljC.45.f1.99.lo[i] <- min(poljC.45.f1.99[i,])
# now append these two time periods
poljC.45.f1.up <- c(poljC.45.f1.80.up,poljC.45.f1.99.up)
poljC.45.f1.lo <- c(poljC.45.f1.80.lo,poljC.45.f1.99.lo)

# RCP 8.5
poljC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(poljC.85.f1) <- c("gfd","mir","ces")
row.names(poljC.85.f1) <- 1991:2099
poljC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"W.pollock_Juv"]
poljC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"W.pollock_Juv"]
poljC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"W.pollock_Juv"]
# head(poljC.85.f1)
poljC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljC.85.f1.up[i] <- max(poljC.85.f1[i,])
poljC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljC.85.f1.lo[i] <- min(poljC.85.f1[i,])

# # SRES A1B
# poljC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(poljC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(poljC.a1b.f1) <- 1991:2039
# poljC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"W.pollock_Juv"]
# poljC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"W.pollock_Juv"]
# poljC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"W.pollock_Juv"]
# # head(poljC.a1b.f1)
# poljC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljC.a1b.f1.up[i] <- max(poljC.a1b.f1[i,])
# poljC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljC.a1b.f1.lo[i] <- min(poljC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# W.pollock_Juv F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
poljB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(poljB.45.f2.80) <- c("gfd","mir","ces")
row.names(poljB.45.f2.80) <- 1991:2080
poljB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"W.pollock_Juv"]
poljB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"W.pollock_Juv"]
poljB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"W.pollock_Juv"]
# head(poljB.45.f2.80)
poljB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljB.45.f2.80.up[i] <- max(poljB.45.f2.80[i,])
poljB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljB.45.f2.80.lo[i] <- min(poljB.45.f2.80[i,])
# Everything from 2081-2099
poljB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(poljB.45.f2.99) <- c("gfd","mir")
row.names(poljB.45.f2.99) <- 2081:2099
poljB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"W.pollock_Juv"]
poljB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"W.pollock_Juv"]
# head(poljB.45.f2.99)
poljB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljB.45.f2.99.up[i] <- max(poljB.45.f2.99[i,])
poljB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljB.45.f2.99.lo[i] <- min(poljB.45.f2.99[i,])
# now append these two time periods
poljB.45.f2.up <- c(poljB.45.f2.80.up,poljB.45.f2.99.up)
poljB.45.f2.lo <- c(poljB.45.f2.80.lo,poljB.45.f2.99.lo)

# RCP 8.5
poljB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(poljB.85.f2) <- c("gfd","mir","ces")
row.names(poljB.85.f2) <- 1991:2099
poljB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"W.pollock_Juv"]
poljB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"W.pollock_Juv"]
poljB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"W.pollock_Juv"]
# head(poljB.85.f2)
poljB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljB.85.f2.up[i] <- max(poljB.85.f2[i,])
poljB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljB.85.f2.lo[i] <- min(poljB.85.f2[i,])

# # SRES A1B
# poljB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(poljB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(poljB.a1b.f2) <- 1991:2039
# poljB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"W.pollock_Juv"]
# poljB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"W.pollock_Juv"]
# poljB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"W.pollock_Juv"]
# # head(poljB.a1b.f2)
# poljB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljB.a1b.f2.up[i] <- max(poljB.a1b.f2[i,])
# poljB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljB.a1b.f2.lo[i] <- min(poljB.a1b.f2[i,])

# W.pollock_Juv Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
poljC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(poljC.45.f2.80) <- c("gfd","mir","ces")
row.names(poljC.45.f2.80) <- 1991:2080
poljC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"W.pollock_Juv"]
poljC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"W.pollock_Juv"]
poljC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"W.pollock_Juv"]
# head(poljC.45.f2.80)
poljC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljC.45.f2.80.up[i] <- max(poljC.45.f2.80[i,])
poljC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljC.45.f2.80.lo[i] <- min(poljC.45.f2.80[i,])
# Everything from 2081-2099
poljC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(poljC.45.f2.99) <- c("gfd","mir")
row.names(poljC.45.f2.99) <- 2081:2099
poljC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"W.pollock_Juv"]
poljC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"W.pollock_Juv"]
# head(poljC.45.f2.99)
poljC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljC.45.f2.99.up[i] <- max(poljC.45.f2.99[i,])
poljC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljC.45.f2.99.lo[i] <- min(poljC.45.f2.99[i,])
# now append these two time periods
poljC.45.f2.up <- c(poljC.45.f2.80.up,poljC.45.f2.99.up)
poljC.45.f2.lo <- c(poljC.45.f2.80.lo,poljC.45.f2.99.lo)

# RCP 8.5
poljC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(poljC.85.f2) <- c("gfd","mir","ces")
row.names(poljC.85.f2) <- 1991:2099
poljC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"W.pollock_Juv"]
poljC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"W.pollock_Juv"]
poljC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"W.pollock_Juv"]
# head(poljC.85.f2)
poljC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljC.85.f2.up[i] <- max(poljC.85.f2[i,])
poljC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljC.85.f2.lo[i] <- min(poljC.85.f2[i,])

# # SRES A1B
# poljC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(poljC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(poljC.a1b.f2) <- 1991:2039
# poljC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"W.pollock_Juv"]
# poljC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"W.pollock_Juv"]
# poljC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"W.pollock_Juv"]
# # head(poljC.a1b.f2)
# poljC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljC.a1b.f2.up[i] <- max(poljC.a1b.f2[i,])
# poljC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljC.a1b.f2.lo[i] <- min(poljC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# W.pollock_Juv F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
poljB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(poljB.45.f3.80) <- c("gfd","mir","ces")
row.names(poljB.45.f3.80) <- 1991:2080
poljB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"W.pollock_Juv"]
poljB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"W.pollock_Juv"]
poljB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"W.pollock_Juv"]
# head(poljB.45.f3.80)
poljB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljB.45.f3.80.up[i] <- max(poljB.45.f3.80[i,])
poljB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljB.45.f3.80.lo[i] <- min(poljB.45.f3.80[i,])
# Everything from 2081-2099
poljB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(poljB.45.f3.99) <- c("gfd","mir")
row.names(poljB.45.f3.99) <- 2081:2099
poljB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"W.pollock_Juv"]
poljB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"W.pollock_Juv"]
# head(poljB.45.f3.99)
poljB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljB.45.f3.99.up[i] <- max(poljB.45.f3.99[i,])
poljB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljB.45.f3.99.lo[i] <- min(poljB.45.f3.99[i,])
# now append these two time periods
poljB.45.f3.up <- c(poljB.45.f3.80.up,poljB.45.f3.99.up)
poljB.45.f3.lo <- c(poljB.45.f3.80.lo,poljB.45.f3.99.lo)

# RCP 8.5
poljB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(poljB.85.f3) <- c("gfd","mir","ces")
row.names(poljB.85.f3) <- 1991:2099
poljB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"W.pollock_Juv"]
poljB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"W.pollock_Juv"]
poljB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"W.pollock_Juv"]
# head(poljB.85.f3)
poljB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljB.85.f3.up[i] <- max(poljB.85.f3[i,])
poljB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljB.85.f3.lo[i] <- min(poljB.85.f3[i,])

# # SRES A1B
# poljB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(poljB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(poljB.a1b.f3) <- 1991:2039
# poljB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"W.pollock_Juv"]
# poljB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"W.pollock_Juv"]
# poljB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"W.pollock_Juv"]
# # head(poljB.a1b.f3)
# poljB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljB.a1b.f3.up[i] <- max(poljB.a1b.f3[i,])
# poljB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljB.a1b.f3.lo[i] <- min(poljB.a1b.f3[i,])

# W.pollock_Juv Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
poljC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(poljC.45.f3.80) <- c("gfd","mir","ces")
row.names(poljC.45.f3.80) <- 1991:2080
poljC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"W.pollock_Juv"]
poljC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"W.pollock_Juv"]
poljC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"W.pollock_Juv"]
# head(poljC.45.f3.80)
poljC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljC.45.f3.80.up[i] <- max(poljC.45.f3.80[i,])
poljC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljC.45.f3.80.lo[i] <- min(poljC.45.f3.80[i,])
# Everything from 2081-2099
poljC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(poljC.45.f3.99) <- c("gfd","mir")
row.names(poljC.45.f3.99) <- 2081:2099
poljC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"W.pollock_Juv"]
poljC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"W.pollock_Juv"]
# head(poljC.45.f3.99)
poljC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljC.45.f3.99.up[i] <- max(poljC.45.f3.99[i,])
poljC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljC.45.f3.99.lo[i] <- min(poljC.45.f3.99[i,])
# now append these two time periods
poljC.45.f3.up <- c(poljC.45.f3.80.up,poljC.45.f3.99.up)
poljC.45.f3.lo <- c(poljC.45.f3.80.lo,poljC.45.f3.99.lo)

# RCP 8.5
poljC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(poljC.85.f3) <- c("gfd","mir","ces")
row.names(poljC.85.f3) <- 1991:2099
poljC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"W.pollock_Juv"]
poljC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"W.pollock_Juv"]
poljC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"W.pollock_Juv"]
# head(poljC.85.f3)
poljC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljC.85.f3.up[i] <- max(poljC.85.f3[i,])
poljC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljC.85.f3.lo[i] <- min(poljC.85.f3[i,])

# # SRES A1B
# poljC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(poljC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(poljC.a1b.f3) <- 1991:2039
# poljC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"W.pollock_Juv"]
# poljC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"W.pollock_Juv"]
# poljC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"W.pollock_Juv"]
# # head(poljC.a1b.f3)
# poljC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljC.a1b.f3.up[i] <- max(poljC.a1b.f3[i,])
# poljC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljC.a1b.f3.lo[i] <- min(poljC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# W.pollock_Juv F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
poljB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(poljB.45.f4.80) <- c("gfd","mir","ces")
row.names(poljB.45.f4.80) <- 1991:2080
poljB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"W.pollock_Juv"]
poljB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"W.pollock_Juv"]
poljB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"W.pollock_Juv"]
# head(poljB.45.f4.80)
poljB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljB.45.f4.80.up[i] <- max(poljB.45.f4.80[i,])
poljB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljB.45.f4.80.lo[i] <- min(poljB.45.f4.80[i,])
# Everything from 2081-2099
poljB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(poljB.45.f4.99) <- c("gfd","mir")
row.names(poljB.45.f4.99) <- 2081:2099
poljB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"W.pollock_Juv"]
poljB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"W.pollock_Juv"]
# head(poljB.45.f4.99)
poljB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljB.45.f4.99.up[i] <- max(poljB.45.f4.99[i,])
poljB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljB.45.f4.99.lo[i] <- min(poljB.45.f4.99[i,])
# now append these two time periods
poljB.45.f4.up <- c(poljB.45.f4.80.up,poljB.45.f4.99.up)
poljB.45.f4.lo <- c(poljB.45.f4.80.lo,poljB.45.f4.99.lo)

# RCP 8.5
poljB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(poljB.85.f4) <- c("gfd","mir","ces")
row.names(poljB.85.f4) <- 1991:2099
poljB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"W.pollock_Juv"]
poljB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"W.pollock_Juv"]
poljB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"W.pollock_Juv"]
# head(poljB.85.f4)
poljB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljB.85.f4.up[i] <- max(poljB.85.f4[i,])
poljB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljB.85.f4.lo[i] <- min(poljB.85.f4[i,])

# # SRES A1B
# poljB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(poljB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(poljB.a1b.f4) <- 1991:2039
# poljB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"W.pollock_Juv"]
# poljB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"W.pollock_Juv"]
# poljB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"W.pollock_Juv"]
# # head(poljB.a1b.f4)
# poljB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljB.a1b.f4.up[i] <- max(poljB.a1b.f4[i,])
# poljB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljB.a1b.f4.lo[i] <- min(poljB.a1b.f4[i,])

# W.pollock_Juv Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
poljC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(poljC.45.f4.80) <- c("gfd","mir","ces")
row.names(poljC.45.f4.80) <- 1991:2080
poljC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"W.pollock_Juv"]
poljC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"W.pollock_Juv"]
poljC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"W.pollock_Juv"]
# head(poljC.45.f4.80)
poljC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljC.45.f4.80.up[i] <- max(poljC.45.f4.80[i,])
poljC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) poljC.45.f4.80.lo[i] <- min(poljC.45.f4.80[i,])
# Everything from 2081-2099
poljC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(poljC.45.f4.99) <- c("gfd","mir")
row.names(poljC.45.f4.99) <- 2081:2099
poljC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"W.pollock_Juv"]
poljC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"W.pollock_Juv"]
# head(poljC.45.f4.99)
poljC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljC.45.f4.99.up[i] <- max(poljC.45.f4.99[i,])
poljC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) poljC.45.f4.99.lo[i] <- min(poljC.45.f4.99[i,])
# now append these two time periods
poljC.45.f4.up <- c(poljC.45.f4.80.up,poljC.45.f4.99.up)
poljC.45.f4.lo <- c(poljC.45.f4.80.lo,poljC.45.f4.99.lo)

# RCP 8.5
poljC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(poljC.85.f4) <- c("gfd","mir","ces")
row.names(poljC.85.f4) <- 1991:2099
poljC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"W.pollock_Juv"]
poljC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"W.pollock_Juv"]
poljC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"W.pollock_Juv"]
# head(poljC.85.f4)
poljC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljC.85.f4.up[i] <- max(poljC.85.f4[i,])
poljC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) poljC.85.f4.lo[i] <- min(poljC.85.f4[i,])

# # SRES A1B
# poljC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(poljC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(poljC.a1b.f4) <- 1991:2039
# poljC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"W.pollock_Juv"]
# poljC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"W.pollock_Juv"]
# poljC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"W.pollock_Juv"]
# # head(poljC.a1b.f4)
# poljC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljC.a1b.f4.up[i] <- max(poljC.a1b.f4[i,])
# poljC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) poljC.a1b.f4.lo[i] <- min(poljC.a1b.f4[i,])

