# For reference the benthic forager species are:
Benthic.forager <- c("AK.Plaice","Arrowtooth_Juv","FH.sole","Gray.whales","N.Rock.sole",
                     "Other.flatfish","P.cod_Juv","P.halibut_Juv","Shallow.demersals",
                     "Shortraker.rock","Walrus.bd.seals","YF.sole")


rcp.yrs <- 1991:2099
a1b.yrs <- 1991:2039
ces.yrs <- 1991:2080

# ============================================================================ #
# ---------------------------------------------------------------------------- #
# AK.Plaice biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
akpB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(akpB.45.f1.80) <- c("gfd","mir","ces")
row.names(akpB.45.f1.80) <- 1991:2080
akpB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"AK.Plaice"]
akpB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"AK.Plaice"]
akpB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"AK.Plaice"]
# head(akpB.45.f1.80)
akpB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpB.45.f1.80.up[i] <- max(akpB.45.f1.80[i,])
akpB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpB.45.f1.80.lo[i] <- min(akpB.45.f1.80[i,])
# Everything from 2081-2099
akpB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(akpB.45.f1.99) <- c("gfd","mir")
row.names(akpB.45.f1.99) <- 2081:2099
akpB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"AK.Plaice"]
akpB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"AK.Plaice"]
# head(akpB.45.f1.99)
akpB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpB.45.f1.99.up[i] <- max(akpB.45.f1.99[i,])
akpB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpB.45.f1.99.lo[i] <- min(akpB.45.f1.99[i,])
# now append these two time periods
akpB.45.f1.up <- c(akpB.45.f1.80.up,akpB.45.f1.99.up)
akpB.45.f1.lo <- c(akpB.45.f1.80.lo,akpB.45.f1.99.lo)

# RCP 8.5
akpB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(akpB.85.f1) <- c("gfd","mir","ces")
row.names(akpB.85.f1) <- 1991:2099
akpB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"AK.Plaice"]
akpB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"AK.Plaice"]
akpB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"AK.Plaice"]
# head(akpB.85.f1)
akpB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpB.85.f1.up[i] <- max(akpB.85.f1[i,])
akpB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpB.85.f1.lo[i] <- min(akpB.85.f1[i,])

# # SRES A1B
# akpB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(akpB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(akpB.a1b.f1) <- 1991:2039
# akpB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"AK.Plaice"]
# akpB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"AK.Plaice"]
# akpB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"AK.Plaice"]
# # head(akpB.a1b.f1)
# akpB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpB.a1b.f1.up[i] <- max(akpB.a1b.f1[i,])
# akpB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpB.a1b.f1.lo[i] <- min(akpB.a1b.f1[i,])

# AK.Plaice Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
akpC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(akpC.45.f1.80) <- c("gfd","mir","ces")
row.names(akpC.45.f1.80) <- 1991:2080
akpC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"AK.Plaice"]
akpC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"AK.Plaice"]
akpC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"AK.Plaice"]
# head(akpC.45.f1.80)
akpC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpC.45.f1.80.up[i] <- max(akpC.45.f1.80[i,])
akpC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpC.45.f1.80.lo[i] <- min(akpC.45.f1.80[i,])
# Everything from 2081-2099
akpC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(akpC.45.f1.99) <- c("gfd","mir")
row.names(akpC.45.f1.99) <- 2081:2099
akpC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"AK.Plaice"]
akpC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"AK.Plaice"]
# head(akpC.45.f1.99)
akpC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpC.45.f1.99.up[i] <- max(akpC.45.f1.99[i,])
akpC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpC.45.f1.99.lo[i] <- min(akpC.45.f1.99[i,])
# now append these two time periods
akpC.45.f1.up <- c(akpC.45.f1.80.up,akpC.45.f1.99.up)
akpC.45.f1.lo <- c(akpC.45.f1.80.lo,akpC.45.f1.99.lo)

# RCP 8.5
akpC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(akpC.85.f1) <- c("gfd","mir","ces")
row.names(akpC.85.f1) <- 1991:2099
akpC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"AK.Plaice"]
akpC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"AK.Plaice"]
akpC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"AK.Plaice"]
# head(akpC.85.f1)
akpC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpC.85.f1.up[i] <- max(akpC.85.f1[i,])
akpC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpC.85.f1.lo[i] <- min(akpC.85.f1[i,])

# # SRES A1B
# akpC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(akpC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(akpC.a1b.f1) <- 1991:2039
# akpC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"AK.Plaice"]
# akpC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"AK.Plaice"]
# akpC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"AK.Plaice"]
# # head(akpC.a1b.f1)
# akpC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpC.a1b.f1.up[i] <- max(akpC.a1b.f1[i,])
# akpC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpC.a1b.f1.lo[i] <- min(akpC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# AK.Plaice F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
akpB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(akpB.45.f2.80) <- c("gfd","mir","ces")
row.names(akpB.45.f2.80) <- 1991:2080
akpB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"AK.Plaice"]
akpB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"AK.Plaice"]
akpB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"AK.Plaice"]
# head(akpB.45.f2.80)
akpB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpB.45.f2.80.up[i] <- max(akpB.45.f2.80[i,])
akpB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpB.45.f2.80.lo[i] <- min(akpB.45.f2.80[i,])
# Everything from 2081-2099
akpB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(akpB.45.f2.99) <- c("gfd","mir")
row.names(akpB.45.f2.99) <- 2081:2099
akpB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"AK.Plaice"]
akpB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"AK.Plaice"]
# head(akpB.45.f2.99)
akpB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpB.45.f2.99.up[i] <- max(akpB.45.f2.99[i,])
akpB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpB.45.f2.99.lo[i] <- min(akpB.45.f2.99[i,])
# now append these two time periods
akpB.45.f2.up <- c(akpB.45.f2.80.up,akpB.45.f2.99.up)
akpB.45.f2.lo <- c(akpB.45.f2.80.lo,akpB.45.f2.99.lo)

# RCP 8.5
akpB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(akpB.85.f2) <- c("gfd","mir","ces")
row.names(akpB.85.f2) <- 1991:2099
akpB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"AK.Plaice"]
akpB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"AK.Plaice"]
akpB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"AK.Plaice"]
# head(akpB.85.f2)
akpB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpB.85.f2.up[i] <- max(akpB.85.f2[i,])
akpB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpB.85.f2.lo[i] <- min(akpB.85.f2[i,])

# # SRES A1B
# akpB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(akpB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(akpB.a1b.f2) <- 1991:2039
# akpB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"AK.Plaice"]
# akpB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"AK.Plaice"]
# akpB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"AK.Plaice"]
# # head(akpB.a1b.f2)
# akpB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpB.a1b.f2.up[i] <- max(akpB.a1b.f2[i,])
# akpB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpB.a1b.f2.lo[i] <- min(akpB.a1b.f2[i,])

# AK.Plaice Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
akpC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(akpC.45.f2.80) <- c("gfd","mir","ces")
row.names(akpC.45.f2.80) <- 1991:2080
akpC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"AK.Plaice"]
akpC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"AK.Plaice"]
akpC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"AK.Plaice"]
# head(akpC.45.f2.80)
akpC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpC.45.f2.80.up[i] <- max(akpC.45.f2.80[i,])
akpC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpC.45.f2.80.lo[i] <- min(akpC.45.f2.80[i,])
# Everything from 2081-2099
akpC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(akpC.45.f2.99) <- c("gfd","mir")
row.names(akpC.45.f2.99) <- 2081:2099
akpC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"AK.Plaice"]
akpC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"AK.Plaice"]
# head(akpC.45.f2.99)
akpC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpC.45.f2.99.up[i] <- max(akpC.45.f2.99[i,])
akpC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpC.45.f2.99.lo[i] <- min(akpC.45.f2.99[i,])
# now append these two time periods
akpC.45.f2.up <- c(akpC.45.f2.80.up,akpC.45.f2.99.up)
akpC.45.f2.lo <- c(akpC.45.f2.80.lo,akpC.45.f2.99.lo)

# RCP 8.5
akpC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(akpC.85.f2) <- c("gfd","mir","ces")
row.names(akpC.85.f2) <- 1991:2099
akpC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"AK.Plaice"]
akpC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"AK.Plaice"]
akpC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"AK.Plaice"]
# head(akpC.85.f2)
akpC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpC.85.f2.up[i] <- max(akpC.85.f2[i,])
akpC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpC.85.f2.lo[i] <- min(akpC.85.f2[i,])

# # SRES A1B
# akpC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(akpC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(akpC.a1b.f2) <- 1991:2039
# akpC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"AK.Plaice"]
# akpC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"AK.Plaice"]
# akpC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"AK.Plaice"]
# # head(akpC.a1b.f2)
# akpC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpC.a1b.f2.up[i] <- max(akpC.a1b.f2[i,])
# akpC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpC.a1b.f2.lo[i] <- min(akpC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# AK.Plaice F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
akpB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(akpB.45.f3.80) <- c("gfd","mir","ces")
row.names(akpB.45.f3.80) <- 1991:2080
akpB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"AK.Plaice"]
akpB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"AK.Plaice"]
akpB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"AK.Plaice"]
# head(akpB.45.f3.80)
akpB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpB.45.f3.80.up[i] <- max(akpB.45.f3.80[i,])
akpB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpB.45.f3.80.lo[i] <- min(akpB.45.f3.80[i,])
# Everything from 2081-2099
akpB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(akpB.45.f3.99) <- c("gfd","mir")
row.names(akpB.45.f3.99) <- 2081:2099
akpB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"AK.Plaice"]
akpB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"AK.Plaice"]
# head(akpB.45.f3.99)
akpB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpB.45.f3.99.up[i] <- max(akpB.45.f3.99[i,])
akpB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpB.45.f3.99.lo[i] <- min(akpB.45.f3.99[i,])
# now append these two time periods
akpB.45.f3.up <- c(akpB.45.f3.80.up,akpB.45.f3.99.up)
akpB.45.f3.lo <- c(akpB.45.f3.80.lo,akpB.45.f3.99.lo)

# RCP 8.5
akpB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(akpB.85.f3) <- c("gfd","mir","ces")
row.names(akpB.85.f3) <- 1991:2099
akpB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"AK.Plaice"]
akpB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"AK.Plaice"]
akpB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"AK.Plaice"]
# head(akpB.85.f3)
akpB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpB.85.f3.up[i] <- max(akpB.85.f3[i,])
akpB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpB.85.f3.lo[i] <- min(akpB.85.f3[i,])

# # SRES A1B
# akpB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(akpB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(akpB.a1b.f3) <- 1991:2039
# akpB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"AK.Plaice"]
# akpB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"AK.Plaice"]
# akpB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"AK.Plaice"]
# # head(akpB.a1b.f3)
# akpB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpB.a1b.f3.up[i] <- max(akpB.a1b.f3[i,])
# akpB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpB.a1b.f3.lo[i] <- min(akpB.a1b.f3[i,])

# AK.Plaice Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
akpC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(akpC.45.f3.80) <- c("gfd","mir","ces")
row.names(akpC.45.f3.80) <- 1991:2080
akpC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"AK.Plaice"]
akpC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"AK.Plaice"]
akpC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"AK.Plaice"]
# head(akpC.45.f3.80)
akpC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpC.45.f3.80.up[i] <- max(akpC.45.f3.80[i,])
akpC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpC.45.f3.80.lo[i] <- min(akpC.45.f3.80[i,])
# Everything from 2081-2099
akpC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(akpC.45.f3.99) <- c("gfd","mir")
row.names(akpC.45.f3.99) <- 2081:2099
akpC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"AK.Plaice"]
akpC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"AK.Plaice"]
# head(akpC.45.f3.99)
akpC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpC.45.f3.99.up[i] <- max(akpC.45.f3.99[i,])
akpC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpC.45.f3.99.lo[i] <- min(akpC.45.f3.99[i,])
# now append these two time periods
akpC.45.f3.up <- c(akpC.45.f3.80.up,akpC.45.f3.99.up)
akpC.45.f3.lo <- c(akpC.45.f3.80.lo,akpC.45.f3.99.lo)

# RCP 8.5
akpC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(akpC.85.f3) <- c("gfd","mir","ces")
row.names(akpC.85.f3) <- 1991:2099
akpC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"AK.Plaice"]
akpC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"AK.Plaice"]
akpC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"AK.Plaice"]
# head(akpC.85.f3)
akpC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpC.85.f3.up[i] <- max(akpC.85.f3[i,])
akpC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpC.85.f3.lo[i] <- min(akpC.85.f3[i,])

# # SRES A1B
# akpC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(akpC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(akpC.a1b.f3) <- 1991:2039
# akpC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"AK.Plaice"]
# akpC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"AK.Plaice"]
# akpC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"AK.Plaice"]
# # head(akpC.a1b.f3)
# akpC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpC.a1b.f3.up[i] <- max(akpC.a1b.f3[i,])
# akpC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpC.a1b.f3.lo[i] <- min(akpC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# AK.Plaice F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
akpB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(akpB.45.f4.80) <- c("gfd","mir","ces")
row.names(akpB.45.f4.80) <- 1991:2080
akpB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"AK.Plaice"]
akpB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"AK.Plaice"]
akpB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"AK.Plaice"]
# head(akpB.45.f4.80)
akpB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpB.45.f4.80.up[i] <- max(akpB.45.f4.80[i,])
akpB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpB.45.f4.80.lo[i] <- min(akpB.45.f4.80[i,])
# Everything from 2081-2099
akpB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(akpB.45.f4.99) <- c("gfd","mir")
row.names(akpB.45.f4.99) <- 2081:2099
akpB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"AK.Plaice"]
akpB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"AK.Plaice"]
# head(akpB.45.f4.99)
akpB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpB.45.f4.99.up[i] <- max(akpB.45.f4.99[i,])
akpB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpB.45.f4.99.lo[i] <- min(akpB.45.f4.99[i,])
# now append these two time periods
akpB.45.f4.up <- c(akpB.45.f4.80.up,akpB.45.f4.99.up)
akpB.45.f4.lo <- c(akpB.45.f4.80.lo,akpB.45.f4.99.lo)

# RCP 8.5
akpB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(akpB.85.f4) <- c("gfd","mir","ces")
row.names(akpB.85.f4) <- 1991:2099
akpB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"AK.Plaice"]
akpB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"AK.Plaice"]
akpB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"AK.Plaice"]
# head(akpB.85.f4)
akpB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpB.85.f4.up[i] <- max(akpB.85.f4[i,])
akpB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpB.85.f4.lo[i] <- min(akpB.85.f4[i,])

# # SRES A1B
# akpB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(akpB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(akpB.a1b.f4) <- 1991:2039
# akpB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"AK.Plaice"]
# akpB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"AK.Plaice"]
# akpB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"AK.Plaice"]
# # head(akpB.a1b.f4)
# akpB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpB.a1b.f4.up[i] <- max(akpB.a1b.f4[i,])
# akpB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpB.a1b.f4.lo[i] <- min(akpB.a1b.f4[i,])

# AK.Plaice Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
akpC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(akpC.45.f4.80) <- c("gfd","mir","ces")
row.names(akpC.45.f4.80) <- 1991:2080
akpC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"AK.Plaice"]
akpC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"AK.Plaice"]
akpC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"AK.Plaice"]
# head(akpC.45.f4.80)
akpC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpC.45.f4.80.up[i] <- max(akpC.45.f4.80[i,])
akpC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) akpC.45.f4.80.lo[i] <- min(akpC.45.f4.80[i,])
# Everything from 2081-2099
akpC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(akpC.45.f4.99) <- c("gfd","mir")
row.names(akpC.45.f4.99) <- 2081:2099
akpC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"AK.Plaice"]
akpC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"AK.Plaice"]
# head(akpC.45.f4.99)
akpC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpC.45.f4.99.up[i] <- max(akpC.45.f4.99[i,])
akpC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) akpC.45.f4.99.lo[i] <- min(akpC.45.f4.99[i,])
# now append these two time periods
akpC.45.f4.up <- c(akpC.45.f4.80.up,akpC.45.f4.99.up)
akpC.45.f4.lo <- c(akpC.45.f4.80.lo,akpC.45.f4.99.lo)

# RCP 8.5
akpC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(akpC.85.f4) <- c("gfd","mir","ces")
row.names(akpC.85.f4) <- 1991:2099
akpC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"AK.Plaice"]
akpC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"AK.Plaice"]
akpC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"AK.Plaice"]
# head(akpC.85.f4)
akpC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpC.85.f4.up[i] <- max(akpC.85.f4[i,])
akpC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) akpC.85.f4.lo[i] <- min(akpC.85.f4[i,])

