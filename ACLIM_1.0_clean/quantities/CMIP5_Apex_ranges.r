# For reference the apex species are:
Apex.predator <- c("Albatross","Arrowtooth_Adu","Deep.demersals","Fulmars",
                   "Gr.Turbot_Adu","Ice.seals","Kamchatka","Kittiwakes","Lg.Sculpins",
                   "Murres.puffins","N.fur.seal_Adu","N.fur.seal_Juv","Oth.birds",
                   "P.cod_Adu","P.halibut_Adu","Pinnipeds","Sablefish","Sharks",
                   "Skates","Toothed.whales","Transient.killer.whales")

rcp.yrs <- 1991:2099
a1b.yrs <- 1991:2039
ces.yrs <- 1991:2080

# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Deep.demersals biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
dpdmB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(dpdmB.45.f1.80) <- c("gfd","mir","ces")
row.names(dpdmB.45.f1.80) <- 1991:2080
dpdmB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Deep.demersals"]
dpdmB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Deep.demersals"]
dpdmB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Deep.demersals"]
# head(dpdmB.45.f1.80)
dpdmB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmB.45.f1.80.up[i] <- max(dpdmB.45.f1.80[i,])
dpdmB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmB.45.f1.80.lo[i] <- min(dpdmB.45.f1.80[i,])
# Everything from 2081-2099
dpdmB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(dpdmB.45.f1.99) <- c("gfd","mir")
row.names(dpdmB.45.f1.99) <- 2081:2099
dpdmB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Deep.demersals"]
dpdmB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Deep.demersals"]
# head(dpdmB.45.f1.99)
dpdmB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmB.45.f1.99.up[i] <- max(dpdmB.45.f1.99[i,])
dpdmB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmB.45.f1.99.lo[i] <- min(dpdmB.45.f1.99[i,])
# now append these two time periods
dpdmB.45.f1.up <- c(dpdmB.45.f1.80.up,dpdmB.45.f1.99.up)
dpdmB.45.f1.lo <- c(dpdmB.45.f1.80.lo,dpdmB.45.f1.99.lo)

# RCP 8.5
dpdmB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(dpdmB.85.f1) <- c("gfd","mir","ces")
row.names(dpdmB.85.f1) <- 1991:2099
dpdmB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Deep.demersals"]
dpdmB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Deep.demersals"]
dpdmB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Deep.demersals"]
# head(dpdmB.85.f1)
dpdmB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmB.85.f1.up[i] <- max(dpdmB.85.f1[i,])
dpdmB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmB.85.f1.lo[i] <- min(dpdmB.85.f1[i,])

# # SRES A1B
# dpdmB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(dpdmB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(dpdmB.a1b.f1) <- 1991:2039
# dpdmB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Deep.demersals"]
# dpdmB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Deep.demersals"]
# dpdmB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Deep.demersals"]
# # head(dpdmB.a1b.f1)
# dpdmB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmB.a1b.f1.up[i] <- max(dpdmB.a1b.f1[i,])
# dpdmB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmB.a1b.f1.lo[i] <- min(dpdmB.a1b.f1[i,])

# Deep.demersals Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
dpdmC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(dpdmC.45.f1.80) <- c("gfd","mir","ces")
row.names(dpdmC.45.f1.80) <- 1991:2080
dpdmC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Deep.demersals"]
dpdmC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Deep.demersals"]
dpdmC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Deep.demersals"]
# head(dpdmC.45.f1.80)
dpdmC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmC.45.f1.80.up[i] <- max(dpdmC.45.f1.80[i,])
dpdmC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmC.45.f1.80.lo[i] <- min(dpdmC.45.f1.80[i,])
# Everything from 2081-2099
dpdmC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(dpdmC.45.f1.99) <- c("gfd","mir")
row.names(dpdmC.45.f1.99) <- 2081:2099
dpdmC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Deep.demersals"]
dpdmC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Deep.demersals"]
# head(dpdmC.45.f1.99)
dpdmC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmC.45.f1.99.up[i] <- max(dpdmC.45.f1.99[i,])
dpdmC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmC.45.f1.99.lo[i] <- min(dpdmC.45.f1.99[i,])
# now append these two time periods
dpdmC.45.f1.up <- c(dpdmC.45.f1.80.up,dpdmC.45.f1.99.up)
dpdmC.45.f1.lo <- c(dpdmC.45.f1.80.lo,dpdmC.45.f1.99.lo)

# RCP 8.5
dpdmC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(dpdmC.85.f1) <- c("gfd","mir","ces")
row.names(dpdmC.85.f1) <- 1991:2099
dpdmC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Deep.demersals"]
dpdmC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Deep.demersals"]
dpdmC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Deep.demersals"]
# head(dpdmC.85.f1)
dpdmC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmC.85.f1.up[i] <- max(dpdmC.85.f1[i,])
dpdmC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmC.85.f1.lo[i] <- min(dpdmC.85.f1[i,])

# # SRES A1B
# dpdmC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(dpdmC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(dpdmC.a1b.f1) <- 1991:2039
# dpdmC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Deep.demersals"]
# dpdmC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Deep.demersals"]
# dpdmC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Deep.demersals"]
# # head(dpdmC.a1b.f1)
# dpdmC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmC.a1b.f1.up[i] <- max(dpdmC.a1b.f1[i,])
# dpdmC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmC.a1b.f1.lo[i] <- min(dpdmC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Deep.demersals F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
dpdmB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(dpdmB.45.f2.80) <- c("gfd","mir","ces")
row.names(dpdmB.45.f2.80) <- 1991:2080
dpdmB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Deep.demersals"]
dpdmB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Deep.demersals"]
dpdmB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Deep.demersals"]
# head(dpdmB.45.f2.80)
dpdmB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmB.45.f2.80.up[i] <- max(dpdmB.45.f2.80[i,])
dpdmB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmB.45.f2.80.lo[i] <- min(dpdmB.45.f2.80[i,])
# Everything from 2081-2099
dpdmB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(dpdmB.45.f2.99) <- c("gfd","mir")
row.names(dpdmB.45.f2.99) <- 2081:2099
dpdmB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Deep.demersals"]
dpdmB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Deep.demersals"]
# head(dpdmB.45.f2.99)
dpdmB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmB.45.f2.99.up[i] <- max(dpdmB.45.f2.99[i,])
dpdmB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmB.45.f2.99.lo[i] <- min(dpdmB.45.f2.99[i,])
# now append these two time periods
dpdmB.45.f2.up <- c(dpdmB.45.f2.80.up,dpdmB.45.f2.99.up)
dpdmB.45.f2.lo <- c(dpdmB.45.f2.80.lo,dpdmB.45.f2.99.lo)

# RCP 8.5
dpdmB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(dpdmB.85.f2) <- c("gfd","mir","ces")
row.names(dpdmB.85.f2) <- 1991:2099
dpdmB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Deep.demersals"]
dpdmB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Deep.demersals"]
dpdmB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Deep.demersals"]
# head(dpdmB.85.f2)
dpdmB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmB.85.f2.up[i] <- max(dpdmB.85.f2[i,])
dpdmB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmB.85.f2.lo[i] <- min(dpdmB.85.f2[i,])

# # SRES A1B
# dpdmB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(dpdmB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(dpdmB.a1b.f2) <- 1991:2039
# dpdmB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Deep.demersals"]
# dpdmB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Deep.demersals"]
# dpdmB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Deep.demersals"]
# # head(dpdmB.a1b.f2)
# dpdmB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmB.a1b.f2.up[i] <- max(dpdmB.a1b.f2[i,])
# dpdmB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmB.a1b.f2.lo[i] <- min(dpdmB.a1b.f2[i,])

# Deep.demersals Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
dpdmC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(dpdmC.45.f2.80) <- c("gfd","mir","ces")
row.names(dpdmC.45.f2.80) <- 1991:2080
dpdmC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Deep.demersals"]
dpdmC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Deep.demersals"]
dpdmC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Deep.demersals"]
# head(dpdmC.45.f2.80)
dpdmC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmC.45.f2.80.up[i] <- max(dpdmC.45.f2.80[i,])
dpdmC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmC.45.f2.80.lo[i] <- min(dpdmC.45.f2.80[i,])
# Everything from 2081-2099
dpdmC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(dpdmC.45.f2.99) <- c("gfd","mir")
row.names(dpdmC.45.f2.99) <- 2081:2099
dpdmC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Deep.demersals"]
dpdmC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Deep.demersals"]
# head(dpdmC.45.f2.99)
dpdmC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmC.45.f2.99.up[i] <- max(dpdmC.45.f2.99[i,])
dpdmC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmC.45.f2.99.lo[i] <- min(dpdmC.45.f2.99[i,])
# now append these two time periods
dpdmC.45.f2.up <- c(dpdmC.45.f2.80.up,dpdmC.45.f2.99.up)
dpdmC.45.f2.lo <- c(dpdmC.45.f2.80.lo,dpdmC.45.f2.99.lo)

# RCP 8.5
dpdmC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(dpdmC.85.f2) <- c("gfd","mir","ces")
row.names(dpdmC.85.f2) <- 1991:2099
dpdmC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Deep.demersals"]
dpdmC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Deep.demersals"]
dpdmC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Deep.demersals"]
# head(dpdmC.85.f2)
dpdmC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmC.85.f2.up[i] <- max(dpdmC.85.f2[i,])
dpdmC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmC.85.f2.lo[i] <- min(dpdmC.85.f2[i,])

# # SRES A1B
# dpdmC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(dpdmC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(dpdmC.a1b.f2) <- 1991:2039
# dpdmC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Deep.demersals"]
# dpdmC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Deep.demersals"]
# dpdmC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Deep.demersals"]
# # head(dpdmC.a1b.f2)
# dpdmC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmC.a1b.f2.up[i] <- max(dpdmC.a1b.f2[i,])
# dpdmC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmC.a1b.f2.lo[i] <- min(dpdmC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Deep.demersals F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
dpdmB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(dpdmB.45.f3.80) <- c("gfd","mir","ces")
row.names(dpdmB.45.f3.80) <- 1991:2080
dpdmB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Deep.demersals"]
dpdmB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Deep.demersals"]
dpdmB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Deep.demersals"]
# head(dpdmB.45.f3.80)
dpdmB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmB.45.f3.80.up[i] <- max(dpdmB.45.f3.80[i,])
dpdmB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmB.45.f3.80.lo[i] <- min(dpdmB.45.f3.80[i,])
# Everything from 2081-2099
dpdmB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(dpdmB.45.f3.99) <- c("gfd","mir")
row.names(dpdmB.45.f3.99) <- 2081:2099
dpdmB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Deep.demersals"]
dpdmB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Deep.demersals"]
# head(dpdmB.45.f3.99)
dpdmB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmB.45.f3.99.up[i] <- max(dpdmB.45.f3.99[i,])
dpdmB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmB.45.f3.99.lo[i] <- min(dpdmB.45.f3.99[i,])
# now append these two time periods
dpdmB.45.f3.up <- c(dpdmB.45.f3.80.up,dpdmB.45.f3.99.up)
dpdmB.45.f3.lo <- c(dpdmB.45.f3.80.lo,dpdmB.45.f3.99.lo)

# RCP 8.5
dpdmB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(dpdmB.85.f3) <- c("gfd","mir","ces")
row.names(dpdmB.85.f3) <- 1991:2099
dpdmB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Deep.demersals"]
dpdmB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Deep.demersals"]
dpdmB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Deep.demersals"]
# head(dpdmB.85.f3)
dpdmB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmB.85.f3.up[i] <- max(dpdmB.85.f3[i,])
dpdmB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmB.85.f3.lo[i] <- min(dpdmB.85.f3[i,])

# # SRES A1B
# dpdmB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(dpdmB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(dpdmB.a1b.f3) <- 1991:2039
# dpdmB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Deep.demersals"]
# dpdmB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Deep.demersals"]
# dpdmB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Deep.demersals"]
# # head(dpdmB.a1b.f3)
# dpdmB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmB.a1b.f3.up[i] <- max(dpdmB.a1b.f3[i,])
# dpdmB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmB.a1b.f3.lo[i] <- min(dpdmB.a1b.f3[i,])

# Deep.demersals Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
dpdmC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(dpdmC.45.f3.80) <- c("gfd","mir","ces")
row.names(dpdmC.45.f3.80) <- 1991:2080
dpdmC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Deep.demersals"]
dpdmC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Deep.demersals"]
dpdmC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Deep.demersals"]
# head(dpdmC.45.f3.80)
dpdmC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmC.45.f3.80.up[i] <- max(dpdmC.45.f3.80[i,])
dpdmC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmC.45.f3.80.lo[i] <- min(dpdmC.45.f3.80[i,])
# Everything from 2081-2099
dpdmC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(dpdmC.45.f3.99) <- c("gfd","mir")
row.names(dpdmC.45.f3.99) <- 2081:2099
dpdmC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Deep.demersals"]
dpdmC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Deep.demersals"]
# head(dpdmC.45.f3.99)
dpdmC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmC.45.f3.99.up[i] <- max(dpdmC.45.f3.99[i,])
dpdmC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmC.45.f3.99.lo[i] <- min(dpdmC.45.f3.99[i,])
# now append these two time periods
dpdmC.45.f3.up <- c(dpdmC.45.f3.80.up,dpdmC.45.f3.99.up)
dpdmC.45.f3.lo <- c(dpdmC.45.f3.80.lo,dpdmC.45.f3.99.lo)

# RCP 8.5
dpdmC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(dpdmC.85.f3) <- c("gfd","mir","ces")
row.names(dpdmC.85.f3) <- 1991:2099
dpdmC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Deep.demersals"]
dpdmC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Deep.demersals"]
dpdmC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Deep.demersals"]
# head(dpdmC.85.f3)
dpdmC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmC.85.f3.up[i] <- max(dpdmC.85.f3[i,])
dpdmC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmC.85.f3.lo[i] <- min(dpdmC.85.f3[i,])

# # SRES A1B
# dpdmC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(dpdmC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(dpdmC.a1b.f3) <- 1991:2039
# dpdmC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Deep.demersals"]
# dpdmC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Deep.demersals"]
# dpdmC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Deep.demersals"]
# # head(dpdmC.a1b.f3)
# dpdmC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmC.a1b.f3.up[i] <- max(dpdmC.a1b.f3[i,])
# dpdmC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmC.a1b.f3.lo[i] <- min(dpdmC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Deep.demersals F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
dpdmB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(dpdmB.45.f4.80) <- c("gfd","mir","ces")
row.names(dpdmB.45.f4.80) <- 1991:2080
dpdmB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Deep.demersals"]
dpdmB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Deep.demersals"]
dpdmB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Deep.demersals"]
# head(dpdmB.45.f4.80)
dpdmB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmB.45.f4.80.up[i] <- max(dpdmB.45.f4.80[i,])
dpdmB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmB.45.f4.80.lo[i] <- min(dpdmB.45.f4.80[i,])
# Everything from 2081-2099
dpdmB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(dpdmB.45.f4.99) <- c("gfd","mir")
row.names(dpdmB.45.f4.99) <- 2081:2099
dpdmB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Deep.demersals"]
dpdmB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Deep.demersals"]
# head(dpdmB.45.f4.99)
dpdmB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmB.45.f4.99.up[i] <- max(dpdmB.45.f4.99[i,])
dpdmB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmB.45.f4.99.lo[i] <- min(dpdmB.45.f4.99[i,])
# now append these two time periods
dpdmB.45.f4.up <- c(dpdmB.45.f4.80.up,dpdmB.45.f4.99.up)
dpdmB.45.f4.lo <- c(dpdmB.45.f4.80.lo,dpdmB.45.f4.99.lo)

# RCP 8.5
dpdmB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(dpdmB.85.f4) <- c("gfd","mir","ces")
row.names(dpdmB.85.f4) <- 1991:2099
dpdmB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Deep.demersals"]
dpdmB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Deep.demersals"]
dpdmB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Deep.demersals"]
# head(dpdmB.85.f4)
dpdmB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmB.85.f4.up[i] <- max(dpdmB.85.f4[i,])
dpdmB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmB.85.f4.lo[i] <- min(dpdmB.85.f4[i,])

# # SRES A1B
# dpdmB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(dpdmB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(dpdmB.a1b.f4) <- 1991:2039
# dpdmB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Deep.demersals"]
# dpdmB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Deep.demersals"]
# dpdmB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Deep.demersals"]
# # head(dpdmB.a1b.f4)
# dpdmB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmB.a1b.f4.up[i] <- max(dpdmB.a1b.f4[i,])
# dpdmB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmB.a1b.f4.lo[i] <- min(dpdmB.a1b.f4[i,])

