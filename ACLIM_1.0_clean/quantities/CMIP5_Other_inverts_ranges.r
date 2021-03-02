# For reference the Other.inverts species are:
Other.inverts <- c("Pandalidae","Ben.zooplankton","Structural.epifauna","Infauna",
                   "Pel.zooplankton")

rcp.yrs <- 1991:2099
a1b.yrs <- 1991:2039
ces.yrs <- 1991:2080


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Pandalidae biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
pndaB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pndaB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(pndaB.45.f1.80) <- 1991:2080
pndaB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Pandalidae"]
pndaB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Pandalidae"]
pndaB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Pandalidae"]
# head(pndaB.45.f1.80)
pndaB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaB.45.f1.80.up[i] <- max(pndaB.45.f1.80[i,])
pndaB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaB.45.f1.80.lo[i] <- min(pndaB.45.f1.80[i,])
# Everything from 2081-2099
pndaB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pndaB.45.f1.99) <- c("gfd45","mir45")
row.names(pndaB.45.f1.99) <- 2081:2099
pndaB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Pandalidae"]
pndaB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Pandalidae"]
# head(pndaB.45.f1.99)
pndaB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaB.45.f1.99.up[i] <- max(pndaB.45.f1.99[i,])
pndaB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaB.45.f1.99.lo[i] <- min(pndaB.45.f1.99[i,])
# now append these two time periods
pndaB.45.f1.up <- c(pndaB.45.f1.80.up,pndaB.45.f1.99.up)
pndaB.45.f1.lo <- c(pndaB.45.f1.80.lo,pndaB.45.f1.99.lo)

# RCP 8.5
pndaB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pndaB.85.f1) <- c("gfd45","mir45","ces45")
row.names(pndaB.85.f1) <- 1991:2099
pndaB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Pandalidae"]
pndaB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Pandalidae"]
pndaB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Pandalidae"]
# head(pndaB.85.f1)
pndaB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaB.85.f1.up[i] <- max(pndaB.85.f1[i,])
pndaB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaB.85.f1.lo[i] <- min(pndaB.85.f1[i,])

# # SRES A1B
# pndaB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pndaB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(pndaB.a1b.f1) <- 1991:2039
# pndaB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Pandalidae"]
# pndaB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Pandalidae"]
# pndaB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Pandalidae"]
# # head(pndaB.a1b.f1)
# pndaB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaB.a1b.f1.up[i] <- max(pndaB.a1b.f1[i,])
# pndaB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaB.a1b.f1.lo[i] <- min(pndaB.a1b.f1[i,])

# Pandalidae Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
pndaC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pndaC.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(pndaC.45.f1.80) <- 1991:2080
pndaC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Pandalidae"]
pndaC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Pandalidae"]
pndaC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Pandalidae"]
# head(pndaC.45.f1.80)
pndaC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaC.45.f1.80.up[i] <- max(pndaC.45.f1.80[i,])
pndaC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaC.45.f1.80.lo[i] <- min(pndaC.45.f1.80[i,])
# Everything from 2081-2099
pndaC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pndaC.45.f1.99) <- c("gfd45","mir45")
row.names(pndaC.45.f1.99) <- 2081:2099
pndaC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Pandalidae"]
pndaC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Pandalidae"]
# head(pndaC.45.f1.99)
pndaC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaC.45.f1.99.up[i] <- max(pndaC.45.f1.99[i,])
pndaC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaC.45.f1.99.lo[i] <- min(pndaC.45.f1.99[i,])
# now append these two time periods
pndaC.45.f1.up <- c(pndaC.45.f1.80.up,pndaC.45.f1.99.up)
pndaC.45.f1.lo <- c(pndaC.45.f1.80.lo,pndaC.45.f1.99.lo)

# RCP 8.5
pndaC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pndaC.85.f1) <- c("gfd45","mir45","ces45")
row.names(pndaC.85.f1) <- 1991:2099
pndaC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Pandalidae"]
pndaC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Pandalidae"]
pndaC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Pandalidae"]
# head(pndaC.85.f1)
pndaC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaC.85.f1.up[i] <- max(pndaC.85.f1[i,])
pndaC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaC.85.f1.lo[i] <- min(pndaC.85.f1[i,])

# # SRES A1B
# pndaC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pndaC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(pndaC.a1b.f1) <- 1991:2039
# pndaC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Pandalidae"]
# pndaC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Pandalidae"]
# pndaC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Pandalidae"]
# # head(pndaC.a1b.f1)
# pndaC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaC.a1b.f1.up[i] <- max(pndaC.a1b.f1[i,])
# pndaC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaC.a1b.f1.lo[i] <- min(pndaC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Pandalidae F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
pndaB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pndaB.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(pndaB.45.f2.80) <- 1991:2080
pndaB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Pandalidae"]
pndaB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Pandalidae"]
pndaB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Pandalidae"]
# head(pndaB.45.f2.80)
pndaB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaB.45.f2.80.up[i] <- max(pndaB.45.f2.80[i,])
pndaB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaB.45.f2.80.lo[i] <- min(pndaB.45.f2.80[i,])
# Everything from 2081-2099
pndaB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pndaB.45.f2.99) <- c("gfd45","mir45")
row.names(pndaB.45.f2.99) <- 2081:2099
pndaB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Pandalidae"]
pndaB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Pandalidae"]
# head(pndaB.45.f2.99)
pndaB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaB.45.f2.99.up[i] <- max(pndaB.45.f2.99[i,])
pndaB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaB.45.f2.99.lo[i] <- min(pndaB.45.f2.99[i,])
# now append these two time periods
pndaB.45.f2.up <- c(pndaB.45.f2.80.up,pndaB.45.f2.99.up)
pndaB.45.f2.lo <- c(pndaB.45.f2.80.lo,pndaB.45.f2.99.lo)

# RCP 8.5
pndaB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pndaB.85.f2) <- c("gfd45","mir45","ces45")
row.names(pndaB.85.f2) <- 1991:2099
pndaB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Pandalidae"]
pndaB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Pandalidae"]
pndaB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Pandalidae"]
# head(pndaB.85.f2)
pndaB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaB.85.f2.up[i] <- max(pndaB.85.f2[i,])
pndaB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaB.85.f2.lo[i] <- min(pndaB.85.f2[i,])

# # SRES A1B
# pndaB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pndaB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(pndaB.a1b.f2) <- 1991:2039
# pndaB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Pandalidae"]
# pndaB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Pandalidae"]
# pndaB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Pandalidae"]
# # head(pndaB.a1b.f2)
# pndaB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaB.a1b.f2.up[i] <- max(pndaB.a1b.f2[i,])
# pndaB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaB.a1b.f2.lo[i] <- min(pndaB.a1b.f2[i,])

# Pandalidae Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
pndaC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pndaC.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(pndaC.45.f2.80) <- 1991:2080
pndaC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Pandalidae"]
pndaC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Pandalidae"]
pndaC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Pandalidae"]
# head(pndaC.45.f2.80)
pndaC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaC.45.f2.80.up[i] <- max(pndaC.45.f2.80[i,])
pndaC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaC.45.f2.80.lo[i] <- min(pndaC.45.f2.80[i,])
# Everything from 2081-2099
pndaC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pndaC.45.f2.99) <- c("gfd45","mir45")
row.names(pndaC.45.f2.99) <- 2081:2099
pndaC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Pandalidae"]
pndaC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Pandalidae"]
# head(pndaC.45.f2.99)
pndaC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaC.45.f2.99.up[i] <- max(pndaC.45.f2.99[i,])
pndaC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaC.45.f2.99.lo[i] <- min(pndaC.45.f2.99[i,])
# now append these two time periods
pndaC.45.f2.up <- c(pndaC.45.f2.80.up,pndaC.45.f2.99.up)
pndaC.45.f2.lo <- c(pndaC.45.f2.80.lo,pndaC.45.f2.99.lo)

# RCP 8.5
pndaC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pndaC.85.f2) <- c("gfd45","mir45","ces45")
row.names(pndaC.85.f2) <- 1991:2099
pndaC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Pandalidae"]
pndaC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Pandalidae"]
pndaC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Pandalidae"]
# head(pndaC.85.f2)
pndaC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaC.85.f2.up[i] <- max(pndaC.85.f2[i,])
pndaC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaC.85.f2.lo[i] <- min(pndaC.85.f2[i,])

# # SRES A1B
# pndaC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pndaC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(pndaC.a1b.f2) <- 1991:2039
# pndaC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Pandalidae"]
# pndaC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Pandalidae"]
# pndaC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Pandalidae"]
# # head(pndaC.a1b.f2)
# pndaC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaC.a1b.f2.up[i] <- max(pndaC.a1b.f2[i,])
# pndaC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaC.a1b.f2.lo[i] <- min(pndaC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Pandalidae F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
pndaB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pndaB.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(pndaB.45.f3.80) <- 1991:2080
pndaB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Pandalidae"]
pndaB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Pandalidae"]
pndaB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Pandalidae"]
# head(pndaB.45.f3.80)
pndaB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaB.45.f3.80.up[i] <- max(pndaB.45.f3.80[i,])
pndaB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaB.45.f3.80.lo[i] <- min(pndaB.45.f3.80[i,])
# Everything from 2081-2099
pndaB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pndaB.45.f3.99) <- c("gfd45","mir45")
row.names(pndaB.45.f3.99) <- 2081:2099
pndaB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Pandalidae"]
pndaB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Pandalidae"]
# head(pndaB.45.f3.99)
pndaB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaB.45.f3.99.up[i] <- max(pndaB.45.f3.99[i,])
pndaB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaB.45.f3.99.lo[i] <- min(pndaB.45.f3.99[i,])
# now append these two time periods
pndaB.45.f3.up <- c(pndaB.45.f3.80.up,pndaB.45.f3.99.up)
pndaB.45.f3.lo <- c(pndaB.45.f3.80.lo,pndaB.45.f3.99.lo)

# RCP 8.5
pndaB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pndaB.85.f3) <- c("gfd45","mir45","ces45")
row.names(pndaB.85.f3) <- 1991:2099
pndaB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Pandalidae"]
pndaB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Pandalidae"]
pndaB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Pandalidae"]
# head(pndaB.85.f3)
pndaB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaB.85.f3.up[i] <- max(pndaB.85.f3[i,])
pndaB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaB.85.f3.lo[i] <- min(pndaB.85.f3[i,])

