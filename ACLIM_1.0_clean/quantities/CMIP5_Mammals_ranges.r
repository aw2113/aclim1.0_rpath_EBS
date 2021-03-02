# More ACLIM plots
# MARINE MAMMALS

rcp.yrs <- 1991:2099
a1b.yrs <- 1991:2039
ces.yrs <- 1991:2080

# ---------------------------------------------------------------------------- #
# Transient.killer.whales biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
kilB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kilB.45.f1.80) <- c("gfd","mir","ces")
row.names(kilB.45.f1.80) <- 1991:2080
kilB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Transient.killer.whales"]
kilB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Transient.killer.whales"]
kilB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Transient.killer.whales"]
# head(kilB.45.f1.80)
kilB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilB.45.f1.80.up[i] <- max(kilB.45.f1.80[i,])
kilB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilB.45.f1.80.lo[i] <- min(kilB.45.f1.80[i,])
# Everything from 2081-2099
kilB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kilB.45.f1.99) <- c("gfd","mir")
row.names(kilB.45.f1.99) <- 2081:2099
kilB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Transient.killer.whales"]
kilB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Transient.killer.whales"]
# head(kilB.45.f1.99)
kilB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilB.45.f1.99.up[i] <- max(kilB.45.f1.99[i,])
kilB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilB.45.f1.99.lo[i] <- min(kilB.45.f1.99[i,])
# now append these two time periods
kilB.45.f1.up <- c(kilB.45.f1.80.up,kilB.45.f1.99.up)
kilB.45.f1.lo <- c(kilB.45.f1.80.lo,kilB.45.f1.99.lo)

# RCP 8.5
kilB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kilB.85.f1) <- c("gfd","mir","ces")
row.names(kilB.85.f1) <- 1991:2099
kilB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Transient.killer.whales"]
kilB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Transient.killer.whales"]
kilB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Transient.killer.whales"]
# head(kilB.85.f1)
kilB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilB.85.f1.up[i] <- max(kilB.85.f1[i,])
kilB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilB.85.f1.lo[i] <- min(kilB.85.f1[i,])

# # SRES A1B
# kilB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kilB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(kilB.a1b.f1) <- 1991:2039
# kilB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Transient.killer.whales"]
# kilB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Transient.killer.whales"]
# kilB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Transient.killer.whales"]
# # head(kilB.a1b.f1)
# kilB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilB.a1b.f1.up[i] <- max(kilB.a1b.f1[i,])
# kilB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilB.a1b.f1.lo[i] <- min(kilB.a1b.f1[i,])

# Transient.killer.whales Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
kilC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kilC.45.f1.80) <- c("gfd","mir","ces")
row.names(kilC.45.f1.80) <- 1991:2080
kilC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Transient.killer.whales"]
kilC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Transient.killer.whales"]
kilC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Transient.killer.whales"]
# head(kilC.45.f1.80)
kilC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilC.45.f1.80.up[i] <- max(kilC.45.f1.80[i,])
kilC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilC.45.f1.80.lo[i] <- min(kilC.45.f1.80[i,])
# Everything from 2081-2099
kilC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kilC.45.f1.99) <- c("gfd","mir")
row.names(kilC.45.f1.99) <- 2081:2099
kilC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Transient.killer.whales"]
kilC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Transient.killer.whales"]
# head(kilC.45.f1.99)
kilC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilC.45.f1.99.up[i] <- max(kilC.45.f1.99[i,])
kilC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilC.45.f1.99.lo[i] <- min(kilC.45.f1.99[i,])
# now append these two time periods
kilC.45.f1.up <- c(kilC.45.f1.80.up,kilC.45.f1.99.up)
kilC.45.f1.lo <- c(kilC.45.f1.80.lo,kilC.45.f1.99.lo)

# RCP 8.5
kilC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kilC.85.f1) <- c("gfd","mir","ces")
row.names(kilC.85.f1) <- 1991:2099
kilC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Transient.killer.whales"]
kilC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Transient.killer.whales"]
kilC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Transient.killer.whales"]
# head(kilC.85.f1)
kilC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilC.85.f1.up[i] <- max(kilC.85.f1[i,])
kilC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilC.85.f1.lo[i] <- min(kilC.85.f1[i,])

# # SRES A1B
# kilC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kilC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(kilC.a1b.f1) <- 1991:2039
# kilC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Transient.killer.whales"]
# kilC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Transient.killer.whales"]
# kilC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Transient.killer.whales"]
# # head(kilC.a1b.f1)
# kilC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilC.a1b.f1.up[i] <- max(kilC.a1b.f1[i,])
# kilC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilC.a1b.f1.lo[i] <- min(kilC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Transient.killer.whales F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
kilB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kilB.45.f2.80) <- c("gfd","mir","ces")
row.names(kilB.45.f2.80) <- 1991:2080
kilB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Transient.killer.whales"]
kilB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Transient.killer.whales"]
kilB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Transient.killer.whales"]
# head(kilB.45.f2.80)
kilB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilB.45.f2.80.up[i] <- max(kilB.45.f2.80[i,])
kilB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilB.45.f2.80.lo[i] <- min(kilB.45.f2.80[i,])
# Everything from 2081-2099
kilB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kilB.45.f2.99) <- c("gfd","mir")
row.names(kilB.45.f2.99) <- 2081:2099
kilB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Transient.killer.whales"]
kilB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Transient.killer.whales"]
# head(kilB.45.f2.99)
kilB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilB.45.f2.99.up[i] <- max(kilB.45.f2.99[i,])
kilB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilB.45.f2.99.lo[i] <- min(kilB.45.f2.99[i,])
# now append these two time periods
kilB.45.f2.up <- c(kilB.45.f2.80.up,kilB.45.f2.99.up)
kilB.45.f2.lo <- c(kilB.45.f2.80.lo,kilB.45.f2.99.lo)

# RCP 8.5
kilB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kilB.85.f2) <- c("gfd","mir","ces")
row.names(kilB.85.f2) <- 1991:2099
kilB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Transient.killer.whales"]
kilB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Transient.killer.whales"]
kilB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Transient.killer.whales"]
# head(kilB.85.f2)
kilB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilB.85.f2.up[i] <- max(kilB.85.f2[i,])
kilB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilB.85.f2.lo[i] <- min(kilB.85.f2[i,])

# # SRES A1B
# kilB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kilB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(kilB.a1b.f2) <- 1991:2039
# kilB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Transient.killer.whales"]
# kilB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Transient.killer.whales"]
# kilB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Transient.killer.whales"]
# # head(kilB.a1b.f2)
# kilB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilB.a1b.f2.up[i] <- max(kilB.a1b.f2[i,])
# kilB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilB.a1b.f2.lo[i] <- min(kilB.a1b.f2[i,])

# Transient.killer.whales Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
kilC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kilC.45.f2.80) <- c("gfd","mir","ces")
row.names(kilC.45.f2.80) <- 1991:2080
kilC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Transient.killer.whales"]
kilC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Transient.killer.whales"]
kilC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Transient.killer.whales"]
# head(kilC.45.f2.80)
kilC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilC.45.f2.80.up[i] <- max(kilC.45.f2.80[i,])
kilC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilC.45.f2.80.lo[i] <- min(kilC.45.f2.80[i,])
# Everything from 2081-2099
kilC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kilC.45.f2.99) <- c("gfd","mir")
row.names(kilC.45.f2.99) <- 2081:2099
kilC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Transient.killer.whales"]
kilC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Transient.killer.whales"]
# head(kilC.45.f2.99)
kilC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilC.45.f2.99.up[i] <- max(kilC.45.f2.99[i,])
kilC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilC.45.f2.99.lo[i] <- min(kilC.45.f2.99[i,])
# now append these two time periods
kilC.45.f2.up <- c(kilC.45.f2.80.up,kilC.45.f2.99.up)
kilC.45.f2.lo <- c(kilC.45.f2.80.lo,kilC.45.f2.99.lo)

# RCP 8.5
kilC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kilC.85.f2) <- c("gfd","mir","ces")
row.names(kilC.85.f2) <- 1991:2099
kilC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Transient.killer.whales"]
kilC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Transient.killer.whales"]
kilC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Transient.killer.whales"]
# head(kilC.85.f2)
kilC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilC.85.f2.up[i] <- max(kilC.85.f2[i,])
kilC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilC.85.f2.lo[i] <- min(kilC.85.f2[i,])

# # SRES A1B
# kilC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kilC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(kilC.a1b.f2) <- 1991:2039
# kilC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Transient.killer.whales"]
# kilC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Transient.killer.whales"]
# kilC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Transient.killer.whales"]
# # head(kilC.a1b.f2)
# kilC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilC.a1b.f2.up[i] <- max(kilC.a1b.f2[i,])
# kilC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilC.a1b.f2.lo[i] <- min(kilC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Transient.killer.whales F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
kilB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kilB.45.f3.80) <- c("gfd","mir","ces")
row.names(kilB.45.f3.80) <- 1991:2080
kilB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Transient.killer.whales"]
kilB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Transient.killer.whales"]
kilB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Transient.killer.whales"]
# head(kilB.45.f3.80)
kilB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilB.45.f3.80.up[i] <- max(kilB.45.f3.80[i,])
kilB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilB.45.f3.80.lo[i] <- min(kilB.45.f3.80[i,])
# Everything from 2081-2099
kilB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kilB.45.f3.99) <- c("gfd","mir")
row.names(kilB.45.f3.99) <- 2081:2099
kilB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Transient.killer.whales"]
kilB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Transient.killer.whales"]
# head(kilB.45.f3.99)
kilB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilB.45.f3.99.up[i] <- max(kilB.45.f3.99[i,])
kilB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilB.45.f3.99.lo[i] <- min(kilB.45.f3.99[i,])
# now append these two time periods
kilB.45.f3.up <- c(kilB.45.f3.80.up,kilB.45.f3.99.up)
kilB.45.f3.lo <- c(kilB.45.f3.80.lo,kilB.45.f3.99.lo)

# RCP 8.5
kilB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kilB.85.f3) <- c("gfd","mir","ces")
row.names(kilB.85.f3) <- 1991:2099
kilB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Transient.killer.whales"]
kilB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Transient.killer.whales"]
kilB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Transient.killer.whales"]
# head(kilB.85.f3)
kilB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilB.85.f3.up[i] <- max(kilB.85.f3[i,])
kilB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilB.85.f3.lo[i] <- min(kilB.85.f3[i,])

# # SRES A1B
# kilB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kilB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(kilB.a1b.f3) <- 1991:2039
# kilB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Transient.killer.whales"]
# kilB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Transient.killer.whales"]
# kilB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Transient.killer.whales"]
# # head(kilB.a1b.f3)
# kilB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilB.a1b.f3.up[i] <- max(kilB.a1b.f3[i,])
# kilB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilB.a1b.f3.lo[i] <- min(kilB.a1b.f3[i,])

# Transient.killer.whales Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
kilC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kilC.45.f3.80) <- c("gfd","mir","ces")
row.names(kilC.45.f3.80) <- 1991:2080
kilC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Transient.killer.whales"]
kilC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Transient.killer.whales"]
kilC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Transient.killer.whales"]
# head(kilC.45.f3.80)
kilC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilC.45.f3.80.up[i] <- max(kilC.45.f3.80[i,])
kilC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilC.45.f3.80.lo[i] <- min(kilC.45.f3.80[i,])
# Everything from 2081-2099
kilC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kilC.45.f3.99) <- c("gfd","mir")
row.names(kilC.45.f3.99) <- 2081:2099
kilC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Transient.killer.whales"]
kilC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Transient.killer.whales"]
# head(kilC.45.f3.99)
kilC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilC.45.f3.99.up[i] <- max(kilC.45.f3.99[i,])
kilC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilC.45.f3.99.lo[i] <- min(kilC.45.f3.99[i,])
# now append these two time periods
kilC.45.f3.up <- c(kilC.45.f3.80.up,kilC.45.f3.99.up)
kilC.45.f3.lo <- c(kilC.45.f3.80.lo,kilC.45.f3.99.lo)

# RCP 8.5
kilC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kilC.85.f3) <- c("gfd","mir","ces")
row.names(kilC.85.f3) <- 1991:2099
kilC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Transient.killer.whales"]
kilC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Transient.killer.whales"]
kilC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Transient.killer.whales"]
# head(kilC.85.f3)
kilC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilC.85.f3.up[i] <- max(kilC.85.f3[i,])
kilC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilC.85.f3.lo[i] <- min(kilC.85.f3[i,])

# # SRES A1B
# kilC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kilC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(kilC.a1b.f3) <- 1991:2039
# kilC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Transient.killer.whales"]
# kilC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Transient.killer.whales"]
# kilC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Transient.killer.whales"]
# # head(kilC.a1b.f3)
# kilC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilC.a1b.f3.up[i] <- max(kilC.a1b.f3[i,])
# kilC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilC.a1b.f3.lo[i] <- min(kilC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Transient.killer.whales F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
kilB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kilB.45.f4.80) <- c("gfd","mir","ces")
row.names(kilB.45.f4.80) <- 1991:2080
kilB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Transient.killer.whales"]
kilB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Transient.killer.whales"]
kilB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Transient.killer.whales"]
# head(kilB.45.f4.80)
kilB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilB.45.f4.80.up[i] <- max(kilB.45.f4.80[i,])
kilB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilB.45.f4.80.lo[i] <- min(kilB.45.f4.80[i,])
# Everything from 2081-2099
kilB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kilB.45.f4.99) <- c("gfd","mir")
row.names(kilB.45.f4.99) <- 2081:2099
kilB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Transient.killer.whales"]
kilB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Transient.killer.whales"]
# head(kilB.45.f4.99)
kilB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilB.45.f4.99.up[i] <- max(kilB.45.f4.99[i,])
kilB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilB.45.f4.99.lo[i] <- min(kilB.45.f4.99[i,])
# now append these two time periods
kilB.45.f4.up <- c(kilB.45.f4.80.up,kilB.45.f4.99.up)
kilB.45.f4.lo <- c(kilB.45.f4.80.lo,kilB.45.f4.99.lo)

# RCP 8.5
kilB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kilB.85.f4) <- c("gfd","mir","ces")
row.names(kilB.85.f4) <- 1991:2099
kilB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Transient.killer.whales"]
kilB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Transient.killer.whales"]
kilB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Transient.killer.whales"]
# head(kilB.85.f4)
kilB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilB.85.f4.up[i] <- max(kilB.85.f4[i,])
kilB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilB.85.f4.lo[i] <- min(kilB.85.f4[i,])

# # SRES A1B
# kilB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kilB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(kilB.a1b.f4) <- 1991:2039
# kilB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Transient.killer.whales"]
# kilB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Transient.killer.whales"]
# kilB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Transient.killer.whales"]
# # head(kilB.a1b.f4)
# kilB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilB.a1b.f4.up[i] <- max(kilB.a1b.f4[i,])
# kilB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilB.a1b.f4.lo[i] <- min(kilB.a1b.f4[i,])

# Transient.killer.whales Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
kilC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kilC.45.f4.80) <- c("gfd","mir","ces")
row.names(kilC.45.f4.80) <- 1991:2080
kilC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Transient.killer.whales"]
kilC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Transient.killer.whales"]
kilC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Transient.killer.whales"]
# head(kilC.45.f4.80)
kilC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilC.45.f4.80.up[i] <- max(kilC.45.f4.80[i,])
kilC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kilC.45.f4.80.lo[i] <- min(kilC.45.f4.80[i,])
# Everything from 2081-2099
kilC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kilC.45.f4.99) <- c("gfd","mir")
row.names(kilC.45.f4.99) <- 2081:2099
kilC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Transient.killer.whales"]
kilC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Transient.killer.whales"]
# head(kilC.45.f4.99)
kilC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilC.45.f4.99.up[i] <- max(kilC.45.f4.99[i,])
kilC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kilC.45.f4.99.lo[i] <- min(kilC.45.f4.99[i,])
# now append these two time periods
kilC.45.f4.up <- c(kilC.45.f4.80.up,kilC.45.f4.99.up)
kilC.45.f4.lo <- c(kilC.45.f4.80.lo,kilC.45.f4.99.lo)

# RCP 8.5
kilC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kilC.85.f4) <- c("gfd","mir","ces")
row.names(kilC.85.f4) <- 1991:2099
kilC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Transient.killer.whales"]
kilC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Transient.killer.whales"]
kilC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Transient.killer.whales"]
# head(kilC.85.f4)
kilC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilC.85.f4.up[i] <- max(kilC.85.f4[i,])
kilC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kilC.85.f4.lo[i] <- min(kilC.85.f4[i,])

# # SRES A1B
# kilC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kilC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(kilC.a1b.f4) <- 1991:2039
# kilC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Transient.killer.whales"]
# kilC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Transient.killer.whales"]
# kilC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Transient.killer.whales"]
# # head(kilC.a1b.f4)
# kilC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilC.a1b.f4.up[i] <- max(kilC.a1b.f4[i,])
# kilC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kilC.a1b.f4.lo[i] <- min(kilC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Toothed.whales biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
tthB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(tthB.45.f1.80) <- c("gfd","mir","ces")
row.names(tthB.45.f1.80) <- 1991:2080
tthB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Toothed.whales"]
tthB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Toothed.whales"]
tthB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Toothed.whales"]
# head(tthB.45.f1.80)
tthB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthB.45.f1.80.up[i] <- max(tthB.45.f1.80[i,])
tthB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthB.45.f1.80.lo[i] <- min(tthB.45.f1.80[i,])
# Everything from 2081-2099
tthB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(tthB.45.f1.99) <- c("gfd","mir")
row.names(tthB.45.f1.99) <- 2081:2099
tthB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Toothed.whales"]
tthB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Toothed.whales"]
# head(tthB.45.f1.99)
tthB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthB.45.f1.99.up[i] <- max(tthB.45.f1.99[i,])
tthB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthB.45.f1.99.lo[i] <- min(tthB.45.f1.99[i,])
# now append these two time periods
tthB.45.f1.up <- c(tthB.45.f1.80.up,tthB.45.f1.99.up)
tthB.45.f1.lo <- c(tthB.45.f1.80.lo,tthB.45.f1.99.lo)

# RCP 8.5
tthB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(tthB.85.f1) <- c("gfd","mir","ces")
row.names(tthB.85.f1) <- 1991:2099
tthB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Toothed.whales"]
tthB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Toothed.whales"]
tthB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Toothed.whales"]
# head(tthB.85.f1)
tthB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthB.85.f1.up[i] <- max(tthB.85.f1[i,])
tthB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthB.85.f1.lo[i] <- min(tthB.85.f1[i,])