# Deep.demersals Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
dpdmC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(dpdmC.45.f4.80) <- c("gfd","mir","ces")
row.names(dpdmC.45.f4.80) <- 1991:2080
dpdmC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Deep.demersals"]
dpdmC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Deep.demersals"]
dpdmC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Deep.demersals"]
# head(dpdmC.45.f4.80)
dpdmC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmC.45.f4.80.up[i] <- max(dpdmC.45.f4.80[i,])
dpdmC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) dpdmC.45.f4.80.lo[i] <- min(dpdmC.45.f4.80[i,])
# Everything from 2081-2099
dpdmC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(dpdmC.45.f4.99) <- c("gfd","mir")
row.names(dpdmC.45.f4.99) <- 2081:2099
dpdmC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Deep.demersals"]
dpdmC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Deep.demersals"]
# head(dpdmC.45.f4.99)
dpdmC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmC.45.f4.99.up[i] <- max(dpdmC.45.f4.99[i,])
dpdmC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) dpdmC.45.f4.99.lo[i] <- min(dpdmC.45.f4.99[i,])
# now append these two time periods
dpdmC.45.f4.up <- c(dpdmC.45.f4.80.up,dpdmC.45.f4.99.up)
dpdmC.45.f4.lo <- c(dpdmC.45.f4.80.lo,dpdmC.45.f4.99.lo)

# RCP 8.5
dpdmC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(dpdmC.85.f4) <- c("gfd","mir","ces")
row.names(dpdmC.85.f4) <- 1991:2099
dpdmC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Deep.demersals"]
dpdmC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Deep.demersals"]
dpdmC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Deep.demersals"]
# head(dpdmC.85.f4)
dpdmC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmC.85.f4.up[i] <- max(dpdmC.85.f4[i,])
dpdmC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) dpdmC.85.f4.lo[i] <- min(dpdmC.85.f4[i,])

# # SRES A1B
# dpdmC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(dpdmC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(dpdmC.a1b.f4) <- 1991:2039
# dpdmC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Deep.demersals"]
# dpdmC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Deep.demersals"]
# dpdmC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Deep.demersals"]
# # head(dpdmC.a1b.f4)
# dpdmC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmC.a1b.f4.up[i] <- max(dpdmC.a1b.f4[i,])
# dpdmC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) dpdmC.a1b.f4.lo[i] <- min(dpdmC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Gr.Turbot_Adu biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
grtB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(grtB.45.f1.80) <- c("gfd","mir","ces")
row.names(grtB.45.f1.80) <- 1991:2080
grtB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Gr.Turbot_Adu"]
grtB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Gr.Turbot_Adu"]
grtB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# head(grtB.45.f1.80)
grtB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtB.45.f1.80.up[i] <- max(grtB.45.f1.80[i,])
grtB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtB.45.f1.80.lo[i] <- min(grtB.45.f1.80[i,])
# Everything from 2081-2099
grtB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(grtB.45.f1.99) <- c("gfd","mir")
row.names(grtB.45.f1.99) <- 2081:2099
grtB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Gr.Turbot_Adu"]
grtB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Gr.Turbot_Adu"]
# head(grtB.45.f1.99)
grtB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtB.45.f1.99.up[i] <- max(grtB.45.f1.99[i,])
grtB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtB.45.f1.99.lo[i] <- min(grtB.45.f1.99[i,])
# now append these two time periods
grtB.45.f1.up <- c(grtB.45.f1.80.up,grtB.45.f1.99.up)
grtB.45.f1.lo <- c(grtB.45.f1.80.lo,grtB.45.f1.99.lo)

# RCP 8.5
grtB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(grtB.85.f1) <- c("gfd","mir","ces")
row.names(grtB.85.f1) <- 1991:2099
grtB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
grtB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
grtB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# head(grtB.85.f1)
grtB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtB.85.f1.up[i] <- max(grtB.85.f1[i,])
grtB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtB.85.f1.lo[i] <- min(grtB.85.f1[i,])

# # SRES A1B
# grtB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(grtB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(grtB.a1b.f1) <- 1991:2039
# grtB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# grtB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# grtB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# # head(grtB.a1b.f1)
# grtB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtB.a1b.f1.up[i] <- max(grtB.a1b.f1[i,])
# grtB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtB.a1b.f1.lo[i] <- min(grtB.a1b.f1[i,])

# Gr.Turbot_Adu Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
grtC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(grtC.45.f1.80) <- c("gfd","mir","ces")
row.names(grtC.45.f1.80) <- 1991:2080
grtC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Gr.Turbot_Adu"]
grtC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Gr.Turbot_Adu"]
grtC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# head(grtC.45.f1.80)
grtC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtC.45.f1.80.up[i] <- max(grtC.45.f1.80[i,])
grtC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtC.45.f1.80.lo[i] <- min(grtC.45.f1.80[i,])
# Everything from 2081-2099
grtC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(grtC.45.f1.99) <- c("gfd","mir")
row.names(grtC.45.f1.99) <- 2081:2099
grtC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Gr.Turbot_Adu"]
grtC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Gr.Turbot_Adu"]
# head(grtC.45.f1.99)
grtC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtC.45.f1.99.up[i] <- max(grtC.45.f1.99[i,])
grtC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtC.45.f1.99.lo[i] <- min(grtC.45.f1.99[i,])
# now append these two time periods
grtC.45.f1.up <- c(grtC.45.f1.80.up,grtC.45.f1.99.up)
grtC.45.f1.lo <- c(grtC.45.f1.80.lo,grtC.45.f1.99.lo)

# RCP 8.5
grtC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(grtC.85.f1) <- c("gfd","mir","ces")
row.names(grtC.85.f1) <- 1991:2099
grtC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Gr.Turbot_Adu"]
grtC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Gr.Turbot_Adu"]
grtC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# head(grtC.85.f1)
grtC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtC.85.f1.up[i] <- max(grtC.85.f1[i,])
grtC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtC.85.f1.lo[i] <- min(grtC.85.f1[i,])

# # SRES A1B
# grtC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(grtC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(grtC.a1b.f1) <- 1991:2039
# grtC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# grtC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# grtC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# # head(grtC.a1b.f1)
# grtC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtC.a1b.f1.up[i] <- max(grtC.a1b.f1[i,])
# grtC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtC.a1b.f1.lo[i] <- min(grtC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Gr.Turbot_Adu F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
grtB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(grtB.45.f2.80) <- c("gfd","mir","ces")
row.names(grtB.45.f2.80) <- 1991:2080
grtB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Gr.Turbot_Adu"]
grtB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Gr.Turbot_Adu"]
grtB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# head(grtB.45.f2.80)
grtB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtB.45.f2.80.up[i] <- max(grtB.45.f2.80[i,])
grtB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtB.45.f2.80.lo[i] <- min(grtB.45.f2.80[i,])
# Everything from 2081-2099
grtB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(grtB.45.f2.99) <- c("gfd","mir")
row.names(grtB.45.f2.99) <- 2081:2099
grtB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Gr.Turbot_Adu"]
grtB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Gr.Turbot_Adu"]
# head(grtB.45.f2.99)
grtB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtB.45.f2.99.up[i] <- max(grtB.45.f2.99[i,])
grtB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtB.45.f2.99.lo[i] <- min(grtB.45.f2.99[i,])
# now append these two time periods
grtB.45.f2.up <- c(grtB.45.f2.80.up,grtB.45.f2.99.up)
grtB.45.f2.lo <- c(grtB.45.f2.80.lo,grtB.45.f2.99.lo)

# RCP 8.5
grtB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(grtB.85.f2) <- c("gfd","mir","ces")
row.names(grtB.85.f2) <- 1991:2099
grtB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
grtB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
grtB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# head(grtB.85.f2)
grtB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtB.85.f2.up[i] <- max(grtB.85.f2[i,])
grtB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtB.85.f2.lo[i] <- min(grtB.85.f2[i,])

# # SRES A1B
# grtB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(grtB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(grtB.a1b.f2) <- 1991:2039
# grtB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# grtB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# grtB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# # head(grtB.a1b.f2)
# grtB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtB.a1b.f2.up[i] <- max(grtB.a1b.f2[i,])
# grtB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtB.a1b.f2.lo[i] <- min(grtB.a1b.f2[i,])

# Gr.Turbot_Adu Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
grtC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(grtC.45.f2.80) <- c("gfd","mir","ces")
row.names(grtC.45.f2.80) <- 1991:2080
grtC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Gr.Turbot_Adu"]
grtC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Gr.Turbot_Adu"]
grtC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# head(grtC.45.f2.80)
grtC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtC.45.f2.80.up[i] <- max(grtC.45.f2.80[i,])
grtC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtC.45.f2.80.lo[i] <- min(grtC.45.f2.80[i,])
# Everything from 2081-2099
grtC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(grtC.45.f2.99) <- c("gfd","mir")
row.names(grtC.45.f2.99) <- 2081:2099
grtC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Gr.Turbot_Adu"]
grtC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Gr.Turbot_Adu"]
# head(grtC.45.f2.99)
grtC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtC.45.f2.99.up[i] <- max(grtC.45.f2.99[i,])
grtC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtC.45.f2.99.lo[i] <- min(grtC.45.f2.99[i,])
# now append these two time periods
grtC.45.f2.up <- c(grtC.45.f2.80.up,grtC.45.f2.99.up)
grtC.45.f2.lo <- c(grtC.45.f2.80.lo,grtC.45.f2.99.lo)

# RCP 8.5
grtC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(grtC.85.f2) <- c("gfd","mir","ces")
row.names(grtC.85.f2) <- 1991:2099
grtC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Gr.Turbot_Adu"]
grtC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Gr.Turbot_Adu"]
grtC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# head(grtC.85.f2)
grtC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtC.85.f2.up[i] <- max(grtC.85.f2[i,])
grtC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtC.85.f2.lo[i] <- min(grtC.85.f2[i,])

# # SRES A1B
# grtC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(grtC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(grtC.a1b.f2) <- 1991:2039
# grtC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# grtC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# grtC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# # head(grtC.a1b.f2)
# grtC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtC.a1b.f2.up[i] <- max(grtC.a1b.f2[i,])
# grtC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtC.a1b.f2.lo[i] <- min(grtC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Gr.Turbot_Adu F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
grtB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(grtB.45.f3.80) <- c("gfd","mir","ces")
row.names(grtB.45.f3.80) <- 1991:2080
grtB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Gr.Turbot_Adu"]
grtB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Gr.Turbot_Adu"]
grtB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# head(grtB.45.f3.80)
grtB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtB.45.f3.80.up[i] <- max(grtB.45.f3.80[i,])
grtB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtB.45.f3.80.lo[i] <- min(grtB.45.f3.80[i,])
# Everything from 2081-2099
grtB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(grtB.45.f3.99) <- c("gfd","mir")
row.names(grtB.45.f3.99) <- 2081:2099
grtB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Gr.Turbot_Adu"]
grtB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Gr.Turbot_Adu"]
# head(grtB.45.f3.99)
grtB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtB.45.f3.99.up[i] <- max(grtB.45.f3.99[i,])
grtB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtB.45.f3.99.lo[i] <- min(grtB.45.f3.99[i,])
# now append these two time periods
grtB.45.f3.up <- c(grtB.45.f3.80.up,grtB.45.f3.99.up)
grtB.45.f3.lo <- c(grtB.45.f3.80.lo,grtB.45.f3.99.lo)

# RCP 8.5
grtB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(grtB.85.f3) <- c("gfd","mir","ces")
row.names(grtB.85.f3) <- 1991:2099
grtB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
grtB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
grtB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# head(grtB.85.f3)
grtB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtB.85.f3.up[i] <- max(grtB.85.f3[i,])
grtB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtB.85.f3.lo[i] <- min(grtB.85.f3[i,])

# # SRES A1B
# grtB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(grtB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(grtB.a1b.f3) <- 1991:2039
# grtB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# grtB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# grtB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# # head(grtB.a1b.f3)
# grtB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtB.a1b.f3.up[i] <- max(grtB.a1b.f3[i,])
# grtB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtB.a1b.f3.lo[i] <- min(grtB.a1b.f3[i,])

# Gr.Turbot_Adu Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
grtC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(grtC.45.f3.80) <- c("gfd","mir","ces")
row.names(grtC.45.f3.80) <- 1991:2080
grtC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Gr.Turbot_Adu"]
grtC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Gr.Turbot_Adu"]
grtC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# head(grtC.45.f3.80)
grtC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtC.45.f3.80.up[i] <- max(grtC.45.f3.80[i,])
grtC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtC.45.f3.80.lo[i] <- min(grtC.45.f3.80[i,])
# Everything from 2081-2099
grtC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(grtC.45.f3.99) <- c("gfd","mir")
row.names(grtC.45.f3.99) <- 2081:2099
grtC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Gr.Turbot_Adu"]
grtC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Gr.Turbot_Adu"]
# head(grtC.45.f3.99)
grtC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtC.45.f3.99.up[i] <- max(grtC.45.f3.99[i,])
grtC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtC.45.f3.99.lo[i] <- min(grtC.45.f3.99[i,])
# now append these two time periods
grtC.45.f3.up <- c(grtC.45.f3.80.up,grtC.45.f3.99.up)
grtC.45.f3.lo <- c(grtC.45.f3.80.lo,grtC.45.f3.99.lo)

# RCP 8.5
grtC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(grtC.85.f3) <- c("gfd","mir","ces")
row.names(grtC.85.f3) <- 1991:2099
grtC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Gr.Turbot_Adu"]
grtC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Gr.Turbot_Adu"]
grtC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# head(grtC.85.f3)
grtC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtC.85.f3.up[i] <- max(grtC.85.f3[i,])
grtC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtC.85.f3.lo[i] <- min(grtC.85.f3[i,])

# # SRES A1B
# grtC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(grtC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(grtC.a1b.f3) <- 1991:2039
# grtC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# grtC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# grtC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# # head(grtC.a1b.f3)
# grtC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtC.a1b.f3.up[i] <- max(grtC.a1b.f3[i,])
# grtC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtC.a1b.f3.lo[i] <- min(grtC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Gr.Turbot_Adu F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
grtB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(grtB.45.f4.80) <- c("gfd","mir","ces")
row.names(grtB.45.f4.80) <- 1991:2080
grtB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Gr.Turbot_Adu"]
grtB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Gr.Turbot_Adu"]
grtB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# head(grtB.45.f4.80)
grtB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtB.45.f4.80.up[i] <- max(grtB.45.f4.80[i,])
grtB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtB.45.f4.80.lo[i] <- min(grtB.45.f4.80[i,])
# Everything from 2081-2099
grtB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(grtB.45.f4.99) <- c("gfd","mir")
row.names(grtB.45.f4.99) <- 2081:2099
grtB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Gr.Turbot_Adu"]
grtB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Gr.Turbot_Adu"]
# head(grtB.45.f4.99)
grtB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtB.45.f4.99.up[i] <- max(grtB.45.f4.99[i,])
grtB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtB.45.f4.99.lo[i] <- min(grtB.45.f4.99[i,])
# now append these two time periods
grtB.45.f4.up <- c(grtB.45.f4.80.up,grtB.45.f4.99.up)
grtB.45.f4.lo <- c(grtB.45.f4.80.lo,grtB.45.f4.99.lo)

# RCP 8.5
grtB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(grtB.85.f4) <- c("gfd","mir","ces")
row.names(grtB.85.f4) <- 1991:2099
grtB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
grtB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
grtB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# head(grtB.85.f4)
grtB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtB.85.f4.up[i] <- max(grtB.85.f4[i,])
grtB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtB.85.f4.lo[i] <- min(grtB.85.f4[i,])

# # SRES A1B
# grtB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(grtB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(grtB.a1b.f4) <- 1991:2039
# grtB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# grtB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# grtB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Gr.Turbot_Adu"]
# # head(grtB.a1b.f4)
# grtB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtB.a1b.f4.up[i] <- max(grtB.a1b.f4[i,])
# grtB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtB.a1b.f4.lo[i] <- min(grtB.a1b.f4[i,])