# # SRES A1B
# pndaB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pndaB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(pndaB.a1b.f3) <- 1991:2039
# pndaB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Pandalidae"]
# pndaB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Pandalidae"]
# pndaB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Pandalidae"]
# # head(pndaB.a1b.f3)
# pndaB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaB.a1b.f3.up[i] <- max(pndaB.a1b.f3[i,])
# pndaB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaB.a1b.f3.lo[i] <- min(pndaB.a1b.f3[i,])

# Pandalidae Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
pndaC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pndaC.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(pndaC.45.f3.80) <- 1991:2080
pndaC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Pandalidae"]
pndaC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Pandalidae"]
pndaC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Pandalidae"]
# head(pndaC.45.f3.80)
pndaC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaC.45.f3.80.up[i] <- max(pndaC.45.f3.80[i,])
pndaC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaC.45.f3.80.lo[i] <- min(pndaC.45.f3.80[i,])
# Everything from 2081-2099
pndaC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pndaC.45.f3.99) <- c("gfd45","mir45")
row.names(pndaC.45.f3.99) <- 2081:2099
pndaC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Pandalidae"]
pndaC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Pandalidae"]
# head(pndaC.45.f3.99)
pndaC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaC.45.f3.99.up[i] <- max(pndaC.45.f3.99[i,])
pndaC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaC.45.f3.99.lo[i] <- min(pndaC.45.f3.99[i,])
# now append these two time periods
pndaC.45.f3.up <- c(pndaC.45.f3.80.up,pndaC.45.f3.99.up)
pndaC.45.f3.lo <- c(pndaC.45.f3.80.lo,pndaC.45.f3.99.lo)

# RCP 8.5
pndaC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pndaC.85.f3) <- c("gfd45","mir45","ces45")
row.names(pndaC.85.f3) <- 1991:2099
pndaC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Pandalidae"]
pndaC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Pandalidae"]
pndaC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Pandalidae"]
# head(pndaC.85.f3)
pndaC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaC.85.f3.up[i] <- max(pndaC.85.f3[i,])
pndaC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaC.85.f3.lo[i] <- min(pndaC.85.f3[i,])

# # SRES A1B
# pndaC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pndaC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(pndaC.a1b.f3) <- 1991:2039
# pndaC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Pandalidae"]
# pndaC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Pandalidae"]
# pndaC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Pandalidae"]
# # head(pndaC.a1b.f3)
# pndaC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaC.a1b.f3.up[i] <- max(pndaC.a1b.f3[i,])
# pndaC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaC.a1b.f3.lo[i] <- min(pndaC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Pandalidae F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
pndaB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pndaB.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(pndaB.45.f4.80) <- 1991:2080
pndaB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Pandalidae"]
pndaB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Pandalidae"]
pndaB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Pandalidae"]
# head(pndaB.45.f4.80)
pndaB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaB.45.f4.80.up[i] <- max(pndaB.45.f4.80[i,])
pndaB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaB.45.f4.80.lo[i] <- min(pndaB.45.f4.80[i,])
# Everything from 2081-2099
pndaB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pndaB.45.f4.99) <- c("gfd45","mir45")
row.names(pndaB.45.f4.99) <- 2081:2099
pndaB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Pandalidae"]
pndaB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Pandalidae"]
# head(pndaB.45.f4.99)
pndaB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaB.45.f4.99.up[i] <- max(pndaB.45.f4.99[i,])
pndaB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaB.45.f4.99.lo[i] <- min(pndaB.45.f4.99[i,])
# now append these two time periods
pndaB.45.f4.up <- c(pndaB.45.f4.80.up,pndaB.45.f4.99.up)
pndaB.45.f4.lo <- c(pndaB.45.f4.80.lo,pndaB.45.f4.99.lo)

# RCP 8.5
pndaB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pndaB.85.f4) <- c("gfd45","mir45","ces45")
row.names(pndaB.85.f4) <- 1991:2099
pndaB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Pandalidae"]
pndaB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Pandalidae"]
pndaB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Pandalidae"]
# head(pndaB.85.f4)
pndaB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaB.85.f4.up[i] <- max(pndaB.85.f4[i,])
pndaB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaB.85.f4.lo[i] <- min(pndaB.85.f4[i,])

# # SRES A1B
# pndaB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pndaB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(pndaB.a1b.f4) <- 1991:2039
# pndaB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Pandalidae"]
# pndaB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Pandalidae"]
# pndaB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Pandalidae"]
# # head(pndaB.a1b.f4)
# pndaB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaB.a1b.f4.up[i] <- max(pndaB.a1b.f4[i,])
# pndaB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaB.a1b.f4.lo[i] <- min(pndaB.a1b.f4[i,])

# Pandalidae Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
pndaC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pndaC.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(pndaC.45.f4.80) <- 1991:2080
pndaC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Pandalidae"]
pndaC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Pandalidae"]
pndaC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Pandalidae"]
# head(pndaC.45.f4.80)
pndaC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaC.45.f4.80.up[i] <- max(pndaC.45.f4.80[i,])
pndaC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pndaC.45.f4.80.lo[i] <- min(pndaC.45.f4.80[i,])
# Everything from 2081-2099
pndaC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pndaC.45.f4.99) <- c("gfd45","mir45")
row.names(pndaC.45.f4.99) <- 2081:2099
pndaC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Pandalidae"]
pndaC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Pandalidae"]
# head(pndaC.45.f4.99)
pndaC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaC.45.f4.99.up[i] <- max(pndaC.45.f4.99[i,])
pndaC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pndaC.45.f4.99.lo[i] <- min(pndaC.45.f4.99[i,])
# now append these two time periods
pndaC.45.f4.up <- c(pndaC.45.f4.80.up,pndaC.45.f4.99.up)
pndaC.45.f4.lo <- c(pndaC.45.f4.80.lo,pndaC.45.f4.99.lo)

# RCP 8.5
pndaC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pndaC.85.f4) <- c("gfd45","mir45","ces45")
row.names(pndaC.85.f4) <- 1991:2099
pndaC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Pandalidae"]
pndaC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Pandalidae"]
pndaC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Pandalidae"]
# head(pndaC.85.f4)
pndaC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaC.85.f4.up[i] <- max(pndaC.85.f4[i,])
pndaC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pndaC.85.f4.lo[i] <- min(pndaC.85.f4[i,])

# # SRES A1B
# pndaC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pndaC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(pndaC.a1b.f4) <- 1991:2039
# pndaC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Pandalidae"]
# pndaC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Pandalidae"]
# pndaC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Pandalidae"]
# # head(pndaC.a1b.f4)
# pndaC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaC.a1b.f4.up[i] <- max(pndaC.a1b.f4[i,])
# pndaC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pndaC.a1b.f4.lo[i] <- min(pndaC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Ben.zooplankton biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
bnzB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bnzB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(bnzB.45.f1.80) <- 1991:2080
bnzB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Ben.zooplankton"]
bnzB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Ben.zooplankton"]
bnzB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Ben.zooplankton"]
# head(bnzB.45.f1.80)
bnzB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzB.45.f1.80.up[i] <- max(bnzB.45.f1.80[i,])
bnzB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzB.45.f1.80.lo[i] <- min(bnzB.45.f1.80[i,])
# Everything from 2081-2099
bnzB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bnzB.45.f1.99) <- c("gfd45","mir45")
row.names(bnzB.45.f1.99) <- 2081:2099
bnzB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Ben.zooplankton"]
bnzB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Ben.zooplankton"]
# head(bnzB.45.f1.99)
bnzB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzB.45.f1.99.up[i] <- max(bnzB.45.f1.99[i,])
bnzB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzB.45.f1.99.lo[i] <- min(bnzB.45.f1.99[i,])
# now append these two time periods
bnzB.45.f1.up <- c(bnzB.45.f1.80.up,bnzB.45.f1.99.up)
bnzB.45.f1.lo <- c(bnzB.45.f1.80.lo,bnzB.45.f1.99.lo)

# RCP 8.5
bnzB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bnzB.85.f1) <- c("gfd45","mir45","ces45")
row.names(bnzB.85.f1) <- 1991:2099
bnzB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Ben.zooplankton"]
bnzB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Ben.zooplankton"]
bnzB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Ben.zooplankton"]
# head(bnzB.85.f1)
bnzB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzB.85.f1.up[i] <- max(bnzB.85.f1[i,])
bnzB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzB.85.f1.lo[i] <- min(bnzB.85.f1[i,])

# # SRES A1B
# bnzB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(bnzB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(bnzB.a1b.f1) <- 1991:2039
# bnzB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Ben.zooplankton"]
# bnzB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Ben.zooplankton"]
# bnzB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Ben.zooplankton"]
# # head(bnzB.a1b.f1)
# bnzB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzB.a1b.f1.up[i] <- max(bnzB.a1b.f1[i,])
# bnzB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzB.a1b.f1.lo[i] <- min(bnzB.a1b.f1[i,])

# Ben.zooplankton Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
bnzC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bnzC.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(bnzC.45.f1.80) <- 1991:2080
bnzC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Ben.zooplankton"]
bnzC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Ben.zooplankton"]
bnzC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Ben.zooplankton"]
# head(bnzC.45.f1.80)
bnzC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzC.45.f1.80.up[i] <- max(bnzC.45.f1.80[i,])
bnzC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzC.45.f1.80.lo[i] <- min(bnzC.45.f1.80[i,])
# Everything from 2081-2099
bnzC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bnzC.45.f1.99) <- c("gfd45","mir45")
row.names(bnzC.45.f1.99) <- 2081:2099
bnzC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Ben.zooplankton"]
bnzC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Ben.zooplankton"]
# head(bnzC.45.f1.99)
bnzC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzC.45.f1.99.up[i] <- max(bnzC.45.f1.99[i,])
bnzC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzC.45.f1.99.lo[i] <- min(bnzC.45.f1.99[i,])
# now append these two time periods
bnzC.45.f1.up <- c(bnzC.45.f1.80.up,bnzC.45.f1.99.up)
bnzC.45.f1.lo <- c(bnzC.45.f1.80.lo,bnzC.45.f1.99.lo)