# SRES A1B
tthB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
colnames(tthB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
row.names(tthB.a1b.f1) <- 1991:2039
tthB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Toothed.whales"]
tthB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Toothed.whales"]
tthB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Toothed.whales"]
# head(tthB.a1b.f1)
tthB.a1b.f1.up <- matrix(nrow=49,ncol=1)
for (i in 1:49) tthB.a1b.f1.up[i] <- max(tthB.a1b.f1[i,])
tthB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
for (i in 1:49) tthB.a1b.f1.lo[i] <- min(tthB.a1b.f1[i,])

# Toothed.whales Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
tthC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(tthC.45.f1.80) <- c("gfd","mir","ces")
row.names(tthC.45.f1.80) <- 1991:2080
tthC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Toothed.whales"]
tthC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Toothed.whales"]
tthC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Toothed.whales"]
# head(tthC.45.f1.80)
tthC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthC.45.f1.80.up[i] <- max(tthC.45.f1.80[i,])
tthC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthC.45.f1.80.lo[i] <- min(tthC.45.f1.80[i,])
# Everything from 2081-2099
tthC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(tthC.45.f1.99) <- c("gfd","mir")
row.names(tthC.45.f1.99) <- 2081:2099
tthC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Toothed.whales"]
tthC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Toothed.whales"]
# head(tthC.45.f1.99)
tthC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthC.45.f1.99.up[i] <- max(tthC.45.f1.99[i,])
tthC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthC.45.f1.99.lo[i] <- min(tthC.45.f1.99[i,])
# now append these two time periods
tthC.45.f1.up <- c(tthC.45.f1.80.up,tthC.45.f1.99.up)
tthC.45.f1.lo <- c(tthC.45.f1.80.lo,tthC.45.f1.99.lo)

# RCP 8.5
tthC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(tthC.85.f1) <- c("gfd","mir","ces")
row.names(tthC.85.f1) <- 1991:2099
tthC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Toothed.whales"]
tthC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Toothed.whales"]
tthC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Toothed.whales"]
# head(tthC.85.f1)
tthC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthC.85.f1.up[i] <- max(tthC.85.f1[i,])
tthC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthC.85.f1.lo[i] <- min(tthC.85.f1[i,])

# # SRES A1B
# tthC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(tthC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(tthC.a1b.f1) <- 1991:2039
# tthC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Toothed.whales"]
# tthC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Toothed.whales"]
# tthC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Toothed.whales"]
# # head(tthC.a1b.f1)
# tthC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthC.a1b.f1.up[i] <- max(tthC.a1b.f1[i,])
# tthC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthC.a1b.f1.lo[i] <- min(tthC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Toothed.whales F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
tthB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(tthB.45.f2.80) <- c("gfd","mir","ces")
row.names(tthB.45.f2.80) <- 1991:2080
tthB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Toothed.whales"]
tthB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Toothed.whales"]
tthB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Toothed.whales"]
# head(tthB.45.f2.80)
tthB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthB.45.f2.80.up[i] <- max(tthB.45.f2.80[i,])
tthB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthB.45.f2.80.lo[i] <- min(tthB.45.f2.80[i,])
# Everything from 2081-2099
tthB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(tthB.45.f2.99) <- c("gfd","mir")
row.names(tthB.45.f2.99) <- 2081:2099
tthB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Toothed.whales"]
tthB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Toothed.whales"]
# head(tthB.45.f2.99)
tthB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthB.45.f2.99.up[i] <- max(tthB.45.f2.99[i,])
tthB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthB.45.f2.99.lo[i] <- min(tthB.45.f2.99[i,])
# now append these two time periods
tthB.45.f2.up <- c(tthB.45.f2.80.up,tthB.45.f2.99.up)
tthB.45.f2.lo <- c(tthB.45.f2.80.lo,tthB.45.f2.99.lo)

# RCP 8.5
tthB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(tthB.85.f2) <- c("gfd","mir","ces")
row.names(tthB.85.f2) <- 1991:2099
tthB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Toothed.whales"]
tthB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Toothed.whales"]
tthB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Toothed.whales"]
# head(tthB.85.f2)
tthB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthB.85.f2.up[i] <- max(tthB.85.f2[i,])
tthB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthB.85.f2.lo[i] <- min(tthB.85.f2[i,])

# # SRES A1B
# tthB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(tthB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(tthB.a1b.f2) <- 1991:2039
# tthB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Toothed.whales"]
# tthB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Toothed.whales"]
# tthB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Toothed.whales"]
# # head(tthB.a1b.f2)
# tthB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthB.a1b.f2.up[i] <- max(tthB.a1b.f2[i,])
# tthB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthB.a1b.f2.lo[i] <- min(tthB.a1b.f2[i,])

# Toothed.whales Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
tthC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(tthC.45.f2.80) <- c("gfd","mir","ces")
row.names(tthC.45.f2.80) <- 1991:2080
tthC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Toothed.whales"]
tthC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Toothed.whales"]
tthC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Toothed.whales"]
# head(tthC.45.f2.80)
tthC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthC.45.f2.80.up[i] <- max(tthC.45.f2.80[i,])
tthC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthC.45.f2.80.lo[i] <- min(tthC.45.f2.80[i,])
# Everything from 2081-2099
tthC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(tthC.45.f2.99) <- c("gfd","mir")
row.names(tthC.45.f2.99) <- 2081:2099
tthC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Toothed.whales"]
tthC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Toothed.whales"]
# head(tthC.45.f2.99)
tthC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthC.45.f2.99.up[i] <- max(tthC.45.f2.99[i,])
tthC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthC.45.f2.99.lo[i] <- min(tthC.45.f2.99[i,])
# now append these two time periods
tthC.45.f2.up <- c(tthC.45.f2.80.up,tthC.45.f2.99.up)
tthC.45.f2.lo <- c(tthC.45.f2.80.lo,tthC.45.f2.99.lo)

# RCP 8.5
tthC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(tthC.85.f2) <- c("gfd","mir","ces")
row.names(tthC.85.f2) <- 1991:2099
tthC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Toothed.whales"]
tthC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Toothed.whales"]
tthC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Toothed.whales"]
# head(tthC.85.f2)
tthC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthC.85.f2.up[i] <- max(tthC.85.f2[i,])
tthC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthC.85.f2.lo[i] <- min(tthC.85.f2[i,])

# # SRES A1B
# tthC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(tthC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(tthC.a1b.f2) <- 1991:2039
# tthC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Toothed.whales"]
# tthC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Toothed.whales"]
# tthC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Toothed.whales"]
# # head(tthC.a1b.f2)
# tthC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthC.a1b.f2.up[i] <- max(tthC.a1b.f2[i,])
# tthC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthC.a1b.f2.lo[i] <- min(tthC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Toothed.whales F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
tthB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(tthB.45.f3.80) <- c("gfd","mir","ces")
row.names(tthB.45.f3.80) <- 1991:2080
tthB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Toothed.whales"]
tthB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Toothed.whales"]
tthB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Toothed.whales"]
# head(tthB.45.f3.80)
tthB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthB.45.f3.80.up[i] <- max(tthB.45.f3.80[i,])
tthB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthB.45.f3.80.lo[i] <- min(tthB.45.f3.80[i,])
# Everything from 2081-2099
tthB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(tthB.45.f3.99) <- c("gfd","mir")
row.names(tthB.45.f3.99) <- 2081:2099
tthB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Toothed.whales"]
tthB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Toothed.whales"]
# head(tthB.45.f3.99)
tthB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthB.45.f3.99.up[i] <- max(tthB.45.f3.99[i,])
tthB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthB.45.f3.99.lo[i] <- min(tthB.45.f3.99[i,])
# now append these two time periods
tthB.45.f3.up <- c(tthB.45.f3.80.up,tthB.45.f3.99.up)
tthB.45.f3.lo <- c(tthB.45.f3.80.lo,tthB.45.f3.99.lo)

# RCP 8.5
tthB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(tthB.85.f3) <- c("gfd","mir","ces")
row.names(tthB.85.f3) <- 1991:2099
tthB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Toothed.whales"]
tthB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Toothed.whales"]
tthB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Toothed.whales"]
# head(tthB.85.f3)
tthB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthB.85.f3.up[i] <- max(tthB.85.f3[i,])
tthB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthB.85.f3.lo[i] <- min(tthB.85.f3[i,])

# # SRES A1B
# tthB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(tthB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(tthB.a1b.f3) <- 1991:2039
# tthB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Toothed.whales"]
# tthB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Toothed.whales"]
# tthB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Toothed.whales"]
# # head(tthB.a1b.f3)
# tthB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthB.a1b.f3.up[i] <- max(tthB.a1b.f3[i,])
# tthB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthB.a1b.f3.lo[i] <- min(tthB.a1b.f3[i,])

# Toothed.whales Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
tthC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(tthC.45.f3.80) <- c("gfd","mir","ces")
row.names(tthC.45.f3.80) <- 1991:2080
tthC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Toothed.whales"]
tthC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Toothed.whales"]
tthC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Toothed.whales"]
# head(tthC.45.f3.80)
tthC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthC.45.f3.80.up[i] <- max(tthC.45.f3.80[i,])
tthC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthC.45.f3.80.lo[i] <- min(tthC.45.f3.80[i,])
# Everything from 2081-2099
tthC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(tthC.45.f3.99) <- c("gfd","mir")
row.names(tthC.45.f3.99) <- 2081:2099
tthC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Toothed.whales"]
tthC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Toothed.whales"]
# head(tthC.45.f3.99)
tthC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthC.45.f3.99.up[i] <- max(tthC.45.f3.99[i,])
tthC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthC.45.f3.99.lo[i] <- min(tthC.45.f3.99[i,])
# now append these two time periods
tthC.45.f3.up <- c(tthC.45.f3.80.up,tthC.45.f3.99.up)
tthC.45.f3.lo <- c(tthC.45.f3.80.lo,tthC.45.f3.99.lo)

# RCP 8.5
tthC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(tthC.85.f3) <- c("gfd","mir","ces")
row.names(tthC.85.f3) <- 1991:2099
tthC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Toothed.whales"]
tthC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Toothed.whales"]
tthC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Toothed.whales"]
# head(tthC.85.f3)
tthC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthC.85.f3.up[i] <- max(tthC.85.f3[i,])
tthC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthC.85.f3.lo[i] <- min(tthC.85.f3[i,])

# # SRES A1B
# tthC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(tthC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(tthC.a1b.f3) <- 1991:2039
# tthC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Toothed.whales"]
# tthC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Toothed.whales"]
# tthC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Toothed.whales"]
# # head(tthC.a1b.f3)
# tthC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthC.a1b.f3.up[i] <- max(tthC.a1b.f3[i,])
# tthC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthC.a1b.f3.lo[i] <- min(tthC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Toothed.whales F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
tthB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(tthB.45.f4.80) <- c("gfd","mir","ces")
row.names(tthB.45.f4.80) <- 1991:2080
tthB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Toothed.whales"]
tthB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Toothed.whales"]
tthB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Toothed.whales"]
# head(tthB.45.f4.80)
tthB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthB.45.f4.80.up[i] <- max(tthB.45.f4.80[i,])
tthB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthB.45.f4.80.lo[i] <- min(tthB.45.f4.80[i,])
# Everything from 2081-2099
tthB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(tthB.45.f4.99) <- c("gfd","mir")
row.names(tthB.45.f4.99) <- 2081:2099
tthB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Toothed.whales"]
tthB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Toothed.whales"]
# head(tthB.45.f4.99)
tthB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthB.45.f4.99.up[i] <- max(tthB.45.f4.99[i,])
tthB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthB.45.f4.99.lo[i] <- min(tthB.45.f4.99[i,])
# now append these two time periods
tthB.45.f4.up <- c(tthB.45.f4.80.up,tthB.45.f4.99.up)
tthB.45.f4.lo <- c(tthB.45.f4.80.lo,tthB.45.f4.99.lo)

# RCP 8.5
tthB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(tthB.85.f4) <- c("gfd","mir","ces")
row.names(tthB.85.f4) <- 1991:2099
tthB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Toothed.whales"]
tthB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Toothed.whales"]
tthB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Toothed.whales"]
# head(tthB.85.f4)
tthB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthB.85.f4.up[i] <- max(tthB.85.f4[i,])
tthB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthB.85.f4.lo[i] <- min(tthB.85.f4[i,])

# # SRES A1B
# tthB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(tthB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(tthB.a1b.f4) <- 1991:2039
# tthB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Toothed.whales"]
# tthB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Toothed.whales"]
# tthB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Toothed.whales"]
# # head(tthB.a1b.f4)
# tthB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthB.a1b.f4.up[i] <- max(tthB.a1b.f4[i,])
# tthB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthB.a1b.f4.lo[i] <- min(tthB.a1b.f4[i,])

# Toothed.whales Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
tthC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(tthC.45.f4.80) <- c("gfd","mir","ces")
row.names(tthC.45.f4.80) <- 1991:2080
tthC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Toothed.whales"]
tthC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Toothed.whales"]
tthC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Toothed.whales"]
# head(tthC.45.f4.80)
tthC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthC.45.f4.80.up[i] <- max(tthC.45.f4.80[i,])
tthC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) tthC.45.f4.80.lo[i] <- min(tthC.45.f4.80[i,])
# Everything from 2081-2099
tthC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(tthC.45.f4.99) <- c("gfd","mir")
row.names(tthC.45.f4.99) <- 2081:2099
tthC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Toothed.whales"]
tthC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Toothed.whales"]
# head(tthC.45.f4.99)
tthC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthC.45.f4.99.up[i] <- max(tthC.45.f4.99[i,])
tthC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) tthC.45.f4.99.lo[i] <- min(tthC.45.f4.99[i,])
# now append these two time periods
tthC.45.f4.up <- c(tthC.45.f4.80.up,tthC.45.f4.99.up)
tthC.45.f4.lo <- c(tthC.45.f4.80.lo,tthC.45.f4.99.lo)

# RCP 8.5
tthC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(tthC.85.f4) <- c("gfd","mir","ces")
row.names(tthC.85.f4) <- 1991:2099
tthC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Toothed.whales"]
tthC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Toothed.whales"]
tthC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Toothed.whales"]
# head(tthC.85.f4)
tthC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthC.85.f4.up[i] <- max(tthC.85.f4[i,])
tthC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) tthC.85.f4.lo[i] <- min(tthC.85.f4[i,])

# # SRES A1B
# tthC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(tthC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(tthC.a1b.f4) <- 1991:2039
# tthC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Toothed.whales"]
# tthC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Toothed.whales"]
# tthC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Toothed.whales"]
# # head(tthC.a1b.f4)
# tthC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthC.a1b.f4.up[i] <- max(tthC.a1b.f4[i,])
# tthC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) tthC.a1b.f4.lo[i] <- min(tthC.a1b.f4[i,])

# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Gray.whales biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
gryB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gryB.45.f1.80) <- c("gfd","mir","ces")
row.names(gryB.45.f1.80) <- 1991:2080
gryB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Gray.whales"]
gryB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Gray.whales"]
gryB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Gray.whales"]
# head(gryB.45.f1.80)
gryB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryB.45.f1.80.up[i] <- max(gryB.45.f1.80[i,])
gryB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryB.45.f1.80.lo[i] <- min(gryB.45.f1.80[i,])
# Everything from 2081-2099
gryB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gryB.45.f1.99) <- c("gfd","mir")
row.names(gryB.45.f1.99) <- 2081:2099
gryB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Gray.whales"]
gryB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Gray.whales"]
# head(gryB.45.f1.99)
gryB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryB.45.f1.99.up[i] <- max(gryB.45.f1.99[i,])
gryB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryB.45.f1.99.lo[i] <- min(gryB.45.f1.99[i,])
# now append these two time periods
gryB.45.f1.up <- c(gryB.45.f1.80.up,gryB.45.f1.99.up)
gryB.45.f1.lo <- c(gryB.45.f1.80.lo,gryB.45.f1.99.lo)

# RCP 8.5
gryB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gryB.85.f1) <- c("gfd","mir","ces")
row.names(gryB.85.f1) <- 1991:2099
gryB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Gray.whales"]
gryB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Gray.whales"]
gryB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Gray.whales"]
# head(gryB.85.f1)
gryB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryB.85.f1.up[i] <- max(gryB.85.f1[i,])
gryB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryB.85.f1.lo[i] <- min(gryB.85.f1[i,])

# # SRES A1B
# gryB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gryB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(gryB.a1b.f1) <- 1991:2039
# gryB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Gray.whales"]
# gryB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Gray.whales"]
# gryB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Gray.whales"]
# # head(gryB.a1b.f1)
# gryB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryB.a1b.f1.up[i] <- max(gryB.a1b.f1[i,])
# gryB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryB.a1b.f1.lo[i] <- min(gryB.a1b.f1[i,])

# Gray.whales Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
gryC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gryC.45.f1.80) <- c("gfd","mir","ces")
row.names(gryC.45.f1.80) <- 1991:2080
gryC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Gray.whales"]
gryC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Gray.whales"]
gryC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Gray.whales"]
# head(gryC.45.f1.80)
gryC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryC.45.f1.80.up[i] <- max(gryC.45.f1.80[i,])
gryC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryC.45.f1.80.lo[i] <- min(gryC.45.f1.80[i,])
# Everything from 2081-2099
gryC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gryC.45.f1.99) <- c("gfd","mir")
row.names(gryC.45.f1.99) <- 2081:2099
gryC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Gray.whales"]
gryC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Gray.whales"]
# head(gryC.45.f1.99)
gryC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryC.45.f1.99.up[i] <- max(gryC.45.f1.99[i,])
gryC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryC.45.f1.99.lo[i] <- min(gryC.45.f1.99[i,])
# now append these two time periods
gryC.45.f1.up <- c(gryC.45.f1.80.up,gryC.45.f1.99.up)
gryC.45.f1.lo <- c(gryC.45.f1.80.lo,gryC.45.f1.99.lo)

# RCP 8.5
gryC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gryC.85.f1) <- c("gfd","mir","ces")
row.names(gryC.85.f1) <- 1991:2099
gryC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Gray.whales"]
gryC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Gray.whales"]
gryC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Gray.whales"]
# head(gryC.85.f1)
gryC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryC.85.f1.up[i] <- max(gryC.85.f1[i,])
gryC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryC.85.f1.lo[i] <- min(gryC.85.f1[i,])

# # SRES A1B
# gryC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gryC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(gryC.a1b.f1) <- 1991:2039
# gryC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Gray.whales"]
# gryC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Gray.whales"]
# gryC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Gray.whales"]
# # head(gryC.a1b.f1)
# gryC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryC.a1b.f1.up[i] <- max(gryC.a1b.f1[i,])
# gryC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryC.a1b.f1.lo[i] <- min(gryC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Gray.whales F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
gryB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gryB.45.f2.80) <- c("gfd","mir","ces")
row.names(gryB.45.f2.80) <- 1991:2080
gryB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Gray.whales"]
gryB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Gray.whales"]
gryB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Gray.whales"]
# head(gryB.45.f2.80)
gryB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryB.45.f2.80.up[i] <- max(gryB.45.f2.80[i,])
gryB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryB.45.f2.80.lo[i] <- min(gryB.45.f2.80[i,])
# Everything from 2081-2099
gryB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gryB.45.f2.99) <- c("gfd","mir")
row.names(gryB.45.f2.99) <- 2081:2099
gryB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Gray.whales"]
gryB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Gray.whales"]
# head(gryB.45.f2.99)
gryB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryB.45.f2.99.up[i] <- max(gryB.45.f2.99[i,])
gryB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryB.45.f2.99.lo[i] <- min(gryB.45.f2.99[i,])
# now append these two time periods
gryB.45.f2.up <- c(gryB.45.f2.80.up,gryB.45.f2.99.up)
gryB.45.f2.lo <- c(gryB.45.f2.80.lo,gryB.45.f2.99.lo)