# Gr.Turbot_Adu Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
grtC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(grtC.45.f4.80) <- c("gfd","mir","ces")
row.names(grtC.45.f4.80) <- 1991:2080
grtC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Gr.Turbot_Adu"]
grtC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Gr.Turbot_Adu"]
grtC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# head(grtC.45.f4.80)
grtC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtC.45.f4.80.up[i] <- max(grtC.45.f4.80[i,])
grtC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) grtC.45.f4.80.lo[i] <- min(grtC.45.f4.80[i,])
# Everything from 2081-2099
grtC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(grtC.45.f4.99) <- c("gfd","mir")
row.names(grtC.45.f4.99) <- 2081:2099
grtC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Gr.Turbot_Adu"]
grtC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Gr.Turbot_Adu"]
# head(grtC.45.f4.99)
grtC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtC.45.f4.99.up[i] <- max(grtC.45.f4.99[i,])
grtC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) grtC.45.f4.99.lo[i] <- min(grtC.45.f4.99[i,])
# now append these two time periods
grtC.45.f4.up <- c(grtC.45.f4.80.up,grtC.45.f4.99.up)
grtC.45.f4.lo <- c(grtC.45.f4.80.lo,grtC.45.f4.99.lo)

# RCP 8.5
grtC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(grtC.85.f4) <- c("gfd","mir","ces")
row.names(grtC.85.f4) <- 1991:2099
grtC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Gr.Turbot_Adu"]
grtC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Gr.Turbot_Adu"]
grtC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# head(grtC.85.f4)
grtC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtC.85.f4.up[i] <- max(grtC.85.f4[i,])
grtC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) grtC.85.f4.lo[i] <- min(grtC.85.f4[i,])

# # SRES A1B
# grtC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(grtC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(grtC.a1b.f4) <- 1991:2039
# grtC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# grtC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# grtC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Gr.Turbot_Adu"]
# # head(grtC.a1b.f4)
# grtC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtC.a1b.f4.up[i] <- max(grtC.a1b.f4[i,])
# grtC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) grtC.a1b.f4.lo[i] <- min(grtC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Kamchatka biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
kamB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kamB.45.f1.80) <- c("gfd","mir","ces")
row.names(kamB.45.f1.80) <- 1991:2080
kamB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Kamchatka"]
kamB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Kamchatka"]
kamB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Kamchatka"]
# head(kamB.45.f1.80)
kamB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamB.45.f1.80.up[i] <- max(kamB.45.f1.80[i,])
kamB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamB.45.f1.80.lo[i] <- min(kamB.45.f1.80[i,])
# Everything from 2081-2099
kamB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kamB.45.f1.99) <- c("gfd","mir")
row.names(kamB.45.f1.99) <- 2081:2099
kamB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Kamchatka"]
kamB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Kamchatka"]
# head(kamB.45.f1.99)
kamB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamB.45.f1.99.up[i] <- max(kamB.45.f1.99[i,])
kamB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamB.45.f1.99.lo[i] <- min(kamB.45.f1.99[i,])
# now append these two time periods
kamB.45.f1.up <- c(kamB.45.f1.80.up,kamB.45.f1.99.up)
kamB.45.f1.lo <- c(kamB.45.f1.80.lo,kamB.45.f1.99.lo)

# RCP 8.5
kamB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kamB.85.f1) <- c("gfd","mir","ces")
row.names(kamB.85.f1) <- 1991:2099
kamB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Kamchatka"]
kamB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Kamchatka"]
kamB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Kamchatka"]
# head(kamB.85.f1)
kamB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamB.85.f1.up[i] <- max(kamB.85.f1[i,])
kamB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamB.85.f1.lo[i] <- min(kamB.85.f1[i,])

# # SRES A1B
# kamB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kamB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(kamB.a1b.f1) <- 1991:2039
# kamB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Kamchatka"]
# kamB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Kamchatka"]
# kamB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Kamchatka"]
# # head(kamB.a1b.f1)
# kamB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamB.a1b.f1.up[i] <- max(kamB.a1b.f1[i,])
# kamB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamB.a1b.f1.lo[i] <- min(kamB.a1b.f1[i,])

# Kamchatka Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
kamC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kamC.45.f1.80) <- c("gfd","mir","ces")
row.names(kamC.45.f1.80) <- 1991:2080
kamC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Kamchatka"]
kamC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Kamchatka"]
kamC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Kamchatka"]
# head(kamC.45.f1.80)
kamC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamC.45.f1.80.up[i] <- max(kamC.45.f1.80[i,])
kamC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamC.45.f1.80.lo[i] <- min(kamC.45.f1.80[i,])
# Everything from 2081-2099
kamC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kamC.45.f1.99) <- c("gfd","mir")
row.names(kamC.45.f1.99) <- 2081:2099
kamC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Kamchatka"]
kamC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Kamchatka"]
# head(kamC.45.f1.99)
kamC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamC.45.f1.99.up[i] <- max(kamC.45.f1.99[i,])
kamC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamC.45.f1.99.lo[i] <- min(kamC.45.f1.99[i,])
# now append these two time periods
kamC.45.f1.up <- c(kamC.45.f1.80.up,kamC.45.f1.99.up)
kamC.45.f1.lo <- c(kamC.45.f1.80.lo,kamC.45.f1.99.lo)

# RCP 8.5
kamC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kamC.85.f1) <- c("gfd","mir","ces")
row.names(kamC.85.f1) <- 1991:2099
kamC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Kamchatka"]
kamC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Kamchatka"]
kamC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Kamchatka"]
# head(kamC.85.f1)
kamC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamC.85.f1.up[i] <- max(kamC.85.f1[i,])
kamC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamC.85.f1.lo[i] <- min(kamC.85.f1[i,])

# # SRES A1B
# kamC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kamC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(kamC.a1b.f1) <- 1991:2039
# kamC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Kamchatka"]
# kamC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Kamchatka"]
# kamC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Kamchatka"]
# # head(kamC.a1b.f1)
# kamC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamC.a1b.f1.up[i] <- max(kamC.a1b.f1[i,])
# kamC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamC.a1b.f1.lo[i] <- min(kamC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Kamchatka F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
kamB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kamB.45.f2.80) <- c("gfd","mir","ces")
row.names(kamB.45.f2.80) <- 1991:2080
kamB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Kamchatka"]
kamB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Kamchatka"]
kamB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Kamchatka"]
# head(kamB.45.f2.80)
kamB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamB.45.f2.80.up[i] <- max(kamB.45.f2.80[i,])
kamB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamB.45.f2.80.lo[i] <- min(kamB.45.f2.80[i,])
# Everything from 2081-2099
kamB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kamB.45.f2.99) <- c("gfd","mir")
row.names(kamB.45.f2.99) <- 2081:2099
kamB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Kamchatka"]
kamB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Kamchatka"]
# head(kamB.45.f2.99)
kamB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamB.45.f2.99.up[i] <- max(kamB.45.f2.99[i,])
kamB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamB.45.f2.99.lo[i] <- min(kamB.45.f2.99[i,])
# now append these two time periods
kamB.45.f2.up <- c(kamB.45.f2.80.up,kamB.45.f2.99.up)
kamB.45.f2.lo <- c(kamB.45.f2.80.lo,kamB.45.f2.99.lo)

# RCP 8.5
kamB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kamB.85.f2) <- c("gfd","mir","ces")
row.names(kamB.85.f2) <- 1991:2099
kamB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Kamchatka"]
kamB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Kamchatka"]
kamB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Kamchatka"]
# head(kamB.85.f2)
kamB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamB.85.f2.up[i] <- max(kamB.85.f2[i,])
kamB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamB.85.f2.lo[i] <- min(kamB.85.f2[i,])

# # SRES A1B
# kamB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kamB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(kamB.a1b.f2) <- 1991:2039
# kamB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Kamchatka"]
# kamB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Kamchatka"]
# kamB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Kamchatka"]
# # head(kamB.a1b.f2)
# kamB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamB.a1b.f2.up[i] <- max(kamB.a1b.f2[i,])
# kamB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamB.a1b.f2.lo[i] <- min(kamB.a1b.f2[i,])

# Kamchatka Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
kamC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kamC.45.f2.80) <- c("gfd","mir","ces")
row.names(kamC.45.f2.80) <- 1991:2080
kamC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Kamchatka"]
kamC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Kamchatka"]
kamC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Kamchatka"]
# head(kamC.45.f2.80)
kamC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamC.45.f2.80.up[i] <- max(kamC.45.f2.80[i,])
kamC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamC.45.f2.80.lo[i] <- min(kamC.45.f2.80[i,])
# Everything from 2081-2099
kamC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kamC.45.f2.99) <- c("gfd","mir")
row.names(kamC.45.f2.99) <- 2081:2099
kamC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Kamchatka"]
kamC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Kamchatka"]
# head(kamC.45.f2.99)
kamC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamC.45.f2.99.up[i] <- max(kamC.45.f2.99[i,])
kamC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamC.45.f2.99.lo[i] <- min(kamC.45.f2.99[i,])
# now append these two time periods
kamC.45.f2.up <- c(kamC.45.f2.80.up,kamC.45.f2.99.up)
kamC.45.f2.lo <- c(kamC.45.f2.80.lo,kamC.45.f2.99.lo)

# RCP 8.5
kamC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kamC.85.f2) <- c("gfd","mir","ces")
row.names(kamC.85.f2) <- 1991:2099
kamC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Kamchatka"]
kamC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Kamchatka"]
kamC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Kamchatka"]
# head(kamC.85.f2)
kamC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamC.85.f2.up[i] <- max(kamC.85.f2[i,])
kamC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamC.85.f2.lo[i] <- min(kamC.85.f2[i,])

# # SRES A1B
# kamC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kamC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(kamC.a1b.f2) <- 1991:2039
# kamC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Kamchatka"]
# kamC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Kamchatka"]
# kamC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Kamchatka"]
# # head(kamC.a1b.f2)
# kamC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamC.a1b.f2.up[i] <- max(kamC.a1b.f2[i,])
# kamC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamC.a1b.f2.lo[i] <- min(kamC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Kamchatka F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
kamB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kamB.45.f3.80) <- c("gfd","mir","ces")
row.names(kamB.45.f3.80) <- 1991:2080
kamB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Kamchatka"]
kamB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Kamchatka"]
kamB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Kamchatka"]
# head(kamB.45.f3.80)
kamB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamB.45.f3.80.up[i] <- max(kamB.45.f3.80[i,])
kamB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamB.45.f3.80.lo[i] <- min(kamB.45.f3.80[i,])
# Everything from 2081-2099
kamB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kamB.45.f3.99) <- c("gfd","mir")
row.names(kamB.45.f3.99) <- 2081:2099
kamB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Kamchatka"]
kamB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Kamchatka"]
# head(kamB.45.f3.99)
kamB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamB.45.f3.99.up[i] <- max(kamB.45.f3.99[i,])
kamB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamB.45.f3.99.lo[i] <- min(kamB.45.f3.99[i,])
# now append these two time periods
kamB.45.f3.up <- c(kamB.45.f3.80.up,kamB.45.f3.99.up)
kamB.45.f3.lo <- c(kamB.45.f3.80.lo,kamB.45.f3.99.lo)

# RCP 8.5
kamB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kamB.85.f3) <- c("gfd","mir","ces")
row.names(kamB.85.f3) <- 1991:2099
kamB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Kamchatka"]
kamB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Kamchatka"]
kamB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Kamchatka"]
# head(kamB.85.f3)
kamB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamB.85.f3.up[i] <- max(kamB.85.f3[i,])
kamB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamB.85.f3.lo[i] <- min(kamB.85.f3[i,])

# # SRES A1B
# kamB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kamB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(kamB.a1b.f3) <- 1991:2039
# kamB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Kamchatka"]
# kamB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Kamchatka"]
# kamB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Kamchatka"]
# # head(kamB.a1b.f3)
# kamB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamB.a1b.f3.up[i] <- max(kamB.a1b.f3[i,])
# kamB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamB.a1b.f3.lo[i] <- min(kamB.a1b.f3[i,])

# Kamchatka Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
kamC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kamC.45.f3.80) <- c("gfd","mir","ces")
row.names(kamC.45.f3.80) <- 1991:2080
kamC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Kamchatka"]
kamC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Kamchatka"]
kamC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Kamchatka"]
# head(kamC.45.f3.80)
kamC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamC.45.f3.80.up[i] <- max(kamC.45.f3.80[i,])
kamC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamC.45.f3.80.lo[i] <- min(kamC.45.f3.80[i,])
# Everything from 2081-2099
kamC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kamC.45.f3.99) <- c("gfd","mir")
row.names(kamC.45.f3.99) <- 2081:2099
kamC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Kamchatka"]
kamC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Kamchatka"]
# head(kamC.45.f3.99)
kamC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamC.45.f3.99.up[i] <- max(kamC.45.f3.99[i,])
kamC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamC.45.f3.99.lo[i] <- min(kamC.45.f3.99[i,])
# now append these two time periods
kamC.45.f3.up <- c(kamC.45.f3.80.up,kamC.45.f3.99.up)
kamC.45.f3.lo <- c(kamC.45.f3.80.lo,kamC.45.f3.99.lo)

# RCP 8.5
kamC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kamC.85.f3) <- c("gfd","mir","ces")
row.names(kamC.85.f3) <- 1991:2099
kamC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Kamchatka"]
kamC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Kamchatka"]
kamC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Kamchatka"]
# head(kamC.85.f3)
kamC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamC.85.f3.up[i] <- max(kamC.85.f3[i,])
kamC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamC.85.f3.lo[i] <- min(kamC.85.f3[i,])

# # SRES A1B
# kamC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kamC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(kamC.a1b.f3) <- 1991:2039
# kamC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Kamchatka"]
# kamC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Kamchatka"]
# kamC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Kamchatka"]
# # head(kamC.a1b.f3)
# kamC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamC.a1b.f3.up[i] <- max(kamC.a1b.f3[i,])
# kamC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamC.a1b.f3.lo[i] <- min(kamC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Kamchatka F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
kamB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kamB.45.f4.80) <- c("gfd","mir","ces")
row.names(kamB.45.f4.80) <- 1991:2080
kamB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Kamchatka"]
kamB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Kamchatka"]
kamB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Kamchatka"]
# head(kamB.45.f4.80)
kamB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamB.45.f4.80.up[i] <- max(kamB.45.f4.80[i,])
kamB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamB.45.f4.80.lo[i] <- min(kamB.45.f4.80[i,])
# Everything from 2081-2099
kamB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kamB.45.f4.99) <- c("gfd","mir")
row.names(kamB.45.f4.99) <- 2081:2099
kamB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Kamchatka"]
kamB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Kamchatka"]
# head(kamB.45.f4.99)
kamB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamB.45.f4.99.up[i] <- max(kamB.45.f4.99[i,])
kamB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamB.45.f4.99.lo[i] <- min(kamB.45.f4.99[i,])
# now append these two time periods
kamB.45.f4.up <- c(kamB.45.f4.80.up,kamB.45.f4.99.up)
kamB.45.f4.lo <- c(kamB.45.f4.80.lo,kamB.45.f4.99.lo)

# RCP 8.5
kamB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kamB.85.f4) <- c("gfd","mir","ces")
row.names(kamB.85.f4) <- 1991:2099
kamB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Kamchatka"]
kamB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Kamchatka"]
kamB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Kamchatka"]
# head(kamB.85.f4)
kamB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamB.85.f4.up[i] <- max(kamB.85.f4[i,])
kamB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamB.85.f4.lo[i] <- min(kamB.85.f4[i,])

# # SRES A1B
# kamB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kamB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(kamB.a1b.f4) <- 1991:2039
# kamB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Kamchatka"]
# kamB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Kamchatka"]
# kamB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Kamchatka"]
# # head(kamB.a1b.f4)
# kamB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamB.a1b.f4.up[i] <- max(kamB.a1b.f4[i,])
# kamB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamB.a1b.f4.lo[i] <- min(kamB.a1b.f4[i,])

# Kamchatka Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
kamC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kamC.45.f4.80) <- c("gfd","mir","ces")
row.names(kamC.45.f4.80) <- 1991:2080
kamC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Kamchatka"]
kamC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Kamchatka"]
kamC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Kamchatka"]
# head(kamC.45.f4.80)
kamC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamC.45.f4.80.up[i] <- max(kamC.45.f4.80[i,])
kamC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kamC.45.f4.80.lo[i] <- min(kamC.45.f4.80[i,])
# Everything from 2081-2099
kamC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kamC.45.f4.99) <- c("gfd","mir")
row.names(kamC.45.f4.99) <- 2081:2099
kamC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Kamchatka"]
kamC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Kamchatka"]
# head(kamC.45.f4.99)
kamC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamC.45.f4.99.up[i] <- max(kamC.45.f4.99[i,])
kamC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kamC.45.f4.99.lo[i] <- min(kamC.45.f4.99[i,])
# now append these two time periods
kamC.45.f4.up <- c(kamC.45.f4.80.up,kamC.45.f4.99.up)
kamC.45.f4.lo <- c(kamC.45.f4.80.lo,kamC.45.f4.99.lo)