# # SRES A1B
# akpC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(akpC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(akpC.a1b.f4) <- 1991:2039
# akpC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"AK.Plaice"]
# akpC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"AK.Plaice"]
# akpC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"AK.Plaice"]
# # head(akpC.a1b.f4)
# akpC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpC.a1b.f4.up[i] <- max(akpC.a1b.f4[i,])
# akpC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) akpC.a1b.f4.lo[i] <- min(akpC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Arrowtooth_Juv biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
atfjB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfjB.45.f1.80) <- c("gfd","mir","ces")
row.names(atfjB.45.f1.80) <- 1991:2080
atfjB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Arrowtooth_Juv"]
atfjB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Arrowtooth_Juv"]
atfjB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# head(atfjB.45.f1.80)
atfjB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjB.45.f1.80.up[i] <- max(atfjB.45.f1.80[i,])
atfjB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjB.45.f1.80.lo[i] <- min(atfjB.45.f1.80[i,])
# Everything from 2081-2099
atfjB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfjB.45.f1.99) <- c("gfd","mir")
row.names(atfjB.45.f1.99) <- 2081:2099
atfjB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Arrowtooth_Juv"]
atfjB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Arrowtooth_Juv"]
# head(atfjB.45.f1.99)
atfjB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjB.45.f1.99.up[i] <- max(atfjB.45.f1.99[i,])
atfjB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjB.45.f1.99.lo[i] <- min(atfjB.45.f1.99[i,])
# now append these two time periods
atfjB.45.f1.up <- c(atfjB.45.f1.80.up,atfjB.45.f1.99.up)
atfjB.45.f1.lo <- c(atfjB.45.f1.80.lo,atfjB.45.f1.99.lo)

# RCP 8.5
atfjB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfjB.85.f1) <- c("gfd","mir","ces")
row.names(atfjB.85.f1) <- 1991:2099
atfjB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Arrowtooth_Juv"]
atfjB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Arrowtooth_Juv"]
atfjB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# head(atfjB.85.f1)
atfjB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjB.85.f1.up[i] <- max(atfjB.85.f1[i,])
atfjB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjB.85.f1.lo[i] <- min(atfjB.85.f1[i,])

# # SRES A1B
# atfjB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfjB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfjB.a1b.f1) <- 1991:2039
# atfjB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# atfjB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# atfjB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# # head(atfjB.a1b.f1)
# atfjB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjB.a1b.f1.up[i] <- max(atfjB.a1b.f1[i,])
# atfjB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjB.a1b.f1.lo[i] <- min(atfjB.a1b.f1[i,])

# Arrowtooth_Juv Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
atfjC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfjC.45.f1.80) <- c("gfd","mir","ces")
row.names(atfjC.45.f1.80) <- 1991:2080
atfjC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Arrowtooth_Juv"]
atfjC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Arrowtooth_Juv"]
atfjC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Arrowtooth_Juv"]
# head(atfjC.45.f1.80)
atfjC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjC.45.f1.80.up[i] <- max(atfjC.45.f1.80[i,])
atfjC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjC.45.f1.80.lo[i] <- min(atfjC.45.f1.80[i,])
# Everything from 2081-2099
atfjC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfjC.45.f1.99) <- c("gfd","mir")
row.names(atfjC.45.f1.99) <- 2081:2099
atfjC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Arrowtooth_Juv"]
atfjC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Arrowtooth_Juv"]
# head(atfjC.45.f1.99)
atfjC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjC.45.f1.99.up[i] <- max(atfjC.45.f1.99[i,])
atfjC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjC.45.f1.99.lo[i] <- min(atfjC.45.f1.99[i,])
# now append these two time periods
atfjC.45.f1.up <- c(atfjC.45.f1.80.up,atfjC.45.f1.99.up)
atfjC.45.f1.lo <- c(atfjC.45.f1.80.lo,atfjC.45.f1.99.lo)

# RCP 8.5
atfjC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfjC.85.f1) <- c("gfd","mir","ces")
row.names(atfjC.85.f1) <- 1991:2099
atfjC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Arrowtooth_Juv"]
atfjC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Arrowtooth_Juv"]
atfjC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Arrowtooth_Juv"]
# head(atfjC.85.f1)
atfjC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjC.85.f1.up[i] <- max(atfjC.85.f1[i,])
atfjC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjC.85.f1.lo[i] <- min(atfjC.85.f1[i,])

# # SRES A1B
# atfjC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfjC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfjC.a1b.f1) <- 1991:2039
# atfjC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Arrowtooth_Juv"]
# atfjC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Arrowtooth_Juv"]
# atfjC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Arrowtooth_Juv"]
# # head(atfjC.a1b.f1)
# atfjC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjC.a1b.f1.up[i] <- max(atfjC.a1b.f1[i,])
# atfjC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjC.a1b.f1.lo[i] <- min(atfjC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Arrowtooth_Juv F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
atfjB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfjB.45.f2.80) <- c("gfd","mir","ces")
row.names(atfjB.45.f2.80) <- 1991:2080
atfjB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Arrowtooth_Juv"]
atfjB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Arrowtooth_Juv"]
atfjB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# head(atfjB.45.f2.80)
atfjB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjB.45.f2.80.up[i] <- max(atfjB.45.f2.80[i,])
atfjB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjB.45.f2.80.lo[i] <- min(atfjB.45.f2.80[i,])
# Everything from 2081-2099
atfjB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfjB.45.f2.99) <- c("gfd","mir")
row.names(atfjB.45.f2.99) <- 2081:2099
atfjB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Arrowtooth_Juv"]
atfjB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Arrowtooth_Juv"]
# head(atfjB.45.f2.99)
atfjB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjB.45.f2.99.up[i] <- max(atfjB.45.f2.99[i,])
atfjB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjB.45.f2.99.lo[i] <- min(atfjB.45.f2.99[i,])
# now append these two time periods
atfjB.45.f2.up <- c(atfjB.45.f2.80.up,atfjB.45.f2.99.up)
atfjB.45.f2.lo <- c(atfjB.45.f2.80.lo,atfjB.45.f2.99.lo)

# RCP 8.5
atfjB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfjB.85.f2) <- c("gfd","mir","ces")
row.names(atfjB.85.f2) <- 1991:2099
atfjB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Arrowtooth_Juv"]
atfjB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Arrowtooth_Juv"]
atfjB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# head(atfjB.85.f2)
atfjB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjB.85.f2.up[i] <- max(atfjB.85.f2[i,])
atfjB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjB.85.f2.lo[i] <- min(atfjB.85.f2[i,])

# # SRES A1B
# atfjB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfjB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfjB.a1b.f2) <- 1991:2039
# atfjB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# atfjB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# atfjB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# # head(atfjB.a1b.f2)
# atfjB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjB.a1b.f2.up[i] <- max(atfjB.a1b.f2[i,])
# atfjB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjB.a1b.f2.lo[i] <- min(atfjB.a1b.f2[i,])

# Arrowtooth_Juv Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
atfjC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfjC.45.f2.80) <- c("gfd","mir","ces")
row.names(atfjC.45.f2.80) <- 1991:2080
atfjC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Arrowtooth_Juv"]
atfjC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Arrowtooth_Juv"]
atfjC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Arrowtooth_Juv"]
# head(atfjC.45.f2.80)
atfjC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjC.45.f2.80.up[i] <- max(atfjC.45.f2.80[i,])
atfjC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjC.45.f2.80.lo[i] <- min(atfjC.45.f2.80[i,])
# Everything from 2081-2099
atfjC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfjC.45.f2.99) <- c("gfd","mir")
row.names(atfjC.45.f2.99) <- 2081:2099
atfjC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Arrowtooth_Juv"]
atfjC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Arrowtooth_Juv"]
# head(atfjC.45.f2.99)
atfjC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjC.45.f2.99.up[i] <- max(atfjC.45.f2.99[i,])
atfjC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjC.45.f2.99.lo[i] <- min(atfjC.45.f2.99[i,])
# now append these two time periods
atfjC.45.f2.up <- c(atfjC.45.f2.80.up,atfjC.45.f2.99.up)
atfjC.45.f2.lo <- c(atfjC.45.f2.80.lo,atfjC.45.f2.99.lo)

# RCP 8.5
atfjC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfjC.85.f2) <- c("gfd","mir","ces")
row.names(atfjC.85.f2) <- 1991:2099
atfjC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Arrowtooth_Juv"]
atfjC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Arrowtooth_Juv"]
atfjC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Arrowtooth_Juv"]
# head(atfjC.85.f2)
atfjC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjC.85.f2.up[i] <- max(atfjC.85.f2[i,])
atfjC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjC.85.f2.lo[i] <- min(atfjC.85.f2[i,])

# # SRES A1B
# atfjC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfjC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfjC.a1b.f2) <- 1991:2039
# atfjC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Arrowtooth_Juv"]
# atfjC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Arrowtooth_Juv"]
# atfjC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Arrowtooth_Juv"]
# # head(atfjC.a1b.f2)
# atfjC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjC.a1b.f2.up[i] <- max(atfjC.a1b.f2[i,])
# atfjC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjC.a1b.f2.lo[i] <- min(atfjC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Arrowtooth_Juv F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
atfjB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfjB.45.f3.80) <- c("gfd","mir","ces")
row.names(atfjB.45.f3.80) <- 1991:2080
atfjB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Arrowtooth_Juv"]
atfjB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Arrowtooth_Juv"]
atfjB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# head(atfjB.45.f3.80)
atfjB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjB.45.f3.80.up[i] <- max(atfjB.45.f3.80[i,])
atfjB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjB.45.f3.80.lo[i] <- min(atfjB.45.f3.80[i,])
# Everything from 2081-2099
atfjB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfjB.45.f3.99) <- c("gfd","mir")
row.names(atfjB.45.f3.99) <- 2081:2099
atfjB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Arrowtooth_Juv"]
atfjB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Arrowtooth_Juv"]
# head(atfjB.45.f3.99)
atfjB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjB.45.f3.99.up[i] <- max(atfjB.45.f3.99[i,])
atfjB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjB.45.f3.99.lo[i] <- min(atfjB.45.f3.99[i,])
# now append these two time periods
atfjB.45.f3.up <- c(atfjB.45.f3.80.up,atfjB.45.f3.99.up)
atfjB.45.f3.lo <- c(atfjB.45.f3.80.lo,atfjB.45.f3.99.lo)

# RCP 8.5
atfjB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfjB.85.f3) <- c("gfd","mir","ces")
row.names(atfjB.85.f3) <- 1991:2099
atfjB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Arrowtooth_Juv"]
atfjB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Arrowtooth_Juv"]
atfjB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# head(atfjB.85.f3)
atfjB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjB.85.f3.up[i] <- max(atfjB.85.f3[i,])
atfjB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjB.85.f3.lo[i] <- min(atfjB.85.f3[i,])

# # SRES A1B
# atfjB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfjB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfjB.a1b.f3) <- 1991:2039
# atfjB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# atfjB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# atfjB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# # head(atfjB.a1b.f3)
# atfjB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjB.a1b.f3.up[i] <- max(atfjB.a1b.f3[i,])
# atfjB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjB.a1b.f3.lo[i] <- min(atfjB.a1b.f3[i,])

# Arrowtooth_Juv Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
atfjC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfjC.45.f3.80) <- c("gfd","mir","ces")
row.names(atfjC.45.f3.80) <- 1991:2080
atfjC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Arrowtooth_Juv"]
atfjC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Arrowtooth_Juv"]
atfjC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Arrowtooth_Juv"]
# head(atfjC.45.f3.80)
atfjC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjC.45.f3.80.up[i] <- max(atfjC.45.f3.80[i,])
atfjC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjC.45.f3.80.lo[i] <- min(atfjC.45.f3.80[i,])
# Everything from 2081-2099
atfjC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfjC.45.f3.99) <- c("gfd","mir")
row.names(atfjC.45.f3.99) <- 2081:2099
atfjC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Arrowtooth_Juv"]
atfjC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Arrowtooth_Juv"]
# head(atfjC.45.f3.99)
atfjC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjC.45.f3.99.up[i] <- max(atfjC.45.f3.99[i,])
atfjC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjC.45.f3.99.lo[i] <- min(atfjC.45.f3.99[i,])
# now append these two time periods
atfjC.45.f3.up <- c(atfjC.45.f3.80.up,atfjC.45.f3.99.up)
atfjC.45.f3.lo <- c(atfjC.45.f3.80.lo,atfjC.45.f3.99.lo)

# RCP 8.5
atfjC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfjC.85.f3) <- c("gfd","mir","ces")
row.names(atfjC.85.f3) <- 1991:2099
atfjC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Arrowtooth_Juv"]
atfjC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Arrowtooth_Juv"]
atfjC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Arrowtooth_Juv"]
# head(atfjC.85.f3)
atfjC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjC.85.f3.up[i] <- max(atfjC.85.f3[i,])
atfjC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjC.85.f3.lo[i] <- min(atfjC.85.f3[i,])

# # SRES A1B
# atfjC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfjC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfjC.a1b.f3) <- 1991:2039
# atfjC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Arrowtooth_Juv"]
# atfjC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Arrowtooth_Juv"]
# atfjC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Arrowtooth_Juv"]
# # head(atfjC.a1b.f3)
# atfjC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjC.a1b.f3.up[i] <- max(atfjC.a1b.f3[i,])
# atfjC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjC.a1b.f3.lo[i] <- min(atfjC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Arrowtooth_Juv F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
atfjB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfjB.45.f4.80) <- c("gfd","mir","ces")
row.names(atfjB.45.f4.80) <- 1991:2080
atfjB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Arrowtooth_Juv"]
atfjB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Arrowtooth_Juv"]
atfjB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# head(atfjB.45.f4.80)
atfjB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjB.45.f4.80.up[i] <- max(atfjB.45.f4.80[i,])
atfjB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjB.45.f4.80.lo[i] <- min(atfjB.45.f4.80[i,])
# Everything from 2081-2099
atfjB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfjB.45.f4.99) <- c("gfd","mir")
row.names(atfjB.45.f4.99) <- 2081:2099
atfjB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Arrowtooth_Juv"]
atfjB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Arrowtooth_Juv"]
# head(atfjB.45.f4.99)
atfjB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjB.45.f4.99.up[i] <- max(atfjB.45.f4.99[i,])
atfjB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjB.45.f4.99.lo[i] <- min(atfjB.45.f4.99[i,])
# now append these two time periods
atfjB.45.f4.up <- c(atfjB.45.f4.80.up,atfjB.45.f4.99.up)
atfjB.45.f4.lo <- c(atfjB.45.f4.80.lo,atfjB.45.f4.99.lo)

# RCP 8.5
atfjB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfjB.85.f4) <- c("gfd","mir","ces")
row.names(atfjB.85.f4) <- 1991:2099
atfjB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Arrowtooth_Juv"]
atfjB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Arrowtooth_Juv"]
atfjB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# head(atfjB.85.f4)
atfjB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjB.85.f4.up[i] <- max(atfjB.85.f4[i,])
atfjB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjB.85.f4.lo[i] <- min(atfjB.85.f4[i,])

# # SRES A1B
# atfjB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfjB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfjB.a1b.f4) <- 1991:2039
# atfjB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# atfjB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# atfjB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Arrowtooth_Juv"]
# # head(atfjB.a1b.f4)
# atfjB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjB.a1b.f4.up[i] <- max(atfjB.a1b.f4[i,])
# atfjB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjB.a1b.f4.lo[i] <- min(atfjB.a1b.f4[i,])

# Arrowtooth_Juv Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
atfjC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfjC.45.f4.80) <- c("gfd","mir","ces")
row.names(atfjC.45.f4.80) <- 1991:2080
atfjC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Arrowtooth_Juv"]
atfjC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Arrowtooth_Juv"]
atfjC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Arrowtooth_Juv"]
# head(atfjC.45.f4.80)
atfjC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjC.45.f4.80.up[i] <- max(atfjC.45.f4.80[i,])
atfjC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfjC.45.f4.80.lo[i] <- min(atfjC.45.f4.80[i,])
# Everything from 2081-2099
atfjC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfjC.45.f4.99) <- c("gfd","mir")
row.names(atfjC.45.f4.99) <- 2081:2099
atfjC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Arrowtooth_Juv"]
atfjC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Arrowtooth_Juv"]
# head(atfjC.45.f4.99)
atfjC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjC.45.f4.99.up[i] <- max(atfjC.45.f4.99[i,])
atfjC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfjC.45.f4.99.lo[i] <- min(atfjC.45.f4.99[i,])
# now append these two time periods
atfjC.45.f4.up <- c(atfjC.45.f4.80.up,atfjC.45.f4.99.up)
atfjC.45.f4.lo <- c(atfjC.45.f4.80.lo,atfjC.45.f4.99.lo)

# RCP 8.5
atfjC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfjC.85.f4) <- c("gfd","mir","ces")
row.names(atfjC.85.f4) <- 1991:2099
atfjC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Arrowtooth_Juv"]
atfjC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Arrowtooth_Juv"]
atfjC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Arrowtooth_Juv"]
# head(atfjC.85.f4)
atfjC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjC.85.f4.up[i] <- max(atfjC.85.f4[i,])
atfjC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfjC.85.f4.lo[i] <- min(atfjC.85.f4[i,])