# RCP 8.5
gryB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gryB.85.f2) <- c("gfd","mir","ces")
row.names(gryB.85.f2) <- 1991:2099
gryB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Gray.whales"]
gryB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Gray.whales"]
gryB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Gray.whales"]
# head(gryB.85.f2)
gryB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryB.85.f2.up[i] <- max(gryB.85.f2[i,])
gryB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryB.85.f2.lo[i] <- min(gryB.85.f2[i,])

# # SRES A1B
# gryB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gryB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(gryB.a1b.f2) <- 1991:2039
# gryB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Gray.whales"]
# gryB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Gray.whales"]
# gryB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Gray.whales"]
# # head(gryB.a1b.f2)
# gryB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryB.a1b.f2.up[i] <- max(gryB.a1b.f2[i,])
# gryB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryB.a1b.f2.lo[i] <- min(gryB.a1b.f2[i,])

# Gray.whales Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
gryC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gryC.45.f2.80) <- c("gfd","mir","ces")
row.names(gryC.45.f2.80) <- 1991:2080
gryC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Gray.whales"]
gryC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Gray.whales"]
gryC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Gray.whales"]
# head(gryC.45.f2.80)
gryC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryC.45.f2.80.up[i] <- max(gryC.45.f2.80[i,])
gryC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryC.45.f2.80.lo[i] <- min(gryC.45.f2.80[i,])
# Everything from 2081-2099
gryC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gryC.45.f2.99) <- c("gfd","mir")
row.names(gryC.45.f2.99) <- 2081:2099
gryC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Gray.whales"]
gryC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Gray.whales"]
# head(gryC.45.f2.99)
gryC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryC.45.f2.99.up[i] <- max(gryC.45.f2.99[i,])
gryC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryC.45.f2.99.lo[i] <- min(gryC.45.f2.99[i,])
# now append these two time periods
gryC.45.f2.up <- c(gryC.45.f2.80.up,gryC.45.f2.99.up)
gryC.45.f2.lo <- c(gryC.45.f2.80.lo,gryC.45.f2.99.lo)

# RCP 8.5
gryC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gryC.85.f2) <- c("gfd","mir","ces")
row.names(gryC.85.f2) <- 1991:2099
gryC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Gray.whales"]
gryC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Gray.whales"]
gryC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Gray.whales"]
# head(gryC.85.f2)
gryC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryC.85.f2.up[i] <- max(gryC.85.f2[i,])
gryC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryC.85.f2.lo[i] <- min(gryC.85.f2[i,])

# # SRES A1B
# gryC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gryC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(gryC.a1b.f2) <- 1991:2039
# gryC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Gray.whales"]
# gryC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Gray.whales"]
# gryC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Gray.whales"]
# # head(gryC.a1b.f2)
# gryC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryC.a1b.f2.up[i] <- max(gryC.a1b.f2[i,])
# gryC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryC.a1b.f2.lo[i] <- min(gryC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Gray.whales F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
gryB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gryB.45.f3.80) <- c("gfd","mir","ces")
row.names(gryB.45.f3.80) <- 1991:2080
gryB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Gray.whales"]
gryB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Gray.whales"]
gryB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Gray.whales"]
# head(gryB.45.f3.80)
gryB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryB.45.f3.80.up[i] <- max(gryB.45.f3.80[i,])
gryB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryB.45.f3.80.lo[i] <- min(gryB.45.f3.80[i,])
# Everything from 2081-2099
gryB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gryB.45.f3.99) <- c("gfd","mir")
row.names(gryB.45.f3.99) <- 2081:2099
gryB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Gray.whales"]
gryB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Gray.whales"]
# head(gryB.45.f3.99)
gryB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryB.45.f3.99.up[i] <- max(gryB.45.f3.99[i,])
gryB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryB.45.f3.99.lo[i] <- min(gryB.45.f3.99[i,])
# now append these two time periods
gryB.45.f3.up <- c(gryB.45.f3.80.up,gryB.45.f3.99.up)
gryB.45.f3.lo <- c(gryB.45.f3.80.lo,gryB.45.f3.99.lo)

# RCP 8.5
gryB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gryB.85.f3) <- c("gfd","mir","ces")
row.names(gryB.85.f3) <- 1991:2099
gryB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Gray.whales"]
gryB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Gray.whales"]
gryB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Gray.whales"]
# head(gryB.85.f3)
gryB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryB.85.f3.up[i] <- max(gryB.85.f3[i,])
gryB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryB.85.f3.lo[i] <- min(gryB.85.f3[i,])

# # SRES A1B
# gryB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gryB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(gryB.a1b.f3) <- 1991:2039
# gryB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Gray.whales"]
# gryB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Gray.whales"]
# gryB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Gray.whales"]
# # head(gryB.a1b.f3)
# gryB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryB.a1b.f3.up[i] <- max(gryB.a1b.f3[i,])
# gryB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryB.a1b.f3.lo[i] <- min(gryB.a1b.f3[i,])

# Gray.whales Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
gryC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gryC.45.f3.80) <- c("gfd","mir","ces")
row.names(gryC.45.f3.80) <- 1991:2080
gryC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Gray.whales"]
gryC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Gray.whales"]
gryC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Gray.whales"]
# head(gryC.45.f3.80)
gryC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryC.45.f3.80.up[i] <- max(gryC.45.f3.80[i,])
gryC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryC.45.f3.80.lo[i] <- min(gryC.45.f3.80[i,])
# Everything from 2081-2099
gryC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gryC.45.f3.99) <- c("gfd","mir")
row.names(gryC.45.f3.99) <- 2081:2099
gryC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Gray.whales"]
gryC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Gray.whales"]
# head(gryC.45.f3.99)
gryC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryC.45.f3.99.up[i] <- max(gryC.45.f3.99[i,])
gryC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryC.45.f3.99.lo[i] <- min(gryC.45.f3.99[i,])
# now append these two time periods
gryC.45.f3.up <- c(gryC.45.f3.80.up,gryC.45.f3.99.up)
gryC.45.f3.lo <- c(gryC.45.f3.80.lo,gryC.45.f3.99.lo)

# RCP 8.5
gryC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gryC.85.f3) <- c("gfd","mir","ces")
row.names(gryC.85.f3) <- 1991:2099
gryC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Gray.whales"]
gryC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Gray.whales"]
gryC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Gray.whales"]
# head(gryC.85.f3)
gryC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryC.85.f3.up[i] <- max(gryC.85.f3[i,])
gryC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryC.85.f3.lo[i] <- min(gryC.85.f3[i,])

# # SRES A1B
# gryC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gryC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(gryC.a1b.f3) <- 1991:2039
# gryC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Gray.whales"]
# gryC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Gray.whales"]
# gryC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Gray.whales"]
# # head(gryC.a1b.f3)
# gryC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryC.a1b.f3.up[i] <- max(gryC.a1b.f3[i,])
# gryC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryC.a1b.f3.lo[i] <- min(gryC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Gray.whales F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
gryB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gryB.45.f4.80) <- c("gfd","mir","ces")
row.names(gryB.45.f4.80) <- 1991:2080
gryB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Gray.whales"]
gryB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Gray.whales"]
gryB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Gray.whales"]
# head(gryB.45.f4.80)
gryB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryB.45.f4.80.up[i] <- max(gryB.45.f4.80[i,])
gryB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryB.45.f4.80.lo[i] <- min(gryB.45.f4.80[i,])
# Everything from 2081-2099
gryB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gryB.45.f4.99) <- c("gfd","mir")
row.names(gryB.45.f4.99) <- 2081:2099
gryB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Gray.whales"]
gryB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Gray.whales"]
# head(gryB.45.f4.99)
gryB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryB.45.f4.99.up[i] <- max(gryB.45.f4.99[i,])
gryB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryB.45.f4.99.lo[i] <- min(gryB.45.f4.99[i,])
# now append these two time periods
gryB.45.f4.up <- c(gryB.45.f4.80.up,gryB.45.f4.99.up)
gryB.45.f4.lo <- c(gryB.45.f4.80.lo,gryB.45.f4.99.lo)

# RCP 8.5
gryB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gryB.85.f4) <- c("gfd","mir","ces")
row.names(gryB.85.f4) <- 1991:2099
gryB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Gray.whales"]
gryB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Gray.whales"]
gryB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Gray.whales"]
# head(gryB.85.f4)
gryB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryB.85.f4.up[i] <- max(gryB.85.f4[i,])
gryB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryB.85.f4.lo[i] <- min(gryB.85.f4[i,])

# # SRES A1B
# gryB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gryB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(gryB.a1b.f4) <- 1991:2039
# gryB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Gray.whales"]
# gryB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Gray.whales"]
# gryB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Gray.whales"]
# # head(gryB.a1b.f4)
# gryB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryB.a1b.f4.up[i] <- max(gryB.a1b.f4[i,])
# gryB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryB.a1b.f4.lo[i] <- min(gryB.a1b.f4[i,])

# Gray.whales Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
gryC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(gryC.45.f4.80) <- c("gfd","mir","ces")
row.names(gryC.45.f4.80) <- 1991:2080
gryC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Gray.whales"]
gryC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Gray.whales"]
gryC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Gray.whales"]
# head(gryC.45.f4.80)
gryC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryC.45.f4.80.up[i] <- max(gryC.45.f4.80[i,])
gryC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) gryC.45.f4.80.lo[i] <- min(gryC.45.f4.80[i,])
# Everything from 2081-2099
gryC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(gryC.45.f4.99) <- c("gfd","mir")
row.names(gryC.45.f4.99) <- 2081:2099
gryC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Gray.whales"]
gryC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Gray.whales"]
# head(gryC.45.f4.99)
gryC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryC.45.f4.99.up[i] <- max(gryC.45.f4.99[i,])
gryC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) gryC.45.f4.99.lo[i] <- min(gryC.45.f4.99[i,])
# now append these two time periods
gryC.45.f4.up <- c(gryC.45.f4.80.up,gryC.45.f4.99.up)
gryC.45.f4.lo <- c(gryC.45.f4.80.lo,gryC.45.f4.99.lo)

# RCP 8.5
gryC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(gryC.85.f4) <- c("gfd","mir","ces")
row.names(gryC.85.f4) <- 1991:2099
gryC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Gray.whales"]
gryC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Gray.whales"]
gryC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Gray.whales"]
# head(gryC.85.f4)
gryC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryC.85.f4.up[i] <- max(gryC.85.f4[i,])
gryC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) gryC.85.f4.lo[i] <- min(gryC.85.f4[i,])

# # SRES A1B
# gryC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(gryC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(gryC.a1b.f4) <- 1991:2039
# gryC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Gray.whales"]
# gryC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Gray.whales"]
# gryC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Gray.whales"]
# # head(gryC.a1b.f4)
# gryC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryC.a1b.f4.up[i] <- max(gryC.a1b.f4[i,])
# gryC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) gryC.a1b.f4.lo[i] <- min(gryC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Baleen.whales biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
blnB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(blnB.45.f1.80) <- c("gfd","mir","ces")
row.names(blnB.45.f1.80) <- 1991:2080
blnB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Baleen.whales"]
blnB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Baleen.whales"]
blnB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Baleen.whales"]
# head(blnB.45.f1.80)
blnB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnB.45.f1.80.up[i] <- max(blnB.45.f1.80[i,])
blnB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnB.45.f1.80.lo[i] <- min(blnB.45.f1.80[i,])
# Everything from 2081-2099
blnB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(blnB.45.f1.99) <- c("gfd","mir")
row.names(blnB.45.f1.99) <- 2081:2099
blnB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Baleen.whales"]
blnB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Baleen.whales"]
# head(blnB.45.f1.99)
blnB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnB.45.f1.99.up[i] <- max(blnB.45.f1.99[i,])
blnB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnB.45.f1.99.lo[i] <- min(blnB.45.f1.99[i,])
# now append these two time periods
blnB.45.f1.up <- c(blnB.45.f1.80.up,blnB.45.f1.99.up)
blnB.45.f1.lo <- c(blnB.45.f1.80.lo,blnB.45.f1.99.lo)

# RCP 8.5
blnB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(blnB.85.f1) <- c("gfd","mir","ces")
row.names(blnB.85.f1) <- 1991:2099
blnB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Baleen.whales"]
blnB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Baleen.whales"]
blnB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Baleen.whales"]
# head(blnB.85.f1)
blnB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnB.85.f1.up[i] <- max(blnB.85.f1[i,])
blnB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnB.85.f1.lo[i] <- min(blnB.85.f1[i,])

# # SRES A1B
# blnB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(blnB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(blnB.a1b.f1) <- 1991:2039
# blnB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Baleen.whales"]
# blnB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Baleen.whales"]
# blnB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Baleen.whales"]
# # head(blnB.a1b.f1)
# blnB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnB.a1b.f1.up[i] <- max(blnB.a1b.f1[i,])
# blnB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnB.a1b.f1.lo[i] <- min(blnB.a1b.f1[i,])

# Baleen.whales Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
blnC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(blnC.45.f1.80) <- c("gfd","mir","ces")
row.names(blnC.45.f1.80) <- 1991:2080
blnC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Baleen.whales"]
blnC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Baleen.whales"]
blnC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Baleen.whales"]
# head(blnC.45.f1.80)
blnC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnC.45.f1.80.up[i] <- max(blnC.45.f1.80[i,])
blnC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnC.45.f1.80.lo[i] <- min(blnC.45.f1.80[i,])
# Everything from 2081-2099
blnC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(blnC.45.f1.99) <- c("gfd","mir")
row.names(blnC.45.f1.99) <- 2081:2099
blnC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Baleen.whales"]
blnC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Baleen.whales"]
# head(blnC.45.f1.99)
blnC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnC.45.f1.99.up[i] <- max(blnC.45.f1.99[i,])
blnC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnC.45.f1.99.lo[i] <- min(blnC.45.f1.99[i,])
# now append these two time periods
blnC.45.f1.up <- c(blnC.45.f1.80.up,blnC.45.f1.99.up)
blnC.45.f1.lo <- c(blnC.45.f1.80.lo,blnC.45.f1.99.lo)

# RCP 8.5
blnC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(blnC.85.f1) <- c("gfd","mir","ces")
row.names(blnC.85.f1) <- 1991:2099
blnC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Baleen.whales"]
blnC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Baleen.whales"]
blnC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Baleen.whales"]
# head(blnC.85.f1)
blnC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnC.85.f1.up[i] <- max(blnC.85.f1[i,])
blnC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnC.85.f1.lo[i] <- min(blnC.85.f1[i,])

# # SRES A1B
# blnC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(blnC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(blnC.a1b.f1) <- 1991:2039
# blnC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Baleen.whales"]
# blnC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Baleen.whales"]
# blnC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Baleen.whales"]
# # head(blnC.a1b.f1)
# blnC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnC.a1b.f1.up[i] <- max(blnC.a1b.f1[i,])
# blnC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnC.a1b.f1.lo[i] <- min(blnC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Baleen.whales F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
blnB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(blnB.45.f2.80) <- c("gfd","mir","ces")
row.names(blnB.45.f2.80) <- 1991:2080
blnB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Baleen.whales"]
blnB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Baleen.whales"]
blnB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Baleen.whales"]
# head(blnB.45.f2.80)
blnB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnB.45.f2.80.up[i] <- max(blnB.45.f2.80[i,])
blnB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnB.45.f2.80.lo[i] <- min(blnB.45.f2.80[i,])
# Everything from 2081-2099
blnB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(blnB.45.f2.99) <- c("gfd","mir")
row.names(blnB.45.f2.99) <- 2081:2099
blnB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Baleen.whales"]
blnB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Baleen.whales"]
# head(blnB.45.f2.99)
blnB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnB.45.f2.99.up[i] <- max(blnB.45.f2.99[i,])
blnB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnB.45.f2.99.lo[i] <- min(blnB.45.f2.99[i,])
# now append these two time periods
blnB.45.f2.up <- c(blnB.45.f2.80.up,blnB.45.f2.99.up)
blnB.45.f2.lo <- c(blnB.45.f2.80.lo,blnB.45.f2.99.lo)

# RCP 8.5
blnB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(blnB.85.f2) <- c("gfd","mir","ces")
row.names(blnB.85.f2) <- 1991:2099
blnB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Baleen.whales"]
blnB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Baleen.whales"]
blnB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Baleen.whales"]
# head(blnB.85.f2)
blnB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnB.85.f2.up[i] <- max(blnB.85.f2[i,])
blnB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnB.85.f2.lo[i] <- min(blnB.85.f2[i,])

# # SRES A1B
# blnB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(blnB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(blnB.a1b.f2) <- 1991:2039
# blnB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Baleen.whales"]
# blnB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Baleen.whales"]
# blnB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Baleen.whales"]
# # head(blnB.a1b.f2)
# blnB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnB.a1b.f2.up[i] <- max(blnB.a1b.f2[i,])
# blnB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnB.a1b.f2.lo[i] <- min(blnB.a1b.f2[i,])

# Baleen.whales Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
blnC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(blnC.45.f2.80) <- c("gfd","mir","ces")
row.names(blnC.45.f2.80) <- 1991:2080
blnC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Baleen.whales"]
blnC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Baleen.whales"]
blnC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Baleen.whales"]
# head(blnC.45.f2.80)
blnC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnC.45.f2.80.up[i] <- max(blnC.45.f2.80[i,])
blnC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnC.45.f2.80.lo[i] <- min(blnC.45.f2.80[i,])
# Everything from 2081-2099
blnC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(blnC.45.f2.99) <- c("gfd","mir")
row.names(blnC.45.f2.99) <- 2081:2099
blnC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Baleen.whales"]
blnC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Baleen.whales"]
# head(blnC.45.f2.99)
blnC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnC.45.f2.99.up[i] <- max(blnC.45.f2.99[i,])
blnC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnC.45.f2.99.lo[i] <- min(blnC.45.f2.99[i,])
# now append these two time periods
blnC.45.f2.up <- c(blnC.45.f2.80.up,blnC.45.f2.99.up)
blnC.45.f2.lo <- c(blnC.45.f2.80.lo,blnC.45.f2.99.lo)

# RCP 8.5
blnC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(blnC.85.f2) <- c("gfd","mir","ces")
row.names(blnC.85.f2) <- 1991:2099
blnC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Baleen.whales"]
blnC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Baleen.whales"]
blnC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Baleen.whales"]
# head(blnC.85.f2)
blnC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnC.85.f2.up[i] <- max(blnC.85.f2[i,])
blnC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnC.85.f2.lo[i] <- min(blnC.85.f2[i,])

