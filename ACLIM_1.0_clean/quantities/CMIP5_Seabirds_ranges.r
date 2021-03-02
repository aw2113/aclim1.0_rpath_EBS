# More ACLIM plots
# SEABIRDS

rcp.yrs <- 1991:2099
a1b.yrs <- 1991:2039
ces.yrs <- 1991:2080

# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Oth.birds biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
obrdB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(obrdB.45.f1.80) <- c("gfd","mir","ces")
row.names(obrdB.45.f1.80) <- 1991:2080
obrdB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Oth.birds"]
obrdB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Oth.birds"]
obrdB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Oth.birds"]
# head(obrdB.45.f1.80)
obrdB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdB.45.f1.80.up[i] <- max(obrdB.45.f1.80[i,])
obrdB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdB.45.f1.80.lo[i] <- min(obrdB.45.f1.80[i,])
# Everything from 2081-2099
obrdB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(obrdB.45.f1.99) <- c("gfd","mir")
row.names(obrdB.45.f1.99) <- 2081:2099
obrdB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Oth.birds"]
obrdB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Oth.birds"]
# head(obrdB.45.f1.99)
obrdB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdB.45.f1.99.up[i] <- max(obrdB.45.f1.99[i,])
obrdB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdB.45.f1.99.lo[i] <- min(obrdB.45.f1.99[i,])
# now append these two time periods
obrdB.45.f1.up <- c(obrdB.45.f1.80.up,obrdB.45.f1.99.up)
obrdB.45.f1.lo <- c(obrdB.45.f1.80.lo,obrdB.45.f1.99.lo)

# RCP 8.5
obrdB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(obrdB.85.f1) <- c("gfd","mir","ces")
row.names(obrdB.85.f1) <- 1991:2099
obrdB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Oth.birds"]
obrdB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Oth.birds"]
obrdB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Oth.birds"]
# head(obrdB.85.f1)
obrdB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdB.85.f1.up[i] <- max(obrdB.85.f1[i,])
obrdB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdB.85.f1.lo[i] <- min(obrdB.85.f1[i,])

# # SRES A1B
# obrdB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(obrdB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(obrdB.a1b.f1) <- 1991:2039
# obrdB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Oth.birds"]
# obrdB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Oth.birds"]
# obrdB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Oth.birds"]
# # head(obrdB.a1b.f1)
# obrdB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdB.a1b.f1.up[i] <- max(obrdB.a1b.f1[i,])
# obrdB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdB.a1b.f1.lo[i] <- min(obrdB.a1b.f1[i,])

# Oth.birds Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
obrdC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(obrdC.45.f1.80) <- c("gfd","mir","ces")
row.names(obrdC.45.f1.80) <- 1991:2080
obrdC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Oth.birds"]
obrdC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Oth.birds"]
obrdC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Oth.birds"]
# head(obrdC.45.f1.80)
obrdC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdC.45.f1.80.up[i] <- max(obrdC.45.f1.80[i,])
obrdC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdC.45.f1.80.lo[i] <- min(obrdC.45.f1.80[i,])
# Everything from 2081-2099
obrdC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(obrdC.45.f1.99) <- c("gfd","mir")
row.names(obrdC.45.f1.99) <- 2081:2099
obrdC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Oth.birds"]
obrdC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Oth.birds"]
# head(obrdC.45.f1.99)
obrdC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdC.45.f1.99.up[i] <- max(obrdC.45.f1.99[i,])
obrdC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdC.45.f1.99.lo[i] <- min(obrdC.45.f1.99[i,])
# now append these two time periods
obrdC.45.f1.up <- c(obrdC.45.f1.80.up,obrdC.45.f1.99.up)
obrdC.45.f1.lo <- c(obrdC.45.f1.80.lo,obrdC.45.f1.99.lo)

# RCP 8.5
obrdC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(obrdC.85.f1) <- c("gfd","mir","ces")
row.names(obrdC.85.f1) <- 1991:2099
obrdC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Oth.birds"]
obrdC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Oth.birds"]
obrdC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Oth.birds"]
# head(obrdC.85.f1)
obrdC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdC.85.f1.up[i] <- max(obrdC.85.f1[i,])
obrdC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdC.85.f1.lo[i] <- min(obrdC.85.f1[i,])

# # SRES A1B
# obrdC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(obrdC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(obrdC.a1b.f1) <- 1991:2039
# obrdC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Oth.birds"]
# obrdC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Oth.birds"]
# obrdC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Oth.birds"]
# # head(obrdC.a1b.f1)
# obrdC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdC.a1b.f1.up[i] <- max(obrdC.a1b.f1[i,])
# obrdC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdC.a1b.f1.lo[i] <- min(obrdC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Oth.birds F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
obrdB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(obrdB.45.f2.80) <- c("gfd","mir","ces")
row.names(obrdB.45.f2.80) <- 1991:2080
obrdB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Oth.birds"]
obrdB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Oth.birds"]
obrdB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Oth.birds"]
# head(obrdB.45.f2.80)
obrdB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdB.45.f2.80.up[i] <- max(obrdB.45.f2.80[i,])
obrdB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdB.45.f2.80.lo[i] <- min(obrdB.45.f2.80[i,])
# Everything from 2081-2099
obrdB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(obrdB.45.f2.99) <- c("gfd","mir")
row.names(obrdB.45.f2.99) <- 2081:2099
obrdB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Oth.birds"]
obrdB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Oth.birds"]
# head(obrdB.45.f2.99)
obrdB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdB.45.f2.99.up[i] <- max(obrdB.45.f2.99[i,])
obrdB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdB.45.f2.99.lo[i] <- min(obrdB.45.f2.99[i,])
# now append these two time periods
obrdB.45.f2.up <- c(obrdB.45.f2.80.up,obrdB.45.f2.99.up)
obrdB.45.f2.lo <- c(obrdB.45.f2.80.lo,obrdB.45.f2.99.lo)

# RCP 8.5
obrdB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(obrdB.85.f2) <- c("gfd","mir","ces")
row.names(obrdB.85.f2) <- 1991:2099
obrdB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Oth.birds"]
obrdB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Oth.birds"]
obrdB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Oth.birds"]
# head(obrdB.85.f2)
obrdB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdB.85.f2.up[i] <- max(obrdB.85.f2[i,])
obrdB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdB.85.f2.lo[i] <- min(obrdB.85.f2[i,])

# # SRES A1B
# obrdB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(obrdB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(obrdB.a1b.f2) <- 1991:2039
# obrdB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Oth.birds"]
# obrdB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Oth.birds"]
# obrdB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Oth.birds"]
# # head(obrdB.a1b.f2)
# obrdB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdB.a1b.f2.up[i] <- max(obrdB.a1b.f2[i,])
# obrdB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdB.a1b.f2.lo[i] <- min(obrdB.a1b.f2[i,])

# Oth.birds Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
obrdC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(obrdC.45.f2.80) <- c("gfd","mir","ces")
row.names(obrdC.45.f2.80) <- 1991:2080
obrdC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Oth.birds"]
obrdC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Oth.birds"]
obrdC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Oth.birds"]
# head(obrdC.45.f2.80)
obrdC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdC.45.f2.80.up[i] <- max(obrdC.45.f2.80[i,])
obrdC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdC.45.f2.80.lo[i] <- min(obrdC.45.f2.80[i,])
# Everything from 2081-2099
obrdC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(obrdC.45.f2.99) <- c("gfd","mir")
row.names(obrdC.45.f2.99) <- 2081:2099
obrdC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Oth.birds"]
obrdC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Oth.birds"]
# head(obrdC.45.f2.99)
obrdC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdC.45.f2.99.up[i] <- max(obrdC.45.f2.99[i,])
obrdC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdC.45.f2.99.lo[i] <- min(obrdC.45.f2.99[i,])
# now append these two time periods
obrdC.45.f2.up <- c(obrdC.45.f2.80.up,obrdC.45.f2.99.up)
obrdC.45.f2.lo <- c(obrdC.45.f2.80.lo,obrdC.45.f2.99.lo)

# RCP 8.5
obrdC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(obrdC.85.f2) <- c("gfd","mir","ces")
row.names(obrdC.85.f2) <- 1991:2099
obrdC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Oth.birds"]
obrdC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Oth.birds"]
obrdC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Oth.birds"]
# head(obrdC.85.f2)
obrdC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdC.85.f2.up[i] <- max(obrdC.85.f2[i,])
obrdC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdC.85.f2.lo[i] <- min(obrdC.85.f2[i,])

# # SRES A1B
# obrdC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(obrdC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(obrdC.a1b.f2) <- 1991:2039
# obrdC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Oth.birds"]
# obrdC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Oth.birds"]
# obrdC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Oth.birds"]
# # head(obrdC.a1b.f2)
# obrdC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdC.a1b.f2.up[i] <- max(obrdC.a1b.f2[i,])
# obrdC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdC.a1b.f2.lo[i] <- min(obrdC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Oth.birds F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
obrdB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(obrdB.45.f3.80) <- c("gfd","mir","ces")
row.names(obrdB.45.f3.80) <- 1991:2080
obrdB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Oth.birds"]
obrdB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Oth.birds"]
obrdB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Oth.birds"]
# head(obrdB.45.f3.80)
obrdB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdB.45.f3.80.up[i] <- max(obrdB.45.f3.80[i,])
obrdB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdB.45.f3.80.lo[i] <- min(obrdB.45.f3.80[i,])
# Everything from 2081-2099
obrdB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(obrdB.45.f3.99) <- c("gfd","mir")
row.names(obrdB.45.f3.99) <- 2081:2099
obrdB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Oth.birds"]
obrdB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Oth.birds"]
# head(obrdB.45.f3.99)
obrdB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdB.45.f3.99.up[i] <- max(obrdB.45.f3.99[i,])
obrdB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdB.45.f3.99.lo[i] <- min(obrdB.45.f3.99[i,])
# now append these two time periods
obrdB.45.f3.up <- c(obrdB.45.f3.80.up,obrdB.45.f3.99.up)
obrdB.45.f3.lo <- c(obrdB.45.f3.80.lo,obrdB.45.f3.99.lo)

# RCP 8.5
obrdB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(obrdB.85.f3) <- c("gfd","mir","ces")
row.names(obrdB.85.f3) <- 1991:2099
obrdB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Oth.birds"]
obrdB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Oth.birds"]
obrdB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Oth.birds"]
# head(obrdB.85.f3)
obrdB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdB.85.f3.up[i] <- max(obrdB.85.f3[i,])
obrdB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdB.85.f3.lo[i] <- min(obrdB.85.f3[i,])

# # SRES A1B
# obrdB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(obrdB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(obrdB.a1b.f3) <- 1991:2039
# obrdB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Oth.birds"]
# obrdB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Oth.birds"]
# obrdB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Oth.birds"]
# # head(obrdB.a1b.f3)
# obrdB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdB.a1b.f3.up[i] <- max(obrdB.a1b.f3[i,])
# obrdB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdB.a1b.f3.lo[i] <- min(obrdB.a1b.f3[i,])

# Oth.birds Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
obrdC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(obrdC.45.f3.80) <- c("gfd","mir","ces")
row.names(obrdC.45.f3.80) <- 1991:2080
obrdC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Oth.birds"]
obrdC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Oth.birds"]
obrdC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Oth.birds"]
# head(obrdC.45.f3.80)
obrdC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdC.45.f3.80.up[i] <- max(obrdC.45.f3.80[i,])
obrdC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdC.45.f3.80.lo[i] <- min(obrdC.45.f3.80[i,])
# Everything from 2081-2099
obrdC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(obrdC.45.f3.99) <- c("gfd","mir")
row.names(obrdC.45.f3.99) <- 2081:2099
obrdC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Oth.birds"]
obrdC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Oth.birds"]
# head(obrdC.45.f3.99)
obrdC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdC.45.f3.99.up[i] <- max(obrdC.45.f3.99[i,])
obrdC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdC.45.f3.99.lo[i] <- min(obrdC.45.f3.99[i,])
# now append these two time periods
obrdC.45.f3.up <- c(obrdC.45.f3.80.up,obrdC.45.f3.99.up)
obrdC.45.f3.lo <- c(obrdC.45.f3.80.lo,obrdC.45.f3.99.lo)