# RCP 8.5
kamC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kamC.85.f4) <- c("gfd","mir","ces")
row.names(kamC.85.f4) <- 1991:2099
kamC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Kamchatka"]
kamC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Kamchatka"]
kamC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Kamchatka"]
# head(kamC.85.f4)
kamC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamC.85.f4.up[i] <- max(kamC.85.f4[i,])
kamC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kamC.85.f4.lo[i] <- min(kamC.85.f4[i,])

# # SRES A1B
# kamC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kamC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(kamC.a1b.f4) <- 1991:2039
# kamC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Kamchatka"]
# kamC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Kamchatka"]
# kamC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Kamchatka"]
# # head(kamC.a1b.f4)
# kamC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamC.a1b.f4.up[i] <- max(kamC.a1b.f4[i,])
# kamC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kamC.a1b.f4.lo[i] <- min(kamC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Lg.Sculpins biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
lgscB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(lgscB.45.f1.80) <- c("gfd","mir","ces")
row.names(lgscB.45.f1.80) <- 1991:2080
lgscB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Lg.Sculpins"]
lgscB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Lg.Sculpins"]
lgscB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Lg.Sculpins"]
# head(lgscB.45.f1.80)
lgscB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscB.45.f1.80.up[i] <- max(lgscB.45.f1.80[i,])
lgscB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscB.45.f1.80.lo[i] <- min(lgscB.45.f1.80[i,])
# Everything from 2081-2099
lgscB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(lgscB.45.f1.99) <- c("gfd","mir")
row.names(lgscB.45.f1.99) <- 2081:2099
lgscB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Lg.Sculpins"]
lgscB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Lg.Sculpins"]
# head(lgscB.45.f1.99)
lgscB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscB.45.f1.99.up[i] <- max(lgscB.45.f1.99[i,])
lgscB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscB.45.f1.99.lo[i] <- min(lgscB.45.f1.99[i,])
# now append these two time periods
lgscB.45.f1.up <- c(lgscB.45.f1.80.up,lgscB.45.f1.99.up)
lgscB.45.f1.lo <- c(lgscB.45.f1.80.lo,lgscB.45.f1.99.lo)

# RCP 8.5
lgscB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(lgscB.85.f1) <- c("gfd","mir","ces")
row.names(lgscB.85.f1) <- 1991:2099
lgscB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Lg.Sculpins"]
lgscB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Lg.Sculpins"]
lgscB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Lg.Sculpins"]
# head(lgscB.85.f1)
lgscB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscB.85.f1.up[i] <- max(lgscB.85.f1[i,])
lgscB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscB.85.f1.lo[i] <- min(lgscB.85.f1[i,])

# # SRES A1B
# lgscB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(lgscB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(lgscB.a1b.f1) <- 1991:2039
# lgscB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Lg.Sculpins"]
# lgscB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Lg.Sculpins"]
# lgscB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Lg.Sculpins"]
# # head(lgscB.a1b.f1)
# lgscB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscB.a1b.f1.up[i] <- max(lgscB.a1b.f1[i,])
# lgscB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscB.a1b.f1.lo[i] <- min(lgscB.a1b.f1[i,])

# Lg.Sculpins Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
lgscC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(lgscC.45.f1.80) <- c("gfd","mir","ces")
row.names(lgscC.45.f1.80) <- 1991:2080
lgscC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Lg.Sculpins"]
lgscC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Lg.Sculpins"]
lgscC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Lg.Sculpins"]
# head(lgscC.45.f1.80)
lgscC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscC.45.f1.80.up[i] <- max(lgscC.45.f1.80[i,])
lgscC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscC.45.f1.80.lo[i] <- min(lgscC.45.f1.80[i,])
# Everything from 2081-2099
lgscC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(lgscC.45.f1.99) <- c("gfd","mir")
row.names(lgscC.45.f1.99) <- 2081:2099
lgscC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Lg.Sculpins"]
lgscC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Lg.Sculpins"]
# head(lgscC.45.f1.99)
lgscC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscC.45.f1.99.up[i] <- max(lgscC.45.f1.99[i,])
lgscC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscC.45.f1.99.lo[i] <- min(lgscC.45.f1.99[i,])
# now append these two time periods
lgscC.45.f1.up <- c(lgscC.45.f1.80.up,lgscC.45.f1.99.up)
lgscC.45.f1.lo <- c(lgscC.45.f1.80.lo,lgscC.45.f1.99.lo)

# RCP 8.5
lgscC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(lgscC.85.f1) <- c("gfd","mir","ces")
row.names(lgscC.85.f1) <- 1991:2099
lgscC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Lg.Sculpins"]
lgscC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Lg.Sculpins"]
lgscC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Lg.Sculpins"]
# head(lgscC.85.f1)
lgscC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscC.85.f1.up[i] <- max(lgscC.85.f1[i,])
lgscC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscC.85.f1.lo[i] <- min(lgscC.85.f1[i,])

# # SRES A1B
# lgscC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(lgscC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(lgscC.a1b.f1) <- 1991:2039
# lgscC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Lg.Sculpins"]
# lgscC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Lg.Sculpins"]
# lgscC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Lg.Sculpins"]
# # head(lgscC.a1b.f1)
# lgscC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscC.a1b.f1.up[i] <- max(lgscC.a1b.f1[i,])
# lgscC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscC.a1b.f1.lo[i] <- min(lgscC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Lg.Sculpins F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
lgscB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(lgscB.45.f2.80) <- c("gfd","mir","ces")
row.names(lgscB.45.f2.80) <- 1991:2080
lgscB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Lg.Sculpins"]
lgscB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Lg.Sculpins"]
lgscB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Lg.Sculpins"]
# head(lgscB.45.f2.80)
lgscB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscB.45.f2.80.up[i] <- max(lgscB.45.f2.80[i,])
lgscB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscB.45.f2.80.lo[i] <- min(lgscB.45.f2.80[i,])
# Everything from 2081-2099
lgscB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(lgscB.45.f2.99) <- c("gfd","mir")
row.names(lgscB.45.f2.99) <- 2081:2099
lgscB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Lg.Sculpins"]
lgscB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Lg.Sculpins"]
# head(lgscB.45.f2.99)
lgscB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscB.45.f2.99.up[i] <- max(lgscB.45.f2.99[i,])
lgscB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscB.45.f2.99.lo[i] <- min(lgscB.45.f2.99[i,])
# now append these two time periods
lgscB.45.f2.up <- c(lgscB.45.f2.80.up,lgscB.45.f2.99.up)
lgscB.45.f2.lo <- c(lgscB.45.f2.80.lo,lgscB.45.f2.99.lo)

# RCP 8.5
lgscB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(lgscB.85.f2) <- c("gfd","mir","ces")
row.names(lgscB.85.f2) <- 1991:2099
lgscB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Lg.Sculpins"]
lgscB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Lg.Sculpins"]
lgscB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Lg.Sculpins"]
# head(lgscB.85.f2)
lgscB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscB.85.f2.up[i] <- max(lgscB.85.f2[i,])
lgscB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscB.85.f2.lo[i] <- min(lgscB.85.f2[i,])

# # SRES A1B
# lgscB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(lgscB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(lgscB.a1b.f2) <- 1991:2039
# lgscB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Lg.Sculpins"]
# lgscB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Lg.Sculpins"]
# lgscB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Lg.Sculpins"]
# # head(lgscB.a1b.f2)
# lgscB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscB.a1b.f2.up[i] <- max(lgscB.a1b.f2[i,])
# lgscB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscB.a1b.f2.lo[i] <- min(lgscB.a1b.f2[i,])

# Lg.Sculpins Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
lgscC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(lgscC.45.f2.80) <- c("gfd","mir","ces")
row.names(lgscC.45.f2.80) <- 1991:2080
lgscC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Lg.Sculpins"]
lgscC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Lg.Sculpins"]
lgscC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Lg.Sculpins"]
# head(lgscC.45.f2.80)
lgscC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscC.45.f2.80.up[i] <- max(lgscC.45.f2.80[i,])
lgscC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscC.45.f2.80.lo[i] <- min(lgscC.45.f2.80[i,])
# Everything from 2081-2099
lgscC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(lgscC.45.f2.99) <- c("gfd","mir")
row.names(lgscC.45.f2.99) <- 2081:2099
lgscC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Lg.Sculpins"]
lgscC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Lg.Sculpins"]
# head(lgscC.45.f2.99)
lgscC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscC.45.f2.99.up[i] <- max(lgscC.45.f2.99[i,])
lgscC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscC.45.f2.99.lo[i] <- min(lgscC.45.f2.99[i,])
# now append these two time periods
lgscC.45.f2.up <- c(lgscC.45.f2.80.up,lgscC.45.f2.99.up)
lgscC.45.f2.lo <- c(lgscC.45.f2.80.lo,lgscC.45.f2.99.lo)

# RCP 8.5
lgscC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(lgscC.85.f2) <- c("gfd","mir","ces")
row.names(lgscC.85.f2) <- 1991:2099
lgscC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Lg.Sculpins"]
lgscC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Lg.Sculpins"]
lgscC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Lg.Sculpins"]
# head(lgscC.85.f2)
lgscC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscC.85.f2.up[i] <- max(lgscC.85.f2[i,])
lgscC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscC.85.f2.lo[i] <- min(lgscC.85.f2[i,])

# # SRES A1B
# lgscC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(lgscC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(lgscC.a1b.f2) <- 1991:2039
# lgscC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Lg.Sculpins"]
# lgscC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Lg.Sculpins"]
# lgscC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Lg.Sculpins"]
# # head(lgscC.a1b.f2)
# lgscC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscC.a1b.f2.up[i] <- max(lgscC.a1b.f2[i,])
# lgscC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscC.a1b.f2.lo[i] <- min(lgscC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Lg.Sculpins F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
lgscB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(lgscB.45.f3.80) <- c("gfd","mir","ces")
row.names(lgscB.45.f3.80) <- 1991:2080
lgscB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Lg.Sculpins"]
lgscB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Lg.Sculpins"]
lgscB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Lg.Sculpins"]
# head(lgscB.45.f3.80)
lgscB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscB.45.f3.80.up[i] <- max(lgscB.45.f3.80[i,])
lgscB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscB.45.f3.80.lo[i] <- min(lgscB.45.f3.80[i,])
# Everything from 2081-2099
lgscB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(lgscB.45.f3.99) <- c("gfd","mir")
row.names(lgscB.45.f3.99) <- 2081:2099
lgscB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Lg.Sculpins"]
lgscB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Lg.Sculpins"]
# head(lgscB.45.f3.99)
lgscB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscB.45.f3.99.up[i] <- max(lgscB.45.f3.99[i,])
lgscB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscB.45.f3.99.lo[i] <- min(lgscB.45.f3.99[i,])
# now append these two time periods
lgscB.45.f3.up <- c(lgscB.45.f3.80.up,lgscB.45.f3.99.up)
lgscB.45.f3.lo <- c(lgscB.45.f3.80.lo,lgscB.45.f3.99.lo)

# RCP 8.5
lgscB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(lgscB.85.f3) <- c("gfd","mir","ces")
row.names(lgscB.85.f3) <- 1991:2099
lgscB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Lg.Sculpins"]
lgscB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Lg.Sculpins"]
lgscB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Lg.Sculpins"]
# head(lgscB.85.f3)
lgscB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscB.85.f3.up[i] <- max(lgscB.85.f3[i,])
lgscB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscB.85.f3.lo[i] <- min(lgscB.85.f3[i,])

# # SRES A1B
# lgscB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(lgscB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(lgscB.a1b.f3) <- 1991:2039
# lgscB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Lg.Sculpins"]
# lgscB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Lg.Sculpins"]
# lgscB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Lg.Sculpins"]
# # head(lgscB.a1b.f3)
# lgscB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscB.a1b.f3.up[i] <- max(lgscB.a1b.f3[i,])
# lgscB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscB.a1b.f3.lo[i] <- min(lgscB.a1b.f3[i,])

# Lg.Sculpins Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
lgscC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(lgscC.45.f3.80) <- c("gfd","mir","ces")
row.names(lgscC.45.f3.80) <- 1991:2080
lgscC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Lg.Sculpins"]
lgscC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Lg.Sculpins"]
lgscC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Lg.Sculpins"]
# head(lgscC.45.f3.80)
lgscC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscC.45.f3.80.up[i] <- max(lgscC.45.f3.80[i,])
lgscC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscC.45.f3.80.lo[i] <- min(lgscC.45.f3.80[i,])
# Everything from 2081-2099
lgscC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(lgscC.45.f3.99) <- c("gfd","mir")
row.names(lgscC.45.f3.99) <- 2081:2099
lgscC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Lg.Sculpins"]
lgscC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Lg.Sculpins"]
# head(lgscC.45.f3.99)
lgscC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscC.45.f3.99.up[i] <- max(lgscC.45.f3.99[i,])
lgscC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscC.45.f3.99.lo[i] <- min(lgscC.45.f3.99[i,])
# now append these two time periods
lgscC.45.f3.up <- c(lgscC.45.f3.80.up,lgscC.45.f3.99.up)
lgscC.45.f3.lo <- c(lgscC.45.f3.80.lo,lgscC.45.f3.99.lo)

# RCP 8.5
lgscC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(lgscC.85.f3) <- c("gfd","mir","ces")
row.names(lgscC.85.f3) <- 1991:2099
lgscC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Lg.Sculpins"]
lgscC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Lg.Sculpins"]
lgscC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Lg.Sculpins"]
# head(lgscC.85.f3)
lgscC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscC.85.f3.up[i] <- max(lgscC.85.f3[i,])
lgscC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscC.85.f3.lo[i] <- min(lgscC.85.f3[i,])

# # SRES A1B
# lgscC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(lgscC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(lgscC.a1b.f3) <- 1991:2039
# lgscC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Lg.Sculpins"]
# lgscC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Lg.Sculpins"]
# lgscC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Lg.Sculpins"]
# # head(lgscC.a1b.f3)
# lgscC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscC.a1b.f3.up[i] <- max(lgscC.a1b.f3[i,])
# lgscC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscC.a1b.f3.lo[i] <- min(lgscC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Lg.Sculpins F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
lgscB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(lgscB.45.f4.80) <- c("gfd","mir","ces")
row.names(lgscB.45.f4.80) <- 1991:2080
lgscB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Lg.Sculpins"]
lgscB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Lg.Sculpins"]
lgscB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Lg.Sculpins"]
# head(lgscB.45.f4.80)
lgscB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscB.45.f4.80.up[i] <- max(lgscB.45.f4.80[i,])
lgscB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscB.45.f4.80.lo[i] <- min(lgscB.45.f4.80[i,])
# Everything from 2081-2099
lgscB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(lgscB.45.f4.99) <- c("gfd","mir")
row.names(lgscB.45.f4.99) <- 2081:2099
lgscB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Lg.Sculpins"]
lgscB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Lg.Sculpins"]
# head(lgscB.45.f4.99)
lgscB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscB.45.f4.99.up[i] <- max(lgscB.45.f4.99[i,])
lgscB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscB.45.f4.99.lo[i] <- min(lgscB.45.f4.99[i,])
# now append these two time periods
lgscB.45.f4.up <- c(lgscB.45.f4.80.up,lgscB.45.f4.99.up)
lgscB.45.f4.lo <- c(lgscB.45.f4.80.lo,lgscB.45.f4.99.lo)

# RCP 8.5
lgscB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(lgscB.85.f4) <- c("gfd","mir","ces")
row.names(lgscB.85.f4) <- 1991:2099
lgscB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Lg.Sculpins"]
lgscB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Lg.Sculpins"]
lgscB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Lg.Sculpins"]
# head(lgscB.85.f4)
lgscB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscB.85.f4.up[i] <- max(lgscB.85.f4[i,])
lgscB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscB.85.f4.lo[i] <- min(lgscB.85.f4[i,])

# # SRES A1B
# lgscB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(lgscB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(lgscB.a1b.f4) <- 1991:2039
# lgscB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Lg.Sculpins"]
# lgscB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Lg.Sculpins"]
# lgscB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Lg.Sculpins"]
# # head(lgscB.a1b.f4)
# lgscB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscB.a1b.f4.up[i] <- max(lgscB.a1b.f4[i,])
# lgscB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscB.a1b.f4.lo[i] <- min(lgscB.a1b.f4[i,])