# # SRES A1B
# atfjC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfjC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfjC.a1b.f4) <- 1991:2039
# atfjC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Arrowtooth_Juv"]
# atfjC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Arrowtooth_Juv"]
# atfjC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Arrowtooth_Juv"]
# # head(atfjC.a1b.f4)
# atfjC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjC.a1b.f4.up[i] <- max(atfjC.a1b.f4[i,])
# atfjC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfjC.a1b.f4.lo[i] <- min(atfjC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# FH.sole biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
fhsB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(fhsB.45.f1.80) <- c("gfd","mir","ces")
row.names(fhsB.45.f1.80) <- 1991:2080
fhsB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"FH.sole"]
fhsB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"FH.sole"]
fhsB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"FH.sole"]
# head(fhsB.45.f1.80)
fhsB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsB.45.f1.80.up[i] <- max(fhsB.45.f1.80[i,])
fhsB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsB.45.f1.80.lo[i] <- min(fhsB.45.f1.80[i,])
# Everything from 2081-2099
fhsB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(fhsB.45.f1.99) <- c("gfd","mir")
row.names(fhsB.45.f1.99) <- 2081:2099
fhsB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"FH.sole"]
fhsB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"FH.sole"]
# head(fhsB.45.f1.99)
fhsB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsB.45.f1.99.up[i] <- max(fhsB.45.f1.99[i,])
fhsB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsB.45.f1.99.lo[i] <- min(fhsB.45.f1.99[i,])
# now append these two time periods
fhsB.45.f1.up <- c(fhsB.45.f1.80.up,fhsB.45.f1.99.up)
fhsB.45.f1.lo <- c(fhsB.45.f1.80.lo,fhsB.45.f1.99.lo)

# RCP 8.5
fhsB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(fhsB.85.f1) <- c("gfd","mir","ces")
row.names(fhsB.85.f1) <- 1991:2099
fhsB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"FH.sole"]
fhsB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"FH.sole"]
fhsB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"FH.sole"]
# head(fhsB.85.f1)
fhsB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsB.85.f1.up[i] <- max(fhsB.85.f1[i,])
fhsB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsB.85.f1.lo[i] <- min(fhsB.85.f1[i,])

# # SRES A1B
# fhsB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(fhsB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(fhsB.a1b.f1) <- 1991:2039
# fhsB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"FH.sole"]
# fhsB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"FH.sole"]
# fhsB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"FH.sole"]
# # head(fhsB.a1b.f1)
# fhsB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsB.a1b.f1.up[i] <- max(fhsB.a1b.f1[i,])
# fhsB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsB.a1b.f1.lo[i] <- min(fhsB.a1b.f1[i,])

# FH.sole Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
fhsC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(fhsC.45.f1.80) <- c("gfd","mir","ces")
row.names(fhsC.45.f1.80) <- 1991:2080
fhsC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"FH.sole"]
fhsC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"FH.sole"]
fhsC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"FH.sole"]
# head(fhsC.45.f1.80)
fhsC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsC.45.f1.80.up[i] <- max(fhsC.45.f1.80[i,])
fhsC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsC.45.f1.80.lo[i] <- min(fhsC.45.f1.80[i,])
# Everything from 2081-2099
fhsC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(fhsC.45.f1.99) <- c("gfd","mir")
row.names(fhsC.45.f1.99) <- 2081:2099
fhsC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"FH.sole"]
fhsC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"FH.sole"]
# head(fhsC.45.f1.99)
fhsC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsC.45.f1.99.up[i] <- max(fhsC.45.f1.99[i,])
fhsC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsC.45.f1.99.lo[i] <- min(fhsC.45.f1.99[i,])
# now append these two time periods
fhsC.45.f1.up <- c(fhsC.45.f1.80.up,fhsC.45.f1.99.up)
fhsC.45.f1.lo <- c(fhsC.45.f1.80.lo,fhsC.45.f1.99.lo)

# RCP 8.5
fhsC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(fhsC.85.f1) <- c("gfd","mir","ces")
row.names(fhsC.85.f1) <- 1991:2099
fhsC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"FH.sole"]
fhsC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"FH.sole"]
fhsC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"FH.sole"]
# head(fhsC.85.f1)
fhsC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsC.85.f1.up[i] <- max(fhsC.85.f1[i,])
fhsC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsC.85.f1.lo[i] <- min(fhsC.85.f1[i,])

# # SRES A1B
# fhsC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(fhsC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(fhsC.a1b.f1) <- 1991:2039
# fhsC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"FH.sole"]
# fhsC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"FH.sole"]
# fhsC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"FH.sole"]
# # head(fhsC.a1b.f1)
# fhsC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsC.a1b.f1.up[i] <- max(fhsC.a1b.f1[i,])
# fhsC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsC.a1b.f1.lo[i] <- min(fhsC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# FH.sole F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
fhsB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(fhsB.45.f2.80) <- c("gfd","mir","ces")
row.names(fhsB.45.f2.80) <- 1991:2080
fhsB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"FH.sole"]
fhsB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"FH.sole"]
fhsB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"FH.sole"]
# head(fhsB.45.f2.80)
fhsB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsB.45.f2.80.up[i] <- max(fhsB.45.f2.80[i,])
fhsB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsB.45.f2.80.lo[i] <- min(fhsB.45.f2.80[i,])
# Everything from 2081-2099
fhsB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(fhsB.45.f2.99) <- c("gfd","mir")
row.names(fhsB.45.f2.99) <- 2081:2099
fhsB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"FH.sole"]
fhsB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"FH.sole"]
# head(fhsB.45.f2.99)
fhsB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsB.45.f2.99.up[i] <- max(fhsB.45.f2.99[i,])
fhsB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsB.45.f2.99.lo[i] <- min(fhsB.45.f2.99[i,])
# now append these two time periods
fhsB.45.f2.up <- c(fhsB.45.f2.80.up,fhsB.45.f2.99.up)
fhsB.45.f2.lo <- c(fhsB.45.f2.80.lo,fhsB.45.f2.99.lo)

# RCP 8.5
fhsB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(fhsB.85.f2) <- c("gfd","mir","ces")
row.names(fhsB.85.f2) <- 1991:2099
fhsB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"FH.sole"]
fhsB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"FH.sole"]
fhsB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"FH.sole"]
# head(fhsB.85.f2)
fhsB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsB.85.f2.up[i] <- max(fhsB.85.f2[i,])
fhsB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsB.85.f2.lo[i] <- min(fhsB.85.f2[i,])

# # SRES A1B
# fhsB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(fhsB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(fhsB.a1b.f2) <- 1991:2039
# fhsB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"FH.sole"]
# fhsB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"FH.sole"]
# fhsB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"FH.sole"]
# # head(fhsB.a1b.f2)
# fhsB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsB.a1b.f2.up[i] <- max(fhsB.a1b.f2[i,])
# fhsB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsB.a1b.f2.lo[i] <- min(fhsB.a1b.f2[i,])

# FH.sole Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
fhsC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(fhsC.45.f2.80) <- c("gfd","mir","ces")
row.names(fhsC.45.f2.80) <- 1991:2080
fhsC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"FH.sole"]
fhsC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"FH.sole"]
fhsC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"FH.sole"]
# head(fhsC.45.f2.80)
fhsC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsC.45.f2.80.up[i] <- max(fhsC.45.f2.80[i,])
fhsC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsC.45.f2.80.lo[i] <- min(fhsC.45.f2.80[i,])
# Everything from 2081-2099
fhsC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(fhsC.45.f2.99) <- c("gfd","mir")
row.names(fhsC.45.f2.99) <- 2081:2099
fhsC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"FH.sole"]
fhsC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"FH.sole"]
# head(fhsC.45.f2.99)
fhsC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsC.45.f2.99.up[i] <- max(fhsC.45.f2.99[i,])
fhsC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsC.45.f2.99.lo[i] <- min(fhsC.45.f2.99[i,])
# now append these two time periods
fhsC.45.f2.up <- c(fhsC.45.f2.80.up,fhsC.45.f2.99.up)
fhsC.45.f2.lo <- c(fhsC.45.f2.80.lo,fhsC.45.f2.99.lo)

# RCP 8.5
fhsC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(fhsC.85.f2) <- c("gfd","mir","ces")
row.names(fhsC.85.f2) <- 1991:2099
fhsC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"FH.sole"]
fhsC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"FH.sole"]
fhsC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"FH.sole"]
# head(fhsC.85.f2)
fhsC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsC.85.f2.up[i] <- max(fhsC.85.f2[i,])
fhsC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsC.85.f2.lo[i] <- min(fhsC.85.f2[i,])

# # SRES A1B
# fhsC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(fhsC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(fhsC.a1b.f2) <- 1991:2039
# fhsC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"FH.sole"]
# fhsC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"FH.sole"]
# fhsC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"FH.sole"]
# # head(fhsC.a1b.f2)
# fhsC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsC.a1b.f2.up[i] <- max(fhsC.a1b.f2[i,])
# fhsC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsC.a1b.f2.lo[i] <- min(fhsC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# FH.sole F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
fhsB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(fhsB.45.f3.80) <- c("gfd","mir","ces")
row.names(fhsB.45.f3.80) <- 1991:2080
fhsB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"FH.sole"]
fhsB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"FH.sole"]
fhsB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"FH.sole"]
# head(fhsB.45.f3.80)
fhsB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsB.45.f3.80.up[i] <- max(fhsB.45.f3.80[i,])
fhsB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsB.45.f3.80.lo[i] <- min(fhsB.45.f3.80[i,])
# Everything from 2081-2099
fhsB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(fhsB.45.f3.99) <- c("gfd","mir")
row.names(fhsB.45.f3.99) <- 2081:2099
fhsB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"FH.sole"]
fhsB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"FH.sole"]
# head(fhsB.45.f3.99)
fhsB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsB.45.f3.99.up[i] <- max(fhsB.45.f3.99[i,])
fhsB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsB.45.f3.99.lo[i] <- min(fhsB.45.f3.99[i,])
# now append these two time periods
fhsB.45.f3.up <- c(fhsB.45.f3.80.up,fhsB.45.f3.99.up)
fhsB.45.f3.lo <- c(fhsB.45.f3.80.lo,fhsB.45.f3.99.lo)

# RCP 8.5
fhsB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(fhsB.85.f3) <- c("gfd","mir","ces")
row.names(fhsB.85.f3) <- 1991:2099
fhsB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"FH.sole"]
fhsB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"FH.sole"]
fhsB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"FH.sole"]
# head(fhsB.85.f3)
fhsB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsB.85.f3.up[i] <- max(fhsB.85.f3[i,])
fhsB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsB.85.f3.lo[i] <- min(fhsB.85.f3[i,])

# # SRES A1B
# fhsB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(fhsB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(fhsB.a1b.f3) <- 1991:2039
# fhsB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"FH.sole"]
# fhsB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"FH.sole"]
# fhsB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"FH.sole"]
# # head(fhsB.a1b.f3)
# fhsB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsB.a1b.f3.up[i] <- max(fhsB.a1b.f3[i,])
# fhsB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsB.a1b.f3.lo[i] <- min(fhsB.a1b.f3[i,])

# FH.sole Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
fhsC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(fhsC.45.f3.80) <- c("gfd","mir","ces")
row.names(fhsC.45.f3.80) <- 1991:2080
fhsC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"FH.sole"]
fhsC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"FH.sole"]
fhsC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"FH.sole"]
# head(fhsC.45.f3.80)
fhsC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsC.45.f3.80.up[i] <- max(fhsC.45.f3.80[i,])
fhsC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsC.45.f3.80.lo[i] <- min(fhsC.45.f3.80[i,])
# Everything from 2081-2099
fhsC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(fhsC.45.f3.99) <- c("gfd","mir")
row.names(fhsC.45.f3.99) <- 2081:2099
fhsC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"FH.sole"]
fhsC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"FH.sole"]
# head(fhsC.45.f3.99)
fhsC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsC.45.f3.99.up[i] <- max(fhsC.45.f3.99[i,])
fhsC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsC.45.f3.99.lo[i] <- min(fhsC.45.f3.99[i,])
# now append these two time periods
fhsC.45.f3.up <- c(fhsC.45.f3.80.up,fhsC.45.f3.99.up)
fhsC.45.f3.lo <- c(fhsC.45.f3.80.lo,fhsC.45.f3.99.lo)

# RCP 8.5
fhsC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(fhsC.85.f3) <- c("gfd","mir","ces")
row.names(fhsC.85.f3) <- 1991:2099
fhsC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"FH.sole"]
fhsC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"FH.sole"]
fhsC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"FH.sole"]
# head(fhsC.85.f3)
fhsC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsC.85.f3.up[i] <- max(fhsC.85.f3[i,])
fhsC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsC.85.f3.lo[i] <- min(fhsC.85.f3[i,])

# # SRES A1B
# fhsC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(fhsC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(fhsC.a1b.f3) <- 1991:2039
# fhsC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"FH.sole"]
# fhsC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"FH.sole"]
# fhsC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"FH.sole"]
# # head(fhsC.a1b.f3)
# fhsC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsC.a1b.f3.up[i] <- max(fhsC.a1b.f3[i,])
# fhsC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsC.a1b.f3.lo[i] <- min(fhsC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# FH.sole F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
fhsB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(fhsB.45.f4.80) <- c("gfd","mir","ces")
row.names(fhsB.45.f4.80) <- 1991:2080
fhsB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"FH.sole"]
fhsB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"FH.sole"]
fhsB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"FH.sole"]
# head(fhsB.45.f4.80)
fhsB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsB.45.f4.80.up[i] <- max(fhsB.45.f4.80[i,])
fhsB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsB.45.f4.80.lo[i] <- min(fhsB.45.f4.80[i,])
# Everything from 2081-2099
fhsB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(fhsB.45.f4.99) <- c("gfd","mir")
row.names(fhsB.45.f4.99) <- 2081:2099
fhsB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"FH.sole"]
fhsB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"FH.sole"]
# head(fhsB.45.f4.99)
fhsB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsB.45.f4.99.up[i] <- max(fhsB.45.f4.99[i,])
fhsB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsB.45.f4.99.lo[i] <- min(fhsB.45.f4.99[i,])
# now append these two time periods
fhsB.45.f4.up <- c(fhsB.45.f4.80.up,fhsB.45.f4.99.up)
fhsB.45.f4.lo <- c(fhsB.45.f4.80.lo,fhsB.45.f4.99.lo)

# RCP 8.5
fhsB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(fhsB.85.f4) <- c("gfd","mir","ces")
row.names(fhsB.85.f4) <- 1991:2099
fhsB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"FH.sole"]
fhsB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"FH.sole"]
fhsB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"FH.sole"]
# head(fhsB.85.f4)
fhsB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsB.85.f4.up[i] <- max(fhsB.85.f4[i,])
fhsB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsB.85.f4.lo[i] <- min(fhsB.85.f4[i,])

# # SRES A1B
# fhsB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(fhsB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(fhsB.a1b.f4) <- 1991:2039
# fhsB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"FH.sole"]
# fhsB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"FH.sole"]
# fhsB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"FH.sole"]
# # head(fhsB.a1b.f4)
# fhsB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsB.a1b.f4.up[i] <- max(fhsB.a1b.f4[i,])
# fhsB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsB.a1b.f4.lo[i] <- min(fhsB.a1b.f4[i,])

# FH.sole Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
fhsC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(fhsC.45.f4.80) <- c("gfd","mir","ces")
row.names(fhsC.45.f4.80) <- 1991:2080
fhsC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"FH.sole"]
fhsC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"FH.sole"]
fhsC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"FH.sole"]
# head(fhsC.45.f4.80)
fhsC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsC.45.f4.80.up[i] <- max(fhsC.45.f4.80[i,])
fhsC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) fhsC.45.f4.80.lo[i] <- min(fhsC.45.f4.80[i,])
# Everything from 2081-2099
fhsC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(fhsC.45.f4.99) <- c("gfd","mir")
row.names(fhsC.45.f4.99) <- 2081:2099
fhsC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"FH.sole"]
fhsC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"FH.sole"]
# head(fhsC.45.f4.99)
fhsC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsC.45.f4.99.up[i] <- max(fhsC.45.f4.99[i,])
fhsC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) fhsC.45.f4.99.lo[i] <- min(fhsC.45.f4.99[i,])
# now append these two time periods
fhsC.45.f4.up <- c(fhsC.45.f4.80.up,fhsC.45.f4.99.up)
fhsC.45.f4.lo <- c(fhsC.45.f4.80.lo,fhsC.45.f4.99.lo)

# RCP 8.5
fhsC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(fhsC.85.f4) <- c("gfd","mir","ces")
row.names(fhsC.85.f4) <- 1991:2099
fhsC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"FH.sole"]
fhsC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"FH.sole"]
fhsC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"FH.sole"]
# head(fhsC.85.f4)
fhsC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsC.85.f4.up[i] <- max(fhsC.85.f4[i,])
fhsC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) fhsC.85.f4.lo[i] <- min(fhsC.85.f4[i,])