# RCP 8.5
obrdC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(obrdC.85.f3) <- c("gfd","mir","ces")
row.names(obrdC.85.f3) <- 1991:2099
obrdC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Oth.birds"]
obrdC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Oth.birds"]
obrdC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Oth.birds"]
# head(obrdC.85.f3)
obrdC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdC.85.f3.up[i] <- max(obrdC.85.f3[i,])
obrdC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdC.85.f3.lo[i] <- min(obrdC.85.f3[i,])

# # SRES A1B
# obrdC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(obrdC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(obrdC.a1b.f3) <- 1991:2039
# obrdC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Oth.birds"]
# obrdC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Oth.birds"]
# obrdC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Oth.birds"]
# # head(obrdC.a1b.f3)
# obrdC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdC.a1b.f3.up[i] <- max(obrdC.a1b.f3[i,])
# obrdC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdC.a1b.f3.lo[i] <- min(obrdC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Oth.birds F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
obrdB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(obrdB.45.f4.80) <- c("gfd","mir","ces")
row.names(obrdB.45.f4.80) <- 1991:2080
obrdB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Oth.birds"]
obrdB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Oth.birds"]
obrdB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Oth.birds"]
# head(obrdB.45.f4.80)
obrdB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdB.45.f4.80.up[i] <- max(obrdB.45.f4.80[i,])
obrdB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdB.45.f4.80.lo[i] <- min(obrdB.45.f4.80[i,])
# Everything from 2081-2099
obrdB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(obrdB.45.f4.99) <- c("gfd","mir")
row.names(obrdB.45.f4.99) <- 2081:2099
obrdB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Oth.birds"]
obrdB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Oth.birds"]
# head(obrdB.45.f4.99)
obrdB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdB.45.f4.99.up[i] <- max(obrdB.45.f4.99[i,])
obrdB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdB.45.f4.99.lo[i] <- min(obrdB.45.f4.99[i,])
# now append these two time periods
obrdB.45.f4.up <- c(obrdB.45.f4.80.up,obrdB.45.f4.99.up)
obrdB.45.f4.lo <- c(obrdB.45.f4.80.lo,obrdB.45.f4.99.lo)

# RCP 8.5
obrdB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(obrdB.85.f4) <- c("gfd","mir","ces")
row.names(obrdB.85.f4) <- 1991:2099
obrdB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Oth.birds"]
obrdB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Oth.birds"]
obrdB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Oth.birds"]
# head(obrdB.85.f4)
obrdB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdB.85.f4.up[i] <- max(obrdB.85.f4[i,])
obrdB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdB.85.f4.lo[i] <- min(obrdB.85.f4[i,])

# # SRES A1B
# obrdB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(obrdB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(obrdB.a1b.f4) <- 1991:2039
# obrdB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Oth.birds"]
# obrdB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Oth.birds"]
# obrdB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Oth.birds"]
# # head(obrdB.a1b.f4)
# obrdB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdB.a1b.f4.up[i] <- max(obrdB.a1b.f4[i,])
# obrdB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdB.a1b.f4.lo[i] <- min(obrdB.a1b.f4[i,])

# Oth.birds Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
obrdC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(obrdC.45.f4.80) <- c("gfd","mir","ces")
row.names(obrdC.45.f4.80) <- 1991:2080
obrdC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Oth.birds"]
obrdC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Oth.birds"]
obrdC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Oth.birds"]
# head(obrdC.45.f4.80)
obrdC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdC.45.f4.80.up[i] <- max(obrdC.45.f4.80[i,])
obrdC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) obrdC.45.f4.80.lo[i] <- min(obrdC.45.f4.80[i,])
# Everything from 2081-2099
obrdC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(obrdC.45.f4.99) <- c("gfd","mir")
row.names(obrdC.45.f4.99) <- 2081:2099
obrdC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Oth.birds"]
obrdC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Oth.birds"]
# head(obrdC.45.f4.99)
obrdC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdC.45.f4.99.up[i] <- max(obrdC.45.f4.99[i,])
obrdC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) obrdC.45.f4.99.lo[i] <- min(obrdC.45.f4.99[i,])
# now append these two time periods
obrdC.45.f4.up <- c(obrdC.45.f4.80.up,obrdC.45.f4.99.up)
obrdC.45.f4.lo <- c(obrdC.45.f4.80.lo,obrdC.45.f4.99.lo)

# RCP 8.5
obrdC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(obrdC.85.f4) <- c("gfd","mir","ces")
row.names(obrdC.85.f4) <- 1991:2099
obrdC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Oth.birds"]
obrdC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Oth.birds"]
obrdC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Oth.birds"]
# head(obrdC.85.f4)
obrdC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdC.85.f4.up[i] <- max(obrdC.85.f4[i,])
obrdC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) obrdC.85.f4.lo[i] <- min(obrdC.85.f4[i,])

# # SRES A1B
# obrdC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(obrdC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(obrdC.a1b.f4) <- 1991:2039
# obrdC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Oth.birds"]
# obrdC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Oth.birds"]
# obrdC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Oth.birds"]
# # head(obrdC.a1b.f4)
# obrdC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdC.a1b.f4.up[i] <- max(obrdC.a1b.f4[i,])
# obrdC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) obrdC.a1b.f4.lo[i] <- min(obrdC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Murres.puffins biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
mpfB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mpfB.45.f1.80) <- c("gfd","mir","ces")
row.names(mpfB.45.f1.80) <- 1991:2080
mpfB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Murres.puffins"]
mpfB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Murres.puffins"]
mpfB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Murres.puffins"]
# head(mpfB.45.f1.80)
mpfB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfB.45.f1.80.up[i] <- max(mpfB.45.f1.80[i,])
mpfB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfB.45.f1.80.lo[i] <- min(mpfB.45.f1.80[i,])
# Everything from 2081-2099
mpfB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mpfB.45.f1.99) <- c("gfd","mir")
row.names(mpfB.45.f1.99) <- 2081:2099
mpfB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Murres.puffins"]
mpfB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Murres.puffins"]
# head(mpfB.45.f1.99)
mpfB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfB.45.f1.99.up[i] <- max(mpfB.45.f1.99[i,])
mpfB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfB.45.f1.99.lo[i] <- min(mpfB.45.f1.99[i,])
# now append these two time periods
mpfB.45.f1.up <- c(mpfB.45.f1.80.up,mpfB.45.f1.99.up)
mpfB.45.f1.lo <- c(mpfB.45.f1.80.lo,mpfB.45.f1.99.lo)

# RCP 8.5
mpfB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mpfB.85.f1) <- c("gfd","mir","ces")
row.names(mpfB.85.f1) <- 1991:2099
mpfB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Murres.puffins"]
mpfB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Murres.puffins"]
mpfB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Murres.puffins"]
# head(mpfB.85.f1)
mpfB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfB.85.f1.up[i] <- max(mpfB.85.f1[i,])
mpfB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfB.85.f1.lo[i] <- min(mpfB.85.f1[i,])

# # SRES A1B
# mpfB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mpfB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(mpfB.a1b.f1) <- 1991:2039
# mpfB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Murres.puffins"]
# mpfB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Murres.puffins"]
# mpfB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Murres.puffins"]
# # head(mpfB.a1b.f1)
# mpfB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfB.a1b.f1.up[i] <- max(mpfB.a1b.f1[i,])
# mpfB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfB.a1b.f1.lo[i] <- min(mpfB.a1b.f1[i,])

# Murres.puffins Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
mpfC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mpfC.45.f1.80) <- c("gfd","mir","ces")
row.names(mpfC.45.f1.80) <- 1991:2080
mpfC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Murres.puffins"]
mpfC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Murres.puffins"]
mpfC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Murres.puffins"]
# head(mpfC.45.f1.80)
mpfC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfC.45.f1.80.up[i] <- max(mpfC.45.f1.80[i,])
mpfC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfC.45.f1.80.lo[i] <- min(mpfC.45.f1.80[i,])
# Everything from 2081-2099
mpfC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mpfC.45.f1.99) <- c("gfd","mir")
row.names(mpfC.45.f1.99) <- 2081:2099
mpfC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Murres.puffins"]
mpfC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Murres.puffins"]
# head(mpfC.45.f1.99)
mpfC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfC.45.f1.99.up[i] <- max(mpfC.45.f1.99[i,])
mpfC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfC.45.f1.99.lo[i] <- min(mpfC.45.f1.99[i,])
# now append these two time periods
mpfC.45.f1.up <- c(mpfC.45.f1.80.up,mpfC.45.f1.99.up)
mpfC.45.f1.lo <- c(mpfC.45.f1.80.lo,mpfC.45.f1.99.lo)

# RCP 8.5
mpfC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mpfC.85.f1) <- c("gfd","mir","ces")
row.names(mpfC.85.f1) <- 1991:2099
mpfC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Murres.puffins"]
mpfC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Murres.puffins"]
mpfC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Murres.puffins"]
# head(mpfC.85.f1)
mpfC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfC.85.f1.up[i] <- max(mpfC.85.f1[i,])
mpfC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfC.85.f1.lo[i] <- min(mpfC.85.f1[i,])

# # SRES A1B
# mpfC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mpfC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(mpfC.a1b.f1) <- 1991:2039
# mpfC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Murres.puffins"]
# mpfC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Murres.puffins"]
# mpfC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Murres.puffins"]
# # head(mpfC.a1b.f1)
# mpfC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfC.a1b.f1.up[i] <- max(mpfC.a1b.f1[i,])
# mpfC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfC.a1b.f1.lo[i] <- min(mpfC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Murres.puffins F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
mpfB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mpfB.45.f2.80) <- c("gfd","mir","ces")
row.names(mpfB.45.f2.80) <- 1991:2080
mpfB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Murres.puffins"]
mpfB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Murres.puffins"]
mpfB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Murres.puffins"]
# head(mpfB.45.f2.80)
mpfB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfB.45.f2.80.up[i] <- max(mpfB.45.f2.80[i,])
mpfB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfB.45.f2.80.lo[i] <- min(mpfB.45.f2.80[i,])
# Everything from 2081-2099
mpfB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mpfB.45.f2.99) <- c("gfd","mir")
row.names(mpfB.45.f2.99) <- 2081:2099
mpfB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Murres.puffins"]
mpfB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Murres.puffins"]
# head(mpfB.45.f2.99)
mpfB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfB.45.f2.99.up[i] <- max(mpfB.45.f2.99[i,])
mpfB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfB.45.f2.99.lo[i] <- min(mpfB.45.f2.99[i,])
# now append these two time periods
mpfB.45.f2.up <- c(mpfB.45.f2.80.up,mpfB.45.f2.99.up)
mpfB.45.f2.lo <- c(mpfB.45.f2.80.lo,mpfB.45.f2.99.lo)

# RCP 8.5
mpfB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mpfB.85.f2) <- c("gfd","mir","ces")
row.names(mpfB.85.f2) <- 1991:2099
mpfB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Murres.puffins"]
mpfB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Murres.puffins"]
mpfB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Murres.puffins"]
# head(mpfB.85.f2)
mpfB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfB.85.f2.up[i] <- max(mpfB.85.f2[i,])
mpfB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfB.85.f2.lo[i] <- min(mpfB.85.f2[i,])

# # SRES A1B
# mpfB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mpfB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(mpfB.a1b.f2) <- 1991:2039
# mpfB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Murres.puffins"]
# mpfB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Murres.puffins"]
# mpfB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Murres.puffins"]
# # head(mpfB.a1b.f2)
# mpfB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfB.a1b.f2.up[i] <- max(mpfB.a1b.f2[i,])
# mpfB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfB.a1b.f2.lo[i] <- min(mpfB.a1b.f2[i,])

# Murres.puffins Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
mpfC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mpfC.45.f2.80) <- c("gfd","mir","ces")
row.names(mpfC.45.f2.80) <- 1991:2080
mpfC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Murres.puffins"]
mpfC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Murres.puffins"]
mpfC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Murres.puffins"]
# head(mpfC.45.f2.80)
mpfC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfC.45.f2.80.up[i] <- max(mpfC.45.f2.80[i,])
mpfC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfC.45.f2.80.lo[i] <- min(mpfC.45.f2.80[i,])
# Everything from 2081-2099
mpfC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mpfC.45.f2.99) <- c("gfd","mir")
row.names(mpfC.45.f2.99) <- 2081:2099
mpfC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Murres.puffins"]
mpfC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Murres.puffins"]
# head(mpfC.45.f2.99)
mpfC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfC.45.f2.99.up[i] <- max(mpfC.45.f2.99[i,])
mpfC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfC.45.f2.99.lo[i] <- min(mpfC.45.f2.99[i,])
# now append these two time periods
mpfC.45.f2.up <- c(mpfC.45.f2.80.up,mpfC.45.f2.99.up)
mpfC.45.f2.lo <- c(mpfC.45.f2.80.lo,mpfC.45.f2.99.lo)