# # SRES A1B
# blnC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(blnC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(blnC.a1b.f2) <- 1991:2039
# blnC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Baleen.whales"]
# blnC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Baleen.whales"]
# blnC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Baleen.whales"]
# # head(blnC.a1b.f2)
# blnC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnC.a1b.f2.up[i] <- max(blnC.a1b.f2[i,])
# blnC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnC.a1b.f2.lo[i] <- min(blnC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Baleen.whales F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
blnB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(blnB.45.f3.80) <- c("gfd","mir","ces")
row.names(blnB.45.f3.80) <- 1991:2080
blnB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Baleen.whales"]
blnB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Baleen.whales"]
blnB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Baleen.whales"]
# head(blnB.45.f3.80)
blnB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnB.45.f3.80.up[i] <- max(blnB.45.f3.80[i,])
blnB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnB.45.f3.80.lo[i] <- min(blnB.45.f3.80[i,])
# Everything from 2081-2099
blnB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(blnB.45.f3.99) <- c("gfd","mir")
row.names(blnB.45.f3.99) <- 2081:2099
blnB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Baleen.whales"]
blnB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Baleen.whales"]
# head(blnB.45.f3.99)
blnB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnB.45.f3.99.up[i] <- max(blnB.45.f3.99[i,])
blnB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnB.45.f3.99.lo[i] <- min(blnB.45.f3.99[i,])
# now append these two time periods
blnB.45.f3.up <- c(blnB.45.f3.80.up,blnB.45.f3.99.up)
blnB.45.f3.lo <- c(blnB.45.f3.80.lo,blnB.45.f3.99.lo)

# RCP 8.5
blnB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(blnB.85.f3) <- c("gfd","mir","ces")
row.names(blnB.85.f3) <- 1991:2099
blnB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Baleen.whales"]
blnB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Baleen.whales"]
blnB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Baleen.whales"]
# head(blnB.85.f3)
blnB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnB.85.f3.up[i] <- max(blnB.85.f3[i,])
blnB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnB.85.f3.lo[i] <- min(blnB.85.f3[i,])

# # SRES A1B
# blnB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(blnB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(blnB.a1b.f3) <- 1991:2039
# blnB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Baleen.whales"]
# blnB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Baleen.whales"]
# blnB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Baleen.whales"]
# # head(blnB.a1b.f3)
# blnB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnB.a1b.f3.up[i] <- max(blnB.a1b.f3[i,])
# blnB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnB.a1b.f3.lo[i] <- min(blnB.a1b.f3[i,])

# Baleen.whales Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
blnC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(blnC.45.f3.80) <- c("gfd","mir","ces")
row.names(blnC.45.f3.80) <- 1991:2080
blnC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Baleen.whales"]
blnC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Baleen.whales"]
blnC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Baleen.whales"]
# head(blnC.45.f3.80)
blnC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnC.45.f3.80.up[i] <- max(blnC.45.f3.80[i,])
blnC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnC.45.f3.80.lo[i] <- min(blnC.45.f3.80[i,])
# Everything from 2081-2099
blnC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(blnC.45.f3.99) <- c("gfd","mir")
row.names(blnC.45.f3.99) <- 2081:2099
blnC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Baleen.whales"]
blnC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Baleen.whales"]
# head(blnC.45.f3.99)
blnC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnC.45.f3.99.up[i] <- max(blnC.45.f3.99[i,])
blnC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnC.45.f3.99.lo[i] <- min(blnC.45.f3.99[i,])
# now append these two time periods
blnC.45.f3.up <- c(blnC.45.f3.80.up,blnC.45.f3.99.up)
blnC.45.f3.lo <- c(blnC.45.f3.80.lo,blnC.45.f3.99.lo)

# RCP 8.5
blnC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(blnC.85.f3) <- c("gfd","mir","ces")
row.names(blnC.85.f3) <- 1991:2099
blnC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Baleen.whales"]
blnC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Baleen.whales"]
blnC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Baleen.whales"]
# head(blnC.85.f3)
blnC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnC.85.f3.up[i] <- max(blnC.85.f3[i,])
blnC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnC.85.f3.lo[i] <- min(blnC.85.f3[i,])

# # SRES A1B
# blnC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(blnC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(blnC.a1b.f3) <- 1991:2039
# blnC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Baleen.whales"]
# blnC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Baleen.whales"]
# blnC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Baleen.whales"]
# # head(blnC.a1b.f3)
# blnC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnC.a1b.f3.up[i] <- max(blnC.a1b.f3[i,])
# blnC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnC.a1b.f3.lo[i] <- min(blnC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Baleen.whales F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
blnB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(blnB.45.f4.80) <- c("gfd","mir","ces")
row.names(blnB.45.f4.80) <- 1991:2080
blnB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Baleen.whales"]
blnB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Baleen.whales"]
blnB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Baleen.whales"]
# head(blnB.45.f4.80)
blnB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnB.45.f4.80.up[i] <- max(blnB.45.f4.80[i,])
blnB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnB.45.f4.80.lo[i] <- min(blnB.45.f4.80[i,])
# Everything from 2081-2099
blnB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(blnB.45.f4.99) <- c("gfd","mir")
row.names(blnB.45.f4.99) <- 2081:2099
blnB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Baleen.whales"]
blnB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Baleen.whales"]
# head(blnB.45.f4.99)
blnB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnB.45.f4.99.up[i] <- max(blnB.45.f4.99[i,])
blnB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnB.45.f4.99.lo[i] <- min(blnB.45.f4.99[i,])
# now append these two time periods
blnB.45.f4.up <- c(blnB.45.f4.80.up,blnB.45.f4.99.up)
blnB.45.f4.lo <- c(blnB.45.f4.80.lo,blnB.45.f4.99.lo)

# RCP 8.5
blnB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(blnB.85.f4) <- c("gfd","mir","ces")
row.names(blnB.85.f4) <- 1991:2099
blnB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Baleen.whales"]
blnB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Baleen.whales"]
blnB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Baleen.whales"]
# head(blnB.85.f4)
blnB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnB.85.f4.up[i] <- max(blnB.85.f4[i,])
blnB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnB.85.f4.lo[i] <- min(blnB.85.f4[i,])

# # SRES A1B
# blnB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(blnB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(blnB.a1b.f4) <- 1991:2039
# blnB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Baleen.whales"]
# blnB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Baleen.whales"]
# blnB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Baleen.whales"]
# # head(blnB.a1b.f4)
# blnB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnB.a1b.f4.up[i] <- max(blnB.a1b.f4[i,])
# blnB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnB.a1b.f4.lo[i] <- min(blnB.a1b.f4[i,])

# Baleen.whales Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
blnC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(blnC.45.f4.80) <- c("gfd","mir","ces")
row.names(blnC.45.f4.80) <- 1991:2080
blnC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Baleen.whales"]
blnC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Baleen.whales"]
blnC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Baleen.whales"]
# head(blnC.45.f4.80)
blnC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnC.45.f4.80.up[i] <- max(blnC.45.f4.80[i,])
blnC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) blnC.45.f4.80.lo[i] <- min(blnC.45.f4.80[i,])
# Everything from 2081-2099
blnC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(blnC.45.f4.99) <- c("gfd","mir")
row.names(blnC.45.f4.99) <- 2081:2099
blnC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Baleen.whales"]
blnC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Baleen.whales"]
# head(blnC.45.f4.99)
blnC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnC.45.f4.99.up[i] <- max(blnC.45.f4.99[i,])
blnC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) blnC.45.f4.99.lo[i] <- min(blnC.45.f4.99[i,])
# now append these two time periods
blnC.45.f4.up <- c(blnC.45.f4.80.up,blnC.45.f4.99.up)
blnC.45.f4.lo <- c(blnC.45.f4.80.lo,blnC.45.f4.99.lo)

# RCP 8.5
blnC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(blnC.85.f4) <- c("gfd","mir","ces")
row.names(blnC.85.f4) <- 1991:2099
blnC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Baleen.whales"]
blnC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Baleen.whales"]
blnC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Baleen.whales"]
# head(blnC.85.f4)
blnC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnC.85.f4.up[i] <- max(blnC.85.f4[i,])
blnC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) blnC.85.f4.lo[i] <- min(blnC.85.f4[i,])

# # SRES A1B
# blnC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(blnC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(blnC.a1b.f4) <- 1991:2039
# blnC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Baleen.whales"]
# blnC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Baleen.whales"]
# blnC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Baleen.whales"]
# # head(blnC.a1b.f4)
# blnC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnC.a1b.f4.up[i] <- max(blnC.a1b.f4[i,])
# blnC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) blnC.a1b.f4.lo[i] <- min(blnC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Pinnipeds biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
pinB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pinB.45.f1.80) <- c("gfd","mir","ces")
row.names(pinB.45.f1.80) <- 1991:2080
pinB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Pinnipeds"]
pinB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Pinnipeds"]
pinB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Pinnipeds"]
# head(pinB.45.f1.80)
pinB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinB.45.f1.80.up[i] <- max(pinB.45.f1.80[i,])
pinB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinB.45.f1.80.lo[i] <- min(pinB.45.f1.80[i,])
# Everything from 2081-2099
pinB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pinB.45.f1.99) <- c("gfd","mir")
row.names(pinB.45.f1.99) <- 2081:2099
pinB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Pinnipeds"]
pinB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Pinnipeds"]
# head(pinB.45.f1.99)
pinB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinB.45.f1.99.up[i] <- max(pinB.45.f1.99[i,])
pinB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinB.45.f1.99.lo[i] <- min(pinB.45.f1.99[i,])
# now append these two time periods
pinB.45.f1.up <- c(pinB.45.f1.80.up,pinB.45.f1.99.up)
pinB.45.f1.lo <- c(pinB.45.f1.80.lo,pinB.45.f1.99.lo)

# RCP 8.5
pinB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pinB.85.f1) <- c("gfd","mir","ces")
row.names(pinB.85.f1) <- 1991:2099
pinB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Pinnipeds"]
pinB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Pinnipeds"]
pinB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Pinnipeds"]
# head(pinB.85.f1)
pinB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinB.85.f1.up[i] <- max(pinB.85.f1[i,])
pinB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinB.85.f1.lo[i] <- min(pinB.85.f1[i,])

# # SRES A1B
# pinB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pinB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(pinB.a1b.f1) <- 1991:2039
# pinB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Pinnipeds"]
# pinB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Pinnipeds"]
# pinB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Pinnipeds"]
# # head(pinB.a1b.f1)
# pinB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinB.a1b.f1.up[i] <- max(pinB.a1b.f1[i,])
# pinB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinB.a1b.f1.lo[i] <- min(pinB.a1b.f1[i,])

# Pinnipeds Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
pinC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pinC.45.f1.80) <- c("gfd","mir","ces")
row.names(pinC.45.f1.80) <- 1991:2080
pinC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Pinnipeds"]
pinC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Pinnipeds"]
pinC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Pinnipeds"]
# head(pinC.45.f1.80)
pinC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinC.45.f1.80.up[i] <- max(pinC.45.f1.80[i,])
pinC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinC.45.f1.80.lo[i] <- min(pinC.45.f1.80[i,])
# Everything from 2081-2099
pinC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pinC.45.f1.99) <- c("gfd","mir")
row.names(pinC.45.f1.99) <- 2081:2099
pinC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Pinnipeds"]
pinC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Pinnipeds"]
# head(pinC.45.f1.99)
pinC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinC.45.f1.99.up[i] <- max(pinC.45.f1.99[i,])
pinC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinC.45.f1.99.lo[i] <- min(pinC.45.f1.99[i,])
# now append these two time periods
pinC.45.f1.up <- c(pinC.45.f1.80.up,pinC.45.f1.99.up)
pinC.45.f1.lo <- c(pinC.45.f1.80.lo,pinC.45.f1.99.lo)

# RCP 8.5
pinC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pinC.85.f1) <- c("gfd","mir","ces")
row.names(pinC.85.f1) <- 1991:2099
pinC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Pinnipeds"]
pinC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Pinnipeds"]
pinC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Pinnipeds"]
# head(pinC.85.f1)
pinC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinC.85.f1.up[i] <- max(pinC.85.f1[i,])
pinC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinC.85.f1.lo[i] <- min(pinC.85.f1[i,])

# # SRES A1B
# pinC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pinC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(pinC.a1b.f1) <- 1991:2039
# pinC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Pinnipeds"]
# pinC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Pinnipeds"]
# pinC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Pinnipeds"]
# # head(pinC.a1b.f1)
# pinC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinC.a1b.f1.up[i] <- max(pinC.a1b.f1[i,])
# pinC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinC.a1b.f1.lo[i] <- min(pinC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Pinnipeds F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
pinB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pinB.45.f2.80) <- c("gfd","mir","ces")
row.names(pinB.45.f2.80) <- 1991:2080
pinB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Pinnipeds"]
pinB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Pinnipeds"]
pinB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Pinnipeds"]
# head(pinB.45.f2.80)
pinB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinB.45.f2.80.up[i] <- max(pinB.45.f2.80[i,])
pinB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinB.45.f2.80.lo[i] <- min(pinB.45.f2.80[i,])
# Everything from 2081-2099
pinB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pinB.45.f2.99) <- c("gfd","mir")
row.names(pinB.45.f2.99) <- 2081:2099
pinB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Pinnipeds"]
pinB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Pinnipeds"]
# head(pinB.45.f2.99)
pinB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinB.45.f2.99.up[i] <- max(pinB.45.f2.99[i,])
pinB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinB.45.f2.99.lo[i] <- min(pinB.45.f2.99[i,])
# now append these two time periods
pinB.45.f2.up <- c(pinB.45.f2.80.up,pinB.45.f2.99.up)
pinB.45.f2.lo <- c(pinB.45.f2.80.lo,pinB.45.f2.99.lo)

# RCP 8.5
pinB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pinB.85.f2) <- c("gfd","mir","ces")
row.names(pinB.85.f2) <- 1991:2099
pinB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Pinnipeds"]
pinB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Pinnipeds"]
pinB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Pinnipeds"]
# head(pinB.85.f2)
pinB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinB.85.f2.up[i] <- max(pinB.85.f2[i,])
pinB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinB.85.f2.lo[i] <- min(pinB.85.f2[i,])

# # SRES A1B
# pinB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pinB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(pinB.a1b.f2) <- 1991:2039
# pinB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Pinnipeds"]
# pinB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Pinnipeds"]
# pinB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Pinnipeds"]
# # head(pinB.a1b.f2)
# pinB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinB.a1b.f2.up[i] <- max(pinB.a1b.f2[i,])
# pinB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinB.a1b.f2.lo[i] <- min(pinB.a1b.f2[i,])

# Pinnipeds Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
pinC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pinC.45.f2.80) <- c("gfd","mir","ces")
row.names(pinC.45.f2.80) <- 1991:2080
pinC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Pinnipeds"]
pinC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Pinnipeds"]
pinC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Pinnipeds"]
# head(pinC.45.f2.80)
pinC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinC.45.f2.80.up[i] <- max(pinC.45.f2.80[i,])
pinC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinC.45.f2.80.lo[i] <- min(pinC.45.f2.80[i,])
# Everything from 2081-2099
pinC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pinC.45.f2.99) <- c("gfd","mir")
row.names(pinC.45.f2.99) <- 2081:2099
pinC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Pinnipeds"]
pinC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Pinnipeds"]
# head(pinC.45.f2.99)
pinC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinC.45.f2.99.up[i] <- max(pinC.45.f2.99[i,])
pinC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinC.45.f2.99.lo[i] <- min(pinC.45.f2.99[i,])
# now append these two time periods
pinC.45.f2.up <- c(pinC.45.f2.80.up,pinC.45.f2.99.up)
pinC.45.f2.lo <- c(pinC.45.f2.80.lo,pinC.45.f2.99.lo)

# RCP 8.5
pinC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pinC.85.f2) <- c("gfd","mir","ces")
row.names(pinC.85.f2) <- 1991:2099
pinC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Pinnipeds"]
pinC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Pinnipeds"]
pinC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Pinnipeds"]
# head(pinC.85.f2)
pinC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinC.85.f2.up[i] <- max(pinC.85.f2[i,])
pinC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinC.85.f2.lo[i] <- min(pinC.85.f2[i,])

# # SRES A1B
# pinC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pinC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(pinC.a1b.f2) <- 1991:2039
# pinC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Pinnipeds"]
# pinC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Pinnipeds"]
# pinC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Pinnipeds"]
# # head(pinC.a1b.f2)
# pinC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinC.a1b.f2.up[i] <- max(pinC.a1b.f2[i,])
# pinC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinC.a1b.f2.lo[i] <- min(pinC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Pinnipeds F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
pinB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pinB.45.f3.80) <- c("gfd","mir","ces")
row.names(pinB.45.f3.80) <- 1991:2080
pinB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Pinnipeds"]
pinB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Pinnipeds"]
pinB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Pinnipeds"]
# head(pinB.45.f3.80)
pinB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinB.45.f3.80.up[i] <- max(pinB.45.f3.80[i,])
pinB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinB.45.f3.80.lo[i] <- min(pinB.45.f3.80[i,])
# Everything from 2081-2099
pinB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pinB.45.f3.99) <- c("gfd","mir")
row.names(pinB.45.f3.99) <- 2081:2099
pinB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Pinnipeds"]
pinB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Pinnipeds"]
# head(pinB.45.f3.99)
pinB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinB.45.f3.99.up[i] <- max(pinB.45.f3.99[i,])
pinB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinB.45.f3.99.lo[i] <- min(pinB.45.f3.99[i,])
# now append these two time periods
pinB.45.f3.up <- c(pinB.45.f3.80.up,pinB.45.f3.99.up)
pinB.45.f3.lo <- c(pinB.45.f3.80.lo,pinB.45.f3.99.lo)

# RCP 8.5
pinB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pinB.85.f3) <- c("gfd","mir","ces")
row.names(pinB.85.f3) <- 1991:2099
pinB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Pinnipeds"]
pinB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Pinnipeds"]
pinB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Pinnipeds"]
# head(pinB.85.f3)
pinB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinB.85.f3.up[i] <- max(pinB.85.f3[i,])
pinB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinB.85.f3.lo[i] <- min(pinB.85.f3[i,])

# # SRES A1B
# pinB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pinB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(pinB.a1b.f3) <- 1991:2039
# pinB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Pinnipeds"]
# pinB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Pinnipeds"]
# pinB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Pinnipeds"]
# # head(pinB.a1b.f3)
# pinB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinB.a1b.f3.up[i] <- max(pinB.a1b.f3[i,])
# pinB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinB.a1b.f3.lo[i] <- min(pinB.a1b.f3[i,])