# Lg.Sculpins Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
lgscC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(lgscC.45.f4.80) <- c("gfd","mir","ces")
row.names(lgscC.45.f4.80) <- 1991:2080
lgscC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Lg.Sculpins"]
lgscC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Lg.Sculpins"]
lgscC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Lg.Sculpins"]
# head(lgscC.45.f4.80)
lgscC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscC.45.f4.80.up[i] <- max(lgscC.45.f4.80[i,])
lgscC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) lgscC.45.f4.80.lo[i] <- min(lgscC.45.f4.80[i,])
# Everything from 2081-2099
lgscC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(lgscC.45.f4.99) <- c("gfd","mir")
row.names(lgscC.45.f4.99) <- 2081:2099
lgscC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Lg.Sculpins"]
lgscC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Lg.Sculpins"]
# head(lgscC.45.f4.99)
lgscC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscC.45.f4.99.up[i] <- max(lgscC.45.f4.99[i,])
lgscC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) lgscC.45.f4.99.lo[i] <- min(lgscC.45.f4.99[i,])
# now append these two time periods
lgscC.45.f4.up <- c(lgscC.45.f4.80.up,lgscC.45.f4.99.up)
lgscC.45.f4.lo <- c(lgscC.45.f4.80.lo,lgscC.45.f4.99.lo)

# RCP 8.5
lgscC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(lgscC.85.f4) <- c("gfd","mir","ces")
row.names(lgscC.85.f4) <- 1991:2099
lgscC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Lg.Sculpins"]
lgscC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Lg.Sculpins"]
lgscC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Lg.Sculpins"]
# head(lgscC.85.f4)
lgscC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscC.85.f4.up[i] <- max(lgscC.85.f4[i,])
lgscC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) lgscC.85.f4.lo[i] <- min(lgscC.85.f4[i,])

# # SRES A1B
# lgscC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(lgscC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(lgscC.a1b.f4) <- 1991:2039
# lgscC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Lg.Sculpins"]
# lgscC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Lg.Sculpins"]
# lgscC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Lg.Sculpins"]
# # head(lgscC.a1b.f4)
# lgscC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscC.a1b.f4.up[i] <- max(lgscC.a1b.f4[i,])
# lgscC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lgscC.a1b.f4.lo[i] <- min(lgscC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# P.halibut_Adu biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
halB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(halB.45.f1.80) <- c("gfd","mir","ces")
row.names(halB.45.f1.80) <- 1991:2080
halB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"P.halibut_Adu"]
halB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"P.halibut_Adu"]
halB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"P.halibut_Adu"]
# head(halB.45.f1.80)
halB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) halB.45.f1.80.up[i] <- max(halB.45.f1.80[i,])
halB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) halB.45.f1.80.lo[i] <- min(halB.45.f1.80[i,])
# Everything from 2081-2099
halB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(halB.45.f1.99) <- c("gfd","mir")
row.names(halB.45.f1.99) <- 2081:2099
halB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"P.halibut_Adu"]
halB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"P.halibut_Adu"]
# head(halB.45.f1.99)
halB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) halB.45.f1.99.up[i] <- max(halB.45.f1.99[i,])
halB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) halB.45.f1.99.lo[i] <- min(halB.45.f1.99[i,])
# now append these two time periods
halB.45.f1.up <- c(halB.45.f1.80.up,halB.45.f1.99.up)
halB.45.f1.lo <- c(halB.45.f1.80.lo,halB.45.f1.99.lo)

# RCP 8.5
halB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(halB.85.f1) <- c("gfd","mir","ces")
row.names(halB.85.f1) <- 1991:2099
halB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"P.halibut_Adu"]
halB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"P.halibut_Adu"]
halB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"P.halibut_Adu"]
# head(halB.85.f1)
halB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) halB.85.f1.up[i] <- max(halB.85.f1[i,])
halB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) halB.85.f1.lo[i] <- min(halB.85.f1[i,])

# # SRES A1B
# halB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(halB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(halB.a1b.f1) <- 1991:2039
# halB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"P.halibut_Adu"]
# halB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"P.halibut_Adu"]
# halB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"P.halibut_Adu"]
# # head(halB.a1b.f1)
# halB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halB.a1b.f1.up[i] <- max(halB.a1b.f1[i,])
# halB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halB.a1b.f1.lo[i] <- min(halB.a1b.f1[i,])

# P.halibut_Adu Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
halC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(halC.45.f1.80) <- c("gfd","mir","ces")
row.names(halC.45.f1.80) <- 1991:2080
halC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"P.halibut_Adu"]
halC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"P.halibut_Adu"]
halC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"P.halibut_Adu"]
# head(halC.45.f1.80)
halC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) halC.45.f1.80.up[i] <- max(halC.45.f1.80[i,])
halC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) halC.45.f1.80.lo[i] <- min(halC.45.f1.80[i,])
# Everything from 2081-2099
halC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(halC.45.f1.99) <- c("gfd","mir")
row.names(halC.45.f1.99) <- 2081:2099
halC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"P.halibut_Adu"]
halC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"P.halibut_Adu"]
# head(halC.45.f1.99)
halC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) halC.45.f1.99.up[i] <- max(halC.45.f1.99[i,])
halC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) halC.45.f1.99.lo[i] <- min(halC.45.f1.99[i,])
# now append these two time periods
halC.45.f1.up <- c(halC.45.f1.80.up,halC.45.f1.99.up)
halC.45.f1.lo <- c(halC.45.f1.80.lo,halC.45.f1.99.lo)

# RCP 8.5
halC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(halC.85.f1) <- c("gfd","mir","ces")
row.names(halC.85.f1) <- 1991:2099
halC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"P.halibut_Adu"]
halC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"P.halibut_Adu"]
halC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"P.halibut_Adu"]
# head(halC.85.f1)
halC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) halC.85.f1.up[i] <- max(halC.85.f1[i,])
halC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) halC.85.f1.lo[i] <- min(halC.85.f1[i,])

# # SRES A1B
# halC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(halC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(halC.a1b.f1) <- 1991:2039
# halC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"P.halibut_Adu"]
# halC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"P.halibut_Adu"]
# halC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"P.halibut_Adu"]
# # head(halC.a1b.f1)
# halC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halC.a1b.f1.up[i] <- max(halC.a1b.f1[i,])
# halC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halC.a1b.f1.lo[i] <- min(halC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# P.halibut_Adu F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
halB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(halB.45.f2.80) <- c("gfd","mir","ces")
row.names(halB.45.f2.80) <- 1991:2080
halB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"P.halibut_Adu"]
halB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"P.halibut_Adu"]
halB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"P.halibut_Adu"]
# head(halB.45.f2.80)
halB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) halB.45.f2.80.up[i] <- max(halB.45.f2.80[i,])
halB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) halB.45.f2.80.lo[i] <- min(halB.45.f2.80[i,])
# Everything from 2081-2099
halB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(halB.45.f2.99) <- c("gfd","mir")
row.names(halB.45.f2.99) <- 2081:2099
halB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"P.halibut_Adu"]
halB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"P.halibut_Adu"]
# head(halB.45.f2.99)
halB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) halB.45.f2.99.up[i] <- max(halB.45.f2.99[i,])
halB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) halB.45.f2.99.lo[i] <- min(halB.45.f2.99[i,])
# now append these two time periods
halB.45.f2.up <- c(halB.45.f2.80.up,halB.45.f2.99.up)
halB.45.f2.lo <- c(halB.45.f2.80.lo,halB.45.f2.99.lo)

# RCP 8.5
halB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(halB.85.f2) <- c("gfd","mir","ces")
row.names(halB.85.f2) <- 1991:2099
halB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"P.halibut_Adu"]
halB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"P.halibut_Adu"]
halB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"P.halibut_Adu"]
# head(halB.85.f2)
halB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) halB.85.f2.up[i] <- max(halB.85.f2[i,])
halB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) halB.85.f2.lo[i] <- min(halB.85.f2[i,])

# # SRES A1B
# halB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(halB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(halB.a1b.f2) <- 1991:2039
# halB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"P.halibut_Adu"]
# halB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"P.halibut_Adu"]
# halB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"P.halibut_Adu"]
# # head(halB.a1b.f2)
# halB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halB.a1b.f2.up[i] <- max(halB.a1b.f2[i,])
# halB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halB.a1b.f2.lo[i] <- min(halB.a1b.f2[i,])

# P.halibut_Adu Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
halC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(halC.45.f2.80) <- c("gfd","mir","ces")
row.names(halC.45.f2.80) <- 1991:2080
halC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"P.halibut_Adu"]
halC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"P.halibut_Adu"]
halC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"P.halibut_Adu"]
# head(halC.45.f2.80)
halC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) halC.45.f2.80.up[i] <- max(halC.45.f2.80[i,])
halC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) halC.45.f2.80.lo[i] <- min(halC.45.f2.80[i,])
# Everything from 2081-2099
halC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(halC.45.f2.99) <- c("gfd","mir")
row.names(halC.45.f2.99) <- 2081:2099
halC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"P.halibut_Adu"]
halC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"P.halibut_Adu"]
# head(halC.45.f2.99)
halC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) halC.45.f2.99.up[i] <- max(halC.45.f2.99[i,])
halC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) halC.45.f2.99.lo[i] <- min(halC.45.f2.99[i,])
# now append these two time periods
halC.45.f2.up <- c(halC.45.f2.80.up,halC.45.f2.99.up)
halC.45.f2.lo <- c(halC.45.f2.80.lo,halC.45.f2.99.lo)

# RCP 8.5
halC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(halC.85.f2) <- c("gfd","mir","ces")
row.names(halC.85.f2) <- 1991:2099
halC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"P.halibut_Adu"]
halC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"P.halibut_Adu"]
halC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"P.halibut_Adu"]
# head(halC.85.f2)
halC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) halC.85.f2.up[i] <- max(halC.85.f2[i,])
halC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) halC.85.f2.lo[i] <- min(halC.85.f2[i,])

# # SRES A1B
# halC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(halC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(halC.a1b.f2) <- 1991:2039
# halC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"P.halibut_Adu"]
# halC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"P.halibut_Adu"]
# halC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"P.halibut_Adu"]
# # head(halC.a1b.f2)
# halC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halC.a1b.f2.up[i] <- max(halC.a1b.f2[i,])
# halC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halC.a1b.f2.lo[i] <- min(halC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# P.halibut_Adu F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
halB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(halB.45.f3.80) <- c("gfd","mir","ces")
row.names(halB.45.f3.80) <- 1991:2080
halB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"P.halibut_Adu"]
halB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"P.halibut_Adu"]
halB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"P.halibut_Adu"]
# head(halB.45.f3.80)
halB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) halB.45.f3.80.up[i] <- max(halB.45.f3.80[i,])
halB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) halB.45.f3.80.lo[i] <- min(halB.45.f3.80[i,])
# Everything from 2081-2099
halB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(halB.45.f3.99) <- c("gfd","mir")
row.names(halB.45.f3.99) <- 2081:2099
halB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"P.halibut_Adu"]
halB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"P.halibut_Adu"]
# head(halB.45.f3.99)
halB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) halB.45.f3.99.up[i] <- max(halB.45.f3.99[i,])
halB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) halB.45.f3.99.lo[i] <- min(halB.45.f3.99[i,])
# now append these two time periods
halB.45.f3.up <- c(halB.45.f3.80.up,halB.45.f3.99.up)
halB.45.f3.lo <- c(halB.45.f3.80.lo,halB.45.f3.99.lo)

# RCP 8.5
halB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(halB.85.f3) <- c("gfd","mir","ces")
row.names(halB.85.f3) <- 1991:2099
halB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"P.halibut_Adu"]
halB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"P.halibut_Adu"]
halB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"P.halibut_Adu"]
# head(halB.85.f3)
halB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) halB.85.f3.up[i] <- max(halB.85.f3[i,])
halB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) halB.85.f3.lo[i] <- min(halB.85.f3[i,])

# # SRES A1B
# halB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(halB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(halB.a1b.f3) <- 1991:2039
# halB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"P.halibut_Adu"]
# halB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"P.halibut_Adu"]
# halB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"P.halibut_Adu"]
# # head(halB.a1b.f3)
# halB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halB.a1b.f3.up[i] <- max(halB.a1b.f3[i,])
# halB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halB.a1b.f3.lo[i] <- min(halB.a1b.f3[i,])

# P.halibut_Adu Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
halC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(halC.45.f3.80) <- c("gfd","mir","ces")
row.names(halC.45.f3.80) <- 1991:2080
halC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"P.halibut_Adu"]
halC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"P.halibut_Adu"]
halC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"P.halibut_Adu"]
# head(halC.45.f3.80)
halC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) halC.45.f3.80.up[i] <- max(halC.45.f3.80[i,])
halC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) halC.45.f3.80.lo[i] <- min(halC.45.f3.80[i,])
# Everything from 2081-2099
halC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(halC.45.f3.99) <- c("gfd","mir")
row.names(halC.45.f3.99) <- 2081:2099
halC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"P.halibut_Adu"]
halC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"P.halibut_Adu"]
# head(halC.45.f3.99)
halC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) halC.45.f3.99.up[i] <- max(halC.45.f3.99[i,])
halC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) halC.45.f3.99.lo[i] <- min(halC.45.f3.99[i,])
# now append these two time periods
halC.45.f3.up <- c(halC.45.f3.80.up,halC.45.f3.99.up)
halC.45.f3.lo <- c(halC.45.f3.80.lo,halC.45.f3.99.lo)

# RCP 8.5
halC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(halC.85.f3) <- c("gfd","mir","ces")
row.names(halC.85.f3) <- 1991:2099
halC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"P.halibut_Adu"]
halC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"P.halibut_Adu"]
halC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"P.halibut_Adu"]
# head(halC.85.f3)
halC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) halC.85.f3.up[i] <- max(halC.85.f3[i,])
halC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) halC.85.f3.lo[i] <- min(halC.85.f3[i,])

# # SRES A1B
# halC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(halC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(halC.a1b.f3) <- 1991:2039
# halC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"P.halibut_Adu"]
# halC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"P.halibut_Adu"]
# halC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"P.halibut_Adu"]
# # head(halC.a1b.f3)
# halC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halC.a1b.f3.up[i] <- max(halC.a1b.f3[i,])
# halC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halC.a1b.f3.lo[i] <- min(halC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# P.halibut_Adu F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
halB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(halB.45.f4.80) <- c("gfd","mir","ces")
row.names(halB.45.f4.80) <- 1991:2080
halB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"P.halibut_Adu"]
halB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"P.halibut_Adu"]
halB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"P.halibut_Adu"]
# head(halB.45.f4.80)
halB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) halB.45.f4.80.up[i] <- max(halB.45.f4.80[i,])
halB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) halB.45.f4.80.lo[i] <- min(halB.45.f4.80[i,])
# Everything from 2081-2099
halB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(halB.45.f4.99) <- c("gfd","mir")
row.names(halB.45.f4.99) <- 2081:2099
halB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"P.halibut_Adu"]
halB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"P.halibut_Adu"]
# head(halB.45.f4.99)
halB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) halB.45.f4.99.up[i] <- max(halB.45.f4.99[i,])
halB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) halB.45.f4.99.lo[i] <- min(halB.45.f4.99[i,])
# now append these two time periods
halB.45.f4.up <- c(halB.45.f4.80.up,halB.45.f4.99.up)
halB.45.f4.lo <- c(halB.45.f4.80.lo,halB.45.f4.99.lo)

# RCP 8.5
halB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(halB.85.f4) <- c("gfd","mir","ces")
row.names(halB.85.f4) <- 1991:2099
halB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"P.halibut_Adu"]
halB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"P.halibut_Adu"]
halB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"P.halibut_Adu"]
# head(halB.85.f4)
halB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) halB.85.f4.up[i] <- max(halB.85.f4[i,])
halB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) halB.85.f4.lo[i] <- min(halB.85.f4[i,])

# # SRES A1B
# halB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(halB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(halB.a1b.f4) <- 1991:2039
# halB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"P.halibut_Adu"]
# halB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"P.halibut_Adu"]
# halB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"P.halibut_Adu"]
# # head(halB.a1b.f4)
# halB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halB.a1b.f4.up[i] <- max(halB.a1b.f4[i,])
# halB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halB.a1b.f4.lo[i] <- min(halB.a1b.f4[i,])