# RCP 8.5
mpfC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mpfC.85.f2) <- c("gfd","mir","ces")
row.names(mpfC.85.f2) <- 1991:2099
mpfC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Murres.puffins"]
mpfC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Murres.puffins"]
mpfC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Murres.puffins"]
# head(mpfC.85.f2)
mpfC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfC.85.f2.up[i] <- max(mpfC.85.f2[i,])
mpfC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfC.85.f2.lo[i] <- min(mpfC.85.f2[i,])

# # SRES A1B
# mpfC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mpfC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(mpfC.a1b.f2) <- 1991:2039
# mpfC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Murres.puffins"]
# mpfC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Murres.puffins"]
# mpfC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Murres.puffins"]
# # head(mpfC.a1b.f2)
# mpfC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfC.a1b.f2.up[i] <- max(mpfC.a1b.f2[i,])
# mpfC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfC.a1b.f2.lo[i] <- min(mpfC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Murres.puffins F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
mpfB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mpfB.45.f3.80) <- c("gfd","mir","ces")
row.names(mpfB.45.f3.80) <- 1991:2080
mpfB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Murres.puffins"]
mpfB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Murres.puffins"]
mpfB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Murres.puffins"]
# head(mpfB.45.f3.80)
mpfB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfB.45.f3.80.up[i] <- max(mpfB.45.f3.80[i,])
mpfB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfB.45.f3.80.lo[i] <- min(mpfB.45.f3.80[i,])
# Everything from 2081-2099
mpfB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mpfB.45.f3.99) <- c("gfd","mir")
row.names(mpfB.45.f3.99) <- 2081:2099
mpfB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Murres.puffins"]
mpfB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Murres.puffins"]
# head(mpfB.45.f3.99)
mpfB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfB.45.f3.99.up[i] <- max(mpfB.45.f3.99[i,])
mpfB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfB.45.f3.99.lo[i] <- min(mpfB.45.f3.99[i,])
# now append these two time periods
mpfB.45.f3.up <- c(mpfB.45.f3.80.up,mpfB.45.f3.99.up)
mpfB.45.f3.lo <- c(mpfB.45.f3.80.lo,mpfB.45.f3.99.lo)

# RCP 8.5
mpfB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mpfB.85.f3) <- c("gfd","mir","ces")
row.names(mpfB.85.f3) <- 1991:2099
mpfB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Murres.puffins"]
mpfB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Murres.puffins"]
mpfB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Murres.puffins"]
# head(mpfB.85.f3)
mpfB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfB.85.f3.up[i] <- max(mpfB.85.f3[i,])
mpfB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfB.85.f3.lo[i] <- min(mpfB.85.f3[i,])

# # SRES A1B
# mpfB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mpfB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(mpfB.a1b.f3) <- 1991:2039
# mpfB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Murres.puffins"]
# mpfB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Murres.puffins"]
# mpfB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Murres.puffins"]
# # head(mpfB.a1b.f3)
# mpfB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfB.a1b.f3.up[i] <- max(mpfB.a1b.f3[i,])
# mpfB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfB.a1b.f3.lo[i] <- min(mpfB.a1b.f3[i,])

# Murres.puffins Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
mpfC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mpfC.45.f3.80) <- c("gfd","mir","ces")
row.names(mpfC.45.f3.80) <- 1991:2080
mpfC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Murres.puffins"]
mpfC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Murres.puffins"]
mpfC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Murres.puffins"]
# head(mpfC.45.f3.80)
mpfC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfC.45.f3.80.up[i] <- max(mpfC.45.f3.80[i,])
mpfC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfC.45.f3.80.lo[i] <- min(mpfC.45.f3.80[i,])
# Everything from 2081-2099
mpfC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mpfC.45.f3.99) <- c("gfd","mir")
row.names(mpfC.45.f3.99) <- 2081:2099
mpfC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Murres.puffins"]
mpfC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Murres.puffins"]
# head(mpfC.45.f3.99)
mpfC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfC.45.f3.99.up[i] <- max(mpfC.45.f3.99[i,])
mpfC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfC.45.f3.99.lo[i] <- min(mpfC.45.f3.99[i,])
# now append these two time periods
mpfC.45.f3.up <- c(mpfC.45.f3.80.up,mpfC.45.f3.99.up)
mpfC.45.f3.lo <- c(mpfC.45.f3.80.lo,mpfC.45.f3.99.lo)

# RCP 8.5
mpfC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mpfC.85.f3) <- c("gfd","mir","ces")
row.names(mpfC.85.f3) <- 1991:2099
mpfC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Murres.puffins"]
mpfC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Murres.puffins"]
mpfC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Murres.puffins"]
# head(mpfC.85.f3)
mpfC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfC.85.f3.up[i] <- max(mpfC.85.f3[i,])
mpfC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfC.85.f3.lo[i] <- min(mpfC.85.f3[i,])

# # SRES A1B
# mpfC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mpfC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(mpfC.a1b.f3) <- 1991:2039
# mpfC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Murres.puffins"]
# mpfC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Murres.puffins"]
# mpfC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Murres.puffins"]
# # head(mpfC.a1b.f3)
# mpfC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfC.a1b.f3.up[i] <- max(mpfC.a1b.f3[i,])
# mpfC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfC.a1b.f3.lo[i] <- min(mpfC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Murres.puffins F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
mpfB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mpfB.45.f4.80) <- c("gfd","mir","ces")
row.names(mpfB.45.f4.80) <- 1991:2080
mpfB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Murres.puffins"]
mpfB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Murres.puffins"]
mpfB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Murres.puffins"]
# head(mpfB.45.f4.80)
mpfB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfB.45.f4.80.up[i] <- max(mpfB.45.f4.80[i,])
mpfB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfB.45.f4.80.lo[i] <- min(mpfB.45.f4.80[i,])
# Everything from 2081-2099
mpfB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mpfB.45.f4.99) <- c("gfd","mir")
row.names(mpfB.45.f4.99) <- 2081:2099
mpfB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Murres.puffins"]
mpfB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Murres.puffins"]
# head(mpfB.45.f4.99)
mpfB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfB.45.f4.99.up[i] <- max(mpfB.45.f4.99[i,])
mpfB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfB.45.f4.99.lo[i] <- min(mpfB.45.f4.99[i,])
# now append these two time periods
mpfB.45.f4.up <- c(mpfB.45.f4.80.up,mpfB.45.f4.99.up)
mpfB.45.f4.lo <- c(mpfB.45.f4.80.lo,mpfB.45.f4.99.lo)

# RCP 8.5
mpfB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mpfB.85.f4) <- c("gfd","mir","ces")
row.names(mpfB.85.f4) <- 1991:2099
mpfB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Murres.puffins"]
mpfB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Murres.puffins"]
mpfB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Murres.puffins"]
# head(mpfB.85.f4)
mpfB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfB.85.f4.up[i] <- max(mpfB.85.f4[i,])
mpfB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfB.85.f4.lo[i] <- min(mpfB.85.f4[i,])

# # SRES A1B
# mpfB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mpfB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(mpfB.a1b.f4) <- 1991:2039
# mpfB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Murres.puffins"]
# mpfB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Murres.puffins"]
# mpfB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Murres.puffins"]
# # head(mpfB.a1b.f4)
# mpfB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfB.a1b.f4.up[i] <- max(mpfB.a1b.f4[i,])
# mpfB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfB.a1b.f4.lo[i] <- min(mpfB.a1b.f4[i,])

# Murres.puffins Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
mpfC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(mpfC.45.f4.80) <- c("gfd","mir","ces")
row.names(mpfC.45.f4.80) <- 1991:2080
mpfC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Murres.puffins"]
mpfC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Murres.puffins"]
mpfC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Murres.puffins"]
# head(mpfC.45.f4.80)
mpfC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfC.45.f4.80.up[i] <- max(mpfC.45.f4.80[i,])
mpfC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) mpfC.45.f4.80.lo[i] <- min(mpfC.45.f4.80[i,])
# Everything from 2081-2099
mpfC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(mpfC.45.f4.99) <- c("gfd","mir")
row.names(mpfC.45.f4.99) <- 2081:2099
mpfC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Murres.puffins"]
mpfC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Murres.puffins"]
# head(mpfC.45.f4.99)
mpfC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfC.45.f4.99.up[i] <- max(mpfC.45.f4.99[i,])
mpfC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) mpfC.45.f4.99.lo[i] <- min(mpfC.45.f4.99[i,])
# now append these two time periods
mpfC.45.f4.up <- c(mpfC.45.f4.80.up,mpfC.45.f4.99.up)
mpfC.45.f4.lo <- c(mpfC.45.f4.80.lo,mpfC.45.f4.99.lo)

# RCP 8.5
mpfC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(mpfC.85.f4) <- c("gfd","mir","ces")
row.names(mpfC.85.f4) <- 1991:2099
mpfC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Murres.puffins"]
mpfC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Murres.puffins"]
mpfC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Murres.puffins"]
# head(mpfC.85.f4)
mpfC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfC.85.f4.up[i] <- max(mpfC.85.f4[i,])
mpfC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) mpfC.85.f4.lo[i] <- min(mpfC.85.f4[i,])

# # SRES A1B
# mpfC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(mpfC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(mpfC.a1b.f4) <- 1991:2039
# mpfC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Murres.puffins"]
# mpfC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Murres.puffins"]
# mpfC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Murres.puffins"]
# # head(mpfC.a1b.f4)
# mpfC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfC.a1b.f4.up[i] <- max(mpfC.a1b.f4[i,])
# mpfC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) mpfC.a1b.f4.lo[i] <- min(mpfC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Kittiwakes biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
ktwB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ktwB.45.f1.80) <- c("gfd","mir","ces")
row.names(ktwB.45.f1.80) <- 1991:2080
ktwB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Kittiwakes"]
ktwB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Kittiwakes"]
ktwB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Kittiwakes"]
# head(ktwB.45.f1.80)
ktwB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwB.45.f1.80.up[i] <- max(ktwB.45.f1.80[i,])
ktwB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwB.45.f1.80.lo[i] <- min(ktwB.45.f1.80[i,])
# Everything from 2081-2099
ktwB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ktwB.45.f1.99) <- c("gfd","mir")
row.names(ktwB.45.f1.99) <- 2081:2099
ktwB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Kittiwakes"]
ktwB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Kittiwakes"]
# head(ktwB.45.f1.99)
ktwB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwB.45.f1.99.up[i] <- max(ktwB.45.f1.99[i,])
ktwB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwB.45.f1.99.lo[i] <- min(ktwB.45.f1.99[i,])
# now append these two time periods
ktwB.45.f1.up <- c(ktwB.45.f1.80.up,ktwB.45.f1.99.up)
ktwB.45.f1.lo <- c(ktwB.45.f1.80.lo,ktwB.45.f1.99.lo)

# RCP 8.5
ktwB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ktwB.85.f1) <- c("gfd","mir","ces")
row.names(ktwB.85.f1) <- 1991:2099
ktwB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Kittiwakes"]
ktwB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Kittiwakes"]
ktwB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Kittiwakes"]
# head(ktwB.85.f1)
ktwB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwB.85.f1.up[i] <- max(ktwB.85.f1[i,])
ktwB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwB.85.f1.lo[i] <- min(ktwB.85.f1[i,])

# # SRES A1B
# ktwB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ktwB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(ktwB.a1b.f1) <- 1991:2039
# ktwB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Kittiwakes"]
# ktwB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Kittiwakes"]
# ktwB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Kittiwakes"]
# # head(ktwB.a1b.f1)
# ktwB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwB.a1b.f1.up[i] <- max(ktwB.a1b.f1[i,])
# ktwB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwB.a1b.f1.lo[i] <- min(ktwB.a1b.f1[i,])