# RCP 8.5
bnzC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bnzC.85.f1) <- c("gfd45","mir45","ces45")
row.names(bnzC.85.f1) <- 1991:2099
bnzC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Ben.zooplankton"]
bnzC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Ben.zooplankton"]
bnzC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Ben.zooplankton"]
# head(bnzC.85.f1)
bnzC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzC.85.f1.up[i] <- max(bnzC.85.f1[i,])
bnzC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzC.85.f1.lo[i] <- min(bnzC.85.f1[i,])

# # SRES A1B
# bnzC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(bnzC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(bnzC.a1b.f1) <- 1991:2039
# bnzC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Ben.zooplankton"]
# bnzC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Ben.zooplankton"]
# bnzC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Ben.zooplankton"]
# # head(bnzC.a1b.f1)
# bnzC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzC.a1b.f1.up[i] <- max(bnzC.a1b.f1[i,])
# bnzC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzC.a1b.f1.lo[i] <- min(bnzC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Ben.zooplankton F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
bnzB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bnzB.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(bnzB.45.f2.80) <- 1991:2080
bnzB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Ben.zooplankton"]
bnzB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Ben.zooplankton"]
bnzB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Ben.zooplankton"]
# head(bnzB.45.f2.80)
bnzB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzB.45.f2.80.up[i] <- max(bnzB.45.f2.80[i,])
bnzB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzB.45.f2.80.lo[i] <- min(bnzB.45.f2.80[i,])
# Everything from 2081-2099
bnzB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bnzB.45.f2.99) <- c("gfd45","mir45")
row.names(bnzB.45.f2.99) <- 2081:2099
bnzB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Ben.zooplankton"]
bnzB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Ben.zooplankton"]
# head(bnzB.45.f2.99)
bnzB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzB.45.f2.99.up[i] <- max(bnzB.45.f2.99[i,])
bnzB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzB.45.f2.99.lo[i] <- min(bnzB.45.f2.99[i,])
# now append these two time periods
bnzB.45.f2.up <- c(bnzB.45.f2.80.up,bnzB.45.f2.99.up)
bnzB.45.f2.lo <- c(bnzB.45.f2.80.lo,bnzB.45.f2.99.lo)

# RCP 8.5
bnzB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bnzB.85.f2) <- c("gfd45","mir45","ces45")
row.names(bnzB.85.f2) <- 1991:2099
bnzB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Ben.zooplankton"]
bnzB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Ben.zooplankton"]
bnzB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Ben.zooplankton"]
# head(bnzB.85.f2)
bnzB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzB.85.f2.up[i] <- max(bnzB.85.f2[i,])
bnzB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzB.85.f2.lo[i] <- min(bnzB.85.f2[i,])

# # SRES A1B
# bnzB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(bnzB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(bnzB.a1b.f2) <- 1991:2039
# bnzB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Ben.zooplankton"]
# bnzB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Ben.zooplankton"]
# bnzB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Ben.zooplankton"]
# # head(bnzB.a1b.f2)
# bnzB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzB.a1b.f2.up[i] <- max(bnzB.a1b.f2[i,])
# bnzB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzB.a1b.f2.lo[i] <- min(bnzB.a1b.f2[i,])

# Ben.zooplankton Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
bnzC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bnzC.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(bnzC.45.f2.80) <- 1991:2080
bnzC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Ben.zooplankton"]
bnzC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Ben.zooplankton"]
bnzC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Ben.zooplankton"]
# head(bnzC.45.f2.80)
bnzC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzC.45.f2.80.up[i] <- max(bnzC.45.f2.80[i,])
bnzC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzC.45.f2.80.lo[i] <- min(bnzC.45.f2.80[i,])
# Everything from 2081-2099
bnzC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bnzC.45.f2.99) <- c("gfd45","mir45")
row.names(bnzC.45.f2.99) <- 2081:2099
bnzC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Ben.zooplankton"]
bnzC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Ben.zooplankton"]
# head(bnzC.45.f2.99)
bnzC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzC.45.f2.99.up[i] <- max(bnzC.45.f2.99[i,])
bnzC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzC.45.f2.99.lo[i] <- min(bnzC.45.f2.99[i,])
# now append these two time periods
bnzC.45.f2.up <- c(bnzC.45.f2.80.up,bnzC.45.f2.99.up)
bnzC.45.f2.lo <- c(bnzC.45.f2.80.lo,bnzC.45.f2.99.lo)

# RCP 8.5
bnzC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bnzC.85.f2) <- c("gfd45","mir45","ces45")
row.names(bnzC.85.f2) <- 1991:2099
bnzC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Ben.zooplankton"]
bnzC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Ben.zooplankton"]
bnzC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Ben.zooplankton"]
# head(bnzC.85.f2)
bnzC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzC.85.f2.up[i] <- max(bnzC.85.f2[i,])
bnzC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzC.85.f2.lo[i] <- min(bnzC.85.f2[i,])

# # SRES A1B
# bnzC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(bnzC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(bnzC.a1b.f2) <- 1991:2039
# bnzC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Ben.zooplankton"]
# bnzC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Ben.zooplankton"]
# bnzC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Ben.zooplankton"]
# # head(bnzC.a1b.f2)
# bnzC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzC.a1b.f2.up[i] <- max(bnzC.a1b.f2[i,])
# bnzC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzC.a1b.f2.lo[i] <- min(bnzC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Ben.zooplankton F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
bnzB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bnzB.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(bnzB.45.f3.80) <- 1991:2080
bnzB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Ben.zooplankton"]
bnzB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Ben.zooplankton"]
bnzB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Ben.zooplankton"]
# head(bnzB.45.f3.80)
bnzB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzB.45.f3.80.up[i] <- max(bnzB.45.f3.80[i,])
bnzB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzB.45.f3.80.lo[i] <- min(bnzB.45.f3.80[i,])
# Everything from 2081-2099
bnzB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bnzB.45.f3.99) <- c("gfd45","mir45")
row.names(bnzB.45.f3.99) <- 2081:2099
bnzB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Ben.zooplankton"]
bnzB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Ben.zooplankton"]
# head(bnzB.45.f3.99)
bnzB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzB.45.f3.99.up[i] <- max(bnzB.45.f3.99[i,])
bnzB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzB.45.f3.99.lo[i] <- min(bnzB.45.f3.99[i,])
# now append these two time periods
bnzB.45.f3.up <- c(bnzB.45.f3.80.up,bnzB.45.f3.99.up)
bnzB.45.f3.lo <- c(bnzB.45.f3.80.lo,bnzB.45.f3.99.lo)

# RCP 8.5
bnzB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bnzB.85.f3) <- c("gfd45","mir45","ces45")
row.names(bnzB.85.f3) <- 1991:2099
bnzB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Ben.zooplankton"]
bnzB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Ben.zooplankton"]
bnzB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Ben.zooplankton"]
# head(bnzB.85.f3)
bnzB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzB.85.f3.up[i] <- max(bnzB.85.f3[i,])
bnzB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzB.85.f3.lo[i] <- min(bnzB.85.f3[i,])

# # SRES A1B
# bnzB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(bnzB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(bnzB.a1b.f3) <- 1991:2039
# bnzB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Ben.zooplankton"]
# bnzB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Ben.zooplankton"]
# bnzB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Ben.zooplankton"]
# # head(bnzB.a1b.f3)
# bnzB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzB.a1b.f3.up[i] <- max(bnzB.a1b.f3[i,])
# bnzB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzB.a1b.f3.lo[i] <- min(bnzB.a1b.f3[i,])

# Ben.zooplankton Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
bnzC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bnzC.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(bnzC.45.f3.80) <- 1991:2080
bnzC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Ben.zooplankton"]
bnzC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Ben.zooplankton"]
bnzC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Ben.zooplankton"]
# head(bnzC.45.f3.80)
bnzC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzC.45.f3.80.up[i] <- max(bnzC.45.f3.80[i,])
bnzC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzC.45.f3.80.lo[i] <- min(bnzC.45.f3.80[i,])
# Everything from 2081-2099
bnzC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bnzC.45.f3.99) <- c("gfd45","mir45")
row.names(bnzC.45.f3.99) <- 2081:2099
bnzC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Ben.zooplankton"]
bnzC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Ben.zooplankton"]
# head(bnzC.45.f3.99)
bnzC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzC.45.f3.99.up[i] <- max(bnzC.45.f3.99[i,])
bnzC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzC.45.f3.99.lo[i] <- min(bnzC.45.f3.99[i,])
# now append these two time periods
bnzC.45.f3.up <- c(bnzC.45.f3.80.up,bnzC.45.f3.99.up)
bnzC.45.f3.lo <- c(bnzC.45.f3.80.lo,bnzC.45.f3.99.lo)

# RCP 8.5
bnzC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bnzC.85.f3) <- c("gfd45","mir45","ces45")
row.names(bnzC.85.f3) <- 1991:2099
bnzC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Ben.zooplankton"]
bnzC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Ben.zooplankton"]
bnzC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Ben.zooplankton"]
# head(bnzC.85.f3)
bnzC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzC.85.f3.up[i] <- max(bnzC.85.f3[i,])
bnzC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzC.85.f3.lo[i] <- min(bnzC.85.f3[i,])

# # SRES A1B
# bnzC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(bnzC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(bnzC.a1b.f3) <- 1991:2039
# bnzC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Ben.zooplankton"]
# bnzC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Ben.zooplankton"]
# bnzC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Ben.zooplankton"]
# # head(bnzC.a1b.f3)
# bnzC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzC.a1b.f3.up[i] <- max(bnzC.a1b.f3[i,])
# bnzC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzC.a1b.f3.lo[i] <- min(bnzC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Ben.zooplankton F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
bnzB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bnzB.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(bnzB.45.f4.80) <- 1991:2080
bnzB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Ben.zooplankton"]
bnzB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Ben.zooplankton"]
bnzB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Ben.zooplankton"]
# head(bnzB.45.f4.80)
bnzB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzB.45.f4.80.up[i] <- max(bnzB.45.f4.80[i,])
bnzB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzB.45.f4.80.lo[i] <- min(bnzB.45.f4.80[i,])
# Everything from 2081-2099
bnzB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bnzB.45.f4.99) <- c("gfd45","mir45")
row.names(bnzB.45.f4.99) <- 2081:2099
bnzB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Ben.zooplankton"]
bnzB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Ben.zooplankton"]
# head(bnzB.45.f4.99)
bnzB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzB.45.f4.99.up[i] <- max(bnzB.45.f4.99[i,])
bnzB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzB.45.f4.99.lo[i] <- min(bnzB.45.f4.99[i,])
# now append these two time periods
bnzB.45.f4.up <- c(bnzB.45.f4.80.up,bnzB.45.f4.99.up)
bnzB.45.f4.lo <- c(bnzB.45.f4.80.lo,bnzB.45.f4.99.lo)