# Pinnipeds Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
pinC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pinC.45.f3.80) <- c("gfd","mir","ces")
row.names(pinC.45.f3.80) <- 1991:2080
pinC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Pinnipeds"]
pinC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Pinnipeds"]
pinC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Pinnipeds"]
# head(pinC.45.f3.80)
pinC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinC.45.f3.80.up[i] <- max(pinC.45.f3.80[i,])
pinC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinC.45.f3.80.lo[i] <- min(pinC.45.f3.80[i,])
# Everything from 2081-2099
pinC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pinC.45.f3.99) <- c("gfd","mir")
row.names(pinC.45.f3.99) <- 2081:2099
pinC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Pinnipeds"]
pinC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Pinnipeds"]
# head(pinC.45.f3.99)
pinC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinC.45.f3.99.up[i] <- max(pinC.45.f3.99[i,])
pinC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinC.45.f3.99.lo[i] <- min(pinC.45.f3.99[i,])
# now append these two time periods
pinC.45.f3.up <- c(pinC.45.f3.80.up,pinC.45.f3.99.up)
pinC.45.f3.lo <- c(pinC.45.f3.80.lo,pinC.45.f3.99.lo)

# RCP 8.5
pinC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pinC.85.f3) <- c("gfd","mir","ces")
row.names(pinC.85.f3) <- 1991:2099
pinC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Pinnipeds"]
pinC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Pinnipeds"]
pinC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Pinnipeds"]
# head(pinC.85.f3)
pinC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinC.85.f3.up[i] <- max(pinC.85.f3[i,])
pinC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinC.85.f3.lo[i] <- min(pinC.85.f3[i,])

# # SRES A1B
# pinC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pinC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(pinC.a1b.f3) <- 1991:2039
# pinC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Pinnipeds"]
# pinC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Pinnipeds"]
# pinC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Pinnipeds"]
# # head(pinC.a1b.f3)
# pinC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinC.a1b.f3.up[i] <- max(pinC.a1b.f3[i,])
# pinC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinC.a1b.f3.lo[i] <- min(pinC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Pinnipeds F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
pinB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pinB.45.f4.80) <- c("gfd","mir","ces")
row.names(pinB.45.f4.80) <- 1991:2080
pinB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Pinnipeds"]
pinB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Pinnipeds"]
pinB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Pinnipeds"]
# head(pinB.45.f4.80)
pinB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinB.45.f4.80.up[i] <- max(pinB.45.f4.80[i,])
pinB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinB.45.f4.80.lo[i] <- min(pinB.45.f4.80[i,])
# Everything from 2081-2099
pinB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pinB.45.f4.99) <- c("gfd","mir")
row.names(pinB.45.f4.99) <- 2081:2099
pinB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Pinnipeds"]
pinB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Pinnipeds"]
# head(pinB.45.f4.99)
pinB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinB.45.f4.99.up[i] <- max(pinB.45.f4.99[i,])
pinB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinB.45.f4.99.lo[i] <- min(pinB.45.f4.99[i,])
# now append these two time periods
pinB.45.f4.up <- c(pinB.45.f4.80.up,pinB.45.f4.99.up)
pinB.45.f4.lo <- c(pinB.45.f4.80.lo,pinB.45.f4.99.lo)

# RCP 8.5
pinB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pinB.85.f4) <- c("gfd","mir","ces")
row.names(pinB.85.f4) <- 1991:2099
pinB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Pinnipeds"]
pinB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Pinnipeds"]
pinB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Pinnipeds"]
# head(pinB.85.f4)
pinB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinB.85.f4.up[i] <- max(pinB.85.f4[i,])
pinB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinB.85.f4.lo[i] <- min(pinB.85.f4[i,])

# # SRES A1B
# pinB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pinB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(pinB.a1b.f4) <- 1991:2039
# pinB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Pinnipeds"]
# pinB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Pinnipeds"]
# pinB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Pinnipeds"]
# # head(pinB.a1b.f4)
# pinB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinB.a1b.f4.up[i] <- max(pinB.a1b.f4[i,])
# pinB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinB.a1b.f4.lo[i] <- min(pinB.a1b.f4[i,])

# Pinnipeds Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
pinC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pinC.45.f4.80) <- c("gfd","mir","ces")
row.names(pinC.45.f4.80) <- 1991:2080
pinC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Pinnipeds"]
pinC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Pinnipeds"]
pinC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Pinnipeds"]
# head(pinC.45.f4.80)
pinC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinC.45.f4.80.up[i] <- max(pinC.45.f4.80[i,])
pinC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pinC.45.f4.80.lo[i] <- min(pinC.45.f4.80[i,])
# Everything from 2081-2099
pinC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pinC.45.f4.99) <- c("gfd","mir")
row.names(pinC.45.f4.99) <- 2081:2099
pinC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Pinnipeds"]
pinC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Pinnipeds"]
# head(pinC.45.f4.99)
pinC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinC.45.f4.99.up[i] <- max(pinC.45.f4.99[i,])
pinC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pinC.45.f4.99.lo[i] <- min(pinC.45.f4.99[i,])
# now append these two time periods
pinC.45.f4.up <- c(pinC.45.f4.80.up,pinC.45.f4.99.up)
pinC.45.f4.lo <- c(pinC.45.f4.80.lo,pinC.45.f4.99.lo)

# RCP 8.5
pinC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pinC.85.f4) <- c("gfd","mir","ces")
row.names(pinC.85.f4) <- 1991:2099
pinC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Pinnipeds"]
pinC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Pinnipeds"]
pinC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Pinnipeds"]
# head(pinC.85.f4)
pinC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinC.85.f4.up[i] <- max(pinC.85.f4[i,])
pinC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pinC.85.f4.lo[i] <- min(pinC.85.f4[i,])

# # SRES A1B
# pinC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pinC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(pinC.a1b.f4) <- 1991:2039
# pinC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Pinnipeds"]
# pinC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Pinnipeds"]
# pinC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Pinnipeds"]
# # head(pinC.a1b.f4)
# pinC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinC.a1b.f4.up[i] <- max(pinC.a1b.f4[i,])
# pinC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pinC.a1b.f4.lo[i] <- min(pinC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Walrus.bd.seals biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
wbsB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(wbsB.45.f1.80) <- c("gfd","mir","ces")
row.names(wbsB.45.f1.80) <- 1991:2080
wbsB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Walrus.bd.seals"]
wbsB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Walrus.bd.seals"]
wbsB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Walrus.bd.seals"]
# head(wbsB.45.f1.80)
wbsB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsB.45.f1.80.up[i] <- max(wbsB.45.f1.80[i,])
wbsB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsB.45.f1.80.lo[i] <- min(wbsB.45.f1.80[i,])
# Everything from 2081-2099
wbsB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(wbsB.45.f1.99) <- c("gfd","mir")
row.names(wbsB.45.f1.99) <- 2081:2099
wbsB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Walrus.bd.seals"]
wbsB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Walrus.bd.seals"]
# head(wbsB.45.f1.99)
wbsB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsB.45.f1.99.up[i] <- max(wbsB.45.f1.99[i,])
wbsB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsB.45.f1.99.lo[i] <- min(wbsB.45.f1.99[i,])
# now append these two time periods
wbsB.45.f1.up <- c(wbsB.45.f1.80.up,wbsB.45.f1.99.up)
wbsB.45.f1.lo <- c(wbsB.45.f1.80.lo,wbsB.45.f1.99.lo)

# RCP 8.5
wbsB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(wbsB.85.f1) <- c("gfd","mir","ces")
row.names(wbsB.85.f1) <- 1991:2099
wbsB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Walrus.bd.seals"]
wbsB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Walrus.bd.seals"]
wbsB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Walrus.bd.seals"]
# head(wbsB.85.f1)
wbsB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsB.85.f1.up[i] <- max(wbsB.85.f1[i,])
wbsB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsB.85.f1.lo[i] <- min(wbsB.85.f1[i,])

# # SRES A1B
# wbsB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(wbsB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(wbsB.a1b.f1) <- 1991:2039
# wbsB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Walrus.bd.seals"]
# wbsB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Walrus.bd.seals"]
# wbsB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Walrus.bd.seals"]
# # head(wbsB.a1b.f1)
# wbsB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsB.a1b.f1.up[i] <- max(wbsB.a1b.f1[i,])
# wbsB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsB.a1b.f1.lo[i] <- min(wbsB.a1b.f1[i,])

# Walrus.bd.seals Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
wbsC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(wbsC.45.f1.80) <- c("gfd","mir","ces")
row.names(wbsC.45.f1.80) <- 1991:2080
wbsC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Walrus.bd.seals"]
wbsC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Walrus.bd.seals"]
wbsC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Walrus.bd.seals"]
# head(wbsC.45.f1.80)
wbsC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsC.45.f1.80.up[i] <- max(wbsC.45.f1.80[i,])
wbsC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsC.45.f1.80.lo[i] <- min(wbsC.45.f1.80[i,])
# Everything from 2081-2099
wbsC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(wbsC.45.f1.99) <- c("gfd","mir")
row.names(wbsC.45.f1.99) <- 2081:2099
wbsC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Walrus.bd.seals"]
wbsC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Walrus.bd.seals"]
# head(wbsC.45.f1.99)
wbsC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsC.45.f1.99.up[i] <- max(wbsC.45.f1.99[i,])
wbsC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsC.45.f1.99.lo[i] <- min(wbsC.45.f1.99[i,])
# now append these two time periods
wbsC.45.f1.up <- c(wbsC.45.f1.80.up,wbsC.45.f1.99.up)
wbsC.45.f1.lo <- c(wbsC.45.f1.80.lo,wbsC.45.f1.99.lo)

# RCP 8.5
wbsC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(wbsC.85.f1) <- c("gfd","mir","ces")
row.names(wbsC.85.f1) <- 1991:2099
wbsC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Walrus.bd.seals"]
wbsC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Walrus.bd.seals"]
wbsC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Walrus.bd.seals"]
# head(wbsC.85.f1)
wbsC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsC.85.f1.up[i] <- max(wbsC.85.f1[i,])
wbsC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsC.85.f1.lo[i] <- min(wbsC.85.f1[i,])

# # SRES A1B
# wbsC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(wbsC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(wbsC.a1b.f1) <- 1991:2039
# wbsC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Walrus.bd.seals"]
# wbsC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Walrus.bd.seals"]
# wbsC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Walrus.bd.seals"]
# # head(wbsC.a1b.f1)
# wbsC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsC.a1b.f1.up[i] <- max(wbsC.a1b.f1[i,])
# wbsC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsC.a1b.f1.lo[i] <- min(wbsC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Walrus.bd.seals F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
wbsB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(wbsB.45.f2.80) <- c("gfd","mir","ces")
row.names(wbsB.45.f2.80) <- 1991:2080
wbsB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Walrus.bd.seals"]
wbsB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Walrus.bd.seals"]
wbsB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Walrus.bd.seals"]
# head(wbsB.45.f2.80)
wbsB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsB.45.f2.80.up[i] <- max(wbsB.45.f2.80[i,])
wbsB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsB.45.f2.80.lo[i] <- min(wbsB.45.f2.80[i,])
# Everything from 2081-2099
wbsB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(wbsB.45.f2.99) <- c("gfd","mir")
row.names(wbsB.45.f2.99) <- 2081:2099
wbsB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Walrus.bd.seals"]
wbsB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Walrus.bd.seals"]
# head(wbsB.45.f2.99)
wbsB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsB.45.f2.99.up[i] <- max(wbsB.45.f2.99[i,])
wbsB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsB.45.f2.99.lo[i] <- min(wbsB.45.f2.99[i,])
# now append these two time periods
wbsB.45.f2.up <- c(wbsB.45.f2.80.up,wbsB.45.f2.99.up)
wbsB.45.f2.lo <- c(wbsB.45.f2.80.lo,wbsB.45.f2.99.lo)

# RCP 8.5
wbsB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(wbsB.85.f2) <- c("gfd","mir","ces")
row.names(wbsB.85.f2) <- 1991:2099
wbsB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Walrus.bd.seals"]
wbsB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Walrus.bd.seals"]
wbsB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Walrus.bd.seals"]
# head(wbsB.85.f2)
wbsB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsB.85.f2.up[i] <- max(wbsB.85.f2[i,])
wbsB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsB.85.f2.lo[i] <- min(wbsB.85.f2[i,])

# # SRES A1B
# wbsB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(wbsB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(wbsB.a1b.f2) <- 1991:2039
# wbsB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Walrus.bd.seals"]
# wbsB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Walrus.bd.seals"]
# wbsB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Walrus.bd.seals"]
# # head(wbsB.a1b.f2)
# wbsB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsB.a1b.f2.up[i] <- max(wbsB.a1b.f2[i,])
# wbsB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsB.a1b.f2.lo[i] <- min(wbsB.a1b.f2[i,])

# Walrus.bd.seals Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
wbsC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(wbsC.45.f2.80) <- c("gfd","mir","ces")
row.names(wbsC.45.f2.80) <- 1991:2080
wbsC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Walrus.bd.seals"]
wbsC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Walrus.bd.seals"]
wbsC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Walrus.bd.seals"]
# head(wbsC.45.f2.80)
wbsC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsC.45.f2.80.up[i] <- max(wbsC.45.f2.80[i,])
wbsC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsC.45.f2.80.lo[i] <- min(wbsC.45.f2.80[i,])
# Everything from 2081-2099
wbsC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(wbsC.45.f2.99) <- c("gfd","mir")
row.names(wbsC.45.f2.99) <- 2081:2099
wbsC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Walrus.bd.seals"]
wbsC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Walrus.bd.seals"]
# head(wbsC.45.f2.99)
wbsC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsC.45.f2.99.up[i] <- max(wbsC.45.f2.99[i,])
wbsC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsC.45.f2.99.lo[i] <- min(wbsC.45.f2.99[i,])
# now append these two time periods
wbsC.45.f2.up <- c(wbsC.45.f2.80.up,wbsC.45.f2.99.up)
wbsC.45.f2.lo <- c(wbsC.45.f2.80.lo,wbsC.45.f2.99.lo)

# RCP 8.5
wbsC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(wbsC.85.f2) <- c("gfd","mir","ces")
row.names(wbsC.85.f2) <- 1991:2099
wbsC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Walrus.bd.seals"]
wbsC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Walrus.bd.seals"]
wbsC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Walrus.bd.seals"]
# head(wbsC.85.f2)
wbsC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsC.85.f2.up[i] <- max(wbsC.85.f2[i,])
wbsC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsC.85.f2.lo[i] <- min(wbsC.85.f2[i,])

# # SRES A1B
# wbsC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(wbsC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(wbsC.a1b.f2) <- 1991:2039
# wbsC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Walrus.bd.seals"]
# wbsC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Walrus.bd.seals"]
# wbsC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Walrus.bd.seals"]
# # head(wbsC.a1b.f2)
# wbsC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsC.a1b.f2.up[i] <- max(wbsC.a1b.f2[i,])
# wbsC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsC.a1b.f2.lo[i] <- min(wbsC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Walrus.bd.seals F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
wbsB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(wbsB.45.f3.80) <- c("gfd","mir","ces")
row.names(wbsB.45.f3.80) <- 1991:2080
wbsB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Walrus.bd.seals"]
wbsB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Walrus.bd.seals"]
wbsB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Walrus.bd.seals"]
# head(wbsB.45.f3.80)
wbsB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsB.45.f3.80.up[i] <- max(wbsB.45.f3.80[i,])
wbsB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsB.45.f3.80.lo[i] <- min(wbsB.45.f3.80[i,])
# Everything from 2081-2099
wbsB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(wbsB.45.f3.99) <- c("gfd","mir")
row.names(wbsB.45.f3.99) <- 2081:2099
wbsB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Walrus.bd.seals"]
wbsB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Walrus.bd.seals"]
# head(wbsB.45.f3.99)
wbsB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsB.45.f3.99.up[i] <- max(wbsB.45.f3.99[i,])
wbsB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsB.45.f3.99.lo[i] <- min(wbsB.45.f3.99[i,])
# now append these two time periods
wbsB.45.f3.up <- c(wbsB.45.f3.80.up,wbsB.45.f3.99.up)
wbsB.45.f3.lo <- c(wbsB.45.f3.80.lo,wbsB.45.f3.99.lo)

# RCP 8.5
wbsB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(wbsB.85.f3) <- c("gfd","mir","ces")
row.names(wbsB.85.f3) <- 1991:2099
wbsB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Walrus.bd.seals"]
wbsB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Walrus.bd.seals"]
wbsB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Walrus.bd.seals"]
# head(wbsB.85.f3)
wbsB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsB.85.f3.up[i] <- max(wbsB.85.f3[i,])
wbsB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsB.85.f3.lo[i] <- min(wbsB.85.f3[i,])

# # SRES A1B
# wbsB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(wbsB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(wbsB.a1b.f3) <- 1991:2039
# wbsB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Walrus.bd.seals"]
# wbsB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Walrus.bd.seals"]
# wbsB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Walrus.bd.seals"]
# # head(wbsB.a1b.f3)
# wbsB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsB.a1b.f3.up[i] <- max(wbsB.a1b.f3[i,])
# wbsB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsB.a1b.f3.lo[i] <- min(wbsB.a1b.f3[i,])

# Walrus.bd.seals Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
wbsC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(wbsC.45.f3.80) <- c("gfd","mir","ces")
row.names(wbsC.45.f3.80) <- 1991:2080
wbsC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Walrus.bd.seals"]
wbsC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Walrus.bd.seals"]
wbsC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Walrus.bd.seals"]
# head(wbsC.45.f3.80)
wbsC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsC.45.f3.80.up[i] <- max(wbsC.45.f3.80[i,])
wbsC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsC.45.f3.80.lo[i] <- min(wbsC.45.f3.80[i,])
# Everything from 2081-2099
wbsC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(wbsC.45.f3.99) <- c("gfd","mir")
row.names(wbsC.45.f3.99) <- 2081:2099
wbsC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Walrus.bd.seals"]
wbsC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Walrus.bd.seals"]
# head(wbsC.45.f3.99)
wbsC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsC.45.f3.99.up[i] <- max(wbsC.45.f3.99[i,])
wbsC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsC.45.f3.99.lo[i] <- min(wbsC.45.f3.99[i,])
# now append these two time periods
wbsC.45.f3.up <- c(wbsC.45.f3.80.up,wbsC.45.f3.99.up)
wbsC.45.f3.lo <- c(wbsC.45.f3.80.lo,wbsC.45.f3.99.lo)

# RCP 8.5
wbsC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(wbsC.85.f3) <- c("gfd","mir","ces")
row.names(wbsC.85.f3) <- 1991:2099
wbsC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Walrus.bd.seals"]
wbsC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Walrus.bd.seals"]
wbsC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Walrus.bd.seals"]
# head(wbsC.85.f3)
wbsC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsC.85.f3.up[i] <- max(wbsC.85.f3[i,])
wbsC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsC.85.f3.lo[i] <- min(wbsC.85.f3[i,])