# Kittiwakes Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
ktwC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ktwC.45.f1.80) <- c("gfd","mir","ces")
row.names(ktwC.45.f1.80) <- 1991:2080
ktwC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Kittiwakes"]
ktwC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Kittiwakes"]
ktwC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Kittiwakes"]
# head(ktwC.45.f1.80)
ktwC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwC.45.f1.80.up[i] <- max(ktwC.45.f1.80[i,])
ktwC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwC.45.f1.80.lo[i] <- min(ktwC.45.f1.80[i,])
# Everything from 2081-2099
ktwC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ktwC.45.f1.99) <- c("gfd","mir")
row.names(ktwC.45.f1.99) <- 2081:2099
ktwC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Kittiwakes"]
ktwC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Kittiwakes"]
# head(ktwC.45.f1.99)
ktwC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwC.45.f1.99.up[i] <- max(ktwC.45.f1.99[i,])
ktwC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwC.45.f1.99.lo[i] <- min(ktwC.45.f1.99[i,])
# now append these two time periods
ktwC.45.f1.up <- c(ktwC.45.f1.80.up,ktwC.45.f1.99.up)
ktwC.45.f1.lo <- c(ktwC.45.f1.80.lo,ktwC.45.f1.99.lo)

# RCP 8.5
ktwC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ktwC.85.f1) <- c("gfd","mir","ces")
row.names(ktwC.85.f1) <- 1991:2099
ktwC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Kittiwakes"]
ktwC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Kittiwakes"]
ktwC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Kittiwakes"]
# head(ktwC.85.f1)
ktwC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwC.85.f1.up[i] <- max(ktwC.85.f1[i,])
ktwC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwC.85.f1.lo[i] <- min(ktwC.85.f1[i,])

# # SRES A1B
# ktwC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ktwC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(ktwC.a1b.f1) <- 1991:2039
# ktwC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Kittiwakes"]
# ktwC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Kittiwakes"]
# ktwC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Kittiwakes"]
# # head(ktwC.a1b.f1)
# ktwC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwC.a1b.f1.up[i] <- max(ktwC.a1b.f1[i,])
# ktwC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwC.a1b.f1.lo[i] <- min(ktwC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Kittiwakes F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
ktwB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ktwB.45.f2.80) <- c("gfd","mir","ces")
row.names(ktwB.45.f2.80) <- 1991:2080
ktwB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Kittiwakes"]
ktwB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Kittiwakes"]
ktwB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Kittiwakes"]
# head(ktwB.45.f2.80)
ktwB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwB.45.f2.80.up[i] <- max(ktwB.45.f2.80[i,])
ktwB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwB.45.f2.80.lo[i] <- min(ktwB.45.f2.80[i,])
# Everything from 2081-2099
ktwB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ktwB.45.f2.99) <- c("gfd","mir")
row.names(ktwB.45.f2.99) <- 2081:2099
ktwB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Kittiwakes"]
ktwB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Kittiwakes"]
# head(ktwB.45.f2.99)
ktwB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwB.45.f2.99.up[i] <- max(ktwB.45.f2.99[i,])
ktwB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwB.45.f2.99.lo[i] <- min(ktwB.45.f2.99[i,])
# now append these two time periods
ktwB.45.f2.up <- c(ktwB.45.f2.80.up,ktwB.45.f2.99.up)
ktwB.45.f2.lo <- c(ktwB.45.f2.80.lo,ktwB.45.f2.99.lo)

# RCP 8.5
ktwB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ktwB.85.f2) <- c("gfd","mir","ces")
row.names(ktwB.85.f2) <- 1991:2099
ktwB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Kittiwakes"]
ktwB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Kittiwakes"]
ktwB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Kittiwakes"]
# head(ktwB.85.f2)
ktwB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwB.85.f2.up[i] <- max(ktwB.85.f2[i,])
ktwB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwB.85.f2.lo[i] <- min(ktwB.85.f2[i,])

# # SRES A1B
# ktwB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ktwB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(ktwB.a1b.f2) <- 1991:2039
# ktwB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Kittiwakes"]
# ktwB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Kittiwakes"]
# ktwB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Kittiwakes"]
# # head(ktwB.a1b.f2)
# ktwB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwB.a1b.f2.up[i] <- max(ktwB.a1b.f2[i,])
# ktwB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwB.a1b.f2.lo[i] <- min(ktwB.a1b.f2[i,])

# Kittiwakes Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
ktwC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ktwC.45.f2.80) <- c("gfd","mir","ces")
row.names(ktwC.45.f2.80) <- 1991:2080
ktwC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Kittiwakes"]
ktwC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Kittiwakes"]
ktwC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Kittiwakes"]
# head(ktwC.45.f2.80)
ktwC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwC.45.f2.80.up[i] <- max(ktwC.45.f2.80[i,])
ktwC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwC.45.f2.80.lo[i] <- min(ktwC.45.f2.80[i,])
# Everything from 2081-2099
ktwC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ktwC.45.f2.99) <- c("gfd","mir")
row.names(ktwC.45.f2.99) <- 2081:2099
ktwC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Kittiwakes"]
ktwC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Kittiwakes"]
# head(ktwC.45.f2.99)
ktwC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwC.45.f2.99.up[i] <- max(ktwC.45.f2.99[i,])
ktwC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwC.45.f2.99.lo[i] <- min(ktwC.45.f2.99[i,])
# now append these two time periods
ktwC.45.f2.up <- c(ktwC.45.f2.80.up,ktwC.45.f2.99.up)
ktwC.45.f2.lo <- c(ktwC.45.f2.80.lo,ktwC.45.f2.99.lo)

# RCP 8.5
ktwC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ktwC.85.f2) <- c("gfd","mir","ces")
row.names(ktwC.85.f2) <- 1991:2099
ktwC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Kittiwakes"]
ktwC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Kittiwakes"]
ktwC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Kittiwakes"]
# head(ktwC.85.f2)
ktwC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwC.85.f2.up[i] <- max(ktwC.85.f2[i,])
ktwC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwC.85.f2.lo[i] <- min(ktwC.85.f2[i,])

# # SRES A1B
# ktwC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ktwC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(ktwC.a1b.f2) <- 1991:2039
# ktwC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Kittiwakes"]
# ktwC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Kittiwakes"]
# ktwC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Kittiwakes"]
# # head(ktwC.a1b.f2)
# ktwC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwC.a1b.f2.up[i] <- max(ktwC.a1b.f2[i,])
# ktwC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwC.a1b.f2.lo[i] <- min(ktwC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Kittiwakes F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
ktwB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ktwB.45.f3.80) <- c("gfd","mir","ces")
row.names(ktwB.45.f3.80) <- 1991:2080
ktwB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Kittiwakes"]
ktwB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Kittiwakes"]
ktwB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Kittiwakes"]
# head(ktwB.45.f3.80)
ktwB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwB.45.f3.80.up[i] <- max(ktwB.45.f3.80[i,])
ktwB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwB.45.f3.80.lo[i] <- min(ktwB.45.f3.80[i,])
# Everything from 2081-2099
ktwB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ktwB.45.f3.99) <- c("gfd","mir")
row.names(ktwB.45.f3.99) <- 2081:2099
ktwB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Kittiwakes"]
ktwB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Kittiwakes"]
# head(ktwB.45.f3.99)
ktwB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwB.45.f3.99.up[i] <- max(ktwB.45.f3.99[i,])
ktwB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwB.45.f3.99.lo[i] <- min(ktwB.45.f3.99[i,])
# now append these two time periods
ktwB.45.f3.up <- c(ktwB.45.f3.80.up,ktwB.45.f3.99.up)
ktwB.45.f3.lo <- c(ktwB.45.f3.80.lo,ktwB.45.f3.99.lo)

# RCP 8.5
ktwB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ktwB.85.f3) <- c("gfd","mir","ces")
row.names(ktwB.85.f3) <- 1991:2099
ktwB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Kittiwakes"]
ktwB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Kittiwakes"]
ktwB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Kittiwakes"]
# head(ktwB.85.f3)
ktwB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwB.85.f3.up[i] <- max(ktwB.85.f3[i,])
ktwB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwB.85.f3.lo[i] <- min(ktwB.85.f3[i,])

# # SRES A1B
# ktwB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ktwB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(ktwB.a1b.f3) <- 1991:2039
# ktwB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Kittiwakes"]
# ktwB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Kittiwakes"]
# ktwB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Kittiwakes"]
# # head(ktwB.a1b.f3)
# ktwB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwB.a1b.f3.up[i] <- max(ktwB.a1b.f3[i,])
# ktwB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwB.a1b.f3.lo[i] <- min(ktwB.a1b.f3[i,])

# Kittiwakes Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
ktwC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ktwC.45.f3.80) <- c("gfd","mir","ces")
row.names(ktwC.45.f3.80) <- 1991:2080
ktwC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Kittiwakes"]
ktwC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Kittiwakes"]
ktwC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Kittiwakes"]
# head(ktwC.45.f3.80)
ktwC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwC.45.f3.80.up[i] <- max(ktwC.45.f3.80[i,])
ktwC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwC.45.f3.80.lo[i] <- min(ktwC.45.f3.80[i,])
# Everything from 2081-2099
ktwC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ktwC.45.f3.99) <- c("gfd","mir")
row.names(ktwC.45.f3.99) <- 2081:2099
ktwC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Kittiwakes"]
ktwC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Kittiwakes"]
# head(ktwC.45.f3.99)
ktwC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwC.45.f3.99.up[i] <- max(ktwC.45.f3.99[i,])
ktwC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwC.45.f3.99.lo[i] <- min(ktwC.45.f3.99[i,])
# now append these two time periods
ktwC.45.f3.up <- c(ktwC.45.f3.80.up,ktwC.45.f3.99.up)
ktwC.45.f3.lo <- c(ktwC.45.f3.80.lo,ktwC.45.f3.99.lo)

# RCP 8.5
ktwC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ktwC.85.f3) <- c("gfd","mir","ces")
row.names(ktwC.85.f3) <- 1991:2099
ktwC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Kittiwakes"]
ktwC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Kittiwakes"]
ktwC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Kittiwakes"]
# head(ktwC.85.f3)
ktwC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwC.85.f3.up[i] <- max(ktwC.85.f3[i,])
ktwC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwC.85.f3.lo[i] <- min(ktwC.85.f3[i,])

# # SRES A1B
# ktwC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ktwC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(ktwC.a1b.f3) <- 1991:2039
# ktwC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Kittiwakes"]
# ktwC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Kittiwakes"]
# ktwC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Kittiwakes"]
# # head(ktwC.a1b.f3)
# ktwC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwC.a1b.f3.up[i] <- max(ktwC.a1b.f3[i,])
# ktwC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwC.a1b.f3.lo[i] <- min(ktwC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Kittiwakes F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
ktwB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ktwB.45.f4.80) <- c("gfd","mir","ces")
row.names(ktwB.45.f4.80) <- 1991:2080
ktwB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Kittiwakes"]
ktwB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Kittiwakes"]
ktwB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Kittiwakes"]
# head(ktwB.45.f4.80)
ktwB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwB.45.f4.80.up[i] <- max(ktwB.45.f4.80[i,])
ktwB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwB.45.f4.80.lo[i] <- min(ktwB.45.f4.80[i,])
# Everything from 2081-2099
ktwB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ktwB.45.f4.99) <- c("gfd","mir")
row.names(ktwB.45.f4.99) <- 2081:2099
ktwB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Kittiwakes"]
ktwB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Kittiwakes"]
# head(ktwB.45.f4.99)
ktwB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwB.45.f4.99.up[i] <- max(ktwB.45.f4.99[i,])
ktwB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwB.45.f4.99.lo[i] <- min(ktwB.45.f4.99[i,])
# now append these two time periods
ktwB.45.f4.up <- c(ktwB.45.f4.80.up,ktwB.45.f4.99.up)
ktwB.45.f4.lo <- c(ktwB.45.f4.80.lo,ktwB.45.f4.99.lo)

# RCP 8.5
ktwB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ktwB.85.f4) <- c("gfd","mir","ces")
row.names(ktwB.85.f4) <- 1991:2099
ktwB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Kittiwakes"]
ktwB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Kittiwakes"]
ktwB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Kittiwakes"]
# head(ktwB.85.f4)
ktwB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwB.85.f4.up[i] <- max(ktwB.85.f4[i,])
ktwB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwB.85.f4.lo[i] <- min(ktwB.85.f4[i,])