# # SRES A1B
# fhsC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(fhsC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(fhsC.a1b.f4) <- 1991:2039
# fhsC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"FH.sole"]
# fhsC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"FH.sole"]
# fhsC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"FH.sole"]
# # head(fhsC.a1b.f4)
# fhsC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsC.a1b.f4.up[i] <- max(fhsC.a1b.f4[i,])
# fhsC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) fhsC.a1b.f4.lo[i] <- min(fhsC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Other.flatfish biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
otffB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(otffB.45.f1.80) <- c("gfd","mir","ces")
row.names(otffB.45.f1.80) <- 1991:2080
otffB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Other.flatfish"]
otffB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Other.flatfish"]
otffB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Other.flatfish"]
# head(otffB.45.f1.80)
otffB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffB.45.f1.80.up[i] <- max(otffB.45.f1.80[i,])
otffB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffB.45.f1.80.lo[i] <- min(otffB.45.f1.80[i,])
# Everything from 2081-2099
otffB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(otffB.45.f1.99) <- c("gfd","mir")
row.names(otffB.45.f1.99) <- 2081:2099
otffB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Other.flatfish"]
otffB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Other.flatfish"]
# head(otffB.45.f1.99)
otffB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffB.45.f1.99.up[i] <- max(otffB.45.f1.99[i,])
otffB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffB.45.f1.99.lo[i] <- min(otffB.45.f1.99[i,])
# now append these two time periods
otffB.45.f1.up <- c(otffB.45.f1.80.up,otffB.45.f1.99.up)
otffB.45.f1.lo <- c(otffB.45.f1.80.lo,otffB.45.f1.99.lo)

# RCP 8.5
otffB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(otffB.85.f1) <- c("gfd","mir","ces")
row.names(otffB.85.f1) <- 1991:2099
otffB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Other.flatfish"]
otffB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Other.flatfish"]
otffB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Other.flatfish"]
# head(otffB.85.f1)
otffB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffB.85.f1.up[i] <- max(otffB.85.f1[i,])
otffB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffB.85.f1.lo[i] <- min(otffB.85.f1[i,])

# # SRES A1B
# otffB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(otffB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(otffB.a1b.f1) <- 1991:2039
# otffB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Other.flatfish"]
# otffB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Other.flatfish"]
# otffB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Other.flatfish"]
# # head(otffB.a1b.f1)
# otffB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffB.a1b.f1.up[i] <- max(otffB.a1b.f1[i,])
# otffB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffB.a1b.f1.lo[i] <- min(otffB.a1b.f1[i,])

# Other.flatfish Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
otffC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(otffC.45.f1.80) <- c("gfd","mir","ces")
row.names(otffC.45.f1.80) <- 1991:2080
otffC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Other.flatfish"]
otffC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Other.flatfish"]
otffC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Other.flatfish"]
# head(otffC.45.f1.80)
otffC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffC.45.f1.80.up[i] <- max(otffC.45.f1.80[i,])
otffC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffC.45.f1.80.lo[i] <- min(otffC.45.f1.80[i,])
# Everything from 2081-2099
otffC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(otffC.45.f1.99) <- c("gfd","mir")
row.names(otffC.45.f1.99) <- 2081:2099
otffC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Other.flatfish"]
otffC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Other.flatfish"]
# head(otffC.45.f1.99)
otffC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffC.45.f1.99.up[i] <- max(otffC.45.f1.99[i,])
otffC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffC.45.f1.99.lo[i] <- min(otffC.45.f1.99[i,])
# now append these two time periods
otffC.45.f1.up <- c(otffC.45.f1.80.up,otffC.45.f1.99.up)
otffC.45.f1.lo <- c(otffC.45.f1.80.lo,otffC.45.f1.99.lo)

# RCP 8.5
otffC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(otffC.85.f1) <- c("gfd","mir","ces")
row.names(otffC.85.f1) <- 1991:2099
otffC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Other.flatfish"]
otffC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Other.flatfish"]
otffC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Other.flatfish"]
# head(otffC.85.f1)
otffC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffC.85.f1.up[i] <- max(otffC.85.f1[i,])
otffC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffC.85.f1.lo[i] <- min(otffC.85.f1[i,])

# # SRES A1B
# otffC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(otffC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(otffC.a1b.f1) <- 1991:2039
# otffC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Other.flatfish"]
# otffC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Other.flatfish"]
# otffC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Other.flatfish"]
# # head(otffC.a1b.f1)
# otffC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffC.a1b.f1.up[i] <- max(otffC.a1b.f1[i,])
# otffC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffC.a1b.f1.lo[i] <- min(otffC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Other.flatfish F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
otffB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(otffB.45.f2.80) <- c("gfd","mir","ces")
row.names(otffB.45.f2.80) <- 1991:2080
otffB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Other.flatfish"]
otffB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Other.flatfish"]
otffB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Other.flatfish"]
# head(otffB.45.f2.80)
otffB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffB.45.f2.80.up[i] <- max(otffB.45.f2.80[i,])
otffB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffB.45.f2.80.lo[i] <- min(otffB.45.f2.80[i,])
# Everything from 2081-2099
otffB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(otffB.45.f2.99) <- c("gfd","mir")
row.names(otffB.45.f2.99) <- 2081:2099
otffB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Other.flatfish"]
otffB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Other.flatfish"]
# head(otffB.45.f2.99)
otffB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffB.45.f2.99.up[i] <- max(otffB.45.f2.99[i,])
otffB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffB.45.f2.99.lo[i] <- min(otffB.45.f2.99[i,])
# now append these two time periods
otffB.45.f2.up <- c(otffB.45.f2.80.up,otffB.45.f2.99.up)
otffB.45.f2.lo <- c(otffB.45.f2.80.lo,otffB.45.f2.99.lo)

# RCP 8.5
otffB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(otffB.85.f2) <- c("gfd","mir","ces")
row.names(otffB.85.f2) <- 1991:2099
otffB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Other.flatfish"]
otffB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Other.flatfish"]
otffB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Other.flatfish"]
# head(otffB.85.f2)
otffB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffB.85.f2.up[i] <- max(otffB.85.f2[i,])
otffB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffB.85.f2.lo[i] <- min(otffB.85.f2[i,])

# # SRES A1B
# otffB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(otffB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(otffB.a1b.f2) <- 1991:2039
# otffB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Other.flatfish"]
# otffB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Other.flatfish"]
# otffB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Other.flatfish"]
# # head(otffB.a1b.f2)
# otffB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffB.a1b.f2.up[i] <- max(otffB.a1b.f2[i,])
# otffB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffB.a1b.f2.lo[i] <- min(otffB.a1b.f2[i,])

# Other.flatfish Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
otffC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(otffC.45.f2.80) <- c("gfd","mir","ces")
row.names(otffC.45.f2.80) <- 1991:2080
otffC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Other.flatfish"]
otffC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Other.flatfish"]
otffC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Other.flatfish"]
# head(otffC.45.f2.80)
otffC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffC.45.f2.80.up[i] <- max(otffC.45.f2.80[i,])
otffC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffC.45.f2.80.lo[i] <- min(otffC.45.f2.80[i,])
# Everything from 2081-2099
otffC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(otffC.45.f2.99) <- c("gfd","mir")
row.names(otffC.45.f2.99) <- 2081:2099
otffC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Other.flatfish"]
otffC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Other.flatfish"]
# head(otffC.45.f2.99)
otffC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffC.45.f2.99.up[i] <- max(otffC.45.f2.99[i,])
otffC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffC.45.f2.99.lo[i] <- min(otffC.45.f2.99[i,])
# now append these two time periods
otffC.45.f2.up <- c(otffC.45.f2.80.up,otffC.45.f2.99.up)
otffC.45.f2.lo <- c(otffC.45.f2.80.lo,otffC.45.f2.99.lo)

# RCP 8.5
otffC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(otffC.85.f2) <- c("gfd","mir","ces")
row.names(otffC.85.f2) <- 1991:2099
otffC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Other.flatfish"]
otffC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Other.flatfish"]
otffC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Other.flatfish"]
# head(otffC.85.f2)
otffC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffC.85.f2.up[i] <- max(otffC.85.f2[i,])
otffC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffC.85.f2.lo[i] <- min(otffC.85.f2[i,])

# # SRES A1B
# otffC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(otffC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(otffC.a1b.f2) <- 1991:2039
# otffC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Other.flatfish"]
# otffC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Other.flatfish"]
# otffC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Other.flatfish"]
# # head(otffC.a1b.f2)
# otffC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffC.a1b.f2.up[i] <- max(otffC.a1b.f2[i,])
# otffC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffC.a1b.f2.lo[i] <- min(otffC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Other.flatfish F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
otffB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(otffB.45.f3.80) <- c("gfd","mir","ces")
row.names(otffB.45.f3.80) <- 1991:2080
otffB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Other.flatfish"]
otffB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Other.flatfish"]
otffB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Other.flatfish"]
# head(otffB.45.f3.80)
otffB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffB.45.f3.80.up[i] <- max(otffB.45.f3.80[i,])
otffB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffB.45.f3.80.lo[i] <- min(otffB.45.f3.80[i,])
# Everything from 2081-2099
otffB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(otffB.45.f3.99) <- c("gfd","mir")
row.names(otffB.45.f3.99) <- 2081:2099
otffB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Other.flatfish"]
otffB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Other.flatfish"]
# head(otffB.45.f3.99)
otffB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffB.45.f3.99.up[i] <- max(otffB.45.f3.99[i,])
otffB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffB.45.f3.99.lo[i] <- min(otffB.45.f3.99[i,])
# now append these two time periods
otffB.45.f3.up <- c(otffB.45.f3.80.up,otffB.45.f3.99.up)
otffB.45.f3.lo <- c(otffB.45.f3.80.lo,otffB.45.f3.99.lo)

# RCP 8.5
otffB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(otffB.85.f3) <- c("gfd","mir","ces")
row.names(otffB.85.f3) <- 1991:2099
otffB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Other.flatfish"]
otffB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Other.flatfish"]
otffB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Other.flatfish"]
# head(otffB.85.f3)
otffB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffB.85.f3.up[i] <- max(otffB.85.f3[i,])
otffB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffB.85.f3.lo[i] <- min(otffB.85.f3[i,])

# # SRES A1B
# otffB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(otffB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(otffB.a1b.f3) <- 1991:2039
# otffB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Other.flatfish"]
# otffB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Other.flatfish"]
# otffB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Other.flatfish"]
# # head(otffB.a1b.f3)
# otffB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffB.a1b.f3.up[i] <- max(otffB.a1b.f3[i,])
# otffB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffB.a1b.f3.lo[i] <- min(otffB.a1b.f3[i,])

# Other.flatfish Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
otffC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(otffC.45.f3.80) <- c("gfd","mir","ces")
row.names(otffC.45.f3.80) <- 1991:2080
otffC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Other.flatfish"]
otffC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Other.flatfish"]
otffC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Other.flatfish"]
# head(otffC.45.f3.80)
otffC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffC.45.f3.80.up[i] <- max(otffC.45.f3.80[i,])
otffC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffC.45.f3.80.lo[i] <- min(otffC.45.f3.80[i,])
# Everything from 2081-2099
otffC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(otffC.45.f3.99) <- c("gfd","mir")
row.names(otffC.45.f3.99) <- 2081:2099
otffC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Other.flatfish"]
otffC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Other.flatfish"]
# head(otffC.45.f3.99)
otffC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffC.45.f3.99.up[i] <- max(otffC.45.f3.99[i,])
otffC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffC.45.f3.99.lo[i] <- min(otffC.45.f3.99[i,])
# now append these two time periods
otffC.45.f3.up <- c(otffC.45.f3.80.up,otffC.45.f3.99.up)
otffC.45.f3.lo <- c(otffC.45.f3.80.lo,otffC.45.f3.99.lo)

# RCP 8.5
otffC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(otffC.85.f3) <- c("gfd","mir","ces")
row.names(otffC.85.f3) <- 1991:2099
otffC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Other.flatfish"]
otffC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Other.flatfish"]
otffC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Other.flatfish"]
# head(otffC.85.f3)
otffC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffC.85.f3.up[i] <- max(otffC.85.f3[i,])
otffC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffC.85.f3.lo[i] <- min(otffC.85.f3[i,])

# # SRES A1B
# otffC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(otffC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(otffC.a1b.f3) <- 1991:2039
# otffC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Other.flatfish"]
# otffC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Other.flatfish"]
# otffC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Other.flatfish"]
# # head(otffC.a1b.f3)
# otffC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffC.a1b.f3.up[i] <- max(otffC.a1b.f3[i,])
# otffC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffC.a1b.f3.lo[i] <- min(otffC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Other.flatfish F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
otffB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(otffB.45.f4.80) <- c("gfd","mir","ces")
row.names(otffB.45.f4.80) <- 1991:2080
otffB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Other.flatfish"]
otffB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Other.flatfish"]
otffB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Other.flatfish"]
# head(otffB.45.f4.80)
otffB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffB.45.f4.80.up[i] <- max(otffB.45.f4.80[i,])
otffB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffB.45.f4.80.lo[i] <- min(otffB.45.f4.80[i,])
# Everything from 2081-2099
otffB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(otffB.45.f4.99) <- c("gfd","mir")
row.names(otffB.45.f4.99) <- 2081:2099
otffB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Other.flatfish"]
otffB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Other.flatfish"]
# head(otffB.45.f4.99)
otffB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffB.45.f4.99.up[i] <- max(otffB.45.f4.99[i,])
otffB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffB.45.f4.99.lo[i] <- min(otffB.45.f4.99[i,])
# now append these two time periods
otffB.45.f4.up <- c(otffB.45.f4.80.up,otffB.45.f4.99.up)
otffB.45.f4.lo <- c(otffB.45.f4.80.lo,otffB.45.f4.99.lo)

# RCP 8.5
otffB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(otffB.85.f4) <- c("gfd","mir","ces")
row.names(otffB.85.f4) <- 1991:2099
otffB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Other.flatfish"]
otffB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Other.flatfish"]
otffB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Other.flatfish"]
# head(otffB.85.f4)
otffB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffB.85.f4.up[i] <- max(otffB.85.f4[i,])
otffB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffB.85.f4.lo[i] <- min(otffB.85.f4[i,])

# # SRES A1B
# otffB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(otffB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(otffB.a1b.f4) <- 1991:2039
# otffB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Other.flatfish"]
# otffB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Other.flatfish"]
# otffB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Other.flatfish"]
# # head(otffB.a1b.f4)
# otffB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffB.a1b.f4.up[i] <- max(otffB.a1b.f4[i,])
# otffB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffB.a1b.f4.lo[i] <- min(otffB.a1b.f4[i,])

# Other.flatfish Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
otffC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(otffC.45.f4.80) <- c("gfd","mir","ces")
row.names(otffC.45.f4.80) <- 1991:2080
otffC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Other.flatfish"]
otffC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Other.flatfish"]
otffC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Other.flatfish"]
# head(otffC.45.f4.80)
otffC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffC.45.f4.80.up[i] <- max(otffC.45.f4.80[i,])
otffC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) otffC.45.f4.80.lo[i] <- min(otffC.45.f4.80[i,])
# Everything from 2081-2099
otffC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(otffC.45.f4.99) <- c("gfd","mir")
row.names(otffC.45.f4.99) <- 2081:2099
otffC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Other.flatfish"]
otffC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Other.flatfish"]
# head(otffC.45.f4.99)
otffC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffC.45.f4.99.up[i] <- max(otffC.45.f4.99[i,])
otffC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) otffC.45.f4.99.lo[i] <- min(otffC.45.f4.99[i,])
# now append these two time periods
otffC.45.f4.up <- c(otffC.45.f4.80.up,otffC.45.f4.99.up)
otffC.45.f4.lo <- c(otffC.45.f4.80.lo,otffC.45.f4.99.lo)

# RCP 8.5
otffC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(otffC.85.f4) <- c("gfd","mir","ces")
row.names(otffC.85.f4) <- 1991:2099
otffC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Other.flatfish"]
otffC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Other.flatfish"]
otffC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Other.flatfish"]
# head(otffC.85.f4)
otffC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffC.85.f4.up[i] <- max(otffC.85.f4[i,])
otffC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) otffC.85.f4.lo[i] <- min(otffC.85.f4[i,])

# # SRES A1B
# otffC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(otffC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(otffC.a1b.f4) <- 1991:2039
# otffC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Other.flatfish"]
# otffC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Other.flatfish"]
# otffC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Other.flatfish"]
# # head(otffC.a1b.f4)
# otffC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffC.a1b.f4.up[i] <- max(otffC.a1b.f4[i,])
# otffC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) otffC.a1b.f4.lo[i] <- min(otffC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# P.cod_Juv biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
codjB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codjB.45.f1.80) <- c("gfd","mir","ces")
row.names(codjB.45.f1.80) <- 1991:2080
codjB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"P.cod_Juv"]
codjB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"P.cod_Juv"]
codjB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"P.cod_Juv"]
# head(codjB.45.f1.80)
codjB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjB.45.f1.80.up[i] <- max(codjB.45.f1.80[i,])
codjB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjB.45.f1.80.lo[i] <- min(codjB.45.f1.80[i,])
# Everything from 2081-2099
codjB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codjB.45.f1.99) <- c("gfd","mir")
row.names(codjB.45.f1.99) <- 2081:2099
codjB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"P.cod_Juv"]
codjB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"P.cod_Juv"]
# head(codjB.45.f1.99)
codjB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjB.45.f1.99.up[i] <- max(codjB.45.f1.99[i,])
codjB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjB.45.f1.99.lo[i] <- min(codjB.45.f1.99[i,])
# now append these two time periods
codjB.45.f1.up <- c(codjB.45.f1.80.up,codjB.45.f1.99.up)
codjB.45.f1.lo <- c(codjB.45.f1.80.lo,codjB.45.f1.99.lo)