# # SRES A1B
# wbsC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(wbsC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(wbsC.a1b.f3) <- 1991:2039
# wbsC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Walrus.bd.seals"]
# wbsC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Walrus.bd.seals"]
# wbsC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Walrus.bd.seals"]
# # head(wbsC.a1b.f3)
# wbsC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsC.a1b.f3.up[i] <- max(wbsC.a1b.f3[i,])
# wbsC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsC.a1b.f3.lo[i] <- min(wbsC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Walrus.bd.seals F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
wbsB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(wbsB.45.f4.80) <- c("gfd","mir","ces")
row.names(wbsB.45.f4.80) <- 1991:2080
wbsB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Walrus.bd.seals"]
wbsB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Walrus.bd.seals"]
wbsB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Walrus.bd.seals"]
# head(wbsB.45.f4.80)
wbsB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsB.45.f4.80.up[i] <- max(wbsB.45.f4.80[i,])
wbsB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsB.45.f4.80.lo[i] <- min(wbsB.45.f4.80[i,])
# Everything from 2081-2099
wbsB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(wbsB.45.f4.99) <- c("gfd","mir")
row.names(wbsB.45.f4.99) <- 2081:2099
wbsB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Walrus.bd.seals"]
wbsB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Walrus.bd.seals"]
# head(wbsB.45.f4.99)
wbsB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsB.45.f4.99.up[i] <- max(wbsB.45.f4.99[i,])
wbsB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsB.45.f4.99.lo[i] <- min(wbsB.45.f4.99[i,])
# now append these two time periods
wbsB.45.f4.up <- c(wbsB.45.f4.80.up,wbsB.45.f4.99.up)
wbsB.45.f4.lo <- c(wbsB.45.f4.80.lo,wbsB.45.f4.99.lo)

# RCP 8.5
wbsB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(wbsB.85.f4) <- c("gfd","mir","ces")
row.names(wbsB.85.f4) <- 1991:2099
wbsB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Walrus.bd.seals"]
wbsB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Walrus.bd.seals"]
wbsB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Walrus.bd.seals"]
# head(wbsB.85.f4)
wbsB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsB.85.f4.up[i] <- max(wbsB.85.f4[i,])
wbsB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsB.85.f4.lo[i] <- min(wbsB.85.f4[i,])

# # SRES A1B
# wbsB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(wbsB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(wbsB.a1b.f4) <- 1991:2039
# wbsB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Walrus.bd.seals"]
# wbsB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Walrus.bd.seals"]
# wbsB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Walrus.bd.seals"]
# # head(wbsB.a1b.f4)
# wbsB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsB.a1b.f4.up[i] <- max(wbsB.a1b.f4[i,])
# wbsB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsB.a1b.f4.lo[i] <- min(wbsB.a1b.f4[i,])

# Walrus.bd.seals Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
wbsC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(wbsC.45.f4.80) <- c("gfd","mir","ces")
row.names(wbsC.45.f4.80) <- 1991:2080
wbsC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Walrus.bd.seals"]
wbsC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Walrus.bd.seals"]
wbsC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Walrus.bd.seals"]
# head(wbsC.45.f4.80)
wbsC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsC.45.f4.80.up[i] <- max(wbsC.45.f4.80[i,])
wbsC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) wbsC.45.f4.80.lo[i] <- min(wbsC.45.f4.80[i,])
# Everything from 2081-2099
wbsC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(wbsC.45.f4.99) <- c("gfd","mir")
row.names(wbsC.45.f4.99) <- 2081:2099
wbsC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Walrus.bd.seals"]
wbsC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Walrus.bd.seals"]
# head(wbsC.45.f4.99)
wbsC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsC.45.f4.99.up[i] <- max(wbsC.45.f4.99[i,])
wbsC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) wbsC.45.f4.99.lo[i] <- min(wbsC.45.f4.99[i,])
# now append these two time periods
wbsC.45.f4.up <- c(wbsC.45.f4.80.up,wbsC.45.f4.99.up)
wbsC.45.f4.lo <- c(wbsC.45.f4.80.lo,wbsC.45.f4.99.lo)

# RCP 8.5
wbsC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(wbsC.85.f4) <- c("gfd","mir","ces")
row.names(wbsC.85.f4) <- 1991:2099
wbsC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Walrus.bd.seals"]
wbsC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Walrus.bd.seals"]
wbsC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Walrus.bd.seals"]
# head(wbsC.85.f4)
wbsC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsC.85.f4.up[i] <- max(wbsC.85.f4[i,])
wbsC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) wbsC.85.f4.lo[i] <- min(wbsC.85.f4[i,])

# # SRES A1B
# wbsC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(wbsC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(wbsC.a1b.f4) <- 1991:2039
# wbsC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Walrus.bd.seals"]
# wbsC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Walrus.bd.seals"]
# wbsC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Walrus.bd.seals"]
# # head(wbsC.a1b.f4)
# wbsC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsC.a1b.f4.up[i] <- max(wbsC.a1b.f4[i,])
# wbsC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) wbsC.a1b.f4.lo[i] <- min(wbsC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# N.fur.seal_Juv biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
nfsjB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsjB.45.f1.80) <- c("gfd","mir","ces")
row.names(nfsjB.45.f1.80) <- 1991:2080
nfsjB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"N.fur.seal_Juv"]
nfsjB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"N.fur.seal_Juv"]
nfsjB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# head(nfsjB.45.f1.80)
nfsjB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjB.45.f1.80.up[i] <- max(nfsjB.45.f1.80[i,])
nfsjB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjB.45.f1.80.lo[i] <- min(nfsjB.45.f1.80[i,])
# Everything from 2081-2099
nfsjB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsjB.45.f1.99) <- c("gfd","mir")
row.names(nfsjB.45.f1.99) <- 2081:2099
nfsjB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"N.fur.seal_Juv"]
nfsjB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"N.fur.seal_Juv"]
# head(nfsjB.45.f1.99)
nfsjB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjB.45.f1.99.up[i] <- max(nfsjB.45.f1.99[i,])
nfsjB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjB.45.f1.99.lo[i] <- min(nfsjB.45.f1.99[i,])
# now append these two time periods
nfsjB.45.f1.up <- c(nfsjB.45.f1.80.up,nfsjB.45.f1.99.up)
nfsjB.45.f1.lo <- c(nfsjB.45.f1.80.lo,nfsjB.45.f1.99.lo)

# RCP 8.5
nfsjB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsjB.85.f1) <- c("gfd","mir","ces")
row.names(nfsjB.85.f1) <- 1991:2099
nfsjB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"N.fur.seal_Juv"]
nfsjB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"N.fur.seal_Juv"]
nfsjB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# head(nfsjB.85.f1)
nfsjB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjB.85.f1.up[i] <- max(nfsjB.85.f1[i,])
nfsjB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjB.85.f1.lo[i] <- min(nfsjB.85.f1[i,])

# # SRES A1B
# nfsjB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsjB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsjB.a1b.f1) <- 1991:2039
# nfsjB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# nfsjB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# nfsjB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# # head(nfsjB.a1b.f1)
# nfsjB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjB.a1b.f1.up[i] <- max(nfsjB.a1b.f1[i,])
# nfsjB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjB.a1b.f1.lo[i] <- min(nfsjB.a1b.f1[i,])

# N.fur.seal_Juv Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
nfsjC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsjC.45.f1.80) <- c("gfd","mir","ces")
row.names(nfsjC.45.f1.80) <- 1991:2080
nfsjC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"N.fur.seal_Juv"]
nfsjC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"N.fur.seal_Juv"]
nfsjC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"N.fur.seal_Juv"]
# head(nfsjC.45.f1.80)
nfsjC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjC.45.f1.80.up[i] <- max(nfsjC.45.f1.80[i,])
nfsjC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjC.45.f1.80.lo[i] <- min(nfsjC.45.f1.80[i,])
# Everything from 2081-2099
nfsjC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsjC.45.f1.99) <- c("gfd","mir")
row.names(nfsjC.45.f1.99) <- 2081:2099
nfsjC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"N.fur.seal_Juv"]
nfsjC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"N.fur.seal_Juv"]
# head(nfsjC.45.f1.99)
nfsjC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjC.45.f1.99.up[i] <- max(nfsjC.45.f1.99[i,])
nfsjC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjC.45.f1.99.lo[i] <- min(nfsjC.45.f1.99[i,])
# now append these two time periods
nfsjC.45.f1.up <- c(nfsjC.45.f1.80.up,nfsjC.45.f1.99.up)
nfsjC.45.f1.lo <- c(nfsjC.45.f1.80.lo,nfsjC.45.f1.99.lo)

# RCP 8.5
nfsjC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsjC.85.f1) <- c("gfd","mir","ces")
row.names(nfsjC.85.f1) <- 1991:2099
nfsjC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"N.fur.seal_Juv"]
nfsjC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"N.fur.seal_Juv"]
nfsjC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"N.fur.seal_Juv"]
# head(nfsjC.85.f1)
nfsjC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjC.85.f1.up[i] <- max(nfsjC.85.f1[i,])
nfsjC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjC.85.f1.lo[i] <- min(nfsjC.85.f1[i,])

# # SRES A1B
# nfsjC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsjC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsjC.a1b.f1) <- 1991:2039
# nfsjC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"N.fur.seal_Juv"]
# nfsjC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"N.fur.seal_Juv"]
# nfsjC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"N.fur.seal_Juv"]
# # head(nfsjC.a1b.f1)
# nfsjC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjC.a1b.f1.up[i] <- max(nfsjC.a1b.f1[i,])
# nfsjC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjC.a1b.f1.lo[i] <- min(nfsjC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# N.fur.seal_Juv F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
nfsjB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsjB.45.f2.80) <- c("gfd","mir","ces")
row.names(nfsjB.45.f2.80) <- 1991:2080
nfsjB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"N.fur.seal_Juv"]
nfsjB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"N.fur.seal_Juv"]
nfsjB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# head(nfsjB.45.f2.80)
nfsjB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjB.45.f2.80.up[i] <- max(nfsjB.45.f2.80[i,])
nfsjB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjB.45.f2.80.lo[i] <- min(nfsjB.45.f2.80[i,])
# Everything from 2081-2099
nfsjB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsjB.45.f2.99) <- c("gfd","mir")
row.names(nfsjB.45.f2.99) <- 2081:2099
nfsjB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"N.fur.seal_Juv"]
nfsjB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"N.fur.seal_Juv"]
# head(nfsjB.45.f2.99)
nfsjB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjB.45.f2.99.up[i] <- max(nfsjB.45.f2.99[i,])
nfsjB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjB.45.f2.99.lo[i] <- min(nfsjB.45.f2.99[i,])
# now append these two time periods
nfsjB.45.f2.up <- c(nfsjB.45.f2.80.up,nfsjB.45.f2.99.up)
nfsjB.45.f2.lo <- c(nfsjB.45.f2.80.lo,nfsjB.45.f2.99.lo)

# RCP 8.5
nfsjB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsjB.85.f2) <- c("gfd","mir","ces")
row.names(nfsjB.85.f2) <- 1991:2099
nfsjB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"N.fur.seal_Juv"]
nfsjB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"N.fur.seal_Juv"]
nfsjB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# head(nfsjB.85.f2)
nfsjB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjB.85.f2.up[i] <- max(nfsjB.85.f2[i,])
nfsjB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjB.85.f2.lo[i] <- min(nfsjB.85.f2[i,])

# # SRES A1B
# nfsjB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsjB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsjB.a1b.f2) <- 1991:2039
# nfsjB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# nfsjB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# nfsjB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# # head(nfsjB.a1b.f2)
# nfsjB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjB.a1b.f2.up[i] <- max(nfsjB.a1b.f2[i,])
# nfsjB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjB.a1b.f2.lo[i] <- min(nfsjB.a1b.f2[i,])

# N.fur.seal_Juv Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
nfsjC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsjC.45.f2.80) <- c("gfd","mir","ces")
row.names(nfsjC.45.f2.80) <- 1991:2080
nfsjC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"N.fur.seal_Juv"]
nfsjC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"N.fur.seal_Juv"]
nfsjC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"N.fur.seal_Juv"]
# head(nfsjC.45.f2.80)
nfsjC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjC.45.f2.80.up[i] <- max(nfsjC.45.f2.80[i,])
nfsjC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjC.45.f2.80.lo[i] <- min(nfsjC.45.f2.80[i,])
# Everything from 2081-2099
nfsjC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsjC.45.f2.99) <- c("gfd","mir")
row.names(nfsjC.45.f2.99) <- 2081:2099
nfsjC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"N.fur.seal_Juv"]
nfsjC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"N.fur.seal_Juv"]
# head(nfsjC.45.f2.99)
nfsjC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjC.45.f2.99.up[i] <- max(nfsjC.45.f2.99[i,])
nfsjC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjC.45.f2.99.lo[i] <- min(nfsjC.45.f2.99[i,])
# now append these two time periods
nfsjC.45.f2.up <- c(nfsjC.45.f2.80.up,nfsjC.45.f2.99.up)
nfsjC.45.f2.lo <- c(nfsjC.45.f2.80.lo,nfsjC.45.f2.99.lo)

# RCP 8.5
nfsjC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsjC.85.f2) <- c("gfd","mir","ces")
row.names(nfsjC.85.f2) <- 1991:2099
nfsjC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"N.fur.seal_Juv"]
nfsjC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"N.fur.seal_Juv"]
nfsjC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"N.fur.seal_Juv"]
# head(nfsjC.85.f2)
nfsjC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjC.85.f2.up[i] <- max(nfsjC.85.f2[i,])
nfsjC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjC.85.f2.lo[i] <- min(nfsjC.85.f2[i,])

# # SRES A1B
# nfsjC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsjC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsjC.a1b.f2) <- 1991:2039
# nfsjC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"N.fur.seal_Juv"]
# nfsjC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"N.fur.seal_Juv"]
# nfsjC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"N.fur.seal_Juv"]
# # head(nfsjC.a1b.f2)
# nfsjC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjC.a1b.f2.up[i] <- max(nfsjC.a1b.f2[i,])
# nfsjC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjC.a1b.f2.lo[i] <- min(nfsjC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# N.fur.seal_Juv F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
nfsjB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsjB.45.f3.80) <- c("gfd","mir","ces")
row.names(nfsjB.45.f3.80) <- 1991:2080
nfsjB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"N.fur.seal_Juv"]
nfsjB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"N.fur.seal_Juv"]
nfsjB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# head(nfsjB.45.f3.80)
nfsjB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjB.45.f3.80.up[i] <- max(nfsjB.45.f3.80[i,])
nfsjB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjB.45.f3.80.lo[i] <- min(nfsjB.45.f3.80[i,])
# Everything from 2081-2099
nfsjB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsjB.45.f3.99) <- c("gfd","mir")
row.names(nfsjB.45.f3.99) <- 2081:2099
nfsjB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"N.fur.seal_Juv"]
nfsjB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"N.fur.seal_Juv"]
# head(nfsjB.45.f3.99)
nfsjB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjB.45.f3.99.up[i] <- max(nfsjB.45.f3.99[i,])
nfsjB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjB.45.f3.99.lo[i] <- min(nfsjB.45.f3.99[i,])
# now append these two time periods
nfsjB.45.f3.up <- c(nfsjB.45.f3.80.up,nfsjB.45.f3.99.up)
nfsjB.45.f3.lo <- c(nfsjB.45.f3.80.lo,nfsjB.45.f3.99.lo)

# RCP 8.5
nfsjB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsjB.85.f3) <- c("gfd","mir","ces")
row.names(nfsjB.85.f3) <- 1991:2099
nfsjB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"N.fur.seal_Juv"]
nfsjB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"N.fur.seal_Juv"]
nfsjB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# head(nfsjB.85.f3)
nfsjB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjB.85.f3.up[i] <- max(nfsjB.85.f3[i,])
nfsjB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjB.85.f3.lo[i] <- min(nfsjB.85.f3[i,])

# # SRES A1B
# nfsjB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsjB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsjB.a1b.f3) <- 1991:2039
# nfsjB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# nfsjB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# nfsjB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# # head(nfsjB.a1b.f3)
# nfsjB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjB.a1b.f3.up[i] <- max(nfsjB.a1b.f3[i,])
# nfsjB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjB.a1b.f3.lo[i] <- min(nfsjB.a1b.f3[i,])

# N.fur.seal_Juv Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
nfsjC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsjC.45.f3.80) <- c("gfd","mir","ces")
row.names(nfsjC.45.f3.80) <- 1991:2080
nfsjC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"N.fur.seal_Juv"]
nfsjC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"N.fur.seal_Juv"]
nfsjC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"N.fur.seal_Juv"]
# head(nfsjC.45.f3.80)
nfsjC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjC.45.f3.80.up[i] <- max(nfsjC.45.f3.80[i,])
nfsjC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjC.45.f3.80.lo[i] <- min(nfsjC.45.f3.80[i,])
# Everything from 2081-2099
nfsjC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsjC.45.f3.99) <- c("gfd","mir")
row.names(nfsjC.45.f3.99) <- 2081:2099
nfsjC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"N.fur.seal_Juv"]
nfsjC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"N.fur.seal_Juv"]
# head(nfsjC.45.f3.99)
nfsjC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjC.45.f3.99.up[i] <- max(nfsjC.45.f3.99[i,])
nfsjC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjC.45.f3.99.lo[i] <- min(nfsjC.45.f3.99[i,])
# now append these two time periods
nfsjC.45.f3.up <- c(nfsjC.45.f3.80.up,nfsjC.45.f3.99.up)
nfsjC.45.f3.lo <- c(nfsjC.45.f3.80.lo,nfsjC.45.f3.99.lo)

# RCP 8.5
nfsjC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsjC.85.f3) <- c("gfd","mir","ces")
row.names(nfsjC.85.f3) <- 1991:2099
nfsjC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"N.fur.seal_Juv"]
nfsjC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"N.fur.seal_Juv"]
nfsjC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"N.fur.seal_Juv"]
# head(nfsjC.85.f3)
nfsjC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjC.85.f3.up[i] <- max(nfsjC.85.f3[i,])
nfsjC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjC.85.f3.lo[i] <- min(nfsjC.85.f3[i,])

# # SRES A1B
# nfsjC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsjC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsjC.a1b.f3) <- 1991:2039
# nfsjC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"N.fur.seal_Juv"]
# nfsjC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"N.fur.seal_Juv"]
# nfsjC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"N.fur.seal_Juv"]
# # head(nfsjC.a1b.f3)
# nfsjC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjC.a1b.f3.up[i] <- max(nfsjC.a1b.f3[i,])
# nfsjC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjC.a1b.f3.lo[i] <- min(nfsjC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# N.fur.seal_Juv F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
nfsjB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsjB.45.f4.80) <- c("gfd","mir","ces")
row.names(nfsjB.45.f4.80) <- 1991:2080
nfsjB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"N.fur.seal_Juv"]
nfsjB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"N.fur.seal_Juv"]
nfsjB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# head(nfsjB.45.f4.80)
nfsjB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjB.45.f4.80.up[i] <- max(nfsjB.45.f4.80[i,])
nfsjB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjB.45.f4.80.lo[i] <- min(nfsjB.45.f4.80[i,])
# Everything from 2081-2099
nfsjB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsjB.45.f4.99) <- c("gfd","mir")
row.names(nfsjB.45.f4.99) <- 2081:2099
nfsjB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"N.fur.seal_Juv"]
nfsjB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"N.fur.seal_Juv"]
# head(nfsjB.45.f4.99)
nfsjB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjB.45.f4.99.up[i] <- max(nfsjB.45.f4.99[i,])
nfsjB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjB.45.f4.99.lo[i] <- min(nfsjB.45.f4.99[i,])
# now append these two time periods
nfsjB.45.f4.up <- c(nfsjB.45.f4.80.up,nfsjB.45.f4.99.up)
nfsjB.45.f4.lo <- c(nfsjB.45.f4.80.lo,nfsjB.45.f4.99.lo)