# # SRES A1B
# ktwB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ktwB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(ktwB.a1b.f4) <- 1991:2039
# ktwB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Kittiwakes"]
# ktwB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Kittiwakes"]
# ktwB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Kittiwakes"]
# # head(ktwB.a1b.f4)
# ktwB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwB.a1b.f4.up[i] <- max(ktwB.a1b.f4[i,])
# ktwB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwB.a1b.f4.lo[i] <- min(ktwB.a1b.f4[i,])

# Kittiwakes Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
ktwC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(ktwC.45.f4.80) <- c("gfd","mir","ces")
row.names(ktwC.45.f4.80) <- 1991:2080
ktwC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Kittiwakes"]
ktwC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Kittiwakes"]
ktwC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Kittiwakes"]
# head(ktwC.45.f4.80)
ktwC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwC.45.f4.80.up[i] <- max(ktwC.45.f4.80[i,])
ktwC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) ktwC.45.f4.80.lo[i] <- min(ktwC.45.f4.80[i,])
# Everything from 2081-2099
ktwC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(ktwC.45.f4.99) <- c("gfd","mir")
row.names(ktwC.45.f4.99) <- 2081:2099
ktwC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Kittiwakes"]
ktwC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Kittiwakes"]
# head(ktwC.45.f4.99)
ktwC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwC.45.f4.99.up[i] <- max(ktwC.45.f4.99[i,])
ktwC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) ktwC.45.f4.99.lo[i] <- min(ktwC.45.f4.99[i,])
# now append these two time periods
ktwC.45.f4.up <- c(ktwC.45.f4.80.up,ktwC.45.f4.99.up)
ktwC.45.f4.lo <- c(ktwC.45.f4.80.lo,ktwC.45.f4.99.lo)

# RCP 8.5
ktwC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(ktwC.85.f4) <- c("gfd","mir","ces")
row.names(ktwC.85.f4) <- 1991:2099
ktwC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Kittiwakes"]
ktwC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Kittiwakes"]
ktwC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Kittiwakes"]
# head(ktwC.85.f4)
ktwC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwC.85.f4.up[i] <- max(ktwC.85.f4[i,])
ktwC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) ktwC.85.f4.lo[i] <- min(ktwC.85.f4[i,])

# # SRES A1B
# ktwC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(ktwC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(ktwC.a1b.f4) <- 1991:2039
# ktwC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Kittiwakes"]
# ktwC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Kittiwakes"]
# ktwC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Kittiwakes"]
# # head(ktwC.a1b.f4)
# ktwC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwC.a1b.f4.up[i] <- max(ktwC.a1b.f4[i,])
# ktwC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) ktwC.a1b.f4.lo[i] <- min(ktwC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Auklets biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
aklB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(aklB.45.f1.80) <- c("gfd","mir","ces")
row.names(aklB.45.f1.80) <- 1991:2080
aklB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Auklets"]
aklB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Auklets"]
aklB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Auklets"]
# head(aklB.45.f1.80)
aklB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklB.45.f1.80.up[i] <- max(aklB.45.f1.80[i,])
aklB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklB.45.f1.80.lo[i] <- min(aklB.45.f1.80[i,])
# Everything from 2081-2099
aklB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(aklB.45.f1.99) <- c("gfd","mir")
row.names(aklB.45.f1.99) <- 2081:2099
aklB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Auklets"]
aklB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Auklets"]
# head(aklB.45.f1.99)
aklB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklB.45.f1.99.up[i] <- max(aklB.45.f1.99[i,])
aklB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklB.45.f1.99.lo[i] <- min(aklB.45.f1.99[i,])
# now append these two time periods
aklB.45.f1.up <- c(aklB.45.f1.80.up,aklB.45.f1.99.up)
aklB.45.f1.lo <- c(aklB.45.f1.80.lo,aklB.45.f1.99.lo)

# RCP 8.5
aklB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(aklB.85.f1) <- c("gfd","mir","ces")
row.names(aklB.85.f1) <- 1991:2099
aklB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Auklets"]
aklB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Auklets"]
aklB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Auklets"]
# head(aklB.85.f1)
aklB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklB.85.f1.up[i] <- max(aklB.85.f1[i,])
aklB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklB.85.f1.lo[i] <- min(aklB.85.f1[i,])

# # SRES A1B
# aklB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(aklB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(aklB.a1b.f1) <- 1991:2039
# aklB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Auklets"]
# aklB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Auklets"]
# aklB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Auklets"]
# # head(aklB.a1b.f1)
# aklB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklB.a1b.f1.up[i] <- max(aklB.a1b.f1[i,])
# aklB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklB.a1b.f1.lo[i] <- min(aklB.a1b.f1[i,])

# Auklets Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
aklC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(aklC.45.f1.80) <- c("gfd","mir","ces")
row.names(aklC.45.f1.80) <- 1991:2080
aklC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Auklets"]
aklC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Auklets"]
aklC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Auklets"]
# head(aklC.45.f1.80)
aklC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklC.45.f1.80.up[i] <- max(aklC.45.f1.80[i,])
aklC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklC.45.f1.80.lo[i] <- min(aklC.45.f1.80[i,])
# Everything from 2081-2099
aklC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(aklC.45.f1.99) <- c("gfd","mir")
row.names(aklC.45.f1.99) <- 2081:2099
aklC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Auklets"]
aklC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Auklets"]
# head(aklC.45.f1.99)
aklC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklC.45.f1.99.up[i] <- max(aklC.45.f1.99[i,])
aklC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklC.45.f1.99.lo[i] <- min(aklC.45.f1.99[i,])
# now append these two time periods
aklC.45.f1.up <- c(aklC.45.f1.80.up,aklC.45.f1.99.up)
aklC.45.f1.lo <- c(aklC.45.f1.80.lo,aklC.45.f1.99.lo)

# RCP 8.5
aklC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(aklC.85.f1) <- c("gfd","mir","ces")
row.names(aklC.85.f1) <- 1991:2099
aklC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Auklets"]
aklC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Auklets"]
aklC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Auklets"]
# head(aklC.85.f1)
aklC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklC.85.f1.up[i] <- max(aklC.85.f1[i,])
aklC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklC.85.f1.lo[i] <- min(aklC.85.f1[i,])

# # SRES A1B
# aklC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(aklC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(aklC.a1b.f1) <- 1991:2039
# aklC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Auklets"]
# aklC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Auklets"]
# aklC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Auklets"]
# # head(aklC.a1b.f1)
# aklC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklC.a1b.f1.up[i] <- max(aklC.a1b.f1[i,])
# aklC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklC.a1b.f1.lo[i] <- min(aklC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Auklets F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
aklB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(aklB.45.f2.80) <- c("gfd","mir","ces")
row.names(aklB.45.f2.80) <- 1991:2080
aklB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Auklets"]
aklB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Auklets"]
aklB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Auklets"]
# head(aklB.45.f2.80)
aklB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklB.45.f2.80.up[i] <- max(aklB.45.f2.80[i,])
aklB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklB.45.f2.80.lo[i] <- min(aklB.45.f2.80[i,])
# Everything from 2081-2099
aklB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(aklB.45.f2.99) <- c("gfd","mir")
row.names(aklB.45.f2.99) <- 2081:2099
aklB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Auklets"]
aklB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Auklets"]
# head(aklB.45.f2.99)
aklB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklB.45.f2.99.up[i] <- max(aklB.45.f2.99[i,])
aklB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklB.45.f2.99.lo[i] <- min(aklB.45.f2.99[i,])
# now append these two time periods
aklB.45.f2.up <- c(aklB.45.f2.80.up,aklB.45.f2.99.up)
aklB.45.f2.lo <- c(aklB.45.f2.80.lo,aklB.45.f2.99.lo)

# RCP 8.5
aklB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(aklB.85.f2) <- c("gfd","mir","ces")
row.names(aklB.85.f2) <- 1991:2099
aklB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Auklets"]
aklB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Auklets"]
aklB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Auklets"]
# head(aklB.85.f2)
aklB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklB.85.f2.up[i] <- max(aklB.85.f2[i,])
aklB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklB.85.f2.lo[i] <- min(aklB.85.f2[i,])

# # SRES A1B
# aklB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(aklB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(aklB.a1b.f2) <- 1991:2039
# aklB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Auklets"]
# aklB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Auklets"]
# aklB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Auklets"]
# # head(aklB.a1b.f2)
# aklB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklB.a1b.f2.up[i] <- max(aklB.a1b.f2[i,])
# aklB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklB.a1b.f2.lo[i] <- min(aklB.a1b.f2[i,])

# Auklets Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
aklC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(aklC.45.f2.80) <- c("gfd","mir","ces")
row.names(aklC.45.f2.80) <- 1991:2080
aklC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Auklets"]
aklC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Auklets"]
aklC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Auklets"]
# head(aklC.45.f2.80)
aklC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklC.45.f2.80.up[i] <- max(aklC.45.f2.80[i,])
aklC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklC.45.f2.80.lo[i] <- min(aklC.45.f2.80[i,])
# Everything from 2081-2099
aklC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(aklC.45.f2.99) <- c("gfd","mir")
row.names(aklC.45.f2.99) <- 2081:2099
aklC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Auklets"]
aklC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Auklets"]
# head(aklC.45.f2.99)
aklC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklC.45.f2.99.up[i] <- max(aklC.45.f2.99[i,])
aklC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklC.45.f2.99.lo[i] <- min(aklC.45.f2.99[i,])
# now append these two time periods
aklC.45.f2.up <- c(aklC.45.f2.80.up,aklC.45.f2.99.up)
aklC.45.f2.lo <- c(aklC.45.f2.80.lo,aklC.45.f2.99.lo)

# RCP 8.5
aklC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(aklC.85.f2) <- c("gfd","mir","ces")
row.names(aklC.85.f2) <- 1991:2099
aklC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Auklets"]
aklC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Auklets"]
aklC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Auklets"]
# head(aklC.85.f2)
aklC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklC.85.f2.up[i] <- max(aklC.85.f2[i,])
aklC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklC.85.f2.lo[i] <- min(aklC.85.f2[i,])

# # SRES A1B
# aklC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(aklC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(aklC.a1b.f2) <- 1991:2039
# aklC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Auklets"]
# aklC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Auklets"]
# aklC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Auklets"]
# # head(aklC.a1b.f2)
# aklC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklC.a1b.f2.up[i] <- max(aklC.a1b.f2[i,])
# aklC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklC.a1b.f2.lo[i] <- min(aklC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Auklets F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
aklB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(aklB.45.f3.80) <- c("gfd","mir","ces")
row.names(aklB.45.f3.80) <- 1991:2080
aklB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Auklets"]
aklB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Auklets"]
aklB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Auklets"]
# head(aklB.45.f3.80)
aklB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklB.45.f3.80.up[i] <- max(aklB.45.f3.80[i,])
aklB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklB.45.f3.80.lo[i] <- min(aklB.45.f3.80[i,])
# Everything from 2081-2099
aklB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(aklB.45.f3.99) <- c("gfd","mir")
row.names(aklB.45.f3.99) <- 2081:2099
aklB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Auklets"]
aklB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Auklets"]
# head(aklB.45.f3.99)
aklB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklB.45.f3.99.up[i] <- max(aklB.45.f3.99[i,])
aklB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklB.45.f3.99.lo[i] <- min(aklB.45.f3.99[i,])
# now append these two time periods
aklB.45.f3.up <- c(aklB.45.f3.80.up,aklB.45.f3.99.up)
aklB.45.f3.lo <- c(aklB.45.f3.80.lo,aklB.45.f3.99.lo)

# RCP 8.5
aklB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(aklB.85.f3) <- c("gfd","mir","ces")
row.names(aklB.85.f3) <- 1991:2099
aklB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Auklets"]
aklB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Auklets"]
aklB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Auklets"]
# head(aklB.85.f3)
aklB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklB.85.f3.up[i] <- max(aklB.85.f3[i,])
aklB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklB.85.f3.lo[i] <- min(aklB.85.f3[i,])