# RCP 8.5
codjB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codjB.85.f1) <- c("gfd","mir","ces")
row.names(codjB.85.f1) <- 1991:2099
codjB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"P.cod_Juv"]
codjB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"P.cod_Juv"]
codjB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"P.cod_Juv"]
# head(codjB.85.f1)
codjB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjB.85.f1.up[i] <- max(codjB.85.f1[i,])
codjB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjB.85.f1.lo[i] <- min(codjB.85.f1[i,])

# # SRES A1B
# codjB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codjB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(codjB.a1b.f1) <- 1991:2039
# codjB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"P.cod_Juv"]
# codjB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"P.cod_Juv"]
# codjB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"P.cod_Juv"]
# # head(codjB.a1b.f1)
# codjB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjB.a1b.f1.up[i] <- max(codjB.a1b.f1[i,])
# codjB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjB.a1b.f1.lo[i] <- min(codjB.a1b.f1[i,])

# P.cod_Juv Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
codjC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codjC.45.f1.80) <- c("gfd","mir","ces")
row.names(codjC.45.f1.80) <- 1991:2080
codjC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"P.cod_Juv"]
codjC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"P.cod_Juv"]
codjC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"P.cod_Juv"]
# head(codjC.45.f1.80)
codjC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjC.45.f1.80.up[i] <- max(codjC.45.f1.80[i,])
codjC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjC.45.f1.80.lo[i] <- min(codjC.45.f1.80[i,])
# Everything from 2081-2099
codjC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codjC.45.f1.99) <- c("gfd","mir")
row.names(codjC.45.f1.99) <- 2081:2099
codjC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"P.cod_Juv"]
codjC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"P.cod_Juv"]
# head(codjC.45.f1.99)
codjC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjC.45.f1.99.up[i] <- max(codjC.45.f1.99[i,])
codjC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjC.45.f1.99.lo[i] <- min(codjC.45.f1.99[i,])
# now append these two time periods
codjC.45.f1.up <- c(codjC.45.f1.80.up,codjC.45.f1.99.up)
codjC.45.f1.lo <- c(codjC.45.f1.80.lo,codjC.45.f1.99.lo)

# RCP 8.5
codjC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codjC.85.f1) <- c("gfd","mir","ces")
row.names(codjC.85.f1) <- 1991:2099
codjC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"P.cod_Juv"]
codjC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"P.cod_Juv"]
codjC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"P.cod_Juv"]
# head(codjC.85.f1)
codjC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjC.85.f1.up[i] <- max(codjC.85.f1[i,])
codjC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjC.85.f1.lo[i] <- min(codjC.85.f1[i,])

# # SRES A1B
# codjC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codjC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(codjC.a1b.f1) <- 1991:2039
# codjC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"P.cod_Juv"]
# codjC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"P.cod_Juv"]
# codjC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"P.cod_Juv"]
# # head(codjC.a1b.f1)
# codjC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjC.a1b.f1.up[i] <- max(codjC.a1b.f1[i,])
# codjC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjC.a1b.f1.lo[i] <- min(codjC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# P.cod_Juv F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
codjB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codjB.45.f2.80) <- c("gfd","mir","ces")
row.names(codjB.45.f2.80) <- 1991:2080
codjB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"P.cod_Juv"]
codjB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"P.cod_Juv"]
codjB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"P.cod_Juv"]
# head(codjB.45.f2.80)
codjB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjB.45.f2.80.up[i] <- max(codjB.45.f2.80[i,])
codjB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjB.45.f2.80.lo[i] <- min(codjB.45.f2.80[i,])
# Everything from 2081-2099
codjB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codjB.45.f2.99) <- c("gfd","mir")
row.names(codjB.45.f2.99) <- 2081:2099
codjB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"P.cod_Juv"]
codjB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"P.cod_Juv"]
# head(codjB.45.f2.99)
codjB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjB.45.f2.99.up[i] <- max(codjB.45.f2.99[i,])
codjB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjB.45.f2.99.lo[i] <- min(codjB.45.f2.99[i,])
# now append these two time periods
codjB.45.f2.up <- c(codjB.45.f2.80.up,codjB.45.f2.99.up)
codjB.45.f2.lo <- c(codjB.45.f2.80.lo,codjB.45.f2.99.lo)

# RCP 8.5
codjB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codjB.85.f2) <- c("gfd","mir","ces")
row.names(codjB.85.f2) <- 1991:2099
codjB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"P.cod_Juv"]
codjB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"P.cod_Juv"]
codjB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"P.cod_Juv"]
# head(codjB.85.f2)
codjB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjB.85.f2.up[i] <- max(codjB.85.f2[i,])
codjB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjB.85.f2.lo[i] <- min(codjB.85.f2[i,])

# # SRES A1B
# codjB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codjB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(codjB.a1b.f2) <- 1991:2039
# codjB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"P.cod_Juv"]
# codjB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"P.cod_Juv"]
# codjB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"P.cod_Juv"]
# # head(codjB.a1b.f2)
# codjB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjB.a1b.f2.up[i] <- max(codjB.a1b.f2[i,])
# codjB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjB.a1b.f2.lo[i] <- min(codjB.a1b.f2[i,])

# P.cod_Juv Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
codjC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codjC.45.f2.80) <- c("gfd","mir","ces")
row.names(codjC.45.f2.80) <- 1991:2080
codjC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"P.cod_Juv"]
codjC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"P.cod_Juv"]
codjC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"P.cod_Juv"]
# head(codjC.45.f2.80)
codjC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjC.45.f2.80.up[i] <- max(codjC.45.f2.80[i,])
codjC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjC.45.f2.80.lo[i] <- min(codjC.45.f2.80[i,])
# Everything from 2081-2099
codjC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codjC.45.f2.99) <- c("gfd","mir")
row.names(codjC.45.f2.99) <- 2081:2099
codjC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"P.cod_Juv"]
codjC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"P.cod_Juv"]
# head(codjC.45.f2.99)
codjC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjC.45.f2.99.up[i] <- max(codjC.45.f2.99[i,])
codjC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjC.45.f2.99.lo[i] <- min(codjC.45.f2.99[i,])
# now append these two time periods
codjC.45.f2.up <- c(codjC.45.f2.80.up,codjC.45.f2.99.up)
codjC.45.f2.lo <- c(codjC.45.f2.80.lo,codjC.45.f2.99.lo)

# RCP 8.5
codjC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codjC.85.f2) <- c("gfd","mir","ces")
row.names(codjC.85.f2) <- 1991:2099
codjC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"P.cod_Juv"]
codjC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"P.cod_Juv"]
codjC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"P.cod_Juv"]
# head(codjC.85.f2)
codjC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjC.85.f2.up[i] <- max(codjC.85.f2[i,])
codjC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjC.85.f2.lo[i] <- min(codjC.85.f2[i,])

# # SRES A1B
# codjC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codjC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(codjC.a1b.f2) <- 1991:2039
# codjC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"P.cod_Juv"]
# codjC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"P.cod_Juv"]
# codjC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"P.cod_Juv"]
# # head(codjC.a1b.f2)
# codjC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjC.a1b.f2.up[i] <- max(codjC.a1b.f2[i,])
# codjC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjC.a1b.f2.lo[i] <- min(codjC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# P.cod_Juv F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
codjB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codjB.45.f3.80) <- c("gfd","mir","ces")
row.names(codjB.45.f3.80) <- 1991:2080
codjB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"P.cod_Juv"]
codjB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"P.cod_Juv"]
codjB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"P.cod_Juv"]
# head(codjB.45.f3.80)
codjB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjB.45.f3.80.up[i] <- max(codjB.45.f3.80[i,])
codjB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjB.45.f3.80.lo[i] <- min(codjB.45.f3.80[i,])
# Everything from 2081-2099
codjB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codjB.45.f3.99) <- c("gfd","mir")
row.names(codjB.45.f3.99) <- 2081:2099
codjB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"P.cod_Juv"]
codjB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"P.cod_Juv"]
# head(codjB.45.f3.99)
codjB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjB.45.f3.99.up[i] <- max(codjB.45.f3.99[i,])
codjB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjB.45.f3.99.lo[i] <- min(codjB.45.f3.99[i,])
# now append these two time periods
codjB.45.f3.up <- c(codjB.45.f3.80.up,codjB.45.f3.99.up)
codjB.45.f3.lo <- c(codjB.45.f3.80.lo,codjB.45.f3.99.lo)

# RCP 8.5
codjB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codjB.85.f3) <- c("gfd","mir","ces")
row.names(codjB.85.f3) <- 1991:2099
codjB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"P.cod_Juv"]
codjB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"P.cod_Juv"]
codjB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"P.cod_Juv"]
# head(codjB.85.f3)
codjB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjB.85.f3.up[i] <- max(codjB.85.f3[i,])
codjB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjB.85.f3.lo[i] <- min(codjB.85.f3[i,])

# # SRES A1B
# codjB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codjB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(codjB.a1b.f3) <- 1991:2039
# codjB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"P.cod_Juv"]
# codjB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"P.cod_Juv"]
# codjB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"P.cod_Juv"]
# # head(codjB.a1b.f3)
# codjB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjB.a1b.f3.up[i] <- max(codjB.a1b.f3[i,])
# codjB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjB.a1b.f3.lo[i] <- min(codjB.a1b.f3[i,])

# P.cod_Juv Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
codjC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codjC.45.f3.80) <- c("gfd","mir","ces")
row.names(codjC.45.f3.80) <- 1991:2080
codjC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"P.cod_Juv"]
codjC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"P.cod_Juv"]
codjC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"P.cod_Juv"]
# head(codjC.45.f3.80)
codjC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjC.45.f3.80.up[i] <- max(codjC.45.f3.80[i,])
codjC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjC.45.f3.80.lo[i] <- min(codjC.45.f3.80[i,])
# Everything from 2081-2099
codjC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codjC.45.f3.99) <- c("gfd","mir")
row.names(codjC.45.f3.99) <- 2081:2099
codjC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"P.cod_Juv"]
codjC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"P.cod_Juv"]
# head(codjC.45.f3.99)
codjC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjC.45.f3.99.up[i] <- max(codjC.45.f3.99[i,])
codjC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjC.45.f3.99.lo[i] <- min(codjC.45.f3.99[i,])
# now append these two time periods
codjC.45.f3.up <- c(codjC.45.f3.80.up,codjC.45.f3.99.up)
codjC.45.f3.lo <- c(codjC.45.f3.80.lo,codjC.45.f3.99.lo)

# RCP 8.5
codjC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codjC.85.f3) <- c("gfd","mir","ces")
row.names(codjC.85.f3) <- 1991:2099
codjC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"P.cod_Juv"]
codjC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"P.cod_Juv"]
codjC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"P.cod_Juv"]
# head(codjC.85.f3)
codjC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjC.85.f3.up[i] <- max(codjC.85.f3[i,])
codjC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjC.85.f3.lo[i] <- min(codjC.85.f3[i,])

# # SRES A1B
# codjC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codjC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(codjC.a1b.f3) <- 1991:2039
# codjC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"P.cod_Juv"]
# codjC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"P.cod_Juv"]
# codjC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"P.cod_Juv"]
# # head(codjC.a1b.f3)
# codjC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjC.a1b.f3.up[i] <- max(codjC.a1b.f3[i,])
# codjC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjC.a1b.f3.lo[i] <- min(codjC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# P.cod_Juv F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
codjB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codjB.45.f4.80) <- c("gfd","mir","ces")
row.names(codjB.45.f4.80) <- 1991:2080
codjB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"P.cod_Juv"]
codjB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"P.cod_Juv"]
codjB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"P.cod_Juv"]
# head(codjB.45.f4.80)
codjB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjB.45.f4.80.up[i] <- max(codjB.45.f4.80[i,])
codjB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjB.45.f4.80.lo[i] <- min(codjB.45.f4.80[i,])
# Everything from 2081-2099
codjB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codjB.45.f4.99) <- c("gfd","mir")
row.names(codjB.45.f4.99) <- 2081:2099
codjB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"P.cod_Juv"]
codjB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"P.cod_Juv"]
# head(codjB.45.f4.99)
codjB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjB.45.f4.99.up[i] <- max(codjB.45.f4.99[i,])
codjB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjB.45.f4.99.lo[i] <- min(codjB.45.f4.99[i,])
# now append these two time periods
codjB.45.f4.up <- c(codjB.45.f4.80.up,codjB.45.f4.99.up)
codjB.45.f4.lo <- c(codjB.45.f4.80.lo,codjB.45.f4.99.lo)

# RCP 8.5
codjB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codjB.85.f4) <- c("gfd","mir","ces")
row.names(codjB.85.f4) <- 1991:2099
codjB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"P.cod_Juv"]
codjB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"P.cod_Juv"]
codjB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"P.cod_Juv"]
# head(codjB.85.f4)
codjB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjB.85.f4.up[i] <- max(codjB.85.f4[i,])
codjB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjB.85.f4.lo[i] <- min(codjB.85.f4[i,])

# # SRES A1B
# codjB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codjB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(codjB.a1b.f4) <- 1991:2039
# codjB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"P.cod_Juv"]
# codjB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"P.cod_Juv"]
# codjB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"P.cod_Juv"]
# # head(codjB.a1b.f4)
# codjB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjB.a1b.f4.up[i] <- max(codjB.a1b.f4[i,])
# codjB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjB.a1b.f4.lo[i] <- min(codjB.a1b.f4[i,])

# P.cod_Juv Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
codjC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codjC.45.f4.80) <- c("gfd","mir","ces")
row.names(codjC.45.f4.80) <- 1991:2080
codjC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"P.cod_Juv"]
codjC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"P.cod_Juv"]
codjC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"P.cod_Juv"]
# head(codjC.45.f4.80)
codjC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjC.45.f4.80.up[i] <- max(codjC.45.f4.80[i,])
codjC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codjC.45.f4.80.lo[i] <- min(codjC.45.f4.80[i,])
# Everything from 2081-2099
codjC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codjC.45.f4.99) <- c("gfd","mir")
row.names(codjC.45.f4.99) <- 2081:2099
codjC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"P.cod_Juv"]
codjC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"P.cod_Juv"]
# head(codjC.45.f4.99)
codjC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjC.45.f4.99.up[i] <- max(codjC.45.f4.99[i,])
codjC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codjC.45.f4.99.lo[i] <- min(codjC.45.f4.99[i,])
# now append these two time periods
codjC.45.f4.up <- c(codjC.45.f4.80.up,codjC.45.f4.99.up)
codjC.45.f4.lo <- c(codjC.45.f4.80.lo,codjC.45.f4.99.lo)

# RCP 8.5
codjC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codjC.85.f4) <- c("gfd","mir","ces")
row.names(codjC.85.f4) <- 1991:2099
codjC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"P.cod_Juv"]
codjC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"P.cod_Juv"]
codjC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"P.cod_Juv"]
# head(codjC.85.f4)
codjC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjC.85.f4.up[i] <- max(codjC.85.f4[i,])
codjC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codjC.85.f4.lo[i] <- min(codjC.85.f4[i,])

# # SRES A1B
# codjC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codjC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(codjC.a1b.f4) <- 1991:2039
# codjC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"P.cod_Juv"]
# codjC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"P.cod_Juv"]
# codjC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"P.cod_Juv"]
# # head(codjC.a1b.f4)
# codjC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjC.a1b.f4.up[i] <- max(codjC.a1b.f4[i,])
# codjC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codjC.a1b.f4.lo[i] <- min(codjC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# P.halibut_Juv biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
haljB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(haljB.45.f1.80) <- c("gfd","mir","ces")
row.names(haljB.45.f1.80) <- 1991:2080
haljB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"P.halibut_Juv"]
haljB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"P.halibut_Juv"]
haljB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"P.halibut_Juv"]
# head(haljB.45.f1.80)
haljB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljB.45.f1.80.up[i] <- max(haljB.45.f1.80[i,])
haljB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljB.45.f1.80.lo[i] <- min(haljB.45.f1.80[i,])
# Everything from 2081-2099
haljB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(haljB.45.f1.99) <- c("gfd","mir")
row.names(haljB.45.f1.99) <- 2081:2099
haljB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"P.halibut_Juv"]
haljB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"P.halibut_Juv"]
# head(haljB.45.f1.99)
haljB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljB.45.f1.99.up[i] <- max(haljB.45.f1.99[i,])
haljB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljB.45.f1.99.lo[i] <- min(haljB.45.f1.99[i,])
# now append these two time periods
haljB.45.f1.up <- c(haljB.45.f1.80.up,haljB.45.f1.99.up)
haljB.45.f1.lo <- c(haljB.45.f1.80.lo,haljB.45.f1.99.lo)