# RCP 8.5
nfsjB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsjB.85.f4) <- c("gfd","mir","ces")
row.names(nfsjB.85.f4) <- 1991:2099
nfsjB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"N.fur.seal_Juv"]
nfsjB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"N.fur.seal_Juv"]
nfsjB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# head(nfsjB.85.f4)
nfsjB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjB.85.f4.up[i] <- max(nfsjB.85.f4[i,])
nfsjB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjB.85.f4.lo[i] <- min(nfsjB.85.f4[i,])

# # SRES A1B
# nfsjB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsjB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsjB.a1b.f4) <- 1991:2039
# nfsjB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# nfsjB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# nfsjB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"N.fur.seal_Juv"]
# # head(nfsjB.a1b.f4)
# nfsjB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjB.a1b.f4.up[i] <- max(nfsjB.a1b.f4[i,])
# nfsjB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjB.a1b.f4.lo[i] <- min(nfsjB.a1b.f4[i,])

# N.fur.seal_Juv Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
nfsjC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsjC.45.f4.80) <- c("gfd","mir","ces")
row.names(nfsjC.45.f4.80) <- 1991:2080
nfsjC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"N.fur.seal_Juv"]
nfsjC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"N.fur.seal_Juv"]
nfsjC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"N.fur.seal_Juv"]
# head(nfsjC.45.f4.80)
nfsjC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjC.45.f4.80.up[i] <- max(nfsjC.45.f4.80[i,])
nfsjC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsjC.45.f4.80.lo[i] <- min(nfsjC.45.f4.80[i,])
# Everything from 2081-2099
nfsjC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsjC.45.f4.99) <- c("gfd","mir")
row.names(nfsjC.45.f4.99) <- 2081:2099
nfsjC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"N.fur.seal_Juv"]
nfsjC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"N.fur.seal_Juv"]
# head(nfsjC.45.f4.99)
nfsjC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjC.45.f4.99.up[i] <- max(nfsjC.45.f4.99[i,])
nfsjC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsjC.45.f4.99.lo[i] <- min(nfsjC.45.f4.99[i,])
# now append these two time periods
nfsjC.45.f4.up <- c(nfsjC.45.f4.80.up,nfsjC.45.f4.99.up)
nfsjC.45.f4.lo <- c(nfsjC.45.f4.80.lo,nfsjC.45.f4.99.lo)

# RCP 8.5
nfsjC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsjC.85.f4) <- c("gfd","mir","ces")
row.names(nfsjC.85.f4) <- 1991:2099
nfsjC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"N.fur.seal_Juv"]
nfsjC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"N.fur.seal_Juv"]
nfsjC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"N.fur.seal_Juv"]
# head(nfsjC.85.f4)
nfsjC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjC.85.f4.up[i] <- max(nfsjC.85.f4[i,])
nfsjC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsjC.85.f4.lo[i] <- min(nfsjC.85.f4[i,])

# # SRES A1B
# nfsjC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsjC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsjC.a1b.f4) <- 1991:2039
# nfsjC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"N.fur.seal_Juv"]
# nfsjC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"N.fur.seal_Juv"]
# nfsjC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"N.fur.seal_Juv"]
# # head(nfsjC.a1b.f4)
# nfsjC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjC.a1b.f4.up[i] <- max(nfsjC.a1b.f4[i,])
# nfsjC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsjC.a1b.f4.lo[i] <- min(nfsjC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# N.fur.seal_Adu biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
nfsaB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsaB.45.f1.80) <- c("gfd","mir","ces")
row.names(nfsaB.45.f1.80) <- 1991:2080
nfsaB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"N.fur.seal_Adu"]
nfsaB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"N.fur.seal_Adu"]
nfsaB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# head(nfsaB.45.f1.80)
nfsaB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaB.45.f1.80.up[i] <- max(nfsaB.45.f1.80[i,])
nfsaB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaB.45.f1.80.lo[i] <- min(nfsaB.45.f1.80[i,])
# Everything from 2081-2099
nfsaB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsaB.45.f1.99) <- c("gfd","mir")
row.names(nfsaB.45.f1.99) <- 2081:2099
nfsaB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"N.fur.seal_Adu"]
nfsaB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"N.fur.seal_Adu"]
# head(nfsaB.45.f1.99)
nfsaB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaB.45.f1.99.up[i] <- max(nfsaB.45.f1.99[i,])
nfsaB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaB.45.f1.99.lo[i] <- min(nfsaB.45.f1.99[i,])
# now append these two time periods
nfsaB.45.f1.up <- c(nfsaB.45.f1.80.up,nfsaB.45.f1.99.up)
nfsaB.45.f1.lo <- c(nfsaB.45.f1.80.lo,nfsaB.45.f1.99.lo)

# RCP 8.5
nfsaB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsaB.85.f1) <- c("gfd","mir","ces")
row.names(nfsaB.85.f1) <- 1991:2099
nfsaB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"N.fur.seal_Adu"]
nfsaB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"N.fur.seal_Adu"]
nfsaB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# head(nfsaB.85.f1)
nfsaB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaB.85.f1.up[i] <- max(nfsaB.85.f1[i,])
nfsaB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaB.85.f1.lo[i] <- min(nfsaB.85.f1[i,])

# # SRES A1B
# nfsaB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsaB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsaB.a1b.f1) <- 1991:2039
# nfsaB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# nfsaB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# nfsaB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# # head(nfsaB.a1b.f1)
# nfsaB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaB.a1b.f1.up[i] <- max(nfsaB.a1b.f1[i,])
# nfsaB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaB.a1b.f1.lo[i] <- min(nfsaB.a1b.f1[i,])

# N.fur.seal_Adu Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
nfsaC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsaC.45.f1.80) <- c("gfd","mir","ces")
row.names(nfsaC.45.f1.80) <- 1991:2080
nfsaC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"N.fur.seal_Adu"]
nfsaC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"N.fur.seal_Adu"]
nfsaC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"N.fur.seal_Adu"]
# head(nfsaC.45.f1.80)
nfsaC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaC.45.f1.80.up[i] <- max(nfsaC.45.f1.80[i,])
nfsaC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaC.45.f1.80.lo[i] <- min(nfsaC.45.f1.80[i,])
# Everything from 2081-2099
nfsaC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsaC.45.f1.99) <- c("gfd","mir")
row.names(nfsaC.45.f1.99) <- 2081:2099
nfsaC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"N.fur.seal_Adu"]
nfsaC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"N.fur.seal_Adu"]
# head(nfsaC.45.f1.99)
nfsaC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaC.45.f1.99.up[i] <- max(nfsaC.45.f1.99[i,])
nfsaC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaC.45.f1.99.lo[i] <- min(nfsaC.45.f1.99[i,])
# now append these two time periods
nfsaC.45.f1.up <- c(nfsaC.45.f1.80.up,nfsaC.45.f1.99.up)
nfsaC.45.f1.lo <- c(nfsaC.45.f1.80.lo,nfsaC.45.f1.99.lo)

# RCP 8.5
nfsaC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsaC.85.f1) <- c("gfd","mir","ces")
row.names(nfsaC.85.f1) <- 1991:2099
nfsaC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"N.fur.seal_Adu"]
nfsaC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"N.fur.seal_Adu"]
nfsaC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"N.fur.seal_Adu"]
# head(nfsaC.85.f1)
nfsaC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaC.85.f1.up[i] <- max(nfsaC.85.f1[i,])
nfsaC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaC.85.f1.lo[i] <- min(nfsaC.85.f1[i,])

# # SRES A1B
# nfsaC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsaC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsaC.a1b.f1) <- 1991:2039
# nfsaC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"N.fur.seal_Adu"]
# nfsaC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"N.fur.seal_Adu"]
# nfsaC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"N.fur.seal_Adu"]
# # head(nfsaC.a1b.f1)
# nfsaC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaC.a1b.f1.up[i] <- max(nfsaC.a1b.f1[i,])
# nfsaC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaC.a1b.f1.lo[i] <- min(nfsaC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# N.fur.seal_Adu F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
nfsaB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsaB.45.f2.80) <- c("gfd","mir","ces")
row.names(nfsaB.45.f2.80) <- 1991:2080
nfsaB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"N.fur.seal_Adu"]
nfsaB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"N.fur.seal_Adu"]
nfsaB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# head(nfsaB.45.f2.80)
nfsaB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaB.45.f2.80.up[i] <- max(nfsaB.45.f2.80[i,])
nfsaB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaB.45.f2.80.lo[i] <- min(nfsaB.45.f2.80[i,])
# Everything from 2081-2099
nfsaB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsaB.45.f2.99) <- c("gfd","mir")
row.names(nfsaB.45.f2.99) <- 2081:2099
nfsaB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"N.fur.seal_Adu"]
nfsaB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"N.fur.seal_Adu"]
# head(nfsaB.45.f2.99)
nfsaB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaB.45.f2.99.up[i] <- max(nfsaB.45.f2.99[i,])
nfsaB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaB.45.f2.99.lo[i] <- min(nfsaB.45.f2.99[i,])
# now append these two time periods
nfsaB.45.f2.up <- c(nfsaB.45.f2.80.up,nfsaB.45.f2.99.up)
nfsaB.45.f2.lo <- c(nfsaB.45.f2.80.lo,nfsaB.45.f2.99.lo)

# RCP 8.5
nfsaB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsaB.85.f2) <- c("gfd","mir","ces")
row.names(nfsaB.85.f2) <- 1991:2099
nfsaB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"N.fur.seal_Adu"]
nfsaB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"N.fur.seal_Adu"]
nfsaB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# head(nfsaB.85.f2)
nfsaB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaB.85.f2.up[i] <- max(nfsaB.85.f2[i,])
nfsaB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaB.85.f2.lo[i] <- min(nfsaB.85.f2[i,])

# # SRES A1B
# nfsaB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsaB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsaB.a1b.f2) <- 1991:2039
# nfsaB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# nfsaB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# nfsaB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# # head(nfsaB.a1b.f2)
# nfsaB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaB.a1b.f2.up[i] <- max(nfsaB.a1b.f2[i,])
# nfsaB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaB.a1b.f2.lo[i] <- min(nfsaB.a1b.f2[i,])

# N.fur.seal_Adu Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
nfsaC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsaC.45.f2.80) <- c("gfd","mir","ces")
row.names(nfsaC.45.f2.80) <- 1991:2080
nfsaC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"N.fur.seal_Adu"]
nfsaC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"N.fur.seal_Adu"]
nfsaC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"N.fur.seal_Adu"]
# head(nfsaC.45.f2.80)
nfsaC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaC.45.f2.80.up[i] <- max(nfsaC.45.f2.80[i,])
nfsaC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaC.45.f2.80.lo[i] <- min(nfsaC.45.f2.80[i,])
# Everything from 2081-2099
nfsaC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsaC.45.f2.99) <- c("gfd","mir")
row.names(nfsaC.45.f2.99) <- 2081:2099
nfsaC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"N.fur.seal_Adu"]
nfsaC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"N.fur.seal_Adu"]
# head(nfsaC.45.f2.99)
nfsaC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaC.45.f2.99.up[i] <- max(nfsaC.45.f2.99[i,])
nfsaC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaC.45.f2.99.lo[i] <- min(nfsaC.45.f2.99[i,])
# now append these two time periods
nfsaC.45.f2.up <- c(nfsaC.45.f2.80.up,nfsaC.45.f2.99.up)
nfsaC.45.f2.lo <- c(nfsaC.45.f2.80.lo,nfsaC.45.f2.99.lo)

# RCP 8.5
nfsaC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsaC.85.f2) <- c("gfd","mir","ces")
row.names(nfsaC.85.f2) <- 1991:2099
nfsaC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"N.fur.seal_Adu"]
nfsaC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"N.fur.seal_Adu"]
nfsaC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"N.fur.seal_Adu"]
# head(nfsaC.85.f2)
nfsaC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaC.85.f2.up[i] <- max(nfsaC.85.f2[i,])
nfsaC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaC.85.f2.lo[i] <- min(nfsaC.85.f2[i,])

# # SRES A1B
# nfsaC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsaC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsaC.a1b.f2) <- 1991:2039
# nfsaC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"N.fur.seal_Adu"]
# nfsaC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"N.fur.seal_Adu"]
# nfsaC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"N.fur.seal_Adu"]
# # head(nfsaC.a1b.f2)
# nfsaC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaC.a1b.f2.up[i] <- max(nfsaC.a1b.f2[i,])
# nfsaC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaC.a1b.f2.lo[i] <- min(nfsaC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# N.fur.seal_Adu F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
nfsaB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsaB.45.f3.80) <- c("gfd","mir","ces")
row.names(nfsaB.45.f3.80) <- 1991:2080
nfsaB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"N.fur.seal_Adu"]
nfsaB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"N.fur.seal_Adu"]
nfsaB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# head(nfsaB.45.f3.80)
nfsaB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaB.45.f3.80.up[i] <- max(nfsaB.45.f3.80[i,])
nfsaB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaB.45.f3.80.lo[i] <- min(nfsaB.45.f3.80[i,])
# Everything from 2081-2099
nfsaB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsaB.45.f3.99) <- c("gfd","mir")
row.names(nfsaB.45.f3.99) <- 2081:2099
nfsaB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"N.fur.seal_Adu"]
nfsaB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"N.fur.seal_Adu"]
# head(nfsaB.45.f3.99)
nfsaB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaB.45.f3.99.up[i] <- max(nfsaB.45.f3.99[i,])
nfsaB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaB.45.f3.99.lo[i] <- min(nfsaB.45.f3.99[i,])
# now append these two time periods
nfsaB.45.f3.up <- c(nfsaB.45.f3.80.up,nfsaB.45.f3.99.up)
nfsaB.45.f3.lo <- c(nfsaB.45.f3.80.lo,nfsaB.45.f3.99.lo)

# RCP 8.5
nfsaB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsaB.85.f3) <- c("gfd","mir","ces")
row.names(nfsaB.85.f3) <- 1991:2099
nfsaB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"N.fur.seal_Adu"]
nfsaB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"N.fur.seal_Adu"]
nfsaB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# head(nfsaB.85.f3)
nfsaB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaB.85.f3.up[i] <- max(nfsaB.85.f3[i,])
nfsaB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaB.85.f3.lo[i] <- min(nfsaB.85.f3[i,])

# # SRES A1B
# nfsaB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsaB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsaB.a1b.f3) <- 1991:2039
# nfsaB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# nfsaB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# nfsaB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# # head(nfsaB.a1b.f3)
# nfsaB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaB.a1b.f3.up[i] <- max(nfsaB.a1b.f3[i,])
# nfsaB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaB.a1b.f3.lo[i] <- min(nfsaB.a1b.f3[i,])

# N.fur.seal_Adu Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
nfsaC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsaC.45.f3.80) <- c("gfd","mir","ces")
row.names(nfsaC.45.f3.80) <- 1991:2080
nfsaC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"N.fur.seal_Adu"]
nfsaC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"N.fur.seal_Adu"]
nfsaC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"N.fur.seal_Adu"]
# head(nfsaC.45.f3.80)
nfsaC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaC.45.f3.80.up[i] <- max(nfsaC.45.f3.80[i,])
nfsaC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaC.45.f3.80.lo[i] <- min(nfsaC.45.f3.80[i,])
# Everything from 2081-2099
nfsaC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsaC.45.f3.99) <- c("gfd","mir")
row.names(nfsaC.45.f3.99) <- 2081:2099
nfsaC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"N.fur.seal_Adu"]
nfsaC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"N.fur.seal_Adu"]
# head(nfsaC.45.f3.99)
nfsaC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaC.45.f3.99.up[i] <- max(nfsaC.45.f3.99[i,])
nfsaC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaC.45.f3.99.lo[i] <- min(nfsaC.45.f3.99[i,])
# now append these two time periods
nfsaC.45.f3.up <- c(nfsaC.45.f3.80.up,nfsaC.45.f3.99.up)
nfsaC.45.f3.lo <- c(nfsaC.45.f3.80.lo,nfsaC.45.f3.99.lo)

# RCP 8.5
nfsaC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsaC.85.f3) <- c("gfd","mir","ces")
row.names(nfsaC.85.f3) <- 1991:2099
nfsaC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"N.fur.seal_Adu"]
nfsaC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"N.fur.seal_Adu"]
nfsaC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"N.fur.seal_Adu"]
# head(nfsaC.85.f3)
nfsaC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaC.85.f3.up[i] <- max(nfsaC.85.f3[i,])
nfsaC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaC.85.f3.lo[i] <- min(nfsaC.85.f3[i,])

# # SRES A1B
# nfsaC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsaC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsaC.a1b.f3) <- 1991:2039
# nfsaC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"N.fur.seal_Adu"]
# nfsaC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"N.fur.seal_Adu"]
# nfsaC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"N.fur.seal_Adu"]
# # head(nfsaC.a1b.f3)
# nfsaC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaC.a1b.f3.up[i] <- max(nfsaC.a1b.f3[i,])
# nfsaC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaC.a1b.f3.lo[i] <- min(nfsaC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# N.fur.seal_Adu F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
nfsaB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsaB.45.f4.80) <- c("gfd","mir","ces")
row.names(nfsaB.45.f4.80) <- 1991:2080
nfsaB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"N.fur.seal_Adu"]
nfsaB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"N.fur.seal_Adu"]
nfsaB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# head(nfsaB.45.f4.80)
nfsaB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaB.45.f4.80.up[i] <- max(nfsaB.45.f4.80[i,])
nfsaB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaB.45.f4.80.lo[i] <- min(nfsaB.45.f4.80[i,])
# Everything from 2081-2099
nfsaB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsaB.45.f4.99) <- c("gfd","mir")
row.names(nfsaB.45.f4.99) <- 2081:2099
nfsaB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"N.fur.seal_Adu"]
nfsaB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"N.fur.seal_Adu"]
# head(nfsaB.45.f4.99)
nfsaB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaB.45.f4.99.up[i] <- max(nfsaB.45.f4.99[i,])
nfsaB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaB.45.f4.99.lo[i] <- min(nfsaB.45.f4.99[i,])
# now append these two time periods
nfsaB.45.f4.up <- c(nfsaB.45.f4.80.up,nfsaB.45.f4.99.up)
nfsaB.45.f4.lo <- c(nfsaB.45.f4.80.lo,nfsaB.45.f4.99.lo)

# RCP 8.5
nfsaB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsaB.85.f4) <- c("gfd","mir","ces")
row.names(nfsaB.85.f4) <- 1991:2099
nfsaB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"N.fur.seal_Adu"]
nfsaB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"N.fur.seal_Adu"]
nfsaB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# head(nfsaB.85.f4)
nfsaB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaB.85.f4.up[i] <- max(nfsaB.85.f4[i,])
nfsaB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaB.85.f4.lo[i] <- min(nfsaB.85.f4[i,])