# RCP 8.5
bnzB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bnzB.85.f4) <- c("gfd45","mir45","ces45")
row.names(bnzB.85.f4) <- 1991:2099
bnzB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Ben.zooplankton"]
bnzB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Ben.zooplankton"]
bnzB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Ben.zooplankton"]
# head(bnzB.85.f4)
bnzB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzB.85.f4.up[i] <- max(bnzB.85.f4[i,])
bnzB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzB.85.f4.lo[i] <- min(bnzB.85.f4[i,])

# # SRES A1B
# bnzB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(bnzB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(bnzB.a1b.f4) <- 1991:2039
# bnzB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Ben.zooplankton"]
# bnzB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Ben.zooplankton"]
# bnzB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Ben.zooplankton"]
# # head(bnzB.a1b.f4)
# bnzB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzB.a1b.f4.up[i] <- max(bnzB.a1b.f4[i,])
# bnzB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzB.a1b.f4.lo[i] <- min(bnzB.a1b.f4[i,])

# Ben.zooplankton Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
bnzC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bnzC.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(bnzC.45.f4.80) <- 1991:2080
bnzC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Ben.zooplankton"]
bnzC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Ben.zooplankton"]
bnzC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Ben.zooplankton"]
# head(bnzC.45.f4.80)
bnzC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzC.45.f4.80.up[i] <- max(bnzC.45.f4.80[i,])
bnzC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bnzC.45.f4.80.lo[i] <- min(bnzC.45.f4.80[i,])
# Everything from 2081-2099
bnzC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bnzC.45.f4.99) <- c("gfd45","mir45")
row.names(bnzC.45.f4.99) <- 2081:2099
bnzC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Ben.zooplankton"]
bnzC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Ben.zooplankton"]
# head(bnzC.45.f4.99)
bnzC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzC.45.f4.99.up[i] <- max(bnzC.45.f4.99[i,])
bnzC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bnzC.45.f4.99.lo[i] <- min(bnzC.45.f4.99[i,])
# now append these two time periods
bnzC.45.f4.up <- c(bnzC.45.f4.80.up,bnzC.45.f4.99.up)
bnzC.45.f4.lo <- c(bnzC.45.f4.80.lo,bnzC.45.f4.99.lo)

# RCP 8.5
bnzC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bnzC.85.f4) <- c("gfd45","mir45","ces45")
row.names(bnzC.85.f4) <- 1991:2099
bnzC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Ben.zooplankton"]
bnzC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Ben.zooplankton"]
bnzC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Ben.zooplankton"]
# head(bnzC.85.f4)
bnzC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzC.85.f4.up[i] <- max(bnzC.85.f4[i,])
bnzC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bnzC.85.f4.lo[i] <- min(bnzC.85.f4[i,])