# RCP 8.5
haljB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(haljB.85.f1) <- c("gfd","mir","ces")
row.names(haljB.85.f1) <- 1991:2099
haljB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"P.halibut_Juv"]
haljB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"P.halibut_Juv"]
haljB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"P.halibut_Juv"]
# head(haljB.85.f1)
haljB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljB.85.f1.up[i] <- max(haljB.85.f1[i,])
haljB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljB.85.f1.lo[i] <- min(haljB.85.f1[i,])

# # SRES A1B
# haljB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(haljB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(haljB.a1b.f1) <- 1991:2039
# haljB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"P.halibut_Juv"]
# haljB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"P.halibut_Juv"]
# haljB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"P.halibut_Juv"]
# # head(haljB.a1b.f1)
# haljB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljB.a1b.f1.up[i] <- max(haljB.a1b.f1[i,])
# haljB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljB.a1b.f1.lo[i] <- min(haljB.a1b.f1[i,])

# P.halibut_Juv Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
haljC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(haljC.45.f1.80) <- c("gfd","mir","ces")
row.names(haljC.45.f1.80) <- 1991:2080
haljC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"P.halibut_Juv"]
haljC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"P.halibut_Juv"]
haljC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"P.halibut_Juv"]
# head(haljC.45.f1.80)
haljC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljC.45.f1.80.up[i] <- max(haljC.45.f1.80[i,])
haljC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljC.45.f1.80.lo[i] <- min(haljC.45.f1.80[i,])
# Everything from 2081-2099
haljC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(haljC.45.f1.99) <- c("gfd","mir")
row.names(haljC.45.f1.99) <- 2081:2099
haljC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"P.halibut_Juv"]
haljC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"P.halibut_Juv"]
# head(haljC.45.f1.99)
haljC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljC.45.f1.99.up[i] <- max(haljC.45.f1.99[i,])
haljC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljC.45.f1.99.lo[i] <- min(haljC.45.f1.99[i,])
# now append these two time periods
haljC.45.f1.up <- c(haljC.45.f1.80.up,haljC.45.f1.99.up)
haljC.45.f1.lo <- c(haljC.45.f1.80.lo,haljC.45.f1.99.lo)

# RCP 8.5
haljC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(haljC.85.f1) <- c("gfd","mir","ces")
row.names(haljC.85.f1) <- 1991:2099
haljC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"P.halibut_Juv"]
haljC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"P.halibut_Juv"]
haljC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"P.halibut_Juv"]
# head(haljC.85.f1)
haljC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljC.85.f1.up[i] <- max(haljC.85.f1[i,])
haljC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljC.85.f1.lo[i] <- min(haljC.85.f1[i,])

# # SRES A1B
# haljC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(haljC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(haljC.a1b.f1) <- 1991:2039
# haljC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"P.halibut_Juv"]
# haljC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"P.halibut_Juv"]
# haljC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"P.halibut_Juv"]
# # head(haljC.a1b.f1)
# haljC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljC.a1b.f1.up[i] <- max(haljC.a1b.f1[i,])
# haljC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljC.a1b.f1.lo[i] <- min(haljC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# P.halibut_Juv F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
haljB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(haljB.45.f2.80) <- c("gfd","mir","ces")
row.names(haljB.45.f2.80) <- 1991:2080
haljB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"P.halibut_Juv"]
haljB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"P.halibut_Juv"]
haljB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"P.halibut_Juv"]
# head(haljB.45.f2.80)
haljB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljB.45.f2.80.up[i] <- max(haljB.45.f2.80[i,])
haljB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljB.45.f2.80.lo[i] <- min(haljB.45.f2.80[i,])
# Everything from 2081-2099
haljB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(haljB.45.f2.99) <- c("gfd","mir")
row.names(haljB.45.f2.99) <- 2081:2099
haljB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"P.halibut_Juv"]
haljB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"P.halibut_Juv"]
# head(haljB.45.f2.99)
haljB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljB.45.f2.99.up[i] <- max(haljB.45.f2.99[i,])
haljB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljB.45.f2.99.lo[i] <- min(haljB.45.f2.99[i,])
# now append these two time periods
haljB.45.f2.up <- c(haljB.45.f2.80.up,haljB.45.f2.99.up)
haljB.45.f2.lo <- c(haljB.45.f2.80.lo,haljB.45.f2.99.lo)

# RCP 8.5
haljB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(haljB.85.f2) <- c("gfd","mir","ces")
row.names(haljB.85.f2) <- 1991:2099
haljB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"P.halibut_Juv"]
haljB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"P.halibut_Juv"]
haljB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"P.halibut_Juv"]
# head(haljB.85.f2)
haljB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljB.85.f2.up[i] <- max(haljB.85.f2[i,])
haljB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljB.85.f2.lo[i] <- min(haljB.85.f2[i,])

# # SRES A1B
# haljB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(haljB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(haljB.a1b.f2) <- 1991:2039
# haljB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"P.halibut_Juv"]
# haljB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"P.halibut_Juv"]
# haljB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"P.halibut_Juv"]
# # head(haljB.a1b.f2)
# haljB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljB.a1b.f2.up[i] <- max(haljB.a1b.f2[i,])
# haljB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljB.a1b.f2.lo[i] <- min(haljB.a1b.f2[i,])

# P.halibut_Juv Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
haljC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(haljC.45.f2.80) <- c("gfd","mir","ces")
row.names(haljC.45.f2.80) <- 1991:2080
haljC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"P.halibut_Juv"]
haljC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"P.halibut_Juv"]
haljC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"P.halibut_Juv"]
# head(haljC.45.f2.80)
haljC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljC.45.f2.80.up[i] <- max(haljC.45.f2.80[i,])
haljC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljC.45.f2.80.lo[i] <- min(haljC.45.f2.80[i,])
# Everything from 2081-2099
haljC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(haljC.45.f2.99) <- c("gfd","mir")
row.names(haljC.45.f2.99) <- 2081:2099
haljC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"P.halibut_Juv"]
haljC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"P.halibut_Juv"]
# head(haljC.45.f2.99)
haljC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljC.45.f2.99.up[i] <- max(haljC.45.f2.99[i,])
haljC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljC.45.f2.99.lo[i] <- min(haljC.45.f2.99[i,])
# now append these two time periods
haljC.45.f2.up <- c(haljC.45.f2.80.up,haljC.45.f2.99.up)
haljC.45.f2.lo <- c(haljC.45.f2.80.lo,haljC.45.f2.99.lo)

# RCP 8.5
haljC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(haljC.85.f2) <- c("gfd","mir","ces")
row.names(haljC.85.f2) <- 1991:2099
haljC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"P.halibut_Juv"]
haljC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"P.halibut_Juv"]
haljC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"P.halibut_Juv"]
# head(haljC.85.f2)
haljC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljC.85.f2.up[i] <- max(haljC.85.f2[i,])
haljC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljC.85.f2.lo[i] <- min(haljC.85.f2[i,])

# # SRES A1B
# haljC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(haljC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(haljC.a1b.f2) <- 1991:2039
# haljC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"P.halibut_Juv"]
# haljC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"P.halibut_Juv"]
# haljC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"P.halibut_Juv"]
# # head(haljC.a1b.f2)
# haljC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljC.a1b.f2.up[i] <- max(haljC.a1b.f2[i,])
# haljC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljC.a1b.f2.lo[i] <- min(haljC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# P.halibut_Juv F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
haljB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(haljB.45.f3.80) <- c("gfd","mir","ces")
row.names(haljB.45.f3.80) <- 1991:2080
haljB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"P.halibut_Juv"]
haljB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"P.halibut_Juv"]
haljB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"P.halibut_Juv"]
# head(haljB.45.f3.80)
haljB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljB.45.f3.80.up[i] <- max(haljB.45.f3.80[i,])
haljB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljB.45.f3.80.lo[i] <- min(haljB.45.f3.80[i,])
# Everything from 2081-2099
haljB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(haljB.45.f3.99) <- c("gfd","mir")
row.names(haljB.45.f3.99) <- 2081:2099
haljB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"P.halibut_Juv"]
haljB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"P.halibut_Juv"]
# head(haljB.45.f3.99)
haljB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljB.45.f3.99.up[i] <- max(haljB.45.f3.99[i,])
haljB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljB.45.f3.99.lo[i] <- min(haljB.45.f3.99[i,])
# now append these two time periods
haljB.45.f3.up <- c(haljB.45.f3.80.up,haljB.45.f3.99.up)
haljB.45.f3.lo <- c(haljB.45.f3.80.lo,haljB.45.f3.99.lo)

# RCP 8.5
haljB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(haljB.85.f3) <- c("gfd","mir","ces")
row.names(haljB.85.f3) <- 1991:2099
haljB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"P.halibut_Juv"]
haljB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"P.halibut_Juv"]
haljB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"P.halibut_Juv"]
# head(haljB.85.f3)
haljB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljB.85.f3.up[i] <- max(haljB.85.f3[i,])
haljB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljB.85.f3.lo[i] <- min(haljB.85.f3[i,])

# # SRES A1B
# haljB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(haljB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(haljB.a1b.f3) <- 1991:2039
# haljB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"P.halibut_Juv"]
# haljB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"P.halibut_Juv"]
# haljB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"P.halibut_Juv"]
# # head(haljB.a1b.f3)
# haljB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljB.a1b.f3.up[i] <- max(haljB.a1b.f3[i,])
# haljB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljB.a1b.f3.lo[i] <- min(haljB.a1b.f3[i,])

# P.halibut_Juv Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
haljC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(haljC.45.f3.80) <- c("gfd","mir","ces")
row.names(haljC.45.f3.80) <- 1991:2080
haljC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"P.halibut_Juv"]
haljC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"P.halibut_Juv"]
haljC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"P.halibut_Juv"]
# head(haljC.45.f3.80)
haljC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljC.45.f3.80.up[i] <- max(haljC.45.f3.80[i,])
haljC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljC.45.f3.80.lo[i] <- min(haljC.45.f3.80[i,])
# Everything from 2081-2099
haljC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(haljC.45.f3.99) <- c("gfd","mir")
row.names(haljC.45.f3.99) <- 2081:2099
haljC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"P.halibut_Juv"]
haljC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"P.halibut_Juv"]
# head(haljC.45.f3.99)
haljC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljC.45.f3.99.up[i] <- max(haljC.45.f3.99[i,])
haljC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljC.45.f3.99.lo[i] <- min(haljC.45.f3.99[i,])
# now append these two time periods
haljC.45.f3.up <- c(haljC.45.f3.80.up,haljC.45.f3.99.up)
haljC.45.f3.lo <- c(haljC.45.f3.80.lo,haljC.45.f3.99.lo)

# RCP 8.5
haljC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(haljC.85.f3) <- c("gfd","mir","ces")
row.names(haljC.85.f3) <- 1991:2099
haljC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"P.halibut_Juv"]
haljC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"P.halibut_Juv"]
haljC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"P.halibut_Juv"]
# head(haljC.85.f3)
haljC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljC.85.f3.up[i] <- max(haljC.85.f3[i,])
haljC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljC.85.f3.lo[i] <- min(haljC.85.f3[i,])

# # SRES A1B
# haljC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(haljC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(haljC.a1b.f3) <- 1991:2039
# haljC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"P.halibut_Juv"]
# haljC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"P.halibut_Juv"]
# haljC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"P.halibut_Juv"]
# # head(haljC.a1b.f3)
# haljC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljC.a1b.f3.up[i] <- max(haljC.a1b.f3[i,])
# haljC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljC.a1b.f3.lo[i] <- min(haljC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# P.halibut_Juv F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
haljB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(haljB.45.f4.80) <- c("gfd","mir","ces")
row.names(haljB.45.f4.80) <- 1991:2080
haljB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"P.halibut_Juv"]
haljB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"P.halibut_Juv"]
haljB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"P.halibut_Juv"]
# head(haljB.45.f4.80)
haljB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljB.45.f4.80.up[i] <- max(haljB.45.f4.80[i,])
haljB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljB.45.f4.80.lo[i] <- min(haljB.45.f4.80[i,])
# Everything from 2081-2099
haljB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(haljB.45.f4.99) <- c("gfd","mir")
row.names(haljB.45.f4.99) <- 2081:2099
haljB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"P.halibut_Juv"]
haljB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"P.halibut_Juv"]
# head(haljB.45.f4.99)
haljB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljB.45.f4.99.up[i] <- max(haljB.45.f4.99[i,])
haljB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljB.45.f4.99.lo[i] <- min(haljB.45.f4.99[i,])
# now append these two time periods
haljB.45.f4.up <- c(haljB.45.f4.80.up,haljB.45.f4.99.up)
haljB.45.f4.lo <- c(haljB.45.f4.80.lo,haljB.45.f4.99.lo)

# RCP 8.5
haljB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(haljB.85.f4) <- c("gfd","mir","ces")
row.names(haljB.85.f4) <- 1991:2099
haljB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"P.halibut_Juv"]
haljB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"P.halibut_Juv"]
haljB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"P.halibut_Juv"]
# head(haljB.85.f4)
haljB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljB.85.f4.up[i] <- max(haljB.85.f4[i,])
haljB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljB.85.f4.lo[i] <- min(haljB.85.f4[i,])

# # SRES A1B
# haljB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(haljB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(haljB.a1b.f4) <- 1991:2039
# haljB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"P.halibut_Juv"]
# haljB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"P.halibut_Juv"]
# haljB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"P.halibut_Juv"]
# # head(haljB.a1b.f4)
# haljB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljB.a1b.f4.up[i] <- max(haljB.a1b.f4[i,])
# haljB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljB.a1b.f4.lo[i] <- min(haljB.a1b.f4[i,])

# P.halibut_Juv Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
haljC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(haljC.45.f4.80) <- c("gfd","mir","ces")
row.names(haljC.45.f4.80) <- 1991:2080
haljC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"P.halibut_Juv"]
haljC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"P.halibut_Juv"]
haljC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"P.halibut_Juv"]
# head(haljC.45.f4.80)
haljC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljC.45.f4.80.up[i] <- max(haljC.45.f4.80[i,])
haljC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) haljC.45.f4.80.lo[i] <- min(haljC.45.f4.80[i,])
# Everything from 2081-2099
haljC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(haljC.45.f4.99) <- c("gfd","mir")
row.names(haljC.45.f4.99) <- 2081:2099
haljC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"P.halibut_Juv"]
haljC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"P.halibut_Juv"]
# head(haljC.45.f4.99)
haljC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljC.45.f4.99.up[i] <- max(haljC.45.f4.99[i,])
haljC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) haljC.45.f4.99.lo[i] <- min(haljC.45.f4.99[i,])
# now append these two time periods
haljC.45.f4.up <- c(haljC.45.f4.80.up,haljC.45.f4.99.up)
haljC.45.f4.lo <- c(haljC.45.f4.80.lo,haljC.45.f4.99.lo)

# RCP 8.5
haljC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(haljC.85.f4) <- c("gfd","mir","ces")
row.names(haljC.85.f4) <- 1991:2099
haljC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"P.halibut_Juv"]
haljC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"P.halibut_Juv"]
haljC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"P.halibut_Juv"]
# head(haljC.85.f4)
haljC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljC.85.f4.up[i] <- max(haljC.85.f4[i,])
haljC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) haljC.85.f4.lo[i] <- min(haljC.85.f4[i,])

# # SRES A1B
# haljC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(haljC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(haljC.a1b.f4) <- 1991:2039
# haljC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"P.halibut_Juv"]
# haljC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"P.halibut_Juv"]
# haljC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"P.halibut_Juv"]
# # head(haljC.a1b.f4)
# haljC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljC.a1b.f4.up[i] <- max(haljC.a1b.f4[i,])
# haljC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) haljC.a1b.f4.lo[i] <- min(haljC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Shallow.demersals biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
shdmB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shdmB.45.f1.80) <- c("gfd","mir","ces")
row.names(shdmB.45.f1.80) <- 1991:2080
shdmB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Shallow.demersals"]
shdmB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Shallow.demersals"]
shdmB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Shallow.demersals"]
# head(shdmB.45.f1.80)
shdmB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmB.45.f1.80.up[i] <- max(shdmB.45.f1.80[i,])
shdmB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmB.45.f1.80.lo[i] <- min(shdmB.45.f1.80[i,])
# Everything from 2081-2099
shdmB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shdmB.45.f1.99) <- c("gfd","mir")
row.names(shdmB.45.f1.99) <- 2081:2099
shdmB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Shallow.demersals"]
shdmB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Shallow.demersals"]
# head(shdmB.45.f1.99)
shdmB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmB.45.f1.99.up[i] <- max(shdmB.45.f1.99[i,])
shdmB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmB.45.f1.99.lo[i] <- min(shdmB.45.f1.99[i,])
# now append these two time periods
shdmB.45.f1.up <- c(shdmB.45.f1.80.up,shdmB.45.f1.99.up)
shdmB.45.f1.lo <- c(shdmB.45.f1.80.lo,shdmB.45.f1.99.lo)