# # SRES A1B
# aklB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(aklB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(aklB.a1b.f3) <- 1991:2039
# aklB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Auklets"]
# aklB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Auklets"]
# aklB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Auklets"]
# # head(aklB.a1b.f3)
# aklB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklB.a1b.f3.up[i] <- max(aklB.a1b.f3[i,])
# aklB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklB.a1b.f3.lo[i] <- min(aklB.a1b.f3[i,])

# Auklets Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
aklC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(aklC.45.f3.80) <- c("gfd","mir","ces")
row.names(aklC.45.f3.80) <- 1991:2080
aklC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Auklets"]
aklC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Auklets"]
aklC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Auklets"]
# head(aklC.45.f3.80)
aklC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklC.45.f3.80.up[i] <- max(aklC.45.f3.80[i,])
aklC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklC.45.f3.80.lo[i] <- min(aklC.45.f3.80[i,])
# Everything from 2081-2099
aklC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(aklC.45.f3.99) <- c("gfd","mir")
row.names(aklC.45.f3.99) <- 2081:2099
aklC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Auklets"]
aklC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Auklets"]
# head(aklC.45.f3.99)
aklC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklC.45.f3.99.up[i] <- max(aklC.45.f3.99[i,])
aklC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklC.45.f3.99.lo[i] <- min(aklC.45.f3.99[i,])
# now append these two time periods
aklC.45.f3.up <- c(aklC.45.f3.80.up,aklC.45.f3.99.up)
aklC.45.f3.lo <- c(aklC.45.f3.80.lo,aklC.45.f3.99.lo)

# RCP 8.5
aklC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(aklC.85.f3) <- c("gfd","mir","ces")
row.names(aklC.85.f3) <- 1991:2099
aklC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Auklets"]
aklC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Auklets"]
aklC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Auklets"]
# head(aklC.85.f3)
aklC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklC.85.f3.up[i] <- max(aklC.85.f3[i,])
aklC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklC.85.f3.lo[i] <- min(aklC.85.f3[i,])

# # SRES A1B
# aklC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(aklC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(aklC.a1b.f3) <- 1991:2039
# aklC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Auklets"]
# aklC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Auklets"]
# aklC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Auklets"]
# # head(aklC.a1b.f3)
# aklC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklC.a1b.f3.up[i] <- max(aklC.a1b.f3[i,])
# aklC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklC.a1b.f3.lo[i] <- min(aklC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Auklets F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
aklB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(aklB.45.f4.80) <- c("gfd","mir","ces")
row.names(aklB.45.f4.80) <- 1991:2080
aklB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Auklets"]
aklB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Auklets"]
aklB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Auklets"]
# head(aklB.45.f4.80)
aklB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklB.45.f4.80.up[i] <- max(aklB.45.f4.80[i,])
aklB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklB.45.f4.80.lo[i] <- min(aklB.45.f4.80[i,])
# Everything from 2081-2099
aklB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(aklB.45.f4.99) <- c("gfd","mir")
row.names(aklB.45.f4.99) <- 2081:2099
aklB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Auklets"]
aklB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Auklets"]
# head(aklB.45.f4.99)
aklB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklB.45.f4.99.up[i] <- max(aklB.45.f4.99[i,])
aklB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklB.45.f4.99.lo[i] <- min(aklB.45.f4.99[i,])
# now append these two time periods
aklB.45.f4.up <- c(aklB.45.f4.80.up,aklB.45.f4.99.up)
aklB.45.f4.lo <- c(aklB.45.f4.80.lo,aklB.45.f4.99.lo)

# RCP 8.5
aklB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(aklB.85.f4) <- c("gfd","mir","ces")
row.names(aklB.85.f4) <- 1991:2099
aklB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Auklets"]
aklB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Auklets"]
aklB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Auklets"]
# head(aklB.85.f4)
aklB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklB.85.f4.up[i] <- max(aklB.85.f4[i,])
aklB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklB.85.f4.lo[i] <- min(aklB.85.f4[i,])

# # SRES A1B
# aklB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(aklB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(aklB.a1b.f4) <- 1991:2039
# aklB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Auklets"]
# aklB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Auklets"]
# aklB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Auklets"]
# # head(aklB.a1b.f4)
# aklB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklB.a1b.f4.up[i] <- max(aklB.a1b.f4[i,])
# aklB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklB.a1b.f4.lo[i] <- min(aklB.a1b.f4[i,])

# Auklets Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
aklC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(aklC.45.f4.80) <- c("gfd","mir","ces")
row.names(aklC.45.f4.80) <- 1991:2080
aklC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Auklets"]
aklC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Auklets"]
aklC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Auklets"]
# head(aklC.45.f4.80)
aklC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklC.45.f4.80.up[i] <- max(aklC.45.f4.80[i,])
aklC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) aklC.45.f4.80.lo[i] <- min(aklC.45.f4.80[i,])
# Everything from 2081-2099
aklC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(aklC.45.f4.99) <- c("gfd","mir")
row.names(aklC.45.f4.99) <- 2081:2099
aklC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Auklets"]
aklC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Auklets"]
# head(aklC.45.f4.99)
aklC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklC.45.f4.99.up[i] <- max(aklC.45.f4.99[i,])
aklC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) aklC.45.f4.99.lo[i] <- min(aklC.45.f4.99[i,])
# now append these two time periods
aklC.45.f4.up <- c(aklC.45.f4.80.up,aklC.45.f4.99.up)
aklC.45.f4.lo <- c(aklC.45.f4.80.lo,aklC.45.f4.99.lo)

# RCP 8.5
aklC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(aklC.85.f4) <- c("gfd","mir","ces")
row.names(aklC.85.f4) <- 1991:2099
aklC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Auklets"]
aklC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Auklets"]
aklC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Auklets"]
# head(aklC.85.f4)
aklC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklC.85.f4.up[i] <- max(aklC.85.f4[i,])
aklC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) aklC.85.f4.lo[i] <- min(aklC.85.f4[i,])

# # SRES A1B
# aklC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(aklC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(aklC.a1b.f4) <- 1991:2039
# aklC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Auklets"]
# aklC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Auklets"]
# aklC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Auklets"]
# # head(aklC.a1b.f4)
# aklC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklC.a1b.f4.up[i] <- max(aklC.a1b.f4[i,])
# aklC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) aklC.a1b.f4.lo[i] <- min(aklC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Fulmars biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
flmB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(flmB.45.f1.80) <- c("gfd","mir","ces")
row.names(flmB.45.f1.80) <- 1991:2080
flmB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Fulmars"]
flmB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Fulmars"]
flmB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Fulmars"]
# head(flmB.45.f1.80)
flmB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmB.45.f1.80.up[i] <- max(flmB.45.f1.80[i,])
flmB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmB.45.f1.80.lo[i] <- min(flmB.45.f1.80[i,])
# Everything from 2081-2099
flmB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(flmB.45.f1.99) <- c("gfd","mir")
row.names(flmB.45.f1.99) <- 2081:2099
flmB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Fulmars"]
flmB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Fulmars"]
# head(flmB.45.f1.99)
flmB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmB.45.f1.99.up[i] <- max(flmB.45.f1.99[i,])
flmB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmB.45.f1.99.lo[i] <- min(flmB.45.f1.99[i,])
# now append these two time periods
flmB.45.f1.up <- c(flmB.45.f1.80.up,flmB.45.f1.99.up)
flmB.45.f1.lo <- c(flmB.45.f1.80.lo,flmB.45.f1.99.lo)

# RCP 8.5
flmB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(flmB.85.f1) <- c("gfd","mir","ces")
row.names(flmB.85.f1) <- 1991:2099
flmB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Fulmars"]
flmB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Fulmars"]
flmB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Fulmars"]
# head(flmB.85.f1)
flmB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmB.85.f1.up[i] <- max(flmB.85.f1[i,])
flmB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmB.85.f1.lo[i] <- min(flmB.85.f1[i,])

# # SRES A1B
# flmB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(flmB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(flmB.a1b.f1) <- 1991:2039
# flmB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Fulmars"]
# flmB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Fulmars"]
# flmB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Fulmars"]
# # head(flmB.a1b.f1)
# flmB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmB.a1b.f1.up[i] <- max(flmB.a1b.f1[i,])
# flmB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmB.a1b.f1.lo[i] <- min(flmB.a1b.f1[i,])

# Fulmars Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
flmC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(flmC.45.f1.80) <- c("gfd","mir","ces")
row.names(flmC.45.f1.80) <- 1991:2080
flmC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Fulmars"]
flmC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Fulmars"]
flmC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Fulmars"]
# head(flmC.45.f1.80)
flmC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmC.45.f1.80.up[i] <- max(flmC.45.f1.80[i,])
flmC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmC.45.f1.80.lo[i] <- min(flmC.45.f1.80[i,])
# Everything from 2081-2099
flmC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(flmC.45.f1.99) <- c("gfd","mir")
row.names(flmC.45.f1.99) <- 2081:2099
flmC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Fulmars"]
flmC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Fulmars"]
# head(flmC.45.f1.99)
flmC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmC.45.f1.99.up[i] <- max(flmC.45.f1.99[i,])
flmC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmC.45.f1.99.lo[i] <- min(flmC.45.f1.99[i,])
# now append these two time periods
flmC.45.f1.up <- c(flmC.45.f1.80.up,flmC.45.f1.99.up)
flmC.45.f1.lo <- c(flmC.45.f1.80.lo,flmC.45.f1.99.lo)

# RCP 8.5
flmC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(flmC.85.f1) <- c("gfd","mir","ces")
row.names(flmC.85.f1) <- 1991:2099
flmC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Fulmars"]
flmC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Fulmars"]
flmC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Fulmars"]
# head(flmC.85.f1)
flmC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmC.85.f1.up[i] <- max(flmC.85.f1[i,])
flmC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmC.85.f1.lo[i] <- min(flmC.85.f1[i,])

# # SRES A1B
# flmC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(flmC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(flmC.a1b.f1) <- 1991:2039
# flmC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Fulmars"]
# flmC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Fulmars"]
# flmC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Fulmars"]
# # head(flmC.a1b.f1)
# flmC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmC.a1b.f1.up[i] <- max(flmC.a1b.f1[i,])
# flmC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmC.a1b.f1.lo[i] <- min(flmC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Fulmars F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
flmB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(flmB.45.f2.80) <- c("gfd","mir","ces")
row.names(flmB.45.f2.80) <- 1991:2080
flmB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Fulmars"]
flmB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Fulmars"]
flmB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Fulmars"]
# head(flmB.45.f2.80)
flmB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmB.45.f2.80.up[i] <- max(flmB.45.f2.80[i,])
flmB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmB.45.f2.80.lo[i] <- min(flmB.45.f2.80[i,])
# Everything from 2081-2099
flmB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(flmB.45.f2.99) <- c("gfd","mir")
row.names(flmB.45.f2.99) <- 2081:2099
flmB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Fulmars"]
flmB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Fulmars"]
# head(flmB.45.f2.99)
flmB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmB.45.f2.99.up[i] <- max(flmB.45.f2.99[i,])
flmB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmB.45.f2.99.lo[i] <- min(flmB.45.f2.99[i,])
# now append these two time periods
flmB.45.f2.up <- c(flmB.45.f2.80.up,flmB.45.f2.99.up)
flmB.45.f2.lo <- c(flmB.45.f2.80.lo,flmB.45.f2.99.lo)

# RCP 8.5
flmB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(flmB.85.f2) <- c("gfd","mir","ces")
row.names(flmB.85.f2) <- 1991:2099
flmB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Fulmars"]
flmB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Fulmars"]
flmB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Fulmars"]
# head(flmB.85.f2)
flmB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmB.85.f2.up[i] <- max(flmB.85.f2[i,])
flmB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmB.85.f2.lo[i] <- min(flmB.85.f2[i,])

# # SRES A1B
# flmB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(flmB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(flmB.a1b.f2) <- 1991:2039
# flmB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Fulmars"]
# flmB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Fulmars"]
# flmB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Fulmars"]
# # head(flmB.a1b.f2)
# flmB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmB.a1b.f2.up[i] <- max(flmB.a1b.f2[i,])
# flmB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmB.a1b.f2.lo[i] <- min(flmB.a1b.f2[i,])