# # SRES A1B
# bnzC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(bnzC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(bnzC.a1b.f4) <- 1991:2039
# bnzC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Ben.zooplankton"]
# bnzC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Ben.zooplankton"]
# bnzC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Ben.zooplankton"]
# # head(bnzC.a1b.f4)
# bnzC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzC.a1b.f4.up[i] <- max(bnzC.a1b.f4[i,])
# bnzC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) bnzC.a1b.f4.lo[i] <- min(bnzC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Structural.epifauna biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
stepB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(stepB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(stepB.45.f1.80) <- 1991:2080
stepB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Structural.epifauna"]
stepB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Structural.epifauna"]
stepB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Structural.epifauna"]
# head(stepB.45.f1.80)
stepB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepB.45.f1.80.up[i] <- max(stepB.45.f1.80[i,])
stepB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepB.45.f1.80.lo[i] <- min(stepB.45.f1.80[i,])
# Everything from 2081-2099
stepB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(stepB.45.f1.99) <- c("gfd45","mir45")
row.names(stepB.45.f1.99) <- 2081:2099
stepB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Structural.epifauna"]
stepB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Structural.epifauna"]
# head(stepB.45.f1.99)
stepB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepB.45.f1.99.up[i] <- max(stepB.45.f1.99[i,])
stepB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepB.45.f1.99.lo[i] <- min(stepB.45.f1.99[i,])
# now append these two time periods
stepB.45.f1.up <- c(stepB.45.f1.80.up,stepB.45.f1.99.up)
stepB.45.f1.lo <- c(stepB.45.f1.80.lo,stepB.45.f1.99.lo)

# RCP 8.5
stepB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(stepB.85.f1) <- c("gfd45","mir45","ces45")
row.names(stepB.85.f1) <- 1991:2099
stepB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Structural.epifauna"]
stepB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Structural.epifauna"]
stepB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Structural.epifauna"]
# head(stepB.85.f1)
stepB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepB.85.f1.up[i] <- max(stepB.85.f1[i,])
stepB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepB.85.f1.lo[i] <- min(stepB.85.f1[i,])

# # SRES A1B
# stepB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(stepB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(stepB.a1b.f1) <- 1991:2039
# stepB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Structural.epifauna"]
# stepB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Structural.epifauna"]
# stepB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Structural.epifauna"]
# # head(stepB.a1b.f1)
# stepB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepB.a1b.f1.up[i] <- max(stepB.a1b.f1[i,])
# stepB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepB.a1b.f1.lo[i] <- min(stepB.a1b.f1[i,])

# Structural.epifauna Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
stepC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(stepC.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(stepC.45.f1.80) <- 1991:2080
stepC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Structural.epifauna"]
stepC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Structural.epifauna"]
stepC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Structural.epifauna"]
# head(stepC.45.f1.80)
stepC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepC.45.f1.80.up[i] <- max(stepC.45.f1.80[i,])
stepC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepC.45.f1.80.lo[i] <- min(stepC.45.f1.80[i,])
# Everything from 2081-2099
stepC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(stepC.45.f1.99) <- c("gfd45","mir45")
row.names(stepC.45.f1.99) <- 2081:2099
stepC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Structural.epifauna"]
stepC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Structural.epifauna"]
# head(stepC.45.f1.99)
stepC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepC.45.f1.99.up[i] <- max(stepC.45.f1.99[i,])
stepC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepC.45.f1.99.lo[i] <- min(stepC.45.f1.99[i,])
# now append these two time periods
stepC.45.f1.up <- c(stepC.45.f1.80.up,stepC.45.f1.99.up)
stepC.45.f1.lo <- c(stepC.45.f1.80.lo,stepC.45.f1.99.lo)

# RCP 8.5
stepC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(stepC.85.f1) <- c("gfd45","mir45","ces45")
row.names(stepC.85.f1) <- 1991:2099
stepC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Structural.epifauna"]
stepC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Structural.epifauna"]
stepC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Structural.epifauna"]
# head(stepC.85.f1)
stepC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepC.85.f1.up[i] <- max(stepC.85.f1[i,])
stepC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepC.85.f1.lo[i] <- min(stepC.85.f1[i,])

# # SRES A1B
# stepC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(stepC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(stepC.a1b.f1) <- 1991:2039
# stepC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Structural.epifauna"]
# stepC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Structural.epifauna"]
# stepC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Structural.epifauna"]
# # head(stepC.a1b.f1)
# stepC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepC.a1b.f1.up[i] <- max(stepC.a1b.f1[i,])
# stepC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepC.a1b.f1.lo[i] <- min(stepC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Structural.epifauna F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
stepB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(stepB.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(stepB.45.f2.80) <- 1991:2080
stepB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Structural.epifauna"]
stepB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Structural.epifauna"]
stepB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Structural.epifauna"]
# head(stepB.45.f2.80)
stepB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepB.45.f2.80.up[i] <- max(stepB.45.f2.80[i,])
stepB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepB.45.f2.80.lo[i] <- min(stepB.45.f2.80[i,])
# Everything from 2081-2099
stepB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(stepB.45.f2.99) <- c("gfd45","mir45")
row.names(stepB.45.f2.99) <- 2081:2099
stepB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Structural.epifauna"]
stepB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Structural.epifauna"]
# head(stepB.45.f2.99)
stepB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepB.45.f2.99.up[i] <- max(stepB.45.f2.99[i,])
stepB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepB.45.f2.99.lo[i] <- min(stepB.45.f2.99[i,])
# now append these two time periods
stepB.45.f2.up <- c(stepB.45.f2.80.up,stepB.45.f2.99.up)
stepB.45.f2.lo <- c(stepB.45.f2.80.lo,stepB.45.f2.99.lo)

# RCP 8.5
stepB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(stepB.85.f2) <- c("gfd45","mir45","ces45")
row.names(stepB.85.f2) <- 1991:2099
stepB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Structural.epifauna"]
stepB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Structural.epifauna"]
stepB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Structural.epifauna"]
# head(stepB.85.f2)
stepB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepB.85.f2.up[i] <- max(stepB.85.f2[i,])
stepB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepB.85.f2.lo[i] <- min(stepB.85.f2[i,])

# # SRES A1B
# stepB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(stepB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(stepB.a1b.f2) <- 1991:2039
# stepB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Structural.epifauna"]
# stepB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Structural.epifauna"]
# stepB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Structural.epifauna"]
# # head(stepB.a1b.f2)
# stepB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepB.a1b.f2.up[i] <- max(stepB.a1b.f2[i,])
# stepB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepB.a1b.f2.lo[i] <- min(stepB.a1b.f2[i,])

# Structural.epifauna Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
stepC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(stepC.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(stepC.45.f2.80) <- 1991:2080
stepC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Structural.epifauna"]
stepC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Structural.epifauna"]
stepC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Structural.epifauna"]
# head(stepC.45.f2.80)
stepC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepC.45.f2.80.up[i] <- max(stepC.45.f2.80[i,])
stepC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepC.45.f2.80.lo[i] <- min(stepC.45.f2.80[i,])
# Everything from 2081-2099
stepC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(stepC.45.f2.99) <- c("gfd45","mir45")
row.names(stepC.45.f2.99) <- 2081:2099
stepC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Structural.epifauna"]
stepC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Structural.epifauna"]
# head(stepC.45.f2.99)
stepC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepC.45.f2.99.up[i] <- max(stepC.45.f2.99[i,])
stepC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepC.45.f2.99.lo[i] <- min(stepC.45.f2.99[i,])
# now append these two time periods
stepC.45.f2.up <- c(stepC.45.f2.80.up,stepC.45.f2.99.up)
stepC.45.f2.lo <- c(stepC.45.f2.80.lo,stepC.45.f2.99.lo)

# RCP 8.5
stepC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(stepC.85.f2) <- c("gfd45","mir45","ces45")
row.names(stepC.85.f2) <- 1991:2099
stepC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Structural.epifauna"]
stepC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Structural.epifauna"]
stepC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Structural.epifauna"]
# head(stepC.85.f2)
stepC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepC.85.f2.up[i] <- max(stepC.85.f2[i,])
stepC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepC.85.f2.lo[i] <- min(stepC.85.f2[i,])

# # SRES A1B
# stepC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(stepC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(stepC.a1b.f2) <- 1991:2039
# stepC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Structural.epifauna"]
# stepC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Structural.epifauna"]
# stepC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Structural.epifauna"]
# # head(stepC.a1b.f2)
# stepC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepC.a1b.f2.up[i] <- max(stepC.a1b.f2[i,])
# stepC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepC.a1b.f2.lo[i] <- min(stepC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Structural.epifauna F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
stepB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(stepB.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(stepB.45.f3.80) <- 1991:2080
stepB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Structural.epifauna"]
stepB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Structural.epifauna"]
stepB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Structural.epifauna"]
# head(stepB.45.f3.80)
stepB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepB.45.f3.80.up[i] <- max(stepB.45.f3.80[i,])
stepB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepB.45.f3.80.lo[i] <- min(stepB.45.f3.80[i,])
# Everything from 2081-2099
stepB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(stepB.45.f3.99) <- c("gfd45","mir45")
row.names(stepB.45.f3.99) <- 2081:2099
stepB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Structural.epifauna"]
stepB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Structural.epifauna"]
# head(stepB.45.f3.99)
stepB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepB.45.f3.99.up[i] <- max(stepB.45.f3.99[i,])
stepB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepB.45.f3.99.lo[i] <- min(stepB.45.f3.99[i,])
# now append these two time periods
stepB.45.f3.up <- c(stepB.45.f3.80.up,stepB.45.f3.99.up)
stepB.45.f3.lo <- c(stepB.45.f3.80.lo,stepB.45.f3.99.lo)

# RCP 8.5
stepB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(stepB.85.f3) <- c("gfd45","mir45","ces45")
row.names(stepB.85.f3) <- 1991:2099
stepB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Structural.epifauna"]
stepB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Structural.epifauna"]
stepB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Structural.epifauna"]
# head(stepB.85.f3)
stepB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepB.85.f3.up[i] <- max(stepB.85.f3[i,])
stepB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepB.85.f3.lo[i] <- min(stepB.85.f3[i,])

# # SRES A1B
# stepB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(stepB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(stepB.a1b.f3) <- 1991:2039
# stepB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Structural.epifauna"]
# stepB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Structural.epifauna"]
# stepB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Structural.epifauna"]
# # head(stepB.a1b.f3)
# stepB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepB.a1b.f3.up[i] <- max(stepB.a1b.f3[i,])
# stepB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepB.a1b.f3.lo[i] <- min(stepB.a1b.f3[i,])

# Structural.epifauna Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
stepC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(stepC.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(stepC.45.f3.80) <- 1991:2080
stepC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Structural.epifauna"]
stepC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Structural.epifauna"]
stepC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Structural.epifauna"]
# head(stepC.45.f3.80)
stepC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepC.45.f3.80.up[i] <- max(stepC.45.f3.80[i,])
stepC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepC.45.f3.80.lo[i] <- min(stepC.45.f3.80[i,])
# Everything from 2081-2099
stepC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(stepC.45.f3.99) <- c("gfd45","mir45")
row.names(stepC.45.f3.99) <- 2081:2099
stepC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Structural.epifauna"]
stepC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Structural.epifauna"]
# head(stepC.45.f3.99)
stepC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepC.45.f3.99.up[i] <- max(stepC.45.f3.99[i,])
stepC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepC.45.f3.99.lo[i] <- min(stepC.45.f3.99[i,])
# now append these two time periods
stepC.45.f3.up <- c(stepC.45.f3.80.up,stepC.45.f3.99.up)
stepC.45.f3.lo <- c(stepC.45.f3.80.lo,stepC.45.f3.99.lo)

# RCP 8.5
stepC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(stepC.85.f3) <- c("gfd45","mir45","ces45")
row.names(stepC.85.f3) <- 1991:2099
stepC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Structural.epifauna"]
stepC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Structural.epifauna"]
stepC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Structural.epifauna"]
# head(stepC.85.f3)
stepC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepC.85.f3.up[i] <- max(stepC.85.f3[i,])
stepC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepC.85.f3.lo[i] <- min(stepC.85.f3[i,])

# # SRES A1B
# stepC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(stepC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(stepC.a1b.f3) <- 1991:2039
# stepC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Structural.epifauna"]
# stepC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Structural.epifauna"]
# stepC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Structural.epifauna"]
# # head(stepC.a1b.f3)
# stepC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepC.a1b.f3.up[i] <- max(stepC.a1b.f3[i,])
# stepC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepC.a1b.f3.lo[i] <- min(stepC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Structural.epifauna F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
stepB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(stepB.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(stepB.45.f4.80) <- 1991:2080
stepB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Structural.epifauna"]
stepB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Structural.epifauna"]
stepB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Structural.epifauna"]
# head(stepB.45.f4.80)
stepB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepB.45.f4.80.up[i] <- max(stepB.45.f4.80[i,])
stepB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepB.45.f4.80.lo[i] <- min(stepB.45.f4.80[i,])
# Everything from 2081-2099
stepB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(stepB.45.f4.99) <- c("gfd45","mir45")
row.names(stepB.45.f4.99) <- 2081:2099
stepB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Structural.epifauna"]
stepB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Structural.epifauna"]
# head(stepB.45.f4.99)
stepB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepB.45.f4.99.up[i] <- max(stepB.45.f4.99[i,])
stepB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepB.45.f4.99.lo[i] <- min(stepB.45.f4.99[i,])
# now append these two time periods
stepB.45.f4.up <- c(stepB.45.f4.80.up,stepB.45.f4.99.up)
stepB.45.f4.lo <- c(stepB.45.f4.80.lo,stepB.45.f4.99.lo)

# RCP 8.5
stepB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(stepB.85.f4) <- c("gfd45","mir45","ces45")
row.names(stepB.85.f4) <- 1991:2099
stepB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Structural.epifauna"]
stepB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Structural.epifauna"]
stepB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Structural.epifauna"]
# head(stepB.85.f4)
stepB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepB.85.f4.up[i] <- max(stepB.85.f4[i,])
stepB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepB.85.f4.lo[i] <- min(stepB.85.f4[i,])

# # SRES A1B
# stepB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(stepB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(stepB.a1b.f4) <- 1991:2039
# stepB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Structural.epifauna"]
# stepB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Structural.epifauna"]
# stepB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Structural.epifauna"]
# # head(stepB.a1b.f4)
# stepB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepB.a1b.f4.up[i] <- max(stepB.a1b.f4[i,])
# stepB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepB.a1b.f4.lo[i] <- min(stepB.a1b.f4[i,])

# Structural.epifauna Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
stepC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(stepC.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(stepC.45.f4.80) <- 1991:2080
stepC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Structural.epifauna"]
stepC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Structural.epifauna"]
stepC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Structural.epifauna"]
# head(stepC.45.f4.80)
stepC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepC.45.f4.80.up[i] <- max(stepC.45.f4.80[i,])
stepC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) stepC.45.f4.80.lo[i] <- min(stepC.45.f4.80[i,])
# Everything from 2081-2099
stepC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(stepC.45.f4.99) <- c("gfd45","mir45")
row.names(stepC.45.f4.99) <- 2081:2099
stepC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Structural.epifauna"]
stepC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Structural.epifauna"]
# head(stepC.45.f4.99)
stepC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepC.45.f4.99.up[i] <- max(stepC.45.f4.99[i,])
stepC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) stepC.45.f4.99.lo[i] <- min(stepC.45.f4.99[i,])
# now append these two time periods
stepC.45.f4.up <- c(stepC.45.f4.80.up,stepC.45.f4.99.up)
stepC.45.f4.lo <- c(stepC.45.f4.80.lo,stepC.45.f4.99.lo)

# RCP 8.5
stepC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(stepC.85.f4) <- c("gfd45","mir45","ces45")
row.names(stepC.85.f4) <- 1991:2099
stepC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Structural.epifauna"]
stepC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Structural.epifauna"]
stepC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Structural.epifauna"]
# head(stepC.85.f4)
stepC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepC.85.f4.up[i] <- max(stepC.85.f4[i,])
stepC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) stepC.85.f4.lo[i] <- min(stepC.85.f4[i,])

# # SRES A1B
# stepC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(stepC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(stepC.a1b.f4) <- 1991:2039
# stepC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Structural.epifauna"]
# stepC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Structural.epifauna"]
# stepC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Structural.epifauna"]
# # head(stepC.a1b.f4)
# stepC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepC.a1b.f4.up[i] <- max(stepC.a1b.f4[i,])
# stepC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) stepC.a1b.f4.lo[i] <- min(stepC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Infauna biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
infB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(infB.45.f1.80) <- 1991:2080
infB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Infauna"]
infB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Infauna"]
infB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Infauna"]
# head(infB.45.f1.80)
infB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infB.45.f1.80.up[i] <- max(infB.45.f1.80[i,])
infB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infB.45.f1.80.lo[i] <- min(infB.45.f1.80[i,])
# Everything from 2081-2099
infB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infB.45.f1.99) <- c("gfd45","mir45")
row.names(infB.45.f1.99) <- 2081:2099
infB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Infauna"]
infB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Infauna"]
# head(infB.45.f1.99)
infB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infB.45.f1.99.up[i] <- max(infB.45.f1.99[i,])
infB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infB.45.f1.99.lo[i] <- min(infB.45.f1.99[i,])
# now append these two time periods
infB.45.f1.up <- c(infB.45.f1.80.up,infB.45.f1.99.up)
infB.45.f1.lo <- c(infB.45.f1.80.lo,infB.45.f1.99.lo)

# RCP 8.5
infB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infB.85.f1) <- c("gfd45","mir45","ces45")
row.names(infB.85.f1) <- 1991:2099
infB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Infauna"]
infB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Infauna"]
infB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Infauna"]
# head(infB.85.f1)
infB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infB.85.f1.up[i] <- max(infB.85.f1[i,])
infB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infB.85.f1.lo[i] <- min(infB.85.f1[i,])

# # SRES A1B
# infB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(infB.a1b.f1) <- 1991:2039
# infB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Infauna"]
# infB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Infauna"]
# infB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Infauna"]
# # head(infB.a1b.f1)
# infB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infB.a1b.f1.up[i] <- max(infB.a1b.f1[i,])
# infB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infB.a1b.f1.lo[i] <- min(infB.a1b.f1[i,])

# Infauna Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
infC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infC.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(infC.45.f1.80) <- 1991:2080
infC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Infauna"]
infC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Infauna"]
infC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Infauna"]
# head(infC.45.f1.80)
infC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infC.45.f1.80.up[i] <- max(infC.45.f1.80[i,])
infC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infC.45.f1.80.lo[i] <- min(infC.45.f1.80[i,])
# Everything from 2081-2099
infC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infC.45.f1.99) <- c("gfd45","mir45")
row.names(infC.45.f1.99) <- 2081:2099
infC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Infauna"]
infC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Infauna"]
# head(infC.45.f1.99)
infC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infC.45.f1.99.up[i] <- max(infC.45.f1.99[i,])
infC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infC.45.f1.99.lo[i] <- min(infC.45.f1.99[i,])
# now append these two time periods
infC.45.f1.up <- c(infC.45.f1.80.up,infC.45.f1.99.up)
infC.45.f1.lo <- c(infC.45.f1.80.lo,infC.45.f1.99.lo)

# RCP 8.5
infC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infC.85.f1) <- c("gfd45","mir45","ces45")
row.names(infC.85.f1) <- 1991:2099
infC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Infauna"]
infC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Infauna"]
infC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Infauna"]
# head(infC.85.f1)
infC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infC.85.f1.up[i] <- max(infC.85.f1[i,])
infC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infC.85.f1.lo[i] <- min(infC.85.f1[i,])

# # SRES A1B
# infC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(infC.a1b.f1) <- 1991:2039
# infC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Infauna"]
# infC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Infauna"]
# infC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Infauna"]
# # head(infC.a1b.f1)
# infC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infC.a1b.f1.up[i] <- max(infC.a1b.f1[i,])
# infC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infC.a1b.f1.lo[i] <- min(infC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Infauna F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
infB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infB.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(infB.45.f2.80) <- 1991:2080
infB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Infauna"]
infB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Infauna"]
infB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Infauna"]
# head(infB.45.f2.80)
infB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infB.45.f2.80.up[i] <- max(infB.45.f2.80[i,])
infB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infB.45.f2.80.lo[i] <- min(infB.45.f2.80[i,])
# Everything from 2081-2099
infB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infB.45.f2.99) <- c("gfd45","mir45")
row.names(infB.45.f2.99) <- 2081:2099
infB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Infauna"]
infB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Infauna"]
# head(infB.45.f2.99)
infB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infB.45.f2.99.up[i] <- max(infB.45.f2.99[i,])
infB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infB.45.f2.99.lo[i] <- min(infB.45.f2.99[i,])
# now append these two time periods
infB.45.f2.up <- c(infB.45.f2.80.up,infB.45.f2.99.up)
infB.45.f2.lo <- c(infB.45.f2.80.lo,infB.45.f2.99.lo)