# RCP 8.5
shdmB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shdmB.85.f1) <- c("gfd","mir","ces")
row.names(shdmB.85.f1) <- 1991:2099
shdmB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Shallow.demersals"]
shdmB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Shallow.demersals"]
shdmB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Shallow.demersals"]
# head(shdmB.85.f1)
shdmB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmB.85.f1.up[i] <- max(shdmB.85.f1[i,])
shdmB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmB.85.f1.lo[i] <- min(shdmB.85.f1[i,])

# # SRES A1B
# shdmB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shdmB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(shdmB.a1b.f1) <- 1991:2039
# shdmB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Shallow.demersals"]
# shdmB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Shallow.demersals"]
# shdmB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Shallow.demersals"]
# # head(shdmB.a1b.f1)
# shdmB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmB.a1b.f1.up[i] <- max(shdmB.a1b.f1[i,])
# shdmB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmB.a1b.f1.lo[i] <- min(shdmB.a1b.f1[i,])

# Shallow.demersals Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
shdmC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shdmC.45.f1.80) <- c("gfd","mir","ces")
row.names(shdmC.45.f1.80) <- 1991:2080
shdmC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Shallow.demersals"]
shdmC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Shallow.demersals"]
shdmC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Shallow.demersals"]
# head(shdmC.45.f1.80)
shdmC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmC.45.f1.80.up[i] <- max(shdmC.45.f1.80[i,])
shdmC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmC.45.f1.80.lo[i] <- min(shdmC.45.f1.80[i,])
# Everything from 2081-2099
shdmC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shdmC.45.f1.99) <- c("gfd","mir")
row.names(shdmC.45.f1.99) <- 2081:2099
shdmC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Shallow.demersals"]
shdmC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Shallow.demersals"]
# head(shdmC.45.f1.99)
shdmC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmC.45.f1.99.up[i] <- max(shdmC.45.f1.99[i,])
shdmC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmC.45.f1.99.lo[i] <- min(shdmC.45.f1.99[i,])
# now append these two time periods
shdmC.45.f1.up <- c(shdmC.45.f1.80.up,shdmC.45.f1.99.up)
shdmC.45.f1.lo <- c(shdmC.45.f1.80.lo,shdmC.45.f1.99.lo)

# RCP 8.5
shdmC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shdmC.85.f1) <- c("gfd","mir","ces")
row.names(shdmC.85.f1) <- 1991:2099
shdmC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Shallow.demersals"]
shdmC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Shallow.demersals"]
shdmC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Shallow.demersals"]
# head(shdmC.85.f1)
shdmC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmC.85.f1.up[i] <- max(shdmC.85.f1[i,])
shdmC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmC.85.f1.lo[i] <- min(shdmC.85.f1[i,])

# # SRES A1B
# shdmC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shdmC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(shdmC.a1b.f1) <- 1991:2039
# shdmC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Shallow.demersals"]
# shdmC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Shallow.demersals"]
# shdmC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Shallow.demersals"]
# # head(shdmC.a1b.f1)
# shdmC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmC.a1b.f1.up[i] <- max(shdmC.a1b.f1[i,])
# shdmC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmC.a1b.f1.lo[i] <- min(shdmC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Shallow.demersals F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
shdmB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shdmB.45.f2.80) <- c("gfd","mir","ces")
row.names(shdmB.45.f2.80) <- 1991:2080
shdmB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Shallow.demersals"]
shdmB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Shallow.demersals"]
shdmB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Shallow.demersals"]
# head(shdmB.45.f2.80)
shdmB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmB.45.f2.80.up[i] <- max(shdmB.45.f2.80[i,])
shdmB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmB.45.f2.80.lo[i] <- min(shdmB.45.f2.80[i,])
# Everything from 2081-2099
shdmB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shdmB.45.f2.99) <- c("gfd","mir")
row.names(shdmB.45.f2.99) <- 2081:2099
shdmB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Shallow.demersals"]
shdmB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Shallow.demersals"]
# head(shdmB.45.f2.99)
shdmB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmB.45.f2.99.up[i] <- max(shdmB.45.f2.99[i,])
shdmB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmB.45.f2.99.lo[i] <- min(shdmB.45.f2.99[i,])
# now append these two time periods
shdmB.45.f2.up <- c(shdmB.45.f2.80.up,shdmB.45.f2.99.up)
shdmB.45.f2.lo <- c(shdmB.45.f2.80.lo,shdmB.45.f2.99.lo)

# RCP 8.5
shdmB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shdmB.85.f2) <- c("gfd","mir","ces")
row.names(shdmB.85.f2) <- 1991:2099
shdmB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Shallow.demersals"]
shdmB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Shallow.demersals"]
shdmB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Shallow.demersals"]
# head(shdmB.85.f2)
shdmB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmB.85.f2.up[i] <- max(shdmB.85.f2[i,])
shdmB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmB.85.f2.lo[i] <- min(shdmB.85.f2[i,])

# # SRES A1B
# shdmB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shdmB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(shdmB.a1b.f2) <- 1991:2039
# shdmB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Shallow.demersals"]
# shdmB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Shallow.demersals"]
# shdmB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Shallow.demersals"]
# # head(shdmB.a1b.f2)
# shdmB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmB.a1b.f2.up[i] <- max(shdmB.a1b.f2[i,])
# shdmB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmB.a1b.f2.lo[i] <- min(shdmB.a1b.f2[i,])

# Shallow.demersals Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
shdmC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shdmC.45.f2.80) <- c("gfd","mir","ces")
row.names(shdmC.45.f2.80) <- 1991:2080
shdmC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Shallow.demersals"]
shdmC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Shallow.demersals"]
shdmC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Shallow.demersals"]
# head(shdmC.45.f2.80)
shdmC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmC.45.f2.80.up[i] <- max(shdmC.45.f2.80[i,])
shdmC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmC.45.f2.80.lo[i] <- min(shdmC.45.f2.80[i,])
# Everything from 2081-2099
shdmC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shdmC.45.f2.99) <- c("gfd","mir")
row.names(shdmC.45.f2.99) <- 2081:2099
shdmC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Shallow.demersals"]
shdmC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Shallow.demersals"]
# head(shdmC.45.f2.99)
shdmC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmC.45.f2.99.up[i] <- max(shdmC.45.f2.99[i,])
shdmC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmC.45.f2.99.lo[i] <- min(shdmC.45.f2.99[i,])
# now append these two time periods
shdmC.45.f2.up <- c(shdmC.45.f2.80.up,shdmC.45.f2.99.up)
shdmC.45.f2.lo <- c(shdmC.45.f2.80.lo,shdmC.45.f2.99.lo)

# RCP 8.5
shdmC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shdmC.85.f2) <- c("gfd","mir","ces")
row.names(shdmC.85.f2) <- 1991:2099
shdmC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Shallow.demersals"]
shdmC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Shallow.demersals"]
shdmC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Shallow.demersals"]
# head(shdmC.85.f2)
shdmC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmC.85.f2.up[i] <- max(shdmC.85.f2[i,])
shdmC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmC.85.f2.lo[i] <- min(shdmC.85.f2[i,])

# # SRES A1B
# shdmC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shdmC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(shdmC.a1b.f2) <- 1991:2039
# shdmC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Shallow.demersals"]
# shdmC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Shallow.demersals"]
# shdmC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Shallow.demersals"]
# # head(shdmC.a1b.f2)
# shdmC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmC.a1b.f2.up[i] <- max(shdmC.a1b.f2[i,])
# shdmC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmC.a1b.f2.lo[i] <- min(shdmC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Shallow.demersals F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
shdmB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shdmB.45.f3.80) <- c("gfd","mir","ces")
row.names(shdmB.45.f3.80) <- 1991:2080
shdmB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Shallow.demersals"]
shdmB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Shallow.demersals"]
shdmB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Shallow.demersals"]
# head(shdmB.45.f3.80)
shdmB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmB.45.f3.80.up[i] <- max(shdmB.45.f3.80[i,])
shdmB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmB.45.f3.80.lo[i] <- min(shdmB.45.f3.80[i,])
# Everything from 2081-2099
shdmB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shdmB.45.f3.99) <- c("gfd","mir")
row.names(shdmB.45.f3.99) <- 2081:2099
shdmB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Shallow.demersals"]
shdmB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Shallow.demersals"]
# head(shdmB.45.f3.99)
shdmB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmB.45.f3.99.up[i] <- max(shdmB.45.f3.99[i,])
shdmB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmB.45.f3.99.lo[i] <- min(shdmB.45.f3.99[i,])
# now append these two time periods
shdmB.45.f3.up <- c(shdmB.45.f3.80.up,shdmB.45.f3.99.up)
shdmB.45.f3.lo <- c(shdmB.45.f3.80.lo,shdmB.45.f3.99.lo)

# RCP 8.5
shdmB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shdmB.85.f3) <- c("gfd","mir","ces")
row.names(shdmB.85.f3) <- 1991:2099
shdmB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Shallow.demersals"]
shdmB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Shallow.demersals"]
shdmB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Shallow.demersals"]
# head(shdmB.85.f3)
shdmB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmB.85.f3.up[i] <- max(shdmB.85.f3[i,])
shdmB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmB.85.f3.lo[i] <- min(shdmB.85.f3[i,])

# # SRES A1B
# shdmB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shdmB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(shdmB.a1b.f3) <- 1991:2039
# shdmB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Shallow.demersals"]
# shdmB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Shallow.demersals"]
# shdmB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Shallow.demersals"]
# # head(shdmB.a1b.f3)
# shdmB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmB.a1b.f3.up[i] <- max(shdmB.a1b.f3[i,])
# shdmB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmB.a1b.f3.lo[i] <- min(shdmB.a1b.f3[i,])

# Shallow.demersals Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
shdmC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shdmC.45.f3.80) <- c("gfd","mir","ces")
row.names(shdmC.45.f3.80) <- 1991:2080
shdmC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Shallow.demersals"]
shdmC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Shallow.demersals"]
shdmC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Shallow.demersals"]
# head(shdmC.45.f3.80)
shdmC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmC.45.f3.80.up[i] <- max(shdmC.45.f3.80[i,])
shdmC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmC.45.f3.80.lo[i] <- min(shdmC.45.f3.80[i,])
# Everything from 2081-2099
shdmC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shdmC.45.f3.99) <- c("gfd","mir")
row.names(shdmC.45.f3.99) <- 2081:2099
shdmC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Shallow.demersals"]
shdmC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Shallow.demersals"]
# head(shdmC.45.f3.99)
shdmC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmC.45.f3.99.up[i] <- max(shdmC.45.f3.99[i,])
shdmC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmC.45.f3.99.lo[i] <- min(shdmC.45.f3.99[i,])
# now append these two time periods
shdmC.45.f3.up <- c(shdmC.45.f3.80.up,shdmC.45.f3.99.up)
shdmC.45.f3.lo <- c(shdmC.45.f3.80.lo,shdmC.45.f3.99.lo)

# RCP 8.5
shdmC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shdmC.85.f3) <- c("gfd","mir","ces")
row.names(shdmC.85.f3) <- 1991:2099
shdmC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Shallow.demersals"]
shdmC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Shallow.demersals"]
shdmC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Shallow.demersals"]
# head(shdmC.85.f3)
shdmC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmC.85.f3.up[i] <- max(shdmC.85.f3[i,])
shdmC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmC.85.f3.lo[i] <- min(shdmC.85.f3[i,])

# # SRES A1B
# shdmC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shdmC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(shdmC.a1b.f3) <- 1991:2039
# shdmC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Shallow.demersals"]
# shdmC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Shallow.demersals"]
# shdmC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Shallow.demersals"]
# # head(shdmC.a1b.f3)
# shdmC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmC.a1b.f3.up[i] <- max(shdmC.a1b.f3[i,])
# shdmC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmC.a1b.f3.lo[i] <- min(shdmC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Shallow.demersals F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
shdmB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shdmB.45.f4.80) <- c("gfd","mir","ces")
row.names(shdmB.45.f4.80) <- 1991:2080
shdmB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Shallow.demersals"]
shdmB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Shallow.demersals"]
shdmB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Shallow.demersals"]
# head(shdmB.45.f4.80)
shdmB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmB.45.f4.80.up[i] <- max(shdmB.45.f4.80[i,])
shdmB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmB.45.f4.80.lo[i] <- min(shdmB.45.f4.80[i,])
# Everything from 2081-2099
shdmB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shdmB.45.f4.99) <- c("gfd","mir")
row.names(shdmB.45.f4.99) <- 2081:2099
shdmB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Shallow.demersals"]
shdmB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Shallow.demersals"]
# head(shdmB.45.f4.99)
shdmB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmB.45.f4.99.up[i] <- max(shdmB.45.f4.99[i,])
shdmB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmB.45.f4.99.lo[i] <- min(shdmB.45.f4.99[i,])
# now append these two time periods
shdmB.45.f4.up <- c(shdmB.45.f4.80.up,shdmB.45.f4.99.up)
shdmB.45.f4.lo <- c(shdmB.45.f4.80.lo,shdmB.45.f4.99.lo)

# RCP 8.5
shdmB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shdmB.85.f4) <- c("gfd","mir","ces")
row.names(shdmB.85.f4) <- 1991:2099
shdmB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Shallow.demersals"]
shdmB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Shallow.demersals"]
shdmB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Shallow.demersals"]
# head(shdmB.85.f4)
shdmB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmB.85.f4.up[i] <- max(shdmB.85.f4[i,])
shdmB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmB.85.f4.lo[i] <- min(shdmB.85.f4[i,])

# # SRES A1B
# shdmB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shdmB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(shdmB.a1b.f4) <- 1991:2039
# shdmB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Shallow.demersals"]
# shdmB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Shallow.demersals"]
# shdmB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Shallow.demersals"]
# # head(shdmB.a1b.f4)
# shdmB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmB.a1b.f4.up[i] <- max(shdmB.a1b.f4[i,])
# shdmB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmB.a1b.f4.lo[i] <- min(shdmB.a1b.f4[i,])

# Shallow.demersals Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
shdmC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(shdmC.45.f4.80) <- c("gfd","mir","ces")
row.names(shdmC.45.f4.80) <- 1991:2080
shdmC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Shallow.demersals"]
shdmC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Shallow.demersals"]
shdmC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Shallow.demersals"]
# head(shdmC.45.f4.80)
shdmC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmC.45.f4.80.up[i] <- max(shdmC.45.f4.80[i,])
shdmC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) shdmC.45.f4.80.lo[i] <- min(shdmC.45.f4.80[i,])
# Everything from 2081-2099
shdmC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(shdmC.45.f4.99) <- c("gfd","mir")
row.names(shdmC.45.f4.99) <- 2081:2099
shdmC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Shallow.demersals"]
shdmC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Shallow.demersals"]
# head(shdmC.45.f4.99)
shdmC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmC.45.f4.99.up[i] <- max(shdmC.45.f4.99[i,])
shdmC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) shdmC.45.f4.99.lo[i] <- min(shdmC.45.f4.99[i,])
# now append these two time periods
shdmC.45.f4.up <- c(shdmC.45.f4.80.up,shdmC.45.f4.99.up)
shdmC.45.f4.lo <- c(shdmC.45.f4.80.lo,shdmC.45.f4.99.lo)

# RCP 8.5
shdmC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(shdmC.85.f4) <- c("gfd","mir","ces")
row.names(shdmC.85.f4) <- 1991:2099
shdmC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Shallow.demersals"]
shdmC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Shallow.demersals"]
shdmC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Shallow.demersals"]
# head(shdmC.85.f4)
shdmC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmC.85.f4.up[i] <- max(shdmC.85.f4[i,])
shdmC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) shdmC.85.f4.lo[i] <- min(shdmC.85.f4[i,])

# # SRES A1B
# shdmC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(shdmC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(shdmC.a1b.f4) <- 1991:2039
# shdmC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Shallow.demersals"]
# shdmC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Shallow.demersals"]
# shdmC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Shallow.demersals"]
# # head(shdmC.a1b.f4)
# shdmC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmC.a1b.f4.up[i] <- max(shdmC.a1b.f4[i,])
# shdmC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) shdmC.a1b.f4.lo[i] <- min(shdmC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Shortraker.rock biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
srkrB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(srkrB.45.f1.80) <- c("gfd","mir","ces")
row.names(srkrB.45.f1.80) <- 1991:2080
srkrB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Shortraker.rock"]
srkrB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Shortraker.rock"]
srkrB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Shortraker.rock"]
# head(srkrB.45.f1.80)
srkrB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrB.45.f1.80.up[i] <- max(srkrB.45.f1.80[i,])
srkrB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrB.45.f1.80.lo[i] <- min(srkrB.45.f1.80[i,])
# Everything from 2081-2099
srkrB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(srkrB.45.f1.99) <- c("gfd","mir")
row.names(srkrB.45.f1.99) <- 2081:2099
srkrB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Shortraker.rock"]
srkrB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Shortraker.rock"]
# head(srkrB.45.f1.99)
srkrB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrB.45.f1.99.up[i] <- max(srkrB.45.f1.99[i,])
srkrB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrB.45.f1.99.lo[i] <- min(srkrB.45.f1.99[i,])
# now append these two time periods
srkrB.45.f1.up <- c(srkrB.45.f1.80.up,srkrB.45.f1.99.up)
srkrB.45.f1.lo <- c(srkrB.45.f1.80.lo,srkrB.45.f1.99.lo)