# P.halibut_Adu Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
halC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(halC.45.f4.80) <- c("gfd","mir","ces")
row.names(halC.45.f4.80) <- 1991:2080
halC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"P.halibut_Adu"]
halC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"P.halibut_Adu"]
halC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"P.halibut_Adu"]
# head(halC.45.f4.80)
halC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) halC.45.f4.80.up[i] <- max(halC.45.f4.80[i,])
halC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) halC.45.f4.80.lo[i] <- min(halC.45.f4.80[i,])
# Everything from 2081-2099
halC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(halC.45.f4.99) <- c("gfd","mir")
row.names(halC.45.f4.99) <- 2081:2099
halC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"P.halibut_Adu"]
halC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"P.halibut_Adu"]
# head(halC.45.f4.99)
halC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) halC.45.f4.99.up[i] <- max(halC.45.f4.99[i,])
halC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) halC.45.f4.99.lo[i] <- min(halC.45.f4.99[i,])
# now append these two time periods
halC.45.f4.up <- c(halC.45.f4.80.up,halC.45.f4.99.up)
halC.45.f4.lo <- c(halC.45.f4.80.lo,halC.45.f4.99.lo)

# RCP 8.5
halC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(halC.85.f4) <- c("gfd","mir","ces")
row.names(halC.85.f4) <- 1991:2099
halC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"P.halibut_Adu"]
halC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"P.halibut_Adu"]
halC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"P.halibut_Adu"]
# head(halC.85.f4)
halC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) halC.85.f4.up[i] <- max(halC.85.f4[i,])
halC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) halC.85.f4.lo[i] <- min(halC.85.f4[i,])

# # SRES A1B
# halC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(halC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(halC.a1b.f4) <- 1991:2039
# halC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"P.halibut_Adu"]
# halC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"P.halibut_Adu"]
# halC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"P.halibut_Adu"]
# # head(halC.a1b.f4)
# halC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halC.a1b.f4.up[i] <- max(halC.a1b.f4[i,])
# halC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) halC.a1b.f4.lo[i] <- min(halC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Sablefish biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
sabB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sabB.45.f1.80) <- c("gfd","mir","ces")
row.names(sabB.45.f1.80) <- 1991:2080
sabB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Sablefish"]
sabB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Sablefish"]
sabB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Sablefish"]
# head(sabB.45.f1.80)
sabB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabB.45.f1.80.up[i] <- max(sabB.45.f1.80[i,])
sabB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabB.45.f1.80.lo[i] <- min(sabB.45.f1.80[i,])
# Everything from 2081-2099
sabB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sabB.45.f1.99) <- c("gfd","mir")
row.names(sabB.45.f1.99) <- 2081:2099
sabB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Sablefish"]
sabB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Sablefish"]
# head(sabB.45.f1.99)
sabB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabB.45.f1.99.up[i] <- max(sabB.45.f1.99[i,])
sabB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabB.45.f1.99.lo[i] <- min(sabB.45.f1.99[i,])
# now append these two time periods
sabB.45.f1.up <- c(sabB.45.f1.80.up,sabB.45.f1.99.up)
sabB.45.f1.lo <- c(sabB.45.f1.80.lo,sabB.45.f1.99.lo)

# RCP 8.5
sabB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sabB.85.f1) <- c("gfd","mir","ces")
row.names(sabB.85.f1) <- 1991:2099
sabB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Sablefish"]
sabB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Sablefish"]
sabB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Sablefish"]
# head(sabB.85.f1)
sabB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabB.85.f1.up[i] <- max(sabB.85.f1[i,])
sabB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabB.85.f1.lo[i] <- min(sabB.85.f1[i,])

# # SRES A1B
# sabB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sabB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sabB.a1b.f1) <- 1991:2039
# sabB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Sablefish"]
# sabB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Sablefish"]
# sabB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Sablefish"]
# # head(sabB.a1b.f1)
# sabB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabB.a1b.f1.up[i] <- max(sabB.a1b.f1[i,])
# sabB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabB.a1b.f1.lo[i] <- min(sabB.a1b.f1[i,])

# Sablefish Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
sabC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sabC.45.f1.80) <- c("gfd","mir","ces")
row.names(sabC.45.f1.80) <- 1991:2080
sabC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Sablefish"]
sabC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Sablefish"]
sabC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Sablefish"]
# head(sabC.45.f1.80)
sabC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabC.45.f1.80.up[i] <- max(sabC.45.f1.80[i,])
sabC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabC.45.f1.80.lo[i] <- min(sabC.45.f1.80[i,])
# Everything from 2081-2099
sabC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sabC.45.f1.99) <- c("gfd","mir")
row.names(sabC.45.f1.99) <- 2081:2099
sabC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Sablefish"]
sabC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Sablefish"]
# head(sabC.45.f1.99)
sabC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabC.45.f1.99.up[i] <- max(sabC.45.f1.99[i,])
sabC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabC.45.f1.99.lo[i] <- min(sabC.45.f1.99[i,])
# now append these two time periods
sabC.45.f1.up <- c(sabC.45.f1.80.up,sabC.45.f1.99.up)
sabC.45.f1.lo <- c(sabC.45.f1.80.lo,sabC.45.f1.99.lo)

# RCP 8.5
sabC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sabC.85.f1) <- c("gfd","mir","ces")
row.names(sabC.85.f1) <- 1991:2099
sabC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Sablefish"]
sabC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Sablefish"]
sabC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Sablefish"]
# head(sabC.85.f1)
sabC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabC.85.f1.up[i] <- max(sabC.85.f1[i,])
sabC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabC.85.f1.lo[i] <- min(sabC.85.f1[i,])

# # SRES A1B
# sabC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sabC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sabC.a1b.f1) <- 1991:2039
# sabC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Sablefish"]
# sabC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Sablefish"]
# sabC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Sablefish"]
# # head(sabC.a1b.f1)
# sabC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabC.a1b.f1.up[i] <- max(sabC.a1b.f1[i,])
# sabC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabC.a1b.f1.lo[i] <- min(sabC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Sablefish F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
sabB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sabB.45.f2.80) <- c("gfd","mir","ces")
row.names(sabB.45.f2.80) <- 1991:2080
sabB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Sablefish"]
sabB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Sablefish"]
sabB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Sablefish"]
# head(sabB.45.f2.80)
sabB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabB.45.f2.80.up[i] <- max(sabB.45.f2.80[i,])
sabB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabB.45.f2.80.lo[i] <- min(sabB.45.f2.80[i,])
# Everything from 2081-2099
sabB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sabB.45.f2.99) <- c("gfd","mir")
row.names(sabB.45.f2.99) <- 2081:2099
sabB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Sablefish"]
sabB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Sablefish"]
# head(sabB.45.f2.99)
sabB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabB.45.f2.99.up[i] <- max(sabB.45.f2.99[i,])
sabB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabB.45.f2.99.lo[i] <- min(sabB.45.f2.99[i,])
# now append these two time periods
sabB.45.f2.up <- c(sabB.45.f2.80.up,sabB.45.f2.99.up)
sabB.45.f2.lo <- c(sabB.45.f2.80.lo,sabB.45.f2.99.lo)

# RCP 8.5
sabB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sabB.85.f2) <- c("gfd","mir","ces")
row.names(sabB.85.f2) <- 1991:2099
sabB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Sablefish"]
sabB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Sablefish"]
sabB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Sablefish"]
# head(sabB.85.f2)
sabB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabB.85.f2.up[i] <- max(sabB.85.f2[i,])
sabB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabB.85.f2.lo[i] <- min(sabB.85.f2[i,])

# # SRES A1B
# sabB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sabB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(sabB.a1b.f2) <- 1991:2039
# sabB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Sablefish"]
# sabB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Sablefish"]
# sabB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Sablefish"]
# # head(sabB.a1b.f2)
# sabB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabB.a1b.f2.up[i] <- max(sabB.a1b.f2[i,])
# sabB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabB.a1b.f2.lo[i] <- min(sabB.a1b.f2[i,])

# Sablefish Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
sabC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sabC.45.f2.80) <- c("gfd","mir","ces")
row.names(sabC.45.f2.80) <- 1991:2080
sabC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Sablefish"]
sabC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Sablefish"]
sabC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Sablefish"]
# head(sabC.45.f2.80)
sabC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabC.45.f2.80.up[i] <- max(sabC.45.f2.80[i,])
sabC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabC.45.f2.80.lo[i] <- min(sabC.45.f2.80[i,])
# Everything from 2081-2099
sabC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sabC.45.f2.99) <- c("gfd","mir")
row.names(sabC.45.f2.99) <- 2081:2099
sabC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Sablefish"]
sabC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Sablefish"]
# head(sabC.45.f2.99)
sabC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabC.45.f2.99.up[i] <- max(sabC.45.f2.99[i,])
sabC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabC.45.f2.99.lo[i] <- min(sabC.45.f2.99[i,])
# now append these two time periods
sabC.45.f2.up <- c(sabC.45.f2.80.up,sabC.45.f2.99.up)
sabC.45.f2.lo <- c(sabC.45.f2.80.lo,sabC.45.f2.99.lo)

# RCP 8.5
sabC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sabC.85.f2) <- c("gfd","mir","ces")
row.names(sabC.85.f2) <- 1991:2099
sabC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Sablefish"]
sabC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Sablefish"]
sabC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Sablefish"]
# head(sabC.85.f2)
sabC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabC.85.f2.up[i] <- max(sabC.85.f2[i,])
sabC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabC.85.f2.lo[i] <- min(sabC.85.f2[i,])

# # SRES A1B
# sabC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sabC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(sabC.a1b.f2) <- 1991:2039
# sabC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Sablefish"]
# sabC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Sablefish"]
# sabC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Sablefish"]
# # head(sabC.a1b.f2)
# sabC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabC.a1b.f2.up[i] <- max(sabC.a1b.f2[i,])
# sabC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabC.a1b.f2.lo[i] <- min(sabC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Sablefish F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
sabB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sabB.45.f3.80) <- c("gfd","mir","ces")
row.names(sabB.45.f3.80) <- 1991:2080
sabB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Sablefish"]
sabB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Sablefish"]
sabB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Sablefish"]
# head(sabB.45.f3.80)
sabB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabB.45.f3.80.up[i] <- max(sabB.45.f3.80[i,])
sabB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabB.45.f3.80.lo[i] <- min(sabB.45.f3.80[i,])
# Everything from 2081-2099
sabB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sabB.45.f3.99) <- c("gfd","mir")
row.names(sabB.45.f3.99) <- 2081:2099
sabB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Sablefish"]
sabB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Sablefish"]
# head(sabB.45.f3.99)
sabB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabB.45.f3.99.up[i] <- max(sabB.45.f3.99[i,])
sabB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabB.45.f3.99.lo[i] <- min(sabB.45.f3.99[i,])
# now append these two time periods
sabB.45.f3.up <- c(sabB.45.f3.80.up,sabB.45.f3.99.up)
sabB.45.f3.lo <- c(sabB.45.f3.80.lo,sabB.45.f3.99.lo)

# RCP 8.5
sabB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sabB.85.f3) <- c("gfd","mir","ces")
row.names(sabB.85.f3) <- 1991:2099
sabB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Sablefish"]
sabB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Sablefish"]
sabB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Sablefish"]
# head(sabB.85.f3)
sabB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabB.85.f3.up[i] <- max(sabB.85.f3[i,])
sabB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabB.85.f3.lo[i] <- min(sabB.85.f3[i,])

# # SRES A1B
# sabB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sabB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(sabB.a1b.f3) <- 1991:2039
# sabB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Sablefish"]
# sabB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Sablefish"]
# sabB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Sablefish"]
# # head(sabB.a1b.f3)
# sabB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabB.a1b.f3.up[i] <- max(sabB.a1b.f3[i,])
# sabB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabB.a1b.f3.lo[i] <- min(sabB.a1b.f3[i,])

# Sablefish Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
sabC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sabC.45.f3.80) <- c("gfd","mir","ces")
row.names(sabC.45.f3.80) <- 1991:2080
sabC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Sablefish"]
sabC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Sablefish"]
sabC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Sablefish"]
# head(sabC.45.f3.80)
sabC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabC.45.f3.80.up[i] <- max(sabC.45.f3.80[i,])
sabC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabC.45.f3.80.lo[i] <- min(sabC.45.f3.80[i,])
# Everything from 2081-2099
sabC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sabC.45.f3.99) <- c("gfd","mir")
row.names(sabC.45.f3.99) <- 2081:2099
sabC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Sablefish"]
sabC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Sablefish"]
# head(sabC.45.f3.99)
sabC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabC.45.f3.99.up[i] <- max(sabC.45.f3.99[i,])
sabC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabC.45.f3.99.lo[i] <- min(sabC.45.f3.99[i,])
# now append these two time periods
sabC.45.f3.up <- c(sabC.45.f3.80.up,sabC.45.f3.99.up)
sabC.45.f3.lo <- c(sabC.45.f3.80.lo,sabC.45.f3.99.lo)

# RCP 8.5
sabC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sabC.85.f3) <- c("gfd","mir","ces")
row.names(sabC.85.f3) <- 1991:2099
sabC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Sablefish"]
sabC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Sablefish"]
sabC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Sablefish"]
# head(sabC.85.f3)
sabC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabC.85.f3.up[i] <- max(sabC.85.f3[i,])
sabC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabC.85.f3.lo[i] <- min(sabC.85.f3[i,])

# # SRES A1B
# sabC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sabC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(sabC.a1b.f3) <- 1991:2039
# sabC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Sablefish"]
# sabC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Sablefish"]
# sabC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Sablefish"]
# # head(sabC.a1b.f3)
# sabC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabC.a1b.f3.up[i] <- max(sabC.a1b.f3[i,])
# sabC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabC.a1b.f3.lo[i] <- min(sabC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Sablefish F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
sabB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sabB.45.f4.80) <- c("gfd","mir","ces")
row.names(sabB.45.f4.80) <- 1991:2080
sabB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Sablefish"]
sabB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Sablefish"]
sabB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Sablefish"]
# head(sabB.45.f4.80)
sabB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabB.45.f4.80.up[i] <- max(sabB.45.f4.80[i,])
sabB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabB.45.f4.80.lo[i] <- min(sabB.45.f4.80[i,])
# Everything from 2081-2099
sabB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sabB.45.f4.99) <- c("gfd","mir")
row.names(sabB.45.f4.99) <- 2081:2099
sabB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Sablefish"]
sabB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Sablefish"]
# head(sabB.45.f4.99)
sabB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabB.45.f4.99.up[i] <- max(sabB.45.f4.99[i,])
sabB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabB.45.f4.99.lo[i] <- min(sabB.45.f4.99[i,])
# now append these two time periods
sabB.45.f4.up <- c(sabB.45.f4.80.up,sabB.45.f4.99.up)
sabB.45.f4.lo <- c(sabB.45.f4.80.lo,sabB.45.f4.99.lo)

# RCP 8.5
sabB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sabB.85.f4) <- c("gfd","mir","ces")
row.names(sabB.85.f4) <- 1991:2099
sabB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Sablefish"]
sabB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Sablefish"]
sabB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Sablefish"]
# head(sabB.85.f4)
sabB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabB.85.f4.up[i] <- max(sabB.85.f4[i,])
sabB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabB.85.f4.lo[i] <- min(sabB.85.f4[i,])

# # SRES A1B
# sabB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sabB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(sabB.a1b.f4) <- 1991:2039
# sabB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Sablefish"]
# sabB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Sablefish"]
# sabB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Sablefish"]
# # head(sabB.a1b.f4)
# sabB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabB.a1b.f4.up[i] <- max(sabB.a1b.f4[i,])
# sabB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabB.a1b.f4.lo[i] <- min(sabB.a1b.f4[i,])

# Sablefish Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
sabC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sabC.45.f4.80) <- c("gfd","mir","ces")
row.names(sabC.45.f4.80) <- 1991:2080
sabC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Sablefish"]
sabC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Sablefish"]
sabC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Sablefish"]
# head(sabC.45.f4.80)
sabC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabC.45.f4.80.up[i] <- max(sabC.45.f4.80[i,])
sabC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sabC.45.f4.80.lo[i] <- min(sabC.45.f4.80[i,])
# Everything from 2081-2099
sabC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sabC.45.f4.99) <- c("gfd","mir")
row.names(sabC.45.f4.99) <- 2081:2099
sabC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Sablefish"]
sabC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Sablefish"]
# head(sabC.45.f4.99)
sabC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabC.45.f4.99.up[i] <- max(sabC.45.f4.99[i,])
sabC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sabC.45.f4.99.lo[i] <- min(sabC.45.f4.99[i,])
# now append these two time periods
sabC.45.f4.up <- c(sabC.45.f4.80.up,sabC.45.f4.99.up)
sabC.45.f4.lo <- c(sabC.45.f4.80.lo,sabC.45.f4.99.lo)