# RCP 8.5
infB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infB.85.f2) <- c("gfd45","mir45","ces45")
row.names(infB.85.f2) <- 1991:2099
infB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Infauna"]
infB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Infauna"]
infB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Infauna"]
# head(infB.85.f2)
infB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infB.85.f2.up[i] <- max(infB.85.f2[i,])
infB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infB.85.f2.lo[i] <- min(infB.85.f2[i,])

# # SRES A1B
# infB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(infB.a1b.f2) <- 1991:2039
# infB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Infauna"]
# infB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Infauna"]
# infB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Infauna"]
# # head(infB.a1b.f2)
# infB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infB.a1b.f2.up[i] <- max(infB.a1b.f2[i,])
# infB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infB.a1b.f2.lo[i] <- min(infB.a1b.f2[i,])

# Infauna Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
infC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infC.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(infC.45.f2.80) <- 1991:2080
infC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Infauna"]
infC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Infauna"]
infC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Infauna"]
# head(infC.45.f2.80)
infC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infC.45.f2.80.up[i] <- max(infC.45.f2.80[i,])
infC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infC.45.f2.80.lo[i] <- min(infC.45.f2.80[i,])
# Everything from 2081-2099
infC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infC.45.f2.99) <- c("gfd45","mir45")
row.names(infC.45.f2.99) <- 2081:2099
infC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Infauna"]
infC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Infauna"]
# head(infC.45.f2.99)
infC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infC.45.f2.99.up[i] <- max(infC.45.f2.99[i,])
infC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infC.45.f2.99.lo[i] <- min(infC.45.f2.99[i,])
# now append these two time periods
infC.45.f2.up <- c(infC.45.f2.80.up,infC.45.f2.99.up)
infC.45.f2.lo <- c(infC.45.f2.80.lo,infC.45.f2.99.lo)

# RCP 8.5
infC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infC.85.f2) <- c("gfd45","mir45","ces45")
row.names(infC.85.f2) <- 1991:2099
infC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Infauna"]
infC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Infauna"]
infC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Infauna"]
# head(infC.85.f2)
infC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infC.85.f2.up[i] <- max(infC.85.f2[i,])
infC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infC.85.f2.lo[i] <- min(infC.85.f2[i,])

# # SRES A1B
# infC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(infC.a1b.f2) <- 1991:2039
# infC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Infauna"]
# infC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Infauna"]
# infC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Infauna"]
# # head(infC.a1b.f2)
# infC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infC.a1b.f2.up[i] <- max(infC.a1b.f2[i,])
# infC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infC.a1b.f2.lo[i] <- min(infC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Infauna F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
infB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infB.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(infB.45.f3.80) <- 1991:2080
infB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Infauna"]
infB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Infauna"]
infB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Infauna"]
# head(infB.45.f3.80)
infB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infB.45.f3.80.up[i] <- max(infB.45.f3.80[i,])
infB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infB.45.f3.80.lo[i] <- min(infB.45.f3.80[i,])
# Everything from 2081-2099
infB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infB.45.f3.99) <- c("gfd45","mir45")
row.names(infB.45.f3.99) <- 2081:2099
infB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Infauna"]
infB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Infauna"]
# head(infB.45.f3.99)
infB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infB.45.f3.99.up[i] <- max(infB.45.f3.99[i,])
infB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infB.45.f3.99.lo[i] <- min(infB.45.f3.99[i,])
# now append these two time periods
infB.45.f3.up <- c(infB.45.f3.80.up,infB.45.f3.99.up)
infB.45.f3.lo <- c(infB.45.f3.80.lo,infB.45.f3.99.lo)

# RCP 8.5
infB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infB.85.f3) <- c("gfd45","mir45","ces45")
row.names(infB.85.f3) <- 1991:2099
infB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Infauna"]
infB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Infauna"]
infB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Infauna"]
# head(infB.85.f3)
infB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infB.85.f3.up[i] <- max(infB.85.f3[i,])
infB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infB.85.f3.lo[i] <- min(infB.85.f3[i,])

# # SRES A1B
# infB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(infB.a1b.f3) <- 1991:2039
# infB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Infauna"]
# infB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Infauna"]
# infB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Infauna"]
# # head(infB.a1b.f3)
# infB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infB.a1b.f3.up[i] <- max(infB.a1b.f3[i,])
# infB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infB.a1b.f3.lo[i] <- min(infB.a1b.f3[i,])

# Infauna Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
infC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infC.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(infC.45.f3.80) <- 1991:2080
infC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Infauna"]
infC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Infauna"]
infC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Infauna"]
# head(infC.45.f3.80)
infC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infC.45.f3.80.up[i] <- max(infC.45.f3.80[i,])
infC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infC.45.f3.80.lo[i] <- min(infC.45.f3.80[i,])
# Everything from 2081-2099
infC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infC.45.f3.99) <- c("gfd45","mir45")
row.names(infC.45.f3.99) <- 2081:2099
infC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Infauna"]
infC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Infauna"]
# head(infC.45.f3.99)
infC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infC.45.f3.99.up[i] <- max(infC.45.f3.99[i,])
infC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infC.45.f3.99.lo[i] <- min(infC.45.f3.99[i,])
# now append these two time periods
infC.45.f3.up <- c(infC.45.f3.80.up,infC.45.f3.99.up)
infC.45.f3.lo <- c(infC.45.f3.80.lo,infC.45.f3.99.lo)

# RCP 8.5
infC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infC.85.f3) <- c("gfd45","mir45","ces45")
row.names(infC.85.f3) <- 1991:2099
infC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Infauna"]
infC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Infauna"]
infC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Infauna"]
# head(infC.85.f3)
infC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infC.85.f3.up[i] <- max(infC.85.f3[i,])
infC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infC.85.f3.lo[i] <- min(infC.85.f3[i,])