# RCP 8.5
srkrB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(srkrB.85.f1) <- c("gfd","mir","ces")
row.names(srkrB.85.f1) <- 1991:2099
srkrB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Shortraker.rock"]
srkrB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Shortraker.rock"]
srkrB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Shortraker.rock"]
# head(srkrB.85.f1)
srkrB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrB.85.f1.up[i] <- max(srkrB.85.f1[i,])
srkrB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrB.85.f1.lo[i] <- min(srkrB.85.f1[i,])

# # SRES A1B
# srkrB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(srkrB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(srkrB.a1b.f1) <- 1991:2039
# srkrB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Shortraker.rock"]
# srkrB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Shortraker.rock"]
# srkrB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Shortraker.rock"]
# # head(srkrB.a1b.f1)
# srkrB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrB.a1b.f1.up[i] <- max(srkrB.a1b.f1[i,])
# srkrB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrB.a1b.f1.lo[i] <- min(srkrB.a1b.f1[i,])

# Shortraker.rock Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
srkrC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(srkrC.45.f1.80) <- c("gfd","mir","ces")
row.names(srkrC.45.f1.80) <- 1991:2080
srkrC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Shortraker.rock"]
srkrC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Shortraker.rock"]
srkrC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Shortraker.rock"]
# head(srkrC.45.f1.80)
srkrC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrC.45.f1.80.up[i] <- max(srkrC.45.f1.80[i,])
srkrC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrC.45.f1.80.lo[i] <- min(srkrC.45.f1.80[i,])
# Everything from 2081-2099
srkrC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(srkrC.45.f1.99) <- c("gfd","mir")
row.names(srkrC.45.f1.99) <- 2081:2099
srkrC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Shortraker.rock"]
srkrC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Shortraker.rock"]
# head(srkrC.45.f1.99)
srkrC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrC.45.f1.99.up[i] <- max(srkrC.45.f1.99[i,])
srkrC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrC.45.f1.99.lo[i] <- min(srkrC.45.f1.99[i,])
# now append these two time periods
srkrC.45.f1.up <- c(srkrC.45.f1.80.up,srkrC.45.f1.99.up)
srkrC.45.f1.lo <- c(srkrC.45.f1.80.lo,srkrC.45.f1.99.lo)

# RCP 8.5
srkrC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(srkrC.85.f1) <- c("gfd","mir","ces")
row.names(srkrC.85.f1) <- 1991:2099
srkrC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Shortraker.rock"]
srkrC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Shortraker.rock"]
srkrC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Shortraker.rock"]
# head(srkrC.85.f1)
srkrC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrC.85.f1.up[i] <- max(srkrC.85.f1[i,])
srkrC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrC.85.f1.lo[i] <- min(srkrC.85.f1[i,])

# # SRES A1B
# srkrC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(srkrC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(srkrC.a1b.f1) <- 1991:2039
# srkrC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Shortraker.rock"]
# srkrC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Shortraker.rock"]
# srkrC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Shortraker.rock"]
# # head(srkrC.a1b.f1)
# srkrC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrC.a1b.f1.up[i] <- max(srkrC.a1b.f1[i,])
# srkrC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrC.a1b.f1.lo[i] <- min(srkrC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Shortraker.rock F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
srkrB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(srkrB.45.f2.80) <- c("gfd","mir","ces")
row.names(srkrB.45.f2.80) <- 1991:2080
srkrB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Shortraker.rock"]
srkrB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Shortraker.rock"]
srkrB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Shortraker.rock"]
# head(srkrB.45.f2.80)
srkrB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrB.45.f2.80.up[i] <- max(srkrB.45.f2.80[i,])
srkrB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrB.45.f2.80.lo[i] <- min(srkrB.45.f2.80[i,])
# Everything from 2081-2099
srkrB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(srkrB.45.f2.99) <- c("gfd","mir")
row.names(srkrB.45.f2.99) <- 2081:2099
srkrB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Shortraker.rock"]
srkrB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Shortraker.rock"]
# head(srkrB.45.f2.99)
srkrB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrB.45.f2.99.up[i] <- max(srkrB.45.f2.99[i,])
srkrB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrB.45.f2.99.lo[i] <- min(srkrB.45.f2.99[i,])
# now append these two time periods
srkrB.45.f2.up <- c(srkrB.45.f2.80.up,srkrB.45.f2.99.up)
srkrB.45.f2.lo <- c(srkrB.45.f2.80.lo,srkrB.45.f2.99.lo)

# RCP 8.5
srkrB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(srkrB.85.f2) <- c("gfd","mir","ces")
row.names(srkrB.85.f2) <- 1991:2099
srkrB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Shortraker.rock"]
srkrB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Shortraker.rock"]
srkrB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Shortraker.rock"]
# head(srkrB.85.f2)
srkrB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrB.85.f2.up[i] <- max(srkrB.85.f2[i,])
srkrB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrB.85.f2.lo[i] <- min(srkrB.85.f2[i,])

# # SRES A1B
# srkrB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(srkrB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(srkrB.a1b.f2) <- 1991:2039
# srkrB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Shortraker.rock"]
# srkrB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Shortraker.rock"]
# srkrB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Shortraker.rock"]
# # head(srkrB.a1b.f2)
# srkrB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrB.a1b.f2.up[i] <- max(srkrB.a1b.f2[i,])
# srkrB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrB.a1b.f2.lo[i] <- min(srkrB.a1b.f2[i,])

# Shortraker.rock Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
srkrC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(srkrC.45.f2.80) <- c("gfd","mir","ces")
row.names(srkrC.45.f2.80) <- 1991:2080
srkrC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Shortraker.rock"]
srkrC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Shortraker.rock"]
srkrC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Shortraker.rock"]
# head(srkrC.45.f2.80)
srkrC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrC.45.f2.80.up[i] <- max(srkrC.45.f2.80[i,])
srkrC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrC.45.f2.80.lo[i] <- min(srkrC.45.f2.80[i,])
# Everything from 2081-2099
srkrC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(srkrC.45.f2.99) <- c("gfd","mir")
row.names(srkrC.45.f2.99) <- 2081:2099
srkrC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Shortraker.rock"]
srkrC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Shortraker.rock"]
# head(srkrC.45.f2.99)
srkrC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrC.45.f2.99.up[i] <- max(srkrC.45.f2.99[i,])
srkrC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrC.45.f2.99.lo[i] <- min(srkrC.45.f2.99[i,])
# now append these two time periods
srkrC.45.f2.up <- c(srkrC.45.f2.80.up,srkrC.45.f2.99.up)
srkrC.45.f2.lo <- c(srkrC.45.f2.80.lo,srkrC.45.f2.99.lo)

# RCP 8.5
srkrC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(srkrC.85.f2) <- c("gfd","mir","ces")
row.names(srkrC.85.f2) <- 1991:2099
srkrC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Shortraker.rock"]
srkrC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Shortraker.rock"]
srkrC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Shortraker.rock"]
# head(srkrC.85.f2)
srkrC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrC.85.f2.up[i] <- max(srkrC.85.f2[i,])
srkrC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrC.85.f2.lo[i] <- min(srkrC.85.f2[i,])

# # SRES A1B
# srkrC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(srkrC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(srkrC.a1b.f2) <- 1991:2039
# srkrC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Shortraker.rock"]
# srkrC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Shortraker.rock"]
# srkrC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Shortraker.rock"]
# # head(srkrC.a1b.f2)
# srkrC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrC.a1b.f2.up[i] <- max(srkrC.a1b.f2[i,])
# srkrC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrC.a1b.f2.lo[i] <- min(srkrC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Shortraker.rock F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
srkrB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(srkrB.45.f3.80) <- c("gfd","mir","ces")
row.names(srkrB.45.f3.80) <- 1991:2080
srkrB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Shortraker.rock"]
srkrB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Shortraker.rock"]
srkrB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Shortraker.rock"]
# head(srkrB.45.f3.80)
srkrB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrB.45.f3.80.up[i] <- max(srkrB.45.f3.80[i,])
srkrB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrB.45.f3.80.lo[i] <- min(srkrB.45.f3.80[i,])
# Everything from 2081-2099
srkrB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(srkrB.45.f3.99) <- c("gfd","mir")
row.names(srkrB.45.f3.99) <- 2081:2099
srkrB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Shortraker.rock"]
srkrB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Shortraker.rock"]
# head(srkrB.45.f3.99)
srkrB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrB.45.f3.99.up[i] <- max(srkrB.45.f3.99[i,])
srkrB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrB.45.f3.99.lo[i] <- min(srkrB.45.f3.99[i,])
# now append these two time periods
srkrB.45.f3.up <- c(srkrB.45.f3.80.up,srkrB.45.f3.99.up)
srkrB.45.f3.lo <- c(srkrB.45.f3.80.lo,srkrB.45.f3.99.lo)

# RCP 8.5
srkrB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(srkrB.85.f3) <- c("gfd","mir","ces")
row.names(srkrB.85.f3) <- 1991:2099
srkrB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Shortraker.rock"]
srkrB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Shortraker.rock"]
srkrB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Shortraker.rock"]
# head(srkrB.85.f3)
srkrB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrB.85.f3.up[i] <- max(srkrB.85.f3[i,])
srkrB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrB.85.f3.lo[i] <- min(srkrB.85.f3[i,])

# # SRES A1B
# srkrB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(srkrB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(srkrB.a1b.f3) <- 1991:2039
# srkrB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Shortraker.rock"]
# srkrB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Shortraker.rock"]
# srkrB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Shortraker.rock"]
# # head(srkrB.a1b.f3)
# srkrB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrB.a1b.f3.up[i] <- max(srkrB.a1b.f3[i,])
# srkrB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrB.a1b.f3.lo[i] <- min(srkrB.a1b.f3[i,])

# Shortraker.rock Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
srkrC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(srkrC.45.f3.80) <- c("gfd","mir","ces")
row.names(srkrC.45.f3.80) <- 1991:2080
srkrC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Shortraker.rock"]
srkrC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Shortraker.rock"]
srkrC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Shortraker.rock"]
# head(srkrC.45.f3.80)
srkrC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrC.45.f3.80.up[i] <- max(srkrC.45.f3.80[i,])
srkrC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrC.45.f3.80.lo[i] <- min(srkrC.45.f3.80[i,])
# Everything from 2081-2099
srkrC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(srkrC.45.f3.99) <- c("gfd","mir")
row.names(srkrC.45.f3.99) <- 2081:2099
srkrC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Shortraker.rock"]
srkrC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Shortraker.rock"]
# head(srkrC.45.f3.99)
srkrC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrC.45.f3.99.up[i] <- max(srkrC.45.f3.99[i,])
srkrC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrC.45.f3.99.lo[i] <- min(srkrC.45.f3.99[i,])
# now append these two time periods
srkrC.45.f3.up <- c(srkrC.45.f3.80.up,srkrC.45.f3.99.up)
srkrC.45.f3.lo <- c(srkrC.45.f3.80.lo,srkrC.45.f3.99.lo)

# RCP 8.5
srkrC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(srkrC.85.f3) <- c("gfd","mir","ces")
row.names(srkrC.85.f3) <- 1991:2099
srkrC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Shortraker.rock"]
srkrC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Shortraker.rock"]
srkrC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Shortraker.rock"]
# head(srkrC.85.f3)
srkrC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrC.85.f3.up[i] <- max(srkrC.85.f3[i,])
srkrC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrC.85.f3.lo[i] <- min(srkrC.85.f3[i,])

# # SRES A1B
# srkrC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(srkrC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(srkrC.a1b.f3) <- 1991:2039
# srkrC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Shortraker.rock"]
# srkrC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Shortraker.rock"]
# srkrC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Shortraker.rock"]
# # head(srkrC.a1b.f3)
# srkrC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrC.a1b.f3.up[i] <- max(srkrC.a1b.f3[i,])
# srkrC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrC.a1b.f3.lo[i] <- min(srkrC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Shortraker.rock F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
srkrB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(srkrB.45.f4.80) <- c("gfd","mir","ces")
row.names(srkrB.45.f4.80) <- 1991:2080
srkrB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Shortraker.rock"]
srkrB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Shortraker.rock"]
srkrB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Shortraker.rock"]
# head(srkrB.45.f4.80)
srkrB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrB.45.f4.80.up[i] <- max(srkrB.45.f4.80[i,])
srkrB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrB.45.f4.80.lo[i] <- min(srkrB.45.f4.80[i,])
# Everything from 2081-2099
srkrB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(srkrB.45.f4.99) <- c("gfd","mir")
row.names(srkrB.45.f4.99) <- 2081:2099
srkrB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Shortraker.rock"]
srkrB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Shortraker.rock"]
# head(srkrB.45.f4.99)
srkrB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrB.45.f4.99.up[i] <- max(srkrB.45.f4.99[i,])
srkrB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrB.45.f4.99.lo[i] <- min(srkrB.45.f4.99[i,])
# now append these two time periods
srkrB.45.f4.up <- c(srkrB.45.f4.80.up,srkrB.45.f4.99.up)
srkrB.45.f4.lo <- c(srkrB.45.f4.80.lo,srkrB.45.f4.99.lo)

# RCP 8.5
srkrB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(srkrB.85.f4) <- c("gfd","mir","ces")
row.names(srkrB.85.f4) <- 1991:2099
srkrB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Shortraker.rock"]
srkrB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Shortraker.rock"]
srkrB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Shortraker.rock"]
# head(srkrB.85.f4)
srkrB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrB.85.f4.up[i] <- max(srkrB.85.f4[i,])
srkrB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrB.85.f4.lo[i] <- min(srkrB.85.f4[i,])

# # SRES A1B
# srkrB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(srkrB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(srkrB.a1b.f4) <- 1991:2039
# srkrB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Shortraker.rock"]
# srkrB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Shortraker.rock"]
# srkrB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Shortraker.rock"]
# # head(srkrB.a1b.f4)
# srkrB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrB.a1b.f4.up[i] <- max(srkrB.a1b.f4[i,])
# srkrB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrB.a1b.f4.lo[i] <- min(srkrB.a1b.f4[i,])

# Shortraker.rock Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
srkrC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(srkrC.45.f4.80) <- c("gfd","mir","ces")
row.names(srkrC.45.f4.80) <- 1991:2080
srkrC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Shortraker.rock"]
srkrC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Shortraker.rock"]
srkrC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Shortraker.rock"]
# head(srkrC.45.f4.80)
srkrC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrC.45.f4.80.up[i] <- max(srkrC.45.f4.80[i,])
srkrC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) srkrC.45.f4.80.lo[i] <- min(srkrC.45.f4.80[i,])
# Everything from 2081-2099
srkrC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(srkrC.45.f4.99) <- c("gfd","mir")
row.names(srkrC.45.f4.99) <- 2081:2099
srkrC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Shortraker.rock"]
srkrC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Shortraker.rock"]
# head(srkrC.45.f4.99)
srkrC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrC.45.f4.99.up[i] <- max(srkrC.45.f4.99[i,])
srkrC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) srkrC.45.f4.99.lo[i] <- min(srkrC.45.f4.99[i,])
# now append these two time periods
srkrC.45.f4.up <- c(srkrC.45.f4.80.up,srkrC.45.f4.99.up)
srkrC.45.f4.lo <- c(srkrC.45.f4.80.lo,srkrC.45.f4.99.lo)

# RCP 8.5
srkrC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(srkrC.85.f4) <- c("gfd","mir","ces")
row.names(srkrC.85.f4) <- 1991:2099
srkrC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Shortraker.rock"]
srkrC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Shortraker.rock"]
srkrC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Shortraker.rock"]
# head(srkrC.85.f4)
srkrC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrC.85.f4.up[i] <- max(srkrC.85.f4[i,])
srkrC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) srkrC.85.f4.lo[i] <- min(srkrC.85.f4[i,])

# # SRES A1B
# srkrC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(srkrC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(srkrC.a1b.f4) <- 1991:2039
# srkrC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Shortraker.rock"]
# srkrC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Shortraker.rock"]
# srkrC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Shortraker.rock"]
# # head(srkrC.a1b.f4)
# srkrC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrC.a1b.f4.up[i] <- max(srkrC.a1b.f4[i,])
# srkrC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) srkrC.a1b.f4.lo[i] <- min(srkrC.a1b.f4[i,])