# RCP 8.5
sabC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sabC.85.f4) <- c("gfd","mir","ces")
row.names(sabC.85.f4) <- 1991:2099
sabC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Sablefish"]
sabC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Sablefish"]
sabC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Sablefish"]
# head(sabC.85.f4)
sabC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabC.85.f4.up[i] <- max(sabC.85.f4[i,])
sabC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sabC.85.f4.lo[i] <- min(sabC.85.f4[i,])

# # SRES A1B
# sabC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sabC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(sabC.a1b.f4) <- 1991:2039
# sabC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Sablefish"]
# sabC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Sablefish"]
# sabC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Sablefish"]
# # head(sabC.a1b.f4)
# sabC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabC.a1b.f4.up[i] <- max(sabC.a1b.f4[i,])
# sabC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sabC.a1b.f4.lo[i] <- min(sabC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Sharks biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
shrkB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shrkB.45.f1.80) <- c("gfd","mir","ces")
row.names(shrkB.45.f1.80) <- 1991:2080
shrkB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Sharks"]
shrkB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Sharks"]
shrkB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Sharks"]
# head(shrkB.45.f1.80)
shrkB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkB.45.f1.80.up[i] <- max(shrkB.45.f1.80[i,])
shrkB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkB.45.f1.80.lo[i] <- min(shrkB.45.f1.80[i,])
# Everything from 2081-2099
shrkB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shrkB.45.f1.99) <- c("gfd","mir")
row.names(shrkB.45.f1.99) <- 2081:2099
shrkB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Sharks"]
shrkB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Sharks"]
# head(shrkB.45.f1.99)
shrkB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkB.45.f1.99.up[i] <- max(shrkB.45.f1.99[i,])
shrkB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkB.45.f1.99.lo[i] <- min(shrkB.45.f1.99[i,])
# now append these two time periods
shrkB.45.f1.up <- c(shrkB.45.f1.80.up,shrkB.45.f1.99.up)
shrkB.45.f1.lo <- c(shrkB.45.f1.80.lo,shrkB.45.f1.99.lo)

# RCP 8.5
shrkB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shrkB.85.f1) <- c("gfd","mir","ces")
row.names(shrkB.85.f1) <- 1991:2099
shrkB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Sharks"]
shrkB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Sharks"]
shrkB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Sharks"]
# head(shrkB.85.f1)
shrkB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkB.85.f1.up[i] <- max(shrkB.85.f1[i,])
shrkB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkB.85.f1.lo[i] <- min(shrkB.85.f1[i,])

# # SRES A1B
# shrkB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shrkB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(shrkB.a1b.f1) <- 1991:2039
# shrkB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Sharks"]
# shrkB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Sharks"]
# shrkB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Sharks"]
# # head(shrkB.a1b.f1)
# shrkB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkB.a1b.f1.up[i] <- max(shrkB.a1b.f1[i,])
# shrkB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkB.a1b.f1.lo[i] <- min(shrkB.a1b.f1[i,])

# Sharks Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
shrkC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shrkC.45.f1.80) <- c("gfd","mir","ces")
row.names(shrkC.45.f1.80) <- 1991:2080
shrkC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Sharks"]
shrkC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Sharks"]
shrkC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Sharks"]
# head(shrkC.45.f1.80)
shrkC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkC.45.f1.80.up[i] <- max(shrkC.45.f1.80[i,])
shrkC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkC.45.f1.80.lo[i] <- min(shrkC.45.f1.80[i,])
# Everything from 2081-2099
shrkC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shrkC.45.f1.99) <- c("gfd","mir")
row.names(shrkC.45.f1.99) <- 2081:2099
shrkC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Sharks"]
shrkC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Sharks"]
# head(shrkC.45.f1.99)
shrkC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkC.45.f1.99.up[i] <- max(shrkC.45.f1.99[i,])
shrkC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkC.45.f1.99.lo[i] <- min(shrkC.45.f1.99[i,])
# now append these two time periods
shrkC.45.f1.up <- c(shrkC.45.f1.80.up,shrkC.45.f1.99.up)
shrkC.45.f1.lo <- c(shrkC.45.f1.80.lo,shrkC.45.f1.99.lo)

# RCP 8.5
shrkC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shrkC.85.f1) <- c("gfd","mir","ces")
row.names(shrkC.85.f1) <- 1991:2099
shrkC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Sharks"]
shrkC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Sharks"]
shrkC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Sharks"]
# head(shrkC.85.f1)
shrkC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkC.85.f1.up[i] <- max(shrkC.85.f1[i,])
shrkC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkC.85.f1.lo[i] <- min(shrkC.85.f1[i,])

# # SRES A1B
# shrkC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shrkC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(shrkC.a1b.f1) <- 1991:2039
# shrkC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Sharks"]
# shrkC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Sharks"]
# shrkC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Sharks"]
# # head(shrkC.a1b.f1)
# shrkC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkC.a1b.f1.up[i] <- max(shrkC.a1b.f1[i,])
# shrkC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkC.a1b.f1.lo[i] <- min(shrkC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Sharks F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
shrkB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shrkB.45.f2.80) <- c("gfd","mir","ces")
row.names(shrkB.45.f2.80) <- 1991:2080
shrkB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Sharks"]
shrkB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Sharks"]
shrkB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Sharks"]
# head(shrkB.45.f2.80)
shrkB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkB.45.f2.80.up[i] <- max(shrkB.45.f2.80[i,])
shrkB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkB.45.f2.80.lo[i] <- min(shrkB.45.f2.80[i,])
# Everything from 2081-2099
shrkB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shrkB.45.f2.99) <- c("gfd","mir")
row.names(shrkB.45.f2.99) <- 2081:2099
shrkB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Sharks"]
shrkB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Sharks"]
# head(shrkB.45.f2.99)
shrkB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkB.45.f2.99.up[i] <- max(shrkB.45.f2.99[i,])
shrkB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkB.45.f2.99.lo[i] <- min(shrkB.45.f2.99[i,])
# now append these two time periods
shrkB.45.f2.up <- c(shrkB.45.f2.80.up,shrkB.45.f2.99.up)
shrkB.45.f2.lo <- c(shrkB.45.f2.80.lo,shrkB.45.f2.99.lo)

# RCP 8.5
shrkB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shrkB.85.f2) <- c("gfd","mir","ces")
row.names(shrkB.85.f2) <- 1991:2099
shrkB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Sharks"]
shrkB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Sharks"]
shrkB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Sharks"]
# head(shrkB.85.f2)
shrkB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkB.85.f2.up[i] <- max(shrkB.85.f2[i,])
shrkB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkB.85.f2.lo[i] <- min(shrkB.85.f2[i,])

# # SRES A1B
# shrkB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shrkB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(shrkB.a1b.f2) <- 1991:2039
# shrkB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Sharks"]
# shrkB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Sharks"]
# shrkB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Sharks"]
# # head(shrkB.a1b.f2)
# shrkB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkB.a1b.f2.up[i] <- max(shrkB.a1b.f2[i,])
# shrkB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkB.a1b.f2.lo[i] <- min(shrkB.a1b.f2[i,])

# Sharks Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
shrkC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shrkC.45.f2.80) <- c("gfd","mir","ces")
row.names(shrkC.45.f2.80) <- 1991:2080
shrkC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Sharks"]
shrkC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Sharks"]
shrkC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Sharks"]
# head(shrkC.45.f2.80)
shrkC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkC.45.f2.80.up[i] <- max(shrkC.45.f2.80[i,])
shrkC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkC.45.f2.80.lo[i] <- min(shrkC.45.f2.80[i,])
# Everything from 2081-2099
shrkC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shrkC.45.f2.99) <- c("gfd","mir")
row.names(shrkC.45.f2.99) <- 2081:2099
shrkC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Sharks"]
shrkC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Sharks"]
# head(shrkC.45.f2.99)
shrkC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkC.45.f2.99.up[i] <- max(shrkC.45.f2.99[i,])
shrkC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkC.45.f2.99.lo[i] <- min(shrkC.45.f2.99[i,])
# now append these two time periods
shrkC.45.f2.up <- c(shrkC.45.f2.80.up,shrkC.45.f2.99.up)
shrkC.45.f2.lo <- c(shrkC.45.f2.80.lo,shrkC.45.f2.99.lo)

# RCP 8.5
shrkC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shrkC.85.f2) <- c("gfd","mir","ces")
row.names(shrkC.85.f2) <- 1991:2099
shrkC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Sharks"]
shrkC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Sharks"]
shrkC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Sharks"]
# head(shrkC.85.f2)
shrkC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkC.85.f2.up[i] <- max(shrkC.85.f2[i,])
shrkC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkC.85.f2.lo[i] <- min(shrkC.85.f2[i,])

# # SRES A1B
# shrkC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shrkC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(shrkC.a1b.f2) <- 1991:2039
# shrkC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Sharks"]
# shrkC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Sharks"]
# shrkC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Sharks"]
# # head(shrkC.a1b.f2)
# shrkC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkC.a1b.f2.up[i] <- max(shrkC.a1b.f2[i,])
# shrkC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkC.a1b.f2.lo[i] <- min(shrkC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Sharks F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
shrkB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shrkB.45.f3.80) <- c("gfd","mir","ces")
row.names(shrkB.45.f3.80) <- 1991:2080
shrkB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Sharks"]
shrkB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Sharks"]
shrkB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Sharks"]
# head(shrkB.45.f3.80)
shrkB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkB.45.f3.80.up[i] <- max(shrkB.45.f3.80[i,])
shrkB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkB.45.f3.80.lo[i] <- min(shrkB.45.f3.80[i,])
# Everything from 2081-2099
shrkB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shrkB.45.f3.99) <- c("gfd","mir")
row.names(shrkB.45.f3.99) <- 2081:2099
shrkB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Sharks"]
shrkB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Sharks"]
# head(shrkB.45.f3.99)
shrkB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkB.45.f3.99.up[i] <- max(shrkB.45.f3.99[i,])
shrkB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkB.45.f3.99.lo[i] <- min(shrkB.45.f3.99[i,])
# now append these two time periods
shrkB.45.f3.up <- c(shrkB.45.f3.80.up,shrkB.45.f3.99.up)
shrkB.45.f3.lo <- c(shrkB.45.f3.80.lo,shrkB.45.f3.99.lo)

# RCP 8.5
shrkB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shrkB.85.f3) <- c("gfd","mir","ces")
row.names(shrkB.85.f3) <- 1991:2099
shrkB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Sharks"]
shrkB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Sharks"]
shrkB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Sharks"]
# head(shrkB.85.f3)
shrkB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkB.85.f3.up[i] <- max(shrkB.85.f3[i,])
shrkB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkB.85.f3.lo[i] <- min(shrkB.85.f3[i,])

# # SRES A1B
# shrkB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shrkB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(shrkB.a1b.f3) <- 1991:2039
# shrkB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Sharks"]
# shrkB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Sharks"]
# shrkB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Sharks"]
# # head(shrkB.a1b.f3)
# shrkB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkB.a1b.f3.up[i] <- max(shrkB.a1b.f3[i,])
# shrkB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkB.a1b.f3.lo[i] <- min(shrkB.a1b.f3[i,])

# Sharks Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
shrkC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shrkC.45.f3.80) <- c("gfd","mir","ces")
row.names(shrkC.45.f3.80) <- 1991:2080
shrkC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Sharks"]
shrkC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Sharks"]
shrkC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Sharks"]
# head(shrkC.45.f3.80)
shrkC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkC.45.f3.80.up[i] <- max(shrkC.45.f3.80[i,])
shrkC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkC.45.f3.80.lo[i] <- min(shrkC.45.f3.80[i,])
# Everything from 2081-2099
shrkC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shrkC.45.f3.99) <- c("gfd","mir")
row.names(shrkC.45.f3.99) <- 2081:2099
shrkC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Sharks"]
shrkC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Sharks"]
# head(shrkC.45.f3.99)
shrkC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkC.45.f3.99.up[i] <- max(shrkC.45.f3.99[i,])
shrkC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkC.45.f3.99.lo[i] <- min(shrkC.45.f3.99[i,])
# now append these two time periods
shrkC.45.f3.up <- c(shrkC.45.f3.80.up,shrkC.45.f3.99.up)
shrkC.45.f3.lo <- c(shrkC.45.f3.80.lo,shrkC.45.f3.99.lo)

# RCP 8.5
shrkC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shrkC.85.f3) <- c("gfd","mir","ces")
row.names(shrkC.85.f3) <- 1991:2099
shrkC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Sharks"]
shrkC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Sharks"]
shrkC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Sharks"]
# head(shrkC.85.f3)
shrkC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkC.85.f3.up[i] <- max(shrkC.85.f3[i,])
shrkC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkC.85.f3.lo[i] <- min(shrkC.85.f3[i,])

# # SRES A1B
# shrkC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shrkC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(shrkC.a1b.f3) <- 1991:2039
# shrkC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Sharks"]
# shrkC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Sharks"]
# shrkC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Sharks"]
# # head(shrkC.a1b.f3)
# shrkC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkC.a1b.f3.up[i] <- max(shrkC.a1b.f3[i,])
# shrkC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkC.a1b.f3.lo[i] <- min(shrkC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Sharks F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
shrkB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shrkB.45.f4.80) <- c("gfd","mir","ces")
row.names(shrkB.45.f4.80) <- 1991:2080
shrkB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Sharks"]
shrkB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Sharks"]
shrkB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Sharks"]
# head(shrkB.45.f4.80)
shrkB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkB.45.f4.80.up[i] <- max(shrkB.45.f4.80[i,])
shrkB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkB.45.f4.80.lo[i] <- min(shrkB.45.f4.80[i,])
# Everything from 2081-2099
shrkB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shrkB.45.f4.99) <- c("gfd","mir")
row.names(shrkB.45.f4.99) <- 2081:2099
shrkB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Sharks"]
shrkB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Sharks"]
# head(shrkB.45.f4.99)
shrkB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkB.45.f4.99.up[i] <- max(shrkB.45.f4.99[i,])
shrkB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkB.45.f4.99.lo[i] <- min(shrkB.45.f4.99[i,])
# now append these two time periods
shrkB.45.f4.up <- c(shrkB.45.f4.80.up,shrkB.45.f4.99.up)
shrkB.45.f4.lo <- c(shrkB.45.f4.80.lo,shrkB.45.f4.99.lo)

# RCP 8.5
shrkB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shrkB.85.f4) <- c("gfd","mir","ces")
row.names(shrkB.85.f4) <- 1991:2099
shrkB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Sharks"]
shrkB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Sharks"]
shrkB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Sharks"]
# head(shrkB.85.f4)
shrkB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkB.85.f4.up[i] <- max(shrkB.85.f4[i,])
shrkB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkB.85.f4.lo[i] <- min(shrkB.85.f4[i,])

# # SRES A1B
# shrkB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shrkB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(shrkB.a1b.f4) <- 1991:2039
# shrkB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Sharks"]
# shrkB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Sharks"]
# shrkB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Sharks"]
# # head(shrkB.a1b.f4)
# shrkB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkB.a1b.f4.up[i] <- max(shrkB.a1b.f4[i,])
# shrkB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkB.a1b.f4.lo[i] <- min(shrkB.a1b.f4[i,])

# Sharks Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
shrkC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shrkC.45.f4.80) <- c("gfd","mir","ces")
row.names(shrkC.45.f4.80) <- 1991:2080
shrkC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Sharks"]
shrkC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Sharks"]
shrkC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Sharks"]
# head(shrkC.45.f4.80)
shrkC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkC.45.f4.80.up[i] <- max(shrkC.45.f4.80[i,])
shrkC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shrkC.45.f4.80.lo[i] <- min(shrkC.45.f4.80[i,])
# Everything from 2081-2099
shrkC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shrkC.45.f4.99) <- c("gfd","mir")
row.names(shrkC.45.f4.99) <- 2081:2099
shrkC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Sharks"]
shrkC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Sharks"]
# head(shrkC.45.f4.99)
shrkC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkC.45.f4.99.up[i] <- max(shrkC.45.f4.99[i,])
shrkC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shrkC.45.f4.99.lo[i] <- min(shrkC.45.f4.99[i,])
# now append these two time periods
shrkC.45.f4.up <- c(shrkC.45.f4.80.up,shrkC.45.f4.99.up)
shrkC.45.f4.lo <- c(shrkC.45.f4.80.lo,shrkC.45.f4.99.lo)