# # SRES A1B
# infC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(infC.a1b.f3) <- 1991:2039
# infC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Infauna"]
# infC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Infauna"]
# infC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Infauna"]
# # head(infC.a1b.f3)
# infC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infC.a1b.f3.up[i] <- max(infC.a1b.f3[i,])
# infC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infC.a1b.f3.lo[i] <- min(infC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Infauna F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
infB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infB.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(infB.45.f4.80) <- 1991:2080
infB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Infauna"]
infB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Infauna"]
infB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Infauna"]
# head(infB.45.f4.80)
infB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infB.45.f4.80.up[i] <- max(infB.45.f4.80[i,])
infB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infB.45.f4.80.lo[i] <- min(infB.45.f4.80[i,])
# Everything from 2081-2099
infB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infB.45.f4.99) <- c("gfd45","mir45")
row.names(infB.45.f4.99) <- 2081:2099
infB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Infauna"]
infB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Infauna"]
# head(infB.45.f4.99)
infB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infB.45.f4.99.up[i] <- max(infB.45.f4.99[i,])
infB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infB.45.f4.99.lo[i] <- min(infB.45.f4.99[i,])
# now append these two time periods
infB.45.f4.up <- c(infB.45.f4.80.up,infB.45.f4.99.up)
infB.45.f4.lo <- c(infB.45.f4.80.lo,infB.45.f4.99.lo)

# RCP 8.5
infB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infB.85.f4) <- c("gfd45","mir45","ces45")
row.names(infB.85.f4) <- 1991:2099
infB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Infauna"]
infB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Infauna"]
infB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Infauna"]
# head(infB.85.f4)
infB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infB.85.f4.up[i] <- max(infB.85.f4[i,])
infB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infB.85.f4.lo[i] <- min(infB.85.f4[i,])

# # SRES A1B
# infB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(infB.a1b.f4) <- 1991:2039
# infB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Infauna"]
# infB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Infauna"]
# infB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Infauna"]
# # head(infB.a1b.f4)
# infB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infB.a1b.f4.up[i] <- max(infB.a1b.f4[i,])
# infB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infB.a1b.f4.lo[i] <- min(infB.a1b.f4[i,])

# Infauna Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
infC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(infC.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(infC.45.f4.80) <- 1991:2080
infC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Infauna"]
infC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Infauna"]
infC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Infauna"]
# head(infC.45.f4.80)
infC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) infC.45.f4.80.up[i] <- max(infC.45.f4.80[i,])
infC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) infC.45.f4.80.lo[i] <- min(infC.45.f4.80[i,])
# Everything from 2081-2099
infC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(infC.45.f4.99) <- c("gfd45","mir45")
row.names(infC.45.f4.99) <- 2081:2099
infC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Infauna"]
infC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Infauna"]
# head(infC.45.f4.99)
infC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) infC.45.f4.99.up[i] <- max(infC.45.f4.99[i,])
infC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) infC.45.f4.99.lo[i] <- min(infC.45.f4.99[i,])
# now append these two time periods
infC.45.f4.up <- c(infC.45.f4.80.up,infC.45.f4.99.up)
infC.45.f4.lo <- c(infC.45.f4.80.lo,infC.45.f4.99.lo)

# RCP 8.5
infC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(infC.85.f4) <- c("gfd45","mir45","ces45")
row.names(infC.85.f4) <- 1991:2099
infC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Infauna"]
infC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Infauna"]
infC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Infauna"]
# head(infC.85.f4)
infC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) infC.85.f4.up[i] <- max(infC.85.f4[i,])
infC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) infC.85.f4.lo[i] <- min(infC.85.f4[i,])