# Fulmars Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
flmC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(flmC.45.f2.80) <- c("gfd","mir","ces")
row.names(flmC.45.f2.80) <- 1991:2080
flmC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Fulmars"]
flmC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Fulmars"]
flmC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Fulmars"]
# head(flmC.45.f2.80)
flmC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmC.45.f2.80.up[i] <- max(flmC.45.f2.80[i,])
flmC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmC.45.f2.80.lo[i] <- min(flmC.45.f2.80[i,])
# Everything from 2081-2099
flmC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(flmC.45.f2.99) <- c("gfd","mir")
row.names(flmC.45.f2.99) <- 2081:2099
flmC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Fulmars"]
flmC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Fulmars"]
# head(flmC.45.f2.99)
flmC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmC.45.f2.99.up[i] <- max(flmC.45.f2.99[i,])
flmC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmC.45.f2.99.lo[i] <- min(flmC.45.f2.99[i,])
# now append these two time periods
flmC.45.f2.up <- c(flmC.45.f2.80.up,flmC.45.f2.99.up)
flmC.45.f2.lo <- c(flmC.45.f2.80.lo,flmC.45.f2.99.lo)

# RCP 8.5
flmC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(flmC.85.f2) <- c("gfd","mir","ces")
row.names(flmC.85.f2) <- 1991:2099
flmC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Fulmars"]
flmC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Fulmars"]
flmC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Fulmars"]
# head(flmC.85.f2)
flmC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmC.85.f2.up[i] <- max(flmC.85.f2[i,])
flmC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmC.85.f2.lo[i] <- min(flmC.85.f2[i,])

# # SRES A1B
# flmC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(flmC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(flmC.a1b.f2) <- 1991:2039
# flmC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Fulmars"]
# flmC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Fulmars"]
# flmC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Fulmars"]
# # head(flmC.a1b.f2)
# flmC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmC.a1b.f2.up[i] <- max(flmC.a1b.f2[i,])
# flmC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmC.a1b.f2.lo[i] <- min(flmC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Fulmars F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
flmB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(flmB.45.f3.80) <- c("gfd","mir","ces")
row.names(flmB.45.f3.80) <- 1991:2080
flmB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Fulmars"]
flmB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Fulmars"]
flmB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Fulmars"]
# head(flmB.45.f3.80)
flmB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmB.45.f3.80.up[i] <- max(flmB.45.f3.80[i,])
flmB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmB.45.f3.80.lo[i] <- min(flmB.45.f3.80[i,])
# Everything from 2081-2099
flmB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(flmB.45.f3.99) <- c("gfd","mir")
row.names(flmB.45.f3.99) <- 2081:2099
flmB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Fulmars"]
flmB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Fulmars"]
# head(flmB.45.f3.99)
flmB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmB.45.f3.99.up[i] <- max(flmB.45.f3.99[i,])
flmB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmB.45.f3.99.lo[i] <- min(flmB.45.f3.99[i,])
# now append these two time periods
flmB.45.f3.up <- c(flmB.45.f3.80.up,flmB.45.f3.99.up)
flmB.45.f3.lo <- c(flmB.45.f3.80.lo,flmB.45.f3.99.lo)

# RCP 8.5
flmB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(flmB.85.f3) <- c("gfd","mir","ces")
row.names(flmB.85.f3) <- 1991:2099
flmB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Fulmars"]
flmB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Fulmars"]
flmB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Fulmars"]
# head(flmB.85.f3)
flmB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmB.85.f3.up[i] <- max(flmB.85.f3[i,])
flmB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmB.85.f3.lo[i] <- min(flmB.85.f3[i,])

# # SRES A1B
# flmB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(flmB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(flmB.a1b.f3) <- 1991:2039
# flmB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Fulmars"]
# flmB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Fulmars"]
# flmB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Fulmars"]
# # head(flmB.a1b.f3)
# flmB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmB.a1b.f3.up[i] <- max(flmB.a1b.f3[i,])
# flmB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmB.a1b.f3.lo[i] <- min(flmB.a1b.f3[i,])

# Fulmars Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
flmC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(flmC.45.f3.80) <- c("gfd","mir","ces")
row.names(flmC.45.f3.80) <- 1991:2080
flmC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Fulmars"]
flmC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Fulmars"]
flmC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Fulmars"]
# head(flmC.45.f3.80)
flmC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmC.45.f3.80.up[i] <- max(flmC.45.f3.80[i,])
flmC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmC.45.f3.80.lo[i] <- min(flmC.45.f3.80[i,])
# Everything from 2081-2099
flmC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(flmC.45.f3.99) <- c("gfd","mir")
row.names(flmC.45.f3.99) <- 2081:2099
flmC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Fulmars"]
flmC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Fulmars"]
# head(flmC.45.f3.99)
flmC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmC.45.f3.99.up[i] <- max(flmC.45.f3.99[i,])
flmC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmC.45.f3.99.lo[i] <- min(flmC.45.f3.99[i,])
# now append these two time periods
flmC.45.f3.up <- c(flmC.45.f3.80.up,flmC.45.f3.99.up)
flmC.45.f3.lo <- c(flmC.45.f3.80.lo,flmC.45.f3.99.lo)

# RCP 8.5
flmC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(flmC.85.f3) <- c("gfd","mir","ces")
row.names(flmC.85.f3) <- 1991:2099
flmC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Fulmars"]
flmC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Fulmars"]
flmC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Fulmars"]
# head(flmC.85.f3)
flmC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmC.85.f3.up[i] <- max(flmC.85.f3[i,])
flmC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmC.85.f3.lo[i] <- min(flmC.85.f3[i,])

# # SRES A1B
# flmC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(flmC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(flmC.a1b.f3) <- 1991:2039
# flmC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Fulmars"]
# flmC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Fulmars"]
# flmC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Fulmars"]
# # head(flmC.a1b.f3)
# flmC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmC.a1b.f3.up[i] <- max(flmC.a1b.f3[i,])
# flmC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmC.a1b.f3.lo[i] <- min(flmC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Fulmars F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
flmB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(flmB.45.f4.80) <- c("gfd","mir","ces")
row.names(flmB.45.f4.80) <- 1991:2080
flmB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Fulmars"]
flmB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Fulmars"]
flmB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Fulmars"]
# head(flmB.45.f4.80)
flmB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmB.45.f4.80.up[i] <- max(flmB.45.f4.80[i,])
flmB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmB.45.f4.80.lo[i] <- min(flmB.45.f4.80[i,])
# Everything from 2081-2099
flmB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(flmB.45.f4.99) <- c("gfd","mir")
row.names(flmB.45.f4.99) <- 2081:2099
flmB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Fulmars"]
flmB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Fulmars"]
# head(flmB.45.f4.99)
flmB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmB.45.f4.99.up[i] <- max(flmB.45.f4.99[i,])
flmB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmB.45.f4.99.lo[i] <- min(flmB.45.f4.99[i,])
# now append these two time periods
flmB.45.f4.up <- c(flmB.45.f4.80.up,flmB.45.f4.99.up)
flmB.45.f4.lo <- c(flmB.45.f4.80.lo,flmB.45.f4.99.lo)

# RCP 8.5
flmB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(flmB.85.f4) <- c("gfd","mir","ces")
row.names(flmB.85.f4) <- 1991:2099
flmB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Fulmars"]
flmB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Fulmars"]
flmB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Fulmars"]
# head(flmB.85.f4)
flmB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmB.85.f4.up[i] <- max(flmB.85.f4[i,])
flmB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmB.85.f4.lo[i] <- min(flmB.85.f4[i,])

# # SRES A1B
# flmB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(flmB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(flmB.a1b.f4) <- 1991:2039
# flmB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Fulmars"]
# flmB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Fulmars"]
# flmB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Fulmars"]
# # head(flmB.a1b.f4)
# flmB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmB.a1b.f4.up[i] <- max(flmB.a1b.f4[i,])
# flmB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmB.a1b.f4.lo[i] <- min(flmB.a1b.f4[i,])

# Fulmars Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
flmC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(flmC.45.f4.80) <- c("gfd","mir","ces")
row.names(flmC.45.f4.80) <- 1991:2080
flmC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Fulmars"]
flmC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Fulmars"]
flmC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Fulmars"]
# head(flmC.45.f4.80)
flmC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmC.45.f4.80.up[i] <- max(flmC.45.f4.80[i,])
flmC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) flmC.45.f4.80.lo[i] <- min(flmC.45.f4.80[i,])
# Everything from 2081-2099
flmC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(flmC.45.f4.99) <- c("gfd","mir")
row.names(flmC.45.f4.99) <- 2081:2099
flmC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Fulmars"]
flmC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Fulmars"]
# head(flmC.45.f4.99)
flmC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmC.45.f4.99.up[i] <- max(flmC.45.f4.99[i,])
flmC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) flmC.45.f4.99.lo[i] <- min(flmC.45.f4.99[i,])
# now append these two time periods
flmC.45.f4.up <- c(flmC.45.f4.80.up,flmC.45.f4.99.up)
flmC.45.f4.lo <- c(flmC.45.f4.80.lo,flmC.45.f4.99.lo)

# RCP 8.5
flmC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(flmC.85.f4) <- c("gfd","mir","ces")
row.names(flmC.85.f4) <- 1991:2099
flmC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Fulmars"]
flmC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Fulmars"]
flmC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Fulmars"]
# head(flmC.85.f4)
flmC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmC.85.f4.up[i] <- max(flmC.85.f4[i,])
flmC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) flmC.85.f4.lo[i] <- min(flmC.85.f4[i,])

# # SRES A1B
# flmC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(flmC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(flmC.a1b.f4) <- 1991:2039
# flmC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Fulmars"]
# flmC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Fulmars"]
# flmC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Fulmars"]
# # head(flmC.a1b.f4)
# flmC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmC.a1b.f4.up[i] <- max(flmC.a1b.f4[i,])
# flmC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) flmC.a1b.f4.lo[i] <- min(flmC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Albatross biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
albB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(albB.45.f1.80) <- c("gfd","mir","ces")
row.names(albB.45.f1.80) <- 1991:2080
albB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Albatross"]
albB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Albatross"]
albB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Albatross"]
# head(albB.45.f1.80)
albB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) albB.45.f1.80.up[i] <- max(albB.45.f1.80[i,])
albB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) albB.45.f1.80.lo[i] <- min(albB.45.f1.80[i,])
# Everything from 2081-2099
albB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(albB.45.f1.99) <- c("gfd","mir")
row.names(albB.45.f1.99) <- 2081:2099
albB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Albatross"]
albB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Albatross"]
# head(albB.45.f1.99)
albB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) albB.45.f1.99.up[i] <- max(albB.45.f1.99[i,])
albB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) albB.45.f1.99.lo[i] <- min(albB.45.f1.99[i,])
# now append these two time periods
albB.45.f1.up <- c(albB.45.f1.80.up,albB.45.f1.99.up)
albB.45.f1.lo <- c(albB.45.f1.80.lo,albB.45.f1.99.lo)

# RCP 8.5
albB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(albB.85.f1) <- c("gfd","mir","ces")
row.names(albB.85.f1) <- 1991:2099
albB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Albatross"]
albB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Albatross"]
albB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Albatross"]
# head(albB.85.f1)
albB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) albB.85.f1.up[i] <- max(albB.85.f1[i,])
albB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) albB.85.f1.lo[i] <- min(albB.85.f1[i,])

# # SRES A1B
# albB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(albB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(albB.a1b.f1) <- 1991:2039
# albB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Albatross"]
# albB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Albatross"]
# albB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Albatross"]
# # head(albB.a1b.f1)
# albB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albB.a1b.f1.up[i] <- max(albB.a1b.f1[i,])
# albB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albB.a1b.f1.lo[i] <- min(albB.a1b.f1[i,])

# Albatross Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
albC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(albC.45.f1.80) <- c("gfd","mir","ces")
row.names(albC.45.f1.80) <- 1991:2080
albC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Albatross"]
albC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Albatross"]
albC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Albatross"]
# head(albC.45.f1.80)
albC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) albC.45.f1.80.up[i] <- max(albC.45.f1.80[i,])
albC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) albC.45.f1.80.lo[i] <- min(albC.45.f1.80[i,])
# Everything from 2081-2099
albC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(albC.45.f1.99) <- c("gfd","mir")
row.names(albC.45.f1.99) <- 2081:2099
albC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Albatross"]
albC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Albatross"]
# head(albC.45.f1.99)
albC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) albC.45.f1.99.up[i] <- max(albC.45.f1.99[i,])
albC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) albC.45.f1.99.lo[i] <- min(albC.45.f1.99[i,])
# now append these two time periods
albC.45.f1.up <- c(albC.45.f1.80.up,albC.45.f1.99.up)
albC.45.f1.lo <- c(albC.45.f1.80.lo,albC.45.f1.99.lo)