# # SRES A1B
# nfsaB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsaB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsaB.a1b.f4) <- 1991:2039
# nfsaB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# nfsaB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# nfsaB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"N.fur.seal_Adu"]
# # head(nfsaB.a1b.f4)
# nfsaB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaB.a1b.f4.up[i] <- max(nfsaB.a1b.f4[i,])
# nfsaB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaB.a1b.f4.lo[i] <- min(nfsaB.a1b.f4[i,])

# N.fur.seal_Adu Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
nfsaC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nfsaC.45.f4.80) <- c("gfd","mir","ces")
row.names(nfsaC.45.f4.80) <- 1991:2080
nfsaC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"N.fur.seal_Adu"]
nfsaC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"N.fur.seal_Adu"]
nfsaC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"N.fur.seal_Adu"]
# head(nfsaC.45.f4.80)
nfsaC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaC.45.f4.80.up[i] <- max(nfsaC.45.f4.80[i,])
nfsaC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nfsaC.45.f4.80.lo[i] <- min(nfsaC.45.f4.80[i,])
# Everything from 2081-2099
nfsaC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nfsaC.45.f4.99) <- c("gfd","mir")
row.names(nfsaC.45.f4.99) <- 2081:2099
nfsaC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"N.fur.seal_Adu"]
nfsaC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"N.fur.seal_Adu"]
# head(nfsaC.45.f4.99)
nfsaC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaC.45.f4.99.up[i] <- max(nfsaC.45.f4.99[i,])
nfsaC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nfsaC.45.f4.99.lo[i] <- min(nfsaC.45.f4.99[i,])
# now append these two time periods
nfsaC.45.f4.up <- c(nfsaC.45.f4.80.up,nfsaC.45.f4.99.up)
nfsaC.45.f4.lo <- c(nfsaC.45.f4.80.lo,nfsaC.45.f4.99.lo)

# RCP 8.5
nfsaC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nfsaC.85.f4) <- c("gfd","mir","ces")
row.names(nfsaC.85.f4) <- 1991:2099
nfsaC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"N.fur.seal_Adu"]
nfsaC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"N.fur.seal_Adu"]
nfsaC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"N.fur.seal_Adu"]
# head(nfsaC.85.f4)
nfsaC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaC.85.f4.up[i] <- max(nfsaC.85.f4[i,])
nfsaC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nfsaC.85.f4.lo[i] <- min(nfsaC.85.f4[i,])

# # SRES A1B
# nfsaC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nfsaC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(nfsaC.a1b.f4) <- 1991:2039
# nfsaC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"N.fur.seal_Adu"]
# nfsaC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"N.fur.seal_Adu"]
# nfsaC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"N.fur.seal_Adu"]
# # head(nfsaC.a1b.f4)
# nfsaC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaC.a1b.f4.up[i] <- max(nfsaC.a1b.f4[i,])
# nfsaC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nfsaC.a1b.f4.lo[i] <- min(nfsaC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Ice.seals biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
iceB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(iceB.45.f1.80) <- c("gfd","mir","ces")
row.names(iceB.45.f1.80) <- 1991:2080
iceB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Ice.seals"]
iceB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Ice.seals"]
iceB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Ice.seals"]
# head(iceB.45.f1.80)
iceB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceB.45.f1.80.up[i] <- max(iceB.45.f1.80[i,])
iceB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceB.45.f1.80.lo[i] <- min(iceB.45.f1.80[i,])
# Everything from 2081-2099
iceB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(iceB.45.f1.99) <- c("gfd","mir")
row.names(iceB.45.f1.99) <- 2081:2099
iceB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Ice.seals"]
iceB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Ice.seals"]
# head(iceB.45.f1.99)
iceB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceB.45.f1.99.up[i] <- max(iceB.45.f1.99[i,])
iceB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceB.45.f1.99.lo[i] <- min(iceB.45.f1.99[i,])
# now append these two time periods
iceB.45.f1.up <- c(iceB.45.f1.80.up,iceB.45.f1.99.up)
iceB.45.f1.lo <- c(iceB.45.f1.80.lo,iceB.45.f1.99.lo)

# RCP 8.5
iceB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(iceB.85.f1) <- c("gfd","mir","ces")
row.names(iceB.85.f1) <- 1991:2099
iceB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Ice.seals"]
iceB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Ice.seals"]
iceB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Ice.seals"]
# head(iceB.85.f1)
iceB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceB.85.f1.up[i] <- max(iceB.85.f1[i,])
iceB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceB.85.f1.lo[i] <- min(iceB.85.f1[i,])

# # SRES A1B
# iceB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(iceB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(iceB.a1b.f1) <- 1991:2039
# iceB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Ice.seals"]
# iceB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Ice.seals"]
# iceB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Ice.seals"]
# # head(iceB.a1b.f1)
# iceB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceB.a1b.f1.up[i] <- max(iceB.a1b.f1[i,])
# iceB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceB.a1b.f1.lo[i] <- min(iceB.a1b.f1[i,])

# Ice.seals Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
iceC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(iceC.45.f1.80) <- c("gfd","mir","ces")
row.names(iceC.45.f1.80) <- 1991:2080
iceC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Ice.seals"]
iceC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Ice.seals"]
iceC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Ice.seals"]
# head(iceC.45.f1.80)
iceC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceC.45.f1.80.up[i] <- max(iceC.45.f1.80[i,])
iceC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceC.45.f1.80.lo[i] <- min(iceC.45.f1.80[i,])
# Everything from 2081-2099
iceC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(iceC.45.f1.99) <- c("gfd","mir")
row.names(iceC.45.f1.99) <- 2081:2099
iceC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Ice.seals"]
iceC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Ice.seals"]
# head(iceC.45.f1.99)
iceC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceC.45.f1.99.up[i] <- max(iceC.45.f1.99[i,])
iceC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceC.45.f1.99.lo[i] <- min(iceC.45.f1.99[i,])
# now append these two time periods
iceC.45.f1.up <- c(iceC.45.f1.80.up,iceC.45.f1.99.up)
iceC.45.f1.lo <- c(iceC.45.f1.80.lo,iceC.45.f1.99.lo)

# RCP 8.5
iceC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(iceC.85.f1) <- c("gfd","mir","ces")
row.names(iceC.85.f1) <- 1991:2099
iceC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Ice.seals"]
iceC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Ice.seals"]
iceC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Ice.seals"]
# head(iceC.85.f1)
iceC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceC.85.f1.up[i] <- max(iceC.85.f1[i,])
iceC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceC.85.f1.lo[i] <- min(iceC.85.f1[i,])

# # SRES A1B
# iceC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(iceC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(iceC.a1b.f1) <- 1991:2039
# iceC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Ice.seals"]
# iceC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Ice.seals"]
# iceC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Ice.seals"]
# # head(iceC.a1b.f1)
# iceC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceC.a1b.f1.up[i] <- max(iceC.a1b.f1[i,])
# iceC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceC.a1b.f1.lo[i] <- min(iceC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Ice.seals F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
iceB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(iceB.45.f2.80) <- c("gfd","mir","ces")
row.names(iceB.45.f2.80) <- 1991:2080
iceB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Ice.seals"]
iceB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Ice.seals"]
iceB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Ice.seals"]
# head(iceB.45.f2.80)
iceB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceB.45.f2.80.up[i] <- max(iceB.45.f2.80[i,])
iceB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceB.45.f2.80.lo[i] <- min(iceB.45.f2.80[i,])
# Everything from 2081-2099
iceB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(iceB.45.f2.99) <- c("gfd","mir")
row.names(iceB.45.f2.99) <- 2081:2099
iceB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Ice.seals"]
iceB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Ice.seals"]
# head(iceB.45.f2.99)
iceB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceB.45.f2.99.up[i] <- max(iceB.45.f2.99[i,])
iceB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceB.45.f2.99.lo[i] <- min(iceB.45.f2.99[i,])
# now append these two time periods
iceB.45.f2.up <- c(iceB.45.f2.80.up,iceB.45.f2.99.up)
iceB.45.f2.lo <- c(iceB.45.f2.80.lo,iceB.45.f2.99.lo)

# RCP 8.5
iceB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(iceB.85.f2) <- c("gfd","mir","ces")
row.names(iceB.85.f2) <- 1991:2099
iceB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Ice.seals"]
iceB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Ice.seals"]
iceB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Ice.seals"]
# head(iceB.85.f2)
iceB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceB.85.f2.up[i] <- max(iceB.85.f2[i,])
iceB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceB.85.f2.lo[i] <- min(iceB.85.f2[i,])

# # SRES A1B
# iceB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(iceB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(iceB.a1b.f2) <- 1991:2039
# iceB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Ice.seals"]
# iceB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Ice.seals"]
# iceB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Ice.seals"]
# # head(iceB.a1b.f2)
# iceB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceB.a1b.f2.up[i] <- max(iceB.a1b.f2[i,])
# iceB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceB.a1b.f2.lo[i] <- min(iceB.a1b.f2[i,])

# Ice.seals Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
iceC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(iceC.45.f2.80) <- c("gfd","mir","ces")
row.names(iceC.45.f2.80) <- 1991:2080
iceC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Ice.seals"]
iceC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Ice.seals"]
iceC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Ice.seals"]
# head(iceC.45.f2.80)
iceC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceC.45.f2.80.up[i] <- max(iceC.45.f2.80[i,])
iceC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceC.45.f2.80.lo[i] <- min(iceC.45.f2.80[i,])
# Everything from 2081-2099
iceC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(iceC.45.f2.99) <- c("gfd","mir")
row.names(iceC.45.f2.99) <- 2081:2099
iceC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Ice.seals"]
iceC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Ice.seals"]
# head(iceC.45.f2.99)
iceC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceC.45.f2.99.up[i] <- max(iceC.45.f2.99[i,])
iceC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceC.45.f2.99.lo[i] <- min(iceC.45.f2.99[i,])
# now append these two time periods
iceC.45.f2.up <- c(iceC.45.f2.80.up,iceC.45.f2.99.up)
iceC.45.f2.lo <- c(iceC.45.f2.80.lo,iceC.45.f2.99.lo)

# RCP 8.5
iceC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(iceC.85.f2) <- c("gfd","mir","ces")
row.names(iceC.85.f2) <- 1991:2099
iceC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Ice.seals"]
iceC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Ice.seals"]
iceC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Ice.seals"]
# head(iceC.85.f2)
iceC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceC.85.f2.up[i] <- max(iceC.85.f2[i,])
iceC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceC.85.f2.lo[i] <- min(iceC.85.f2[i,])

# # SRES A1B
# iceC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(iceC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(iceC.a1b.f2) <- 1991:2039
# iceC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Ice.seals"]
# iceC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Ice.seals"]
# iceC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Ice.seals"]
# # head(iceC.a1b.f2)
# iceC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceC.a1b.f2.up[i] <- max(iceC.a1b.f2[i,])
# iceC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceC.a1b.f2.lo[i] <- min(iceC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Ice.seals F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
iceB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(iceB.45.f3.80) <- c("gfd","mir","ces")
row.names(iceB.45.f3.80) <- 1991:2080
iceB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Ice.seals"]
iceB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Ice.seals"]
iceB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Ice.seals"]
# head(iceB.45.f3.80)
iceB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceB.45.f3.80.up[i] <- max(iceB.45.f3.80[i,])
iceB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceB.45.f3.80.lo[i] <- min(iceB.45.f3.80[i,])
# Everything from 2081-2099
iceB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(iceB.45.f3.99) <- c("gfd","mir")
row.names(iceB.45.f3.99) <- 2081:2099
iceB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Ice.seals"]
iceB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Ice.seals"]
# head(iceB.45.f3.99)
iceB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceB.45.f3.99.up[i] <- max(iceB.45.f3.99[i,])
iceB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceB.45.f3.99.lo[i] <- min(iceB.45.f3.99[i,])
# now append these two time periods
iceB.45.f3.up <- c(iceB.45.f3.80.up,iceB.45.f3.99.up)
iceB.45.f3.lo <- c(iceB.45.f3.80.lo,iceB.45.f3.99.lo)

# RCP 8.5
iceB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(iceB.85.f3) <- c("gfd","mir","ces")
row.names(iceB.85.f3) <- 1991:2099
iceB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Ice.seals"]
iceB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Ice.seals"]
iceB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Ice.seals"]
# head(iceB.85.f3)
iceB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceB.85.f3.up[i] <- max(iceB.85.f3[i,])
iceB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceB.85.f3.lo[i] <- min(iceB.85.f3[i,])

# # SRES A1B
# iceB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(iceB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(iceB.a1b.f3) <- 1991:2039
# iceB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Ice.seals"]
# iceB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Ice.seals"]
# iceB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Ice.seals"]
# # head(iceB.a1b.f3)
# iceB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceB.a1b.f3.up[i] <- max(iceB.a1b.f3[i,])
# iceB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceB.a1b.f3.lo[i] <- min(iceB.a1b.f3[i,])

# Ice.seals Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
iceC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(iceC.45.f3.80) <- c("gfd","mir","ces")
row.names(iceC.45.f3.80) <- 1991:2080
iceC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Ice.seals"]
iceC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Ice.seals"]
iceC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Ice.seals"]
# head(iceC.45.f3.80)
iceC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceC.45.f3.80.up[i] <- max(iceC.45.f3.80[i,])
iceC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceC.45.f3.80.lo[i] <- min(iceC.45.f3.80[i,])
# Everything from 2081-2099
iceC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(iceC.45.f3.99) <- c("gfd","mir")
row.names(iceC.45.f3.99) <- 2081:2099
iceC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Ice.seals"]
iceC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Ice.seals"]
# head(iceC.45.f3.99)
iceC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceC.45.f3.99.up[i] <- max(iceC.45.f3.99[i,])
iceC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceC.45.f3.99.lo[i] <- min(iceC.45.f3.99[i,])
# now append these two time periods
iceC.45.f3.up <- c(iceC.45.f3.80.up,iceC.45.f3.99.up)
iceC.45.f3.lo <- c(iceC.45.f3.80.lo,iceC.45.f3.99.lo)

# RCP 8.5
iceC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(iceC.85.f3) <- c("gfd","mir","ces")
row.names(iceC.85.f3) <- 1991:2099
iceC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Ice.seals"]
iceC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Ice.seals"]
iceC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Ice.seals"]
# head(iceC.85.f3)
iceC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceC.85.f3.up[i] <- max(iceC.85.f3[i,])
iceC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceC.85.f3.lo[i] <- min(iceC.85.f3[i,])

# # SRES A1B
# iceC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(iceC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(iceC.a1b.f3) <- 1991:2039
# iceC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Ice.seals"]
# iceC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Ice.seals"]
# iceC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Ice.seals"]
# # head(iceC.a1b.f3)
# iceC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceC.a1b.f3.up[i] <- max(iceC.a1b.f3[i,])
# iceC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceC.a1b.f3.lo[i] <- min(iceC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Ice.seals F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
iceB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(iceB.45.f4.80) <- c("gfd","mir","ces")
row.names(iceB.45.f4.80) <- 1991:2080
iceB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Ice.seals"]
iceB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Ice.seals"]
iceB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Ice.seals"]
# head(iceB.45.f4.80)
iceB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceB.45.f4.80.up[i] <- max(iceB.45.f4.80[i,])
iceB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceB.45.f4.80.lo[i] <- min(iceB.45.f4.80[i,])
# Everything from 2081-2099
iceB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(iceB.45.f4.99) <- c("gfd","mir")
row.names(iceB.45.f4.99) <- 2081:2099
iceB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Ice.seals"]
iceB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Ice.seals"]
# head(iceB.45.f4.99)
iceB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceB.45.f4.99.up[i] <- max(iceB.45.f4.99[i,])
iceB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceB.45.f4.99.lo[i] <- min(iceB.45.f4.99[i,])
# now append these two time periods
iceB.45.f4.up <- c(iceB.45.f4.80.up,iceB.45.f4.99.up)
iceB.45.f4.lo <- c(iceB.45.f4.80.lo,iceB.45.f4.99.lo)

# RCP 8.5
iceB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(iceB.85.f4) <- c("gfd","mir","ces")
row.names(iceB.85.f4) <- 1991:2099
iceB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Ice.seals"]
iceB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Ice.seals"]
iceB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Ice.seals"]
# head(iceB.85.f4)
iceB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceB.85.f4.up[i] <- max(iceB.85.f4[i,])
iceB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceB.85.f4.lo[i] <- min(iceB.85.f4[i,])

# # SRES A1B
# iceB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(iceB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(iceB.a1b.f4) <- 1991:2039
# iceB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Ice.seals"]
# iceB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Ice.seals"]
# iceB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Ice.seals"]
# # head(iceB.a1b.f4)
# iceB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceB.a1b.f4.up[i] <- max(iceB.a1b.f4[i,])
# iceB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceB.a1b.f4.lo[i] <- min(iceB.a1b.f4[i,])

# Ice.seals Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
iceC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(iceC.45.f4.80) <- c("gfd","mir","ces")
row.names(iceC.45.f4.80) <- 1991:2080
iceC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Ice.seals"]
iceC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Ice.seals"]
iceC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Ice.seals"]
# head(iceC.45.f4.80)
iceC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceC.45.f4.80.up[i] <- max(iceC.45.f4.80[i,])
iceC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) iceC.45.f4.80.lo[i] <- min(iceC.45.f4.80[i,])
# Everything from 2081-2099
iceC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(iceC.45.f4.99) <- c("gfd","mir")
row.names(iceC.45.f4.99) <- 2081:2099
iceC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Ice.seals"]
iceC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Ice.seals"]
# head(iceC.45.f4.99)
iceC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceC.45.f4.99.up[i] <- max(iceC.45.f4.99[i,])
iceC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) iceC.45.f4.99.lo[i] <- min(iceC.45.f4.99[i,])
# now append these two time periods
iceC.45.f4.up <- c(iceC.45.f4.80.up,iceC.45.f4.99.up)
iceC.45.f4.lo <- c(iceC.45.f4.80.lo,iceC.45.f4.99.lo)

# RCP 8.5
iceC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(iceC.85.f4) <- c("gfd","mir","ces")
row.names(iceC.85.f4) <- 1991:2099
iceC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Ice.seals"]
iceC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Ice.seals"]
iceC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Ice.seals"]
# head(iceC.85.f4)
iceC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceC.85.f4.up[i] <- max(iceC.85.f4[i,])
iceC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) iceC.85.f4.lo[i] <- min(iceC.85.f4[i,])

# # SRES A1B
# iceC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(iceC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(iceC.a1b.f4) <- 1991:2039
# iceC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Ice.seals"]
# iceC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Ice.seals"]
# iceC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Ice.seals"]
# # head(iceC.a1b.f4)
# iceC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceC.a1b.f4.up[i] <- max(iceC.a1b.f4[i,])
# iceC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) iceC.a1b.f4.lo[i] <- min(iceC.a1b.f4[i,])