# # SRES A1B
# infC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(infC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(infC.a1b.f4) <- 1991:2039
# infC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Infauna"]
# infC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Infauna"]
# infC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Infauna"]
# # head(infC.a1b.f4)
# infC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infC.a1b.f4.up[i] <- max(infC.a1b.f4[i,])
# infC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) infC.a1b.f4.lo[i] <- min(infC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Pel.zooplankton biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
plzB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(plzB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(plzB.45.f1.80) <- 1991:2080
plzB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Pel.zooplankton"]
plzB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Pel.zooplankton"]
plzB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Pel.zooplankton"]
# head(plzB.45.f1.80)
plzB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzB.45.f1.80.up[i] <- max(plzB.45.f1.80[i,])
plzB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzB.45.f1.80.lo[i] <- min(plzB.45.f1.80[i,])
# Everything from 2081-2099
plzB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(plzB.45.f1.99) <- c("gfd45","mir45")
row.names(plzB.45.f1.99) <- 2081:2099
plzB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Pel.zooplankton"]
plzB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Pel.zooplankton"]
# head(plzB.45.f1.99)
plzB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzB.45.f1.99.up[i] <- max(plzB.45.f1.99[i,])
plzB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzB.45.f1.99.lo[i] <- min(plzB.45.f1.99[i,])
# now append these two time periods
plzB.45.f1.up <- c(plzB.45.f1.80.up,plzB.45.f1.99.up)
plzB.45.f1.lo <- c(plzB.45.f1.80.lo,plzB.45.f1.99.lo)

# RCP 8.5
plzB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(plzB.85.f1) <- c("gfd45","mir45","ces45")
row.names(plzB.85.f1) <- 1991:2099
plzB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Pel.zooplankton"]
plzB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Pel.zooplankton"]
plzB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Pel.zooplankton"]
# head(plzB.85.f1)
plzB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzB.85.f1.up[i] <- max(plzB.85.f1[i,])
plzB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzB.85.f1.lo[i] <- min(plzB.85.f1[i,])

# # SRES A1B
# plzB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(plzB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(plzB.a1b.f1) <- 1991:2039
# plzB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Pel.zooplankton"]
# plzB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Pel.zooplankton"]
# plzB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Pel.zooplankton"]
# # head(plzB.a1b.f1)
# plzB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzB.a1b.f1.up[i] <- max(plzB.a1b.f1[i,])
# plzB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzB.a1b.f1.lo[i] <- min(plzB.a1b.f1[i,])

# Pel.zooplankton Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
plzC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(plzC.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(plzC.45.f1.80) <- 1991:2080
plzC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Pel.zooplankton"]
plzC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Pel.zooplankton"]
plzC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Pel.zooplankton"]
# head(plzC.45.f1.80)
plzC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzC.45.f1.80.up[i] <- max(plzC.45.f1.80[i,])
plzC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzC.45.f1.80.lo[i] <- min(plzC.45.f1.80[i,])
# Everything from 2081-2099
plzC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(plzC.45.f1.99) <- c("gfd45","mir45")
row.names(plzC.45.f1.99) <- 2081:2099
plzC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Pel.zooplankton"]
plzC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Pel.zooplankton"]
# head(plzC.45.f1.99)
plzC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzC.45.f1.99.up[i] <- max(plzC.45.f1.99[i,])
plzC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzC.45.f1.99.lo[i] <- min(plzC.45.f1.99[i,])
# now append these two time periods
plzC.45.f1.up <- c(plzC.45.f1.80.up,plzC.45.f1.99.up)
plzC.45.f1.lo <- c(plzC.45.f1.80.lo,plzC.45.f1.99.lo)

# RCP 8.5
plzC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(plzC.85.f1) <- c("gfd45","mir45","ces45")
row.names(plzC.85.f1) <- 1991:2099
plzC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Pel.zooplankton"]
plzC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Pel.zooplankton"]
plzC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Pel.zooplankton"]
# head(plzC.85.f1)
plzC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzC.85.f1.up[i] <- max(plzC.85.f1[i,])
plzC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzC.85.f1.lo[i] <- min(plzC.85.f1[i,])

# # SRES A1B
# plzC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(plzC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(plzC.a1b.f1) <- 1991:2039
# plzC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Pel.zooplankton"]
# plzC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Pel.zooplankton"]
# plzC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Pel.zooplankton"]
# # head(plzC.a1b.f1)
# plzC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzC.a1b.f1.up[i] <- max(plzC.a1b.f1[i,])
# plzC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzC.a1b.f1.lo[i] <- min(plzC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Pel.zooplankton F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
plzB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(plzB.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(plzB.45.f2.80) <- 1991:2080
plzB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Pel.zooplankton"]
plzB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Pel.zooplankton"]
plzB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Pel.zooplankton"]
# head(plzB.45.f2.80)
plzB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzB.45.f2.80.up[i] <- max(plzB.45.f2.80[i,])
plzB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzB.45.f2.80.lo[i] <- min(plzB.45.f2.80[i,])
# Everything from 2081-2099
plzB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(plzB.45.f2.99) <- c("gfd45","mir45")
row.names(plzB.45.f2.99) <- 2081:2099
plzB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Pel.zooplankton"]
plzB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Pel.zooplankton"]
# head(plzB.45.f2.99)
plzB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzB.45.f2.99.up[i] <- max(plzB.45.f2.99[i,])
plzB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzB.45.f2.99.lo[i] <- min(plzB.45.f2.99[i,])
# now append these two time periods
plzB.45.f2.up <- c(plzB.45.f2.80.up,plzB.45.f2.99.up)
plzB.45.f2.lo <- c(plzB.45.f2.80.lo,plzB.45.f2.99.lo)

# RCP 8.5
plzB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(plzB.85.f2) <- c("gfd45","mir45","ces45")
row.names(plzB.85.f2) <- 1991:2099
plzB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Pel.zooplankton"]
plzB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Pel.zooplankton"]
plzB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Pel.zooplankton"]
# head(plzB.85.f2)
plzB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzB.85.f2.up[i] <- max(plzB.85.f2[i,])
plzB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzB.85.f2.lo[i] <- min(plzB.85.f2[i,])

# # SRES A1B
# plzB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(plzB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(plzB.a1b.f2) <- 1991:2039
# plzB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Pel.zooplankton"]
# plzB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Pel.zooplankton"]
# plzB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Pel.zooplankton"]
# # head(plzB.a1b.f2)
# plzB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzB.a1b.f2.up[i] <- max(plzB.a1b.f2[i,])
# plzB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzB.a1b.f2.lo[i] <- min(plzB.a1b.f2[i,])

# Pel.zooplankton Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
plzC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(plzC.45.f2.80) <- c("gfd45","mir45","ces45")
row.names(plzC.45.f2.80) <- 1991:2080
plzC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Pel.zooplankton"]
plzC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Pel.zooplankton"]
plzC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Pel.zooplankton"]
# head(plzC.45.f2.80)
plzC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzC.45.f2.80.up[i] <- max(plzC.45.f2.80[i,])
plzC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzC.45.f2.80.lo[i] <- min(plzC.45.f2.80[i,])
# Everything from 2081-2099
plzC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(plzC.45.f2.99) <- c("gfd45","mir45")
row.names(plzC.45.f2.99) <- 2081:2099
plzC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Pel.zooplankton"]
plzC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Pel.zooplankton"]
# head(plzC.45.f2.99)
plzC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzC.45.f2.99.up[i] <- max(plzC.45.f2.99[i,])
plzC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzC.45.f2.99.lo[i] <- min(plzC.45.f2.99[i,])
# now append these two time periods
plzC.45.f2.up <- c(plzC.45.f2.80.up,plzC.45.f2.99.up)
plzC.45.f2.lo <- c(plzC.45.f2.80.lo,plzC.45.f2.99.lo)

# RCP 8.5
plzC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(plzC.85.f2) <- c("gfd45","mir45","ces45")
row.names(plzC.85.f2) <- 1991:2099
plzC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Pel.zooplankton"]
plzC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Pel.zooplankton"]
plzC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Pel.zooplankton"]
# head(plzC.85.f2)
plzC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzC.85.f2.up[i] <- max(plzC.85.f2[i,])
plzC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzC.85.f2.lo[i] <- min(plzC.85.f2[i,])

# # SRES A1B
# plzC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(plzC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(plzC.a1b.f2) <- 1991:2039
# plzC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Pel.zooplankton"]
# plzC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Pel.zooplankton"]
# plzC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Pel.zooplankton"]
# # head(plzC.a1b.f2)
# plzC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzC.a1b.f2.up[i] <- max(plzC.a1b.f2[i,])
# plzC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzC.a1b.f2.lo[i] <- min(plzC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Pel.zooplankton F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
plzB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(plzB.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(plzB.45.f3.80) <- 1991:2080
plzB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Pel.zooplankton"]
plzB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Pel.zooplankton"]
plzB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Pel.zooplankton"]
# head(plzB.45.f3.80)
plzB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzB.45.f3.80.up[i] <- max(plzB.45.f3.80[i,])
plzB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzB.45.f3.80.lo[i] <- min(plzB.45.f3.80[i,])
# Everything from 2081-2099
plzB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(plzB.45.f3.99) <- c("gfd45","mir45")
row.names(plzB.45.f3.99) <- 2081:2099
plzB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Pel.zooplankton"]
plzB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Pel.zooplankton"]
# head(plzB.45.f3.99)
plzB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzB.45.f3.99.up[i] <- max(plzB.45.f3.99[i,])
plzB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzB.45.f3.99.lo[i] <- min(plzB.45.f3.99[i,])
# now append these two time periods
plzB.45.f3.up <- c(plzB.45.f3.80.up,plzB.45.f3.99.up)
plzB.45.f3.lo <- c(plzB.45.f3.80.lo,plzB.45.f3.99.lo)

# RCP 8.5
plzB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(plzB.85.f3) <- c("gfd45","mir45","ces45")
row.names(plzB.85.f3) <- 1991:2099
plzB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Pel.zooplankton"]
plzB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Pel.zooplankton"]
plzB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Pel.zooplankton"]
# head(plzB.85.f3)
plzB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzB.85.f3.up[i] <- max(plzB.85.f3[i,])
plzB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzB.85.f3.lo[i] <- min(plzB.85.f3[i,])

# # SRES A1B
# plzB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(plzB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(plzB.a1b.f3) <- 1991:2039
# plzB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Pel.zooplankton"]
# plzB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Pel.zooplankton"]
# plzB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Pel.zooplankton"]
# # head(plzB.a1b.f3)
# plzB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzB.a1b.f3.up[i] <- max(plzB.a1b.f3[i,])
# plzB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzB.a1b.f3.lo[i] <- min(plzB.a1b.f3[i,])

# Pel.zooplankton Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
plzC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(plzC.45.f3.80) <- c("gfd45","mir45","ces45")
row.names(plzC.45.f3.80) <- 1991:2080
plzC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Pel.zooplankton"]
plzC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Pel.zooplankton"]
plzC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Pel.zooplankton"]
# head(plzC.45.f3.80)
plzC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzC.45.f3.80.up[i] <- max(plzC.45.f3.80[i,])
plzC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzC.45.f3.80.lo[i] <- min(plzC.45.f3.80[i,])
# Everything from 2081-2099
plzC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(plzC.45.f3.99) <- c("gfd45","mir45")
row.names(plzC.45.f3.99) <- 2081:2099
plzC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Pel.zooplankton"]
plzC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Pel.zooplankton"]
# head(plzC.45.f3.99)
plzC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzC.45.f3.99.up[i] <- max(plzC.45.f3.99[i,])
plzC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzC.45.f3.99.lo[i] <- min(plzC.45.f3.99[i,])
# now append these two time periods
plzC.45.f3.up <- c(plzC.45.f3.80.up,plzC.45.f3.99.up)
plzC.45.f3.lo <- c(plzC.45.f3.80.lo,plzC.45.f3.99.lo)

# RCP 8.5
plzC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(plzC.85.f3) <- c("gfd45","mir45","ces45")
row.names(plzC.85.f3) <- 1991:2099
plzC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Pel.zooplankton"]
plzC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Pel.zooplankton"]
plzC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Pel.zooplankton"]
# head(plzC.85.f3)
plzC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzC.85.f3.up[i] <- max(plzC.85.f3[i,])
plzC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzC.85.f3.lo[i] <- min(plzC.85.f3[i,])

# # SRES A1B
# plzC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(plzC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(plzC.a1b.f3) <- 1991:2039
# plzC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Pel.zooplankton"]
# plzC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Pel.zooplankton"]
# plzC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Pel.zooplankton"]
# # head(plzC.a1b.f3)
# plzC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzC.a1b.f3.up[i] <- max(plzC.a1b.f3[i,])
# plzC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzC.a1b.f3.lo[i] <- min(plzC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Pel.zooplankton F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
plzB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(plzB.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(plzB.45.f4.80) <- 1991:2080
plzB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Pel.zooplankton"]
plzB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Pel.zooplankton"]
plzB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Pel.zooplankton"]
# head(plzB.45.f4.80)
plzB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzB.45.f4.80.up[i] <- max(plzB.45.f4.80[i,])
plzB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzB.45.f4.80.lo[i] <- min(plzB.45.f4.80[i,])
# Everything from 2081-2099
plzB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(plzB.45.f4.99) <- c("gfd45","mir45")
row.names(plzB.45.f4.99) <- 2081:2099
plzB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Pel.zooplankton"]
plzB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Pel.zooplankton"]
# head(plzB.45.f4.99)
plzB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzB.45.f4.99.up[i] <- max(plzB.45.f4.99[i,])
plzB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzB.45.f4.99.lo[i] <- min(plzB.45.f4.99[i,])
# now append these two time periods
plzB.45.f4.up <- c(plzB.45.f4.80.up,plzB.45.f4.99.up)
plzB.45.f4.lo <- c(plzB.45.f4.80.lo,plzB.45.f4.99.lo)

# RCP 8.5
plzB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(plzB.85.f4) <- c("gfd45","mir45","ces45")
row.names(plzB.85.f4) <- 1991:2099
plzB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Pel.zooplankton"]
plzB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Pel.zooplankton"]
plzB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Pel.zooplankton"]
# head(plzB.85.f4)
plzB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzB.85.f4.up[i] <- max(plzB.85.f4[i,])
plzB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzB.85.f4.lo[i] <- min(plzB.85.f4[i,])

# # SRES A1B
# plzB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(plzB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(plzB.a1b.f4) <- 1991:2039
# plzB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Pel.zooplankton"]
# plzB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Pel.zooplankton"]
# plzB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Pel.zooplankton"]
# # head(plzB.a1b.f4)
# plzB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzB.a1b.f4.up[i] <- max(plzB.a1b.f4[i,])
# plzB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzB.a1b.f4.lo[i] <- min(plzB.a1b.f4[i,])

# Pel.zooplankton Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
plzC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(plzC.45.f4.80) <- c("gfd45","mir45","ces45")
row.names(plzC.45.f4.80) <- 1991:2080
plzC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Pel.zooplankton"]
plzC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Pel.zooplankton"]
plzC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Pel.zooplankton"]
# head(plzC.45.f4.80)
plzC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzC.45.f4.80.up[i] <- max(plzC.45.f4.80[i,])
plzC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) plzC.45.f4.80.lo[i] <- min(plzC.45.f4.80[i,])
# Everything from 2081-2099
plzC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(plzC.45.f4.99) <- c("gfd45","mir45")
row.names(plzC.45.f4.99) <- 2081:2099
plzC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Pel.zooplankton"]
plzC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Pel.zooplankton"]
# head(plzC.45.f4.99)
plzC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzC.45.f4.99.up[i] <- max(plzC.45.f4.99[i,])
plzC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) plzC.45.f4.99.lo[i] <- min(plzC.45.f4.99[i,])
# now append these two time periods
plzC.45.f4.up <- c(plzC.45.f4.80.up,plzC.45.f4.99.up)
plzC.45.f4.lo <- c(plzC.45.f4.80.lo,plzC.45.f4.99.lo)

# RCP 8.5
plzC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(plzC.85.f4) <- c("gfd45","mir45","ces45")
row.names(plzC.85.f4) <- 1991:2099
plzC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Pel.zooplankton"]
plzC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Pel.zooplankton"]
plzC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Pel.zooplankton"]
# head(plzC.85.f4)
plzC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzC.85.f4.up[i] <- max(plzC.85.f4[i,])
plzC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) plzC.85.f4.lo[i] <- min(plzC.85.f4[i,])

# # SRES A1B
# plzC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(plzC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(plzC.a1b.f4) <- 1991:2039
# plzC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Pel.zooplankton"]
# plzC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Pel.zooplankton"]
# plzC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Pel.zooplankton"]
# # head(plzC.a1b.f4)
# plzC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzC.a1b.f4.up[i] <- max(plzC.a1b.f4[i,])
# plzC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) plzC.a1b.f4.lo[i] <- min(plzC.a1b.f4[i,])