# RCP 8.5
shrkC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shrkC.85.f4) <- c("gfd","mir","ces")
row.names(shrkC.85.f4) <- 1991:2099
shrkC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Sharks"]
shrkC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Sharks"]
shrkC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Sharks"]
# head(shrkC.85.f4)
shrkC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkC.85.f4.up[i] <- max(shrkC.85.f4[i,])
shrkC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shrkC.85.f4.lo[i] <- min(shrkC.85.f4[i,])

# # SRES A1B
# shrkC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shrkC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(shrkC.a1b.f4) <- 1991:2039
# shrkC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Sharks"]
# shrkC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Sharks"]
# shrkC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Sharks"]
# # head(shrkC.a1b.f4)
# shrkC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkC.a1b.f4.up[i] <- max(shrkC.a1b.f4[i,])
# shrkC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shrkC.a1b.f4.lo[i] <- min(shrkC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Skates biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
sktB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sktB.45.f1.80) <- c("gfd","mir","ces")
row.names(sktB.45.f1.80) <- 1991:2080
sktB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Skates"]
sktB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Skates"]
sktB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Skates"]
# head(sktB.45.f1.80)
sktB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktB.45.f1.80.up[i] <- max(sktB.45.f1.80[i,])
sktB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktB.45.f1.80.lo[i] <- min(sktB.45.f1.80[i,])
# Everything from 2081-2099
sktB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sktB.45.f1.99) <- c("gfd","mir")
row.names(sktB.45.f1.99) <- 2081:2099
sktB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Skates"]
sktB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Skates"]
# head(sktB.45.f1.99)
sktB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktB.45.f1.99.up[i] <- max(sktB.45.f1.99[i,])
sktB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktB.45.f1.99.lo[i] <- min(sktB.45.f1.99[i,])
# now append these two time periods
sktB.45.f1.up <- c(sktB.45.f1.80.up,sktB.45.f1.99.up)
sktB.45.f1.lo <- c(sktB.45.f1.80.lo,sktB.45.f1.99.lo)

# RCP 8.5
sktB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sktB.85.f1) <- c("gfd","mir","ces")
row.names(sktB.85.f1) <- 1991:2099
sktB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Skates"]
sktB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Skates"]
sktB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Skates"]
# head(sktB.85.f1)
sktB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktB.85.f1.up[i] <- max(sktB.85.f1[i,])
sktB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktB.85.f1.lo[i] <- min(sktB.85.f1[i,])

# # SRES A1B
# sktB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sktB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sktB.a1b.f1) <- 1991:2039
# sktB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Skates"]
# sktB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Skates"]
# sktB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Skates"]
# # head(sktB.a1b.f1)
# sktB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktB.a1b.f1.up[i] <- max(sktB.a1b.f1[i,])
# sktB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktB.a1b.f1.lo[i] <- min(sktB.a1b.f1[i,])

# Skates Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
sktC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sktC.45.f1.80) <- c("gfd","mir","ces")
row.names(sktC.45.f1.80) <- 1991:2080
sktC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Skates"]
sktC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Skates"]
sktC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Skates"]
# head(sktC.45.f1.80)
sktC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktC.45.f1.80.up[i] <- max(sktC.45.f1.80[i,])
sktC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktC.45.f1.80.lo[i] <- min(sktC.45.f1.80[i,])
# Everything from 2081-2099
sktC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sktC.45.f1.99) <- c("gfd","mir")
row.names(sktC.45.f1.99) <- 2081:2099
sktC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Skates"]
sktC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Skates"]
# head(sktC.45.f1.99)
sktC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktC.45.f1.99.up[i] <- max(sktC.45.f1.99[i,])
sktC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktC.45.f1.99.lo[i] <- min(sktC.45.f1.99[i,])
# now append these two time periods
sktC.45.f1.up <- c(sktC.45.f1.80.up,sktC.45.f1.99.up)
sktC.45.f1.lo <- c(sktC.45.f1.80.lo,sktC.45.f1.99.lo)

# RCP 8.5
sktC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sktC.85.f1) <- c("gfd","mir","ces")
row.names(sktC.85.f1) <- 1991:2099
sktC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Skates"]
sktC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Skates"]
sktC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Skates"]
# head(sktC.85.f1)
sktC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktC.85.f1.up[i] <- max(sktC.85.f1[i,])
sktC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktC.85.f1.lo[i] <- min(sktC.85.f1[i,])

# # SRES A1B
# sktC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sktC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sktC.a1b.f1) <- 1991:2039
# sktC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Skates"]
# sktC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Skates"]
# sktC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Skates"]
# # head(sktC.a1b.f1)
# sktC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktC.a1b.f1.up[i] <- max(sktC.a1b.f1[i,])
# sktC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktC.a1b.f1.lo[i] <- min(sktC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Skates F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
sktB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sktB.45.f2.80) <- c("gfd","mir","ces")
row.names(sktB.45.f2.80) <- 1991:2080
sktB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Skates"]
sktB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Skates"]
sktB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Skates"]
# head(sktB.45.f2.80)
sktB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktB.45.f2.80.up[i] <- max(sktB.45.f2.80[i,])
sktB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktB.45.f2.80.lo[i] <- min(sktB.45.f2.80[i,])
# Everything from 2081-2099
sktB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sktB.45.f2.99) <- c("gfd","mir")
row.names(sktB.45.f2.99) <- 2081:2099
sktB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Skates"]
sktB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Skates"]
# head(sktB.45.f2.99)
sktB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktB.45.f2.99.up[i] <- max(sktB.45.f2.99[i,])
sktB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktB.45.f2.99.lo[i] <- min(sktB.45.f2.99[i,])
# now append these two time periods
sktB.45.f2.up <- c(sktB.45.f2.80.up,sktB.45.f2.99.up)
sktB.45.f2.lo <- c(sktB.45.f2.80.lo,sktB.45.f2.99.lo)

# RCP 8.5
sktB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sktB.85.f2) <- c("gfd","mir","ces")
row.names(sktB.85.f2) <- 1991:2099
sktB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Skates"]
sktB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Skates"]
sktB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Skates"]
# head(sktB.85.f2)
sktB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktB.85.f2.up[i] <- max(sktB.85.f2[i,])
sktB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktB.85.f2.lo[i] <- min(sktB.85.f2[i,])

# # SRES A1B
# sktB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sktB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(sktB.a1b.f2) <- 1991:2039
# sktB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Skates"]
# sktB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Skates"]
# sktB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Skates"]
# # head(sktB.a1b.f2)
# sktB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktB.a1b.f2.up[i] <- max(sktB.a1b.f2[i,])
# sktB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktB.a1b.f2.lo[i] <- min(sktB.a1b.f2[i,])

# Skates Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
sktC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sktC.45.f2.80) <- c("gfd","mir","ces")
row.names(sktC.45.f2.80) <- 1991:2080
sktC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Skates"]
sktC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Skates"]
sktC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Skates"]
# head(sktC.45.f2.80)
sktC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktC.45.f2.80.up[i] <- max(sktC.45.f2.80[i,])
sktC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktC.45.f2.80.lo[i] <- min(sktC.45.f2.80[i,])
# Everything from 2081-2099
sktC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sktC.45.f2.99) <- c("gfd","mir")
row.names(sktC.45.f2.99) <- 2081:2099
sktC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Skates"]
sktC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Skates"]
# head(sktC.45.f2.99)
sktC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktC.45.f2.99.up[i] <- max(sktC.45.f2.99[i,])
sktC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktC.45.f2.99.lo[i] <- min(sktC.45.f2.99[i,])
# now append these two time periods
sktC.45.f2.up <- c(sktC.45.f2.80.up,sktC.45.f2.99.up)
sktC.45.f2.lo <- c(sktC.45.f2.80.lo,sktC.45.f2.99.lo)

# RCP 8.5
sktC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sktC.85.f2) <- c("gfd","mir","ces")
row.names(sktC.85.f2) <- 1991:2099
sktC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Skates"]
sktC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Skates"]
sktC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Skates"]
# head(sktC.85.f2)
sktC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktC.85.f2.up[i] <- max(sktC.85.f2[i,])
sktC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktC.85.f2.lo[i] <- min(sktC.85.f2[i,])

# # SRES A1B
# sktC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sktC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(sktC.a1b.f2) <- 1991:2039
# sktC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Skates"]
# sktC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Skates"]
# sktC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Skates"]
# # head(sktC.a1b.f2)
# sktC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktC.a1b.f2.up[i] <- max(sktC.a1b.f2[i,])
# sktC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktC.a1b.f2.lo[i] <- min(sktC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Skates F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
sktB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sktB.45.f3.80) <- c("gfd","mir","ces")
row.names(sktB.45.f3.80) <- 1991:2080
sktB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Skates"]
sktB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Skates"]
sktB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Skates"]
# head(sktB.45.f3.80)
sktB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktB.45.f3.80.up[i] <- max(sktB.45.f3.80[i,])
sktB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktB.45.f3.80.lo[i] <- min(sktB.45.f3.80[i,])
# Everything from 2081-2099
sktB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sktB.45.f3.99) <- c("gfd","mir")
row.names(sktB.45.f3.99) <- 2081:2099
sktB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Skates"]
sktB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Skates"]
# head(sktB.45.f3.99)
sktB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktB.45.f3.99.up[i] <- max(sktB.45.f3.99[i,])
sktB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktB.45.f3.99.lo[i] <- min(sktB.45.f3.99[i,])
# now append these two time periods
sktB.45.f3.up <- c(sktB.45.f3.80.up,sktB.45.f3.99.up)
sktB.45.f3.lo <- c(sktB.45.f3.80.lo,sktB.45.f3.99.lo)

# RCP 8.5
sktB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sktB.85.f3) <- c("gfd","mir","ces")
row.names(sktB.85.f3) <- 1991:2099
sktB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Skates"]
sktB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Skates"]
sktB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Skates"]
# head(sktB.85.f3)
sktB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktB.85.f3.up[i] <- max(sktB.85.f3[i,])
sktB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktB.85.f3.lo[i] <- min(sktB.85.f3[i,])

# # SRES A1B
# sktB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sktB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(sktB.a1b.f3) <- 1991:2039
# sktB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Skates"]
# sktB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Skates"]
# sktB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Skates"]
# # head(sktB.a1b.f3)
# sktB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktB.a1b.f3.up[i] <- max(sktB.a1b.f3[i,])
# sktB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktB.a1b.f3.lo[i] <- min(sktB.a1b.f3[i,])

# Skates Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
sktC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sktC.45.f3.80) <- c("gfd","mir","ces")
row.names(sktC.45.f3.80) <- 1991:2080
sktC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Skates"]
sktC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Skates"]
sktC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Skates"]
# head(sktC.45.f3.80)
sktC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktC.45.f3.80.up[i] <- max(sktC.45.f3.80[i,])
sktC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktC.45.f3.80.lo[i] <- min(sktC.45.f3.80[i,])
# Everything from 2081-2099
sktC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sktC.45.f3.99) <- c("gfd","mir")
row.names(sktC.45.f3.99) <- 2081:2099
sktC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Skates"]
sktC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Skates"]
# head(sktC.45.f3.99)
sktC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktC.45.f3.99.up[i] <- max(sktC.45.f3.99[i,])
sktC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktC.45.f3.99.lo[i] <- min(sktC.45.f3.99[i,])
# now append these two time periods
sktC.45.f3.up <- c(sktC.45.f3.80.up,sktC.45.f3.99.up)
sktC.45.f3.lo <- c(sktC.45.f3.80.lo,sktC.45.f3.99.lo)

# RCP 8.5
sktC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sktC.85.f3) <- c("gfd","mir","ces")
row.names(sktC.85.f3) <- 1991:2099
sktC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Skates"]
sktC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Skates"]
sktC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Skates"]
# head(sktC.85.f3)
sktC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktC.85.f3.up[i] <- max(sktC.85.f3[i,])
sktC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktC.85.f3.lo[i] <- min(sktC.85.f3[i,])

# # SRES A1B
# sktC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sktC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(sktC.a1b.f3) <- 1991:2039
# sktC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Skates"]
# sktC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Skates"]
# sktC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Skates"]
# # head(sktC.a1b.f3)
# sktC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktC.a1b.f3.up[i] <- max(sktC.a1b.f3[i,])
# sktC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktC.a1b.f3.lo[i] <- min(sktC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Skates F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
sktB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sktB.45.f4.80) <- c("gfd","mir","ces")
row.names(sktB.45.f4.80) <- 1991:2080
sktB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Skates"]
sktB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Skates"]
sktB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Skates"]
# head(sktB.45.f4.80)
sktB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktB.45.f4.80.up[i] <- max(sktB.45.f4.80[i,])
sktB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktB.45.f4.80.lo[i] <- min(sktB.45.f4.80[i,])
# Everything from 2081-2099
sktB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sktB.45.f4.99) <- c("gfd","mir")
row.names(sktB.45.f4.99) <- 2081:2099
sktB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Skates"]
sktB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Skates"]
# head(sktB.45.f4.99)
sktB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktB.45.f4.99.up[i] <- max(sktB.45.f4.99[i,])
sktB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktB.45.f4.99.lo[i] <- min(sktB.45.f4.99[i,])
# now append these two time periods
sktB.45.f4.up <- c(sktB.45.f4.80.up,sktB.45.f4.99.up)
sktB.45.f4.lo <- c(sktB.45.f4.80.lo,sktB.45.f4.99.lo)

# RCP 8.5
sktB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sktB.85.f4) <- c("gfd","mir","ces")
row.names(sktB.85.f4) <- 1991:2099
sktB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Skates"]
sktB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Skates"]
sktB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Skates"]
# head(sktB.85.f4)
sktB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktB.85.f4.up[i] <- max(sktB.85.f4[i,])
sktB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktB.85.f4.lo[i] <- min(sktB.85.f4[i,])

# # SRES A1B
# sktB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sktB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(sktB.a1b.f4) <- 1991:2039
# sktB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Skates"]
# sktB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Skates"]
# sktB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Skates"]
# # head(sktB.a1b.f4)
# sktB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktB.a1b.f4.up[i] <- max(sktB.a1b.f4[i,])
# sktB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktB.a1b.f4.lo[i] <- min(sktB.a1b.f4[i,])

# Skates Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
sktC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sktC.45.f4.80) <- c("gfd","mir","ces")
row.names(sktC.45.f4.80) <- 1991:2080
sktC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Skates"]
sktC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Skates"]
sktC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Skates"]
# head(sktC.45.f4.80)
sktC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktC.45.f4.80.up[i] <- max(sktC.45.f4.80[i,])
sktC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sktC.45.f4.80.lo[i] <- min(sktC.45.f4.80[i,])
# Everything from 2081-2099
sktC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sktC.45.f4.99) <- c("gfd","mir")
row.names(sktC.45.f4.99) <- 2081:2099
sktC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Skates"]
sktC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Skates"]
# head(sktC.45.f4.99)
sktC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktC.45.f4.99.up[i] <- max(sktC.45.f4.99[i,])
sktC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sktC.45.f4.99.lo[i] <- min(sktC.45.f4.99[i,])
# now append these two time periods
sktC.45.f4.up <- c(sktC.45.f4.80.up,sktC.45.f4.99.up)
sktC.45.f4.lo <- c(sktC.45.f4.80.lo,sktC.45.f4.99.lo)

# RCP 8.5
sktC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sktC.85.f4) <- c("gfd","mir","ces")
row.names(sktC.85.f4) <- 1991:2099
sktC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Skates"]
sktC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Skates"]
sktC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Skates"]
# head(sktC.85.f4)
sktC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktC.85.f4.up[i] <- max(sktC.85.f4[i,])
sktC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sktC.85.f4.lo[i] <- min(sktC.85.f4[i,])

# # SRES A1B
# sktC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sktC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(sktC.a1b.f4) <- 1991:2039
# sktC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Skates"]
# sktC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Skates"]
# sktC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Skates"]
# # head(sktC.a1b.f4)
# sktC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktC.a1b.f4.up[i] <- max(sktC.a1b.f4[i,])
# sktC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sktC.a1b.f4.lo[i] <- min(sktC.a1b.f4[i,])