# RCP 8.5
albC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(albC.85.f1) <- c("gfd","mir","ces")
row.names(albC.85.f1) <- 1991:2099
albC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Albatross"]
albC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Albatross"]
albC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Albatross"]
# head(albC.85.f1)
albC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) albC.85.f1.up[i] <- max(albC.85.f1[i,])
albC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) albC.85.f1.lo[i] <- min(albC.85.f1[i,])

# # SRES A1B
# albC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(albC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(albC.a1b.f1) <- 1991:2039
# albC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Albatross"]
# albC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Albatross"]
# albC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Albatross"]
# # head(albC.a1b.f1)
# albC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albC.a1b.f1.up[i] <- max(albC.a1b.f1[i,])
# albC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albC.a1b.f1.lo[i] <- min(albC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Albatross F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
albB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(albB.45.f2.80) <- c("gfd","mir","ces")
row.names(albB.45.f2.80) <- 1991:2080
albB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Albatross"]
albB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Albatross"]
albB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Albatross"]
# head(albB.45.f2.80)
albB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) albB.45.f2.80.up[i] <- max(albB.45.f2.80[i,])
albB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) albB.45.f2.80.lo[i] <- min(albB.45.f2.80[i,])
# Everything from 2081-2099
albB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(albB.45.f2.99) <- c("gfd","mir")
row.names(albB.45.f2.99) <- 2081:2099
albB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Albatross"]
albB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Albatross"]
# head(albB.45.f2.99)
albB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) albB.45.f2.99.up[i] <- max(albB.45.f2.99[i,])
albB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) albB.45.f2.99.lo[i] <- min(albB.45.f2.99[i,])
# now append these two time periods
albB.45.f2.up <- c(albB.45.f2.80.up,albB.45.f2.99.up)
albB.45.f2.lo <- c(albB.45.f2.80.lo,albB.45.f2.99.lo)

# RCP 8.5
albB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(albB.85.f2) <- c("gfd","mir","ces")
row.names(albB.85.f2) <- 1991:2099
albB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Albatross"]
albB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Albatross"]
albB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Albatross"]
# head(albB.85.f2)
albB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) albB.85.f2.up[i] <- max(albB.85.f2[i,])
albB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) albB.85.f2.lo[i] <- min(albB.85.f2[i,])

# # SRES A1B
# albB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(albB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(albB.a1b.f2) <- 1991:2039
# albB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Albatross"]
# albB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Albatross"]
# albB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Albatross"]
# # head(albB.a1b.f2)
# albB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albB.a1b.f2.up[i] <- max(albB.a1b.f2[i,])
# albB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albB.a1b.f2.lo[i] <- min(albB.a1b.f2[i,])

# Albatross Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
albC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(albC.45.f2.80) <- c("gfd","mir","ces")
row.names(albC.45.f2.80) <- 1991:2080
albC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Albatross"]
albC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Albatross"]
albC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Albatross"]
# head(albC.45.f2.80)
albC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) albC.45.f2.80.up[i] <- max(albC.45.f2.80[i,])
albC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) albC.45.f2.80.lo[i] <- min(albC.45.f2.80[i,])
# Everything from 2081-2099
albC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(albC.45.f2.99) <- c("gfd","mir")
row.names(albC.45.f2.99) <- 2081:2099
albC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Albatross"]
albC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Albatross"]
# head(albC.45.f2.99)
albC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) albC.45.f2.99.up[i] <- max(albC.45.f2.99[i,])
albC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) albC.45.f2.99.lo[i] <- min(albC.45.f2.99[i,])
# now append these two time periods
albC.45.f2.up <- c(albC.45.f2.80.up,albC.45.f2.99.up)
albC.45.f2.lo <- c(albC.45.f2.80.lo,albC.45.f2.99.lo)

# RCP 8.5
albC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(albC.85.f2) <- c("gfd","mir","ces")
row.names(albC.85.f2) <- 1991:2099
albC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Albatross"]
albC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Albatross"]
albC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Albatross"]
# head(albC.85.f2)
albC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) albC.85.f2.up[i] <- max(albC.85.f2[i,])
albC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) albC.85.f2.lo[i] <- min(albC.85.f2[i,])

# # SRES A1B
# albC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(albC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(albC.a1b.f2) <- 1991:2039
# albC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Albatross"]
# albC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Albatross"]
# albC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Albatross"]
# # head(albC.a1b.f2)
# albC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albC.a1b.f2.up[i] <- max(albC.a1b.f2[i,])
# albC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albC.a1b.f2.lo[i] <- min(albC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Albatross F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
albB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(albB.45.f3.80) <- c("gfd","mir","ces")
row.names(albB.45.f3.80) <- 1991:2080
albB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Albatross"]
albB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Albatross"]
albB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Albatross"]
# head(albB.45.f3.80)
albB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) albB.45.f3.80.up[i] <- max(albB.45.f3.80[i,])
albB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) albB.45.f3.80.lo[i] <- min(albB.45.f3.80[i,])
# Everything from 2081-2099
albB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(albB.45.f3.99) <- c("gfd","mir")
row.names(albB.45.f3.99) <- 2081:2099
albB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Albatross"]
albB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Albatross"]
# head(albB.45.f3.99)
albB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) albB.45.f3.99.up[i] <- max(albB.45.f3.99[i,])
albB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) albB.45.f3.99.lo[i] <- min(albB.45.f3.99[i,])
# now append these two time periods
albB.45.f3.up <- c(albB.45.f3.80.up,albB.45.f3.99.up)
albB.45.f3.lo <- c(albB.45.f3.80.lo,albB.45.f3.99.lo)

# RCP 8.5
albB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(albB.85.f3) <- c("gfd","mir","ces")
row.names(albB.85.f3) <- 1991:2099
albB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Albatross"]
albB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Albatross"]
albB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Albatross"]
# head(albB.85.f3)
albB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) albB.85.f3.up[i] <- max(albB.85.f3[i,])
albB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) albB.85.f3.lo[i] <- min(albB.85.f3[i,])

# # SRES A1B
# albB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(albB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(albB.a1b.f3) <- 1991:2039
# albB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Albatross"]
# albB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Albatross"]
# albB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Albatross"]
# # head(albB.a1b.f3)
# albB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albB.a1b.f3.up[i] <- max(albB.a1b.f3[i,])
# albB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albB.a1b.f3.lo[i] <- min(albB.a1b.f3[i,])

# Albatross Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
albC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(albC.45.f3.80) <- c("gfd","mir","ces")
row.names(albC.45.f3.80) <- 1991:2080
albC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Albatross"]
albC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Albatross"]
albC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Albatross"]
# head(albC.45.f3.80)
albC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) albC.45.f3.80.up[i] <- max(albC.45.f3.80[i,])
albC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) albC.45.f3.80.lo[i] <- min(albC.45.f3.80[i,])
# Everything from 2081-2099
albC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(albC.45.f3.99) <- c("gfd","mir")
row.names(albC.45.f3.99) <- 2081:2099
albC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Albatross"]
albC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Albatross"]
# head(albC.45.f3.99)
albC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) albC.45.f3.99.up[i] <- max(albC.45.f3.99[i,])
albC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) albC.45.f3.99.lo[i] <- min(albC.45.f3.99[i,])
# now append these two time periods
albC.45.f3.up <- c(albC.45.f3.80.up,albC.45.f3.99.up)
albC.45.f3.lo <- c(albC.45.f3.80.lo,albC.45.f3.99.lo)

# RCP 8.5
albC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(albC.85.f3) <- c("gfd","mir","ces")
row.names(albC.85.f3) <- 1991:2099
albC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Albatross"]
albC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Albatross"]
albC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Albatross"]
# head(albC.85.f3)
albC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) albC.85.f3.up[i] <- max(albC.85.f3[i,])
albC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) albC.85.f3.lo[i] <- min(albC.85.f3[i,])

# # SRES A1B
# albC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(albC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(albC.a1b.f3) <- 1991:2039
# albC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Albatross"]
# albC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Albatross"]
# albC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Albatross"]
# # head(albC.a1b.f3)
# albC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albC.a1b.f3.up[i] <- max(albC.a1b.f3[i,])
# albC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albC.a1b.f3.lo[i] <- min(albC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Albatross F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
albB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(albB.45.f4.80) <- c("gfd","mir","ces")
row.names(albB.45.f4.80) <- 1991:2080
albB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Albatross"]
albB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Albatross"]
albB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Albatross"]
# head(albB.45.f4.80)
albB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) albB.45.f4.80.up[i] <- max(albB.45.f4.80[i,])
albB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) albB.45.f4.80.lo[i] <- min(albB.45.f4.80[i,])
# Everything from 2081-2099
albB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(albB.45.f4.99) <- c("gfd","mir")
row.names(albB.45.f4.99) <- 2081:2099
albB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Albatross"]
albB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Albatross"]
# head(albB.45.f4.99)
albB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) albB.45.f4.99.up[i] <- max(albB.45.f4.99[i,])
albB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) albB.45.f4.99.lo[i] <- min(albB.45.f4.99[i,])
# now append these two time periods
albB.45.f4.up <- c(albB.45.f4.80.up,albB.45.f4.99.up)
albB.45.f4.lo <- c(albB.45.f4.80.lo,albB.45.f4.99.lo)

# RCP 8.5
albB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(albB.85.f4) <- c("gfd","mir","ces")
row.names(albB.85.f4) <- 1991:2099
albB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Albatross"]
albB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Albatross"]
albB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Albatross"]
# head(albB.85.f4)
albB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) albB.85.f4.up[i] <- max(albB.85.f4[i,])
albB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) albB.85.f4.lo[i] <- min(albB.85.f4[i,])

# # SRES A1B
# albB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(albB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(albB.a1b.f4) <- 1991:2039
# albB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Albatross"]
# albB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Albatross"]
# albB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Albatross"]
# # head(albB.a1b.f4)
# albB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albB.a1b.f4.up[i] <- max(albB.a1b.f4[i,])
# albB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albB.a1b.f4.lo[i] <- min(albB.a1b.f4[i,])

# Albatross Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
albC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(albC.45.f4.80) <- c("gfd","mir","ces")
row.names(albC.45.f4.80) <- 1991:2080
albC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Albatross"]
albC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Albatross"]
albC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Albatross"]
# head(albC.45.f4.80)
albC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) albC.45.f4.80.up[i] <- max(albC.45.f4.80[i,])
albC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) albC.45.f4.80.lo[i] <- min(albC.45.f4.80[i,])
# Everything from 2081-2099
albC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(albC.45.f4.99) <- c("gfd","mir")
row.names(albC.45.f4.99) <- 2081:2099
albC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Albatross"]
albC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Albatross"]
# head(albC.45.f4.99)
albC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) albC.45.f4.99.up[i] <- max(albC.45.f4.99[i,])
albC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) albC.45.f4.99.lo[i] <- min(albC.45.f4.99[i,])
# now append these two time periods
albC.45.f4.up <- c(albC.45.f4.80.up,albC.45.f4.99.up)
albC.45.f4.lo <- c(albC.45.f4.80.lo,albC.45.f4.99.lo)

# RCP 8.5
albC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(albC.85.f4) <- c("gfd","mir","ces")
row.names(albC.85.f4) <- 1991:2099
albC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Albatross"]
albC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Albatross"]
albC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Albatross"]
# head(albC.85.f4)
albC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) albC.85.f4.up[i] <- max(albC.85.f4[i,])
albC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) albC.85.f4.lo[i] <- min(albC.85.f4[i,])

# # SRES A1B
# albC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(albC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(albC.a1b.f4) <- 1991:2039
# albC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Albatross"]
# albC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Albatross"]
# albC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Albatross"]
# # head(albC.a1b.f4)
# albC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albC.a1b.f4.up[i] <- max(albC.a1b.f4[i,])
# albC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) albC.a1b.f4.lo[i] <- min(albC.a1b.f4[i,])

