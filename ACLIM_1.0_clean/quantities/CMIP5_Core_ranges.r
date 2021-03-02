# Intermediate quantities needed to produce the biomass projections with polygons.
# Need to calculate the min and max values over the projection period to define
# the upper and lower boundaries of the polygons.

# Biomass plots using a shaded range, with the mean
# means from the file CMIP5_means.r

rcp.yrs <- 1991:2099
a1b.yrs <- 1991:2039
ces.yrs <- 1991:2080

# ---------------------------------------------------------------------------- #
# P.cod biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
codB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codB.45.f1.80) <- c("gfd","mir","ces")
row.names(codB.45.f1.80) <- 1991:2080
codB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"P.cod_Adu"]
codB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"P.cod_Adu"]
codB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"P.cod_Adu"]
# head(codB.45.f1.80)
codB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codB.45.f1.80.up[i] <- max(codB.45.f1.80[i,])
codB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codB.45.f1.80.lo[i] <- min(codB.45.f1.80[i,])
# Everything from 2081-2099
codB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codB.45.f1.99) <- c("gfd","mir")
row.names(codB.45.f1.99) <- 2081:2099
codB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"P.cod_Adu"]
codB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"P.cod_Adu"]
# head(codB.45.f1.99)
codB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codB.45.f1.99.up[i] <- max(codB.45.f1.99[i,])
codB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codB.45.f1.99.lo[i] <- min(codB.45.f1.99[i,])
# now append these two time periods
codB.45.f1.up <- c(codB.45.f1.80.up,codB.45.f1.99.up)
codB.45.f1.lo <- c(codB.45.f1.80.lo,codB.45.f1.99.lo)
# # pick a color
# col.codB.45.f1 <- "blue"
# # make the color translucent
# trans.col.codB.45.f1 <- adjustcolor(col.codB.45.f1, alpha.f = 0.3)

# RCP 8.5
codB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codB.85.f1) <- c("gfd","mir","ces")
row.names(codB.85.f1) <- 1991:2099
codB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"P.cod_Adu"]
codB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"P.cod_Adu"]
codB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"P.cod_Adu"]
# head(codB.85.f1)
codB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codB.85.f1.up[i] <- max(codB.85.f1[i,])
codB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codB.85.f1.lo[i] <- min(codB.85.f1[i,])
# # pick a color
# col.codB.85.f1 <- "red"
# # make the color translucent
# trans.col.codB.85.f1 <- adjustcolor(col.codB.85.f1, alpha.f = 0.3)

# SRES A1B
# codB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(codB.a1b.f1) <- 1991:2039
# codB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"P.cod_Adu"]
# # head(codB.a1b.f1)
# codB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codB.a1b.f1.up[i] <- max(codB.a1b.f1[i,])
# codB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codB.a1b.f1.lo[i] <- min(codB.a1b.f1[i,])
# # pick a color
# col.codB.a1b.f1 <- "cyan"
# # make the color translucent
# trans.col.codB.a1b.f1 <- adjustcolor(col.codB.a1b.f1, alpha.f = 0.3)

# P.cod Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
codC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codC.45.f1.80) <- c("gfd","mir","ces")
row.names(codC.45.f1.80) <- 1991:2080
codC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"P.cod_Adu"]
codC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"P.cod_Adu"]
codC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"P.cod_Adu"]
# head(codC.45.f1.80)
codC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codC.45.f1.80.up[i] <- max(codC.45.f1.80[i,])
codC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codC.45.f1.80.lo[i] <- min(codC.45.f1.80[i,])
# Everything from 2081-2099
codC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codC.45.f1.99) <- c("gfd","mir")
row.names(codC.45.f1.99) <- 2081:2099
codC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"P.cod_Adu"]
codC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"P.cod_Adu"]
# head(codC.45.f1.99)
codC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codC.45.f1.99.up[i] <- max(codC.45.f1.99[i,])
codC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codC.45.f1.99.lo[i] <- min(codC.45.f1.99[i,])
# now append these two time periods
codC.45.f1.up <- c(codC.45.f1.80.up,codC.45.f1.99.up)
codC.45.f1.lo <- c(codC.45.f1.80.lo,codC.45.f1.99.lo)

# RCP 8.5
codC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codC.85.f1) <- c("gfd","mir","ces")
row.names(codC.85.f1) <- 1991:2099
codC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"P.cod_Adu"]
codC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"P.cod_Adu"]
codC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"P.cod_Adu"]
# head(codC.85.f1)
codC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codC.85.f1.up[i] <- max(codC.85.f1[i,])
codC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codC.85.f1.lo[i] <- min(codC.85.f1[i,])

# # SRES A1B
# codC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(codC.a1b.f1) <- 1991:2039
# codC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"P.cod_Adu"]
# # head(codC.a1b.f1)
# codC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f1.up[i] <- max(codC.a1b.f1[i,])
# codC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f1.lo[i] <- min(codC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# P.cod F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
codB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codB.45.f2.80) <- c("gfd","mir","ces")
row.names(codB.45.f2.80) <- 1991:2080
codB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"P.cod_Adu"]
codB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"P.cod_Adu"]
codB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"P.cod_Adu"]
# head(codB.45.f2.80)
codB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codB.45.f2.80.up[i] <- max(codB.45.f2.80[i,])
codB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codB.45.f2.80.lo[i] <- min(codB.45.f2.80[i,])
# Everything from 2081-2099
codB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codB.45.f2.99) <- c("gfd","mir")
row.names(codB.45.f2.99) <- 2081:2099
codB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"P.cod_Adu"]
codB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"P.cod_Adu"]
# head(codB.45.f2.99)
codB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codB.45.f2.99.up[i] <- max(codB.45.f2.99[i,])
codB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codB.45.f2.99.lo[i] <- min(codB.45.f2.99[i,])
# now append these two time periods
codB.45.f2.up <- c(codB.45.f2.80.up,codB.45.f2.99.up)
codB.45.f2.lo <- c(codB.45.f2.80.lo,codB.45.f2.99.lo)

# RCP 8.5
codB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codB.85.f2) <- c("gfd","mir","ces")
row.names(codB.85.f2) <- 1991:2099
codB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"P.cod_Adu"]
codB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"P.cod_Adu"]
codB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"P.cod_Adu"]
# head(codB.85.f2)
codB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codB.85.f2.up[i] <- max(codB.85.f2[i,])
codB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codB.85.f2.lo[i] <- min(codB.85.f2[i,])

# # SRES A1B
# codB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(codB.a1b.f2) <- 1991:2039
# codB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"P.cod_Adu"]
# # head(codB.a1b.f2)
# codB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codB.a1b.f2.up[i] <- max(codB.a1b.f2[i,])
# codB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codB.a1b.f2.lo[i] <- min(codB.a1b.f2[i,])

# P.cod Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
codC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codC.45.f2.80) <- c("gfd","mir","ces")
row.names(codC.45.f2.80) <- 1991:2080
codC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"P.cod_Adu"]
codC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"P.cod_Adu"]
codC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"P.cod_Adu"]
# head(codC.45.f2.80)
codC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codC.45.f2.80.up[i] <- max(codC.45.f2.80[i,])
codC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codC.45.f2.80.lo[i] <- min(codC.45.f2.80[i,])
# Everything from 2081-2099
codC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codC.45.f2.99) <- c("gfd","mir")
row.names(codC.45.f2.99) <- 2081:2099
codC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"P.cod_Adu"]
codC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"P.cod_Adu"]
# head(codC.45.f2.99)
codC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codC.45.f2.99.up[i] <- max(codC.45.f2.99[i,])
codC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codC.45.f2.99.lo[i] <- min(codC.45.f2.99[i,])
# now append these two time periods
codC.45.f2.up <- c(codC.45.f2.80.up,codC.45.f2.99.up)
codC.45.f2.lo <- c(codC.45.f2.80.lo,codC.45.f2.99.lo)

# RCP 8.5
codC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codC.85.f2) <- c("gfd","mir","ces")
row.names(codC.85.f2) <- 1991:2099
codC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"P.cod_Adu"]
codC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"P.cod_Adu"]
codC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"P.cod_Adu"]
# head(codC.85.f2)
codC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codC.85.f2.up[i] <- max(codC.85.f2[i,])
codC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codC.85.f2.lo[i] <- min(codC.85.f2[i,])

# # SRES A1B
# codC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(codC.a1b.f2) <- 1991:2039
# codC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"P.cod_Adu"]
# # head(codC.a1b.f2)
# codC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f2.up[i] <- max(codC.a1b.f2[i,])
# codC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f2.lo[i] <- min(codC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# P.cod F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
codB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codB.45.f3.80) <- c("gfd","mir","ces")
row.names(codB.45.f3.80) <- 1991:2080
codB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"P.cod_Adu"]
codB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"P.cod_Adu"]
codB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"P.cod_Adu"]
# head(codB.45.f3.80)
codB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codB.45.f3.80.up[i] <- max(codB.45.f3.80[i,])
codB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codB.45.f3.80.lo[i] <- min(codB.45.f3.80[i,])
# Everything from 2081-2099
codB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codB.45.f3.99) <- c("gfd","mir")
row.names(codB.45.f3.99) <- 2081:2099
codB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"P.cod_Adu"]
codB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"P.cod_Adu"]
# head(codB.45.f3.99)
codB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codB.45.f3.99.up[i] <- max(codB.45.f3.99[i,])
codB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codB.45.f3.99.lo[i] <- min(codB.45.f3.99[i,])
# now append these two time periods
codB.45.f3.up <- c(codB.45.f3.80.up,codB.45.f3.99.up)
codB.45.f3.lo <- c(codB.45.f3.80.lo,codB.45.f3.99.lo)

# RCP 8.5
codB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codB.85.f3) <- c("gfd","mir","ces")
row.names(codB.85.f3) <- 1991:2099
codB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"P.cod_Adu"]
codB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"P.cod_Adu"]
codB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"P.cod_Adu"]
# head(codB.85.f3)
codB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codB.85.f3.up[i] <- max(codB.85.f3[i,])
codB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codB.85.f3.lo[i] <- min(codB.85.f3[i,])

# # SRES A1B
# codB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(codB.a1b.f3) <- 1991:2039
# codB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"P.cod_Adu"]
# # head(codB.a1b.f3)
# codB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codB.a1b.f3.up[i] <- max(codB.a1b.f3[i,])
# codB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codB.a1b.f3.lo[i] <- min(codB.a1b.f3[i,])

# P.cod Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
codC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codC.45.f3.80) <- c("gfd","mir","ces")
row.names(codC.45.f3.80) <- 1991:2080
codC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"P.cod_Adu"]
codC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"P.cod_Adu"]
codC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"P.cod_Adu"]
# head(codC.45.f3.80)
codC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codC.45.f3.80.up[i] <- max(codC.45.f3.80[i,])
codC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codC.45.f3.80.lo[i] <- min(codC.45.f3.80[i,])
# Everything from 2081-2099
codC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codC.45.f3.99) <- c("gfd","mir")
row.names(codC.45.f3.99) <- 2081:2099
codC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"P.cod_Adu"]
codC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"P.cod_Adu"]
# head(codC.45.f3.99)
codC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codC.45.f3.99.up[i] <- max(codC.45.f3.99[i,])
codC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codC.45.f3.99.lo[i] <- min(codC.45.f3.99[i,])
# now append these two time periods
codC.45.f3.up <- c(codC.45.f3.80.up,codC.45.f3.99.up)
codC.45.f3.lo <- c(codC.45.f3.80.lo,codC.45.f3.99.lo)

# RCP 8.5
codC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codC.85.f3) <- c("gfd","mir","ces")
row.names(codC.85.f3) <- 1991:2099
codC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"P.cod_Adu"]
codC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"P.cod_Adu"]
codC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"P.cod_Adu"]
# head(codC.85.f3)
codC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codC.85.f3.up[i] <- max(codC.85.f3[i,])
codC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codC.85.f3.lo[i] <- min(codC.85.f3[i,])

# # SRES A1B
# codC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(codC.a1b.f3) <- 1991:2039
# codC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"P.cod_Adu"]
# # head(codC.a1b.f3)
# codC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f3.up[i] <- max(codC.a1b.f3[i,])
# codC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f3.lo[i] <- min(codC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# P.cod F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
codB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codB.45.f4.80) <- c("gfd","mir","ces")
row.names(codB.45.f4.80) <- 1991:2080
codB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"P.cod_Adu"]
codB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"P.cod_Adu"]
codB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"P.cod_Adu"]
# head(codB.45.f4.80)
codB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codB.45.f4.80.up[i] <- max(codB.45.f4.80[i,])
codB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codB.45.f4.80.lo[i] <- min(codB.45.f4.80[i,])
# Everything from 2081-2099
codB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codB.45.f4.99) <- c("gfd","mir")
row.names(codB.45.f4.99) <- 2081:2099
codB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"P.cod_Adu"]
codB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"P.cod_Adu"]
# head(codB.45.f4.99)
codB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codB.45.f4.99.up[i] <- max(codB.45.f4.99[i,])
codB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codB.45.f4.99.lo[i] <- min(codB.45.f4.99[i,])
# now append these two time periods
codB.45.f4.up <- c(codB.45.f4.80.up,codB.45.f4.99.up)
codB.45.f4.lo <- c(codB.45.f4.80.lo,codB.45.f4.99.lo)

# RCP 8.5
codB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codB.85.f4) <- c("gfd","mir","ces")
row.names(codB.85.f4) <- 1991:2099
codB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"P.cod_Adu"]
codB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"P.cod_Adu"]
codB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"P.cod_Adu"]
# head(codB.85.f4)
codB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codB.85.f4.up[i] <- max(codB.85.f4[i,])
codB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codB.85.f4.lo[i] <- min(codB.85.f4[i,])

# # SRES A1B
# codB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(codB.a1b.f4) <- 1991:2039
# codB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"P.cod_Adu"]
# # head(codB.a1b.f4)
# codB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codB.a1b.f4.up[i] <- max(codB.a1b.f4[i,])
# codB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codB.a1b.f4.lo[i] <- min(codB.a1b.f4[i,])

# P.cod Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
codC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(codC.45.f4.80) <- c("gfd","mir","ces")
row.names(codC.45.f4.80) <- 1991:2080
codC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"P.cod_Adu"]
codC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"P.cod_Adu"]
codC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"P.cod_Adu"]
# head(codC.45.f4.80)
codC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) codC.45.f4.80.up[i] <- max(codC.45.f4.80[i,])
codC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) codC.45.f4.80.lo[i] <- min(codC.45.f4.80[i,])
# Everything from 2081-2099
codC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(codC.45.f4.99) <- c("gfd","mir")
row.names(codC.45.f4.99) <- 2081:2099
codC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"P.cod_Adu"]
codC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"P.cod_Adu"]
# head(codC.45.f4.99)
codC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) codC.45.f4.99.up[i] <- max(codC.45.f4.99[i,])
codC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) codC.45.f4.99.lo[i] <- min(codC.45.f4.99[i,])
# now append these two time periods
codC.45.f4.up <- c(codC.45.f4.80.up,codC.45.f4.99.up)
codC.45.f4.lo <- c(codC.45.f4.80.lo,codC.45.f4.99.lo)

# RCP 8.5
codC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(codC.85.f4) <- c("gfd","mir","ces")
row.names(codC.85.f4) <- 1991:2099
codC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"P.cod_Adu"]
codC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"P.cod_Adu"]
codC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"P.cod_Adu"]
# head(codC.85.f4)
codC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) codC.85.f4.up[i] <- max(codC.85.f4[i,])
codC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) codC.85.f4.lo[i] <- min(codC.85.f4[i,])

# # SRES A1B
# codC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(codC.a1b.f4) <- 1991:2039
# codC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"P.cod_Adu"]
# # head(codC.a1b.f4)
# codC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f4.up[i] <- max(codC.a1b.f4[i,])
# codC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f4.lo[i] <- min(codC.a1b.f4[i,])

# # ---------------------------------------------------------------------------- #
# # P.cod f5 ---*ABC*---
# # RCP 4.5
# # Everything up through 2080
# codB.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(codB.45.f5.80) <- c("gfd","mir","ces")
# row.names(codB.45.f5.80) <- 1991:2080
# codB.45.f5.80[,1] <- gfd45.f5.91.add$annual_Biomass[1:90,"P.cod_Adu"]
# codB.45.f5.80[,2] <- mir45.f5.91.add$annual_Biomass[1:90,"P.cod_Adu"]
# codB.45.f5.80[,3] <- ces45.f5.91.add$annual_Biomass[,"P.cod_Adu"]
# # head(codB.45.f5.80)
# codB.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) codB.45.f5.80.up[i] <- max(codB.45.f5.80[i,])
# codB.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) codB.45.f5.80.lo[i] <- min(codB.45.f5.80[i,])
# # Everything from 2081-2099
# codB.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(codB.45.f5.99) <- c("gfd","mir")
# row.names(codB.45.f5.99) <- 2081:2099
# codB.45.f5.99[,1] <- gfd45.f5.91.add$annual_Biomass[91:109,"P.cod_Adu"]
# codB.45.f5.99[,2] <- mir45.f5.91.add$annual_Biomass[91:109,"P.cod_Adu"]
# # head(codB.45.f5.99)
# codB.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) codB.45.f5.99.up[i] <- max(codB.45.f5.99[i,])
# codB.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) codB.45.f5.99.lo[i] <- min(codB.45.f5.99[i,])
# # now append these two time periods
# codB.45.f5.up <- c(codB.45.f5.80.up,codB.45.f5.99.up)
# codB.45.f5.lo <- c(codB.45.f5.80.lo,codB.45.f5.99.lo)
# 
# # RCP 8.5
# codB.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(codB.85.f5) <- c("gfd","mir","ces")
# row.names(codB.85.f5) <- 1991:2099
# codB.85.f5[,1] <- gfd85.f5.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.85.f5[,2] <- mir85.f5.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.85.f5[,3] <- ces85.f5.91.add$annual_Biomass[,"P.cod_Adu"]
# # head(codB.85.f5)
# codB.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) codB.85.f5.up[i] <- max(codB.85.f5[i,])
# codB.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) codB.85.f5.lo[i] <- min(codB.85.f5[i,])
# 
# # # SRES A1B
# # codB.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(codB.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(codB.a1b.f5) <- 1991:2039
# # codB.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Biomass[,"P.cod_Adu"]
# # codB.a1b.f5[,2] <- echA1B.f5.91.add$annual_Biomass[,"P.cod_Adu"]
# # codB.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Biomass[,"P.cod_Adu"]
# # # head(codB.a1b.f5)
# # codB.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) codB.a1b.f5.up[i] <- max(codB.a1b.f5[i,])
# # codB.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) codB.a1b.f5.lo[i] <- min(codB.a1b.f5[i,])
# 
# # P.cod Catch ----- *ABC*
# # RCP 4.5
# # Everything up through 2080
# codC.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(codC.45.f5.80) <- c("gfd","mir","ces")
# row.names(codC.45.f5.80) <- 1991:2080
# codC.45.f5.80[,1] <- gfd45.f5.91.add$annual_Catch[1:90,"P.cod_Adu"]
# codC.45.f5.80[,2] <- mir45.f5.91.add$annual_Catch[1:90,"P.cod_Adu"]
# codC.45.f5.80[,3] <- ces45.f5.91.add$annual_Catch[,"P.cod_Adu"]
# # head(codC.45.f5.80)
# codC.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) codC.45.f5.80.up[i] <- max(codC.45.f5.80[i,])
# codC.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) codC.45.f5.80.lo[i] <- min(codC.45.f5.80[i,])
# # Everything from 2081-2099
# codC.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(codC.45.f5.99) <- c("gfd","mir")
# row.names(codC.45.f5.99) <- 2081:2099
# codC.45.f5.99[,1] <- gfd45.f5.91.add$annual_Catch[91:109,"P.cod_Adu"]
# codC.45.f5.99[,2] <- mir45.f5.91.add$annual_Catch[91:109,"P.cod_Adu"]
# # head(codC.45.f5.99)
# codC.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) codC.45.f5.99.up[i] <- max(codC.45.f5.99[i,])
# codC.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) codC.45.f5.99.lo[i] <- min(codC.45.f5.99[i,])
# # now append these two time periods
# codC.45.f5.up <- c(codC.45.f5.80.up,codC.45.f5.99.up)
# codC.45.f5.lo <- c(codC.45.f5.80.lo,codC.45.f5.99.lo)
# 
# # RCP 8.5
# codC.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(codC.85.f5) <- c("gfd","mir","ces")
# row.names(codC.85.f5) <- 1991:2099
# codC.85.f5[,1] <- gfd85.f5.91.add$annual_Catch[,"P.cod_Adu"]
# codC.85.f5[,2] <- mir85.f5.91.add$annual_Catch[,"P.cod_Adu"]
# codC.85.f5[,3] <- ces85.f5.91.add$annual_Catch[,"P.cod_Adu"]
# # head(codC.85.f5)
# codC.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) codC.85.f5.up[i] <- max(codC.85.f5[i,])
# codC.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) codC.85.f5.lo[i] <- min(codC.85.f5[i,])
# 
# # # SRES A1B
# # codC.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(codC.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(codC.a1b.f5) <- 1991:2039
# # codC.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Catch[,"P.cod_Adu"]
# # codC.a1b.f5[,2] <- echA1B.f5.91.add$annual_Catch[,"P.cod_Adu"]
# # codC.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Catch[,"P.cod_Adu"]
# # # head(codC.a1b.f5)
# # codC.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) codC.a1b.f5.up[i] <- max(codC.a1b.f5[i,])
# # codC.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) codC.a1b.f5.lo[i] <- min(codC.a1b.f5[i,])
# 
# # ---------------------------------------------------------------------------- #
# # P.cod f6 ---*F_equil*---
# # RCP 4.5
# # Everything up through 2080
# codB.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(codB.45.f6.80) <- c("gfd","mir","ces")
# row.names(codB.45.f6.80) <- 1991:2080
# codB.45.f6.80[,1] <- gfd45.f6.91.add$annual_Biomass[1:90,"P.cod_Adu"]
# codB.45.f6.80[,2] <- mir45.f6.91.add$annual_Biomass[1:90,"P.cod_Adu"]
# codB.45.f6.80[,3] <- ces45.f6.91.add$annual_Biomass[,"P.cod_Adu"]
# # head(codB.45.f6.80)
# codB.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) codB.45.f6.80.up[i] <- max(codB.45.f6.80[i,])
# codB.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) codB.45.f6.80.lo[i] <- min(codB.45.f6.80[i,])
# # Everything from 2081-2099
# codB.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(codB.45.f6.99) <- c("gfd","mir")
# row.names(codB.45.f6.99) <- 2081:2099
# codB.45.f6.99[,1] <- gfd45.f6.91.add$annual_Biomass[91:109,"P.cod_Adu"]
# codB.45.f6.99[,2] <- mir45.f6.91.add$annual_Biomass[91:109,"P.cod_Adu"]
# # head(codB.45.f6.99)
# codB.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) codB.45.f6.99.up[i] <- max(codB.45.f6.99[i,])
# codB.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) codB.45.f6.99.lo[i] <- min(codB.45.f6.99[i,])
# # now append these two time periods
# codB.45.f6.up <- c(codB.45.f6.80.up,codB.45.f6.99.up)
# codB.45.f6.lo <- c(codB.45.f6.80.lo,codB.45.f6.99.lo)
# 
# # RCP 8.5
# codB.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(codB.85.f6) <- c("gfd","mir","ces")
# row.names(codB.85.f6) <- 1991:2099
# codB.85.f6[,1] <- gfd85.f6.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.85.f6[,2] <- mir85.f6.91.add$annual_Biomass[,"P.cod_Adu"]
# codB.85.f6[,3] <- ces85.f6.91.add$annual_Biomass[,"P.cod_Adu"]
# # head(codB.85.f6)
# codB.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) codB.85.f6.up[i] <- max(codB.85.f6[i,])
# codB.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) codB.85.f6.lo[i] <- min(codB.85.f6[i,])
# 
# # # SRES A1B
# # codB.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(codB.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(codB.a1b.f6) <- 1991:2039
# # codB.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Biomass[,"P.cod_Adu"]
# # codB.a1b.f6[,2] <- echA1B.f6.91.add$annual_Biomass[,"P.cod_Adu"]
# # codB.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Biomass[,"P.cod_Adu"]
# # # head(codB.a1b.f6)
# # codB.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) codB.a1b.f6.up[i] <- max(codB.a1b.f6[i,])
# # codB.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) codB.a1b.f6.lo[i] <- min(codB.a1b.f6[i,])
# 
# # P.cod Catch ----- *F_equil*
# # RCP 4.5
# # Everything up through 2080
# codC.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(codC.45.f6.80) <- c("gfd","mir","ces")
# row.names(codC.45.f6.80) <- 1991:2080
# codC.45.f6.80[,1] <- gfd45.f6.91.add$annual_Catch[1:90,"P.cod_Adu"]
# codC.45.f6.80[,2] <- mir45.f6.91.add$annual_Catch[1:90,"P.cod_Adu"]
# codC.45.f6.80[,3] <- ces45.f6.91.add$annual_Catch[,"P.cod_Adu"]
# # head(codC.45.f6.80)
# codC.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) codC.45.f6.80.up[i] <- max(codC.45.f6.80[i,])
# codC.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) codC.45.f6.80.lo[i] <- min(codC.45.f6.80[i,])
# # Everything from 2081-2099
# codC.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(codC.45.f6.99) <- c("gfd","mir")
# row.names(codC.45.f6.99) <- 2081:2099
# codC.45.f6.99[,1] <- gfd45.f6.91.add$annual_Catch[91:109,"P.cod_Adu"]
# codC.45.f6.99[,2] <- mir45.f6.91.add$annual_Catch[91:109,"P.cod_Adu"]
# # head(codC.45.f6.99)
# codC.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) codC.45.f6.99.up[i] <- max(codC.45.f6.99[i,])
# codC.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) codC.45.f6.99.lo[i] <- min(codC.45.f6.99[i,])
# # now append these two time periods
# codC.45.f6.up <- c(codC.45.f6.80.up,codC.45.f6.99.up)
# codC.45.f6.lo <- c(codC.45.f6.80.lo,codC.45.f6.99.lo)
# 
# # RCP 8.5
# codC.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(codC.85.f6) <- c("gfd","mir","ces")
# row.names(codC.85.f6) <- 1991:2099
# codC.85.f6[,1] <- gfd85.f6.91.add$annual_Catch[,"P.cod_Adu"]
# codC.85.f6[,2] <- mir85.f6.91.add$annual_Catch[,"P.cod_Adu"]
# codC.85.f6[,3] <- ces85.f6.91.add$annual_Catch[,"P.cod_Adu"]
# # head(codC.85.f6)
# codC.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) codC.85.f6.up[i] <- max(codC.85.f6[i,])
# codC.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) codC.85.f6.lo[i] <- min(codC.85.f6[i,])

# # SRES A1B
# codC.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(codC.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# row.names(codC.a1b.f6) <- 1991:2039
# codC.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f6[,2] <- echA1B.f6.91.add$annual_Catch[,"P.cod_Adu"]
# codC.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Catch[,"P.cod_Adu"]
# # head(codC.a1b.f6)
# codC.a1b.f6.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f6.up[i] <- max(codC.a1b.f6[i,])
# codC.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) codC.a1b.f6.lo[i] <- min(codC.a1b.f6[i,])





# ============================================================================ #
# ============================================================================ #




################################################################################
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
################################################################################

# ---------------------------------------------------------------------------- #
# W.pollock biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
polB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(polB.45.f1.80) <- c("gfd","mir","ces")
row.names(polB.45.f1.80) <- 1991:2080
polB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
polB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
polB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"W.pollock_Adu"]
# head(polB.45.f1.80)
polB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) polB.45.f1.80.up[i] <- max(polB.45.f1.80[i,])
polB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) polB.45.f1.80.lo[i] <- min(polB.45.f1.80[i,])
# Everything from 2081-2099
polB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(polB.45.f1.99) <- c("gfd","mir")
row.names(polB.45.f1.99) <- 2081:2099
polB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
polB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
# head(polB.45.f1.99)
polB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) polB.45.f1.99.up[i] <- max(polB.45.f1.99[i,])
polB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) polB.45.f1.99.lo[i] <- min(polB.45.f1.99[i,])
# now append these two time periods
polB.45.f1.up <- c(polB.45.f1.80.up,polB.45.f1.99.up)
polB.45.f1.lo <- c(polB.45.f1.80.lo,polB.45.f1.99.lo)

# RCP 8.5
polB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(polB.85.f1) <- c("gfd","mir","ces")
row.names(polB.85.f1) <- 1991:2099
polB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"W.pollock_Adu"]
polB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"W.pollock_Adu"]
polB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"W.pollock_Adu"]
# head(polB.85.f1)
polB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) polB.85.f1.up[i] <- max(polB.85.f1[i,])
polB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) polB.85.f1.lo[i] <- min(polB.85.f1[i,])

# # SRES A1B
# polB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(polB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(polB.a1b.f1) <- 1991:2039
# polB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"W.pollock_Adu"]
# # head(polB.a1b.f1)
# polB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polB.a1b.f1.up[i] <- max(polB.a1b.f1[i,])
# polB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polB.a1b.f1.lo[i] <- min(polB.a1b.f1[i,])

# W.pollock Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
polC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(polC.45.f1.80) <- c("gfd","mir","ces")
row.names(polC.45.f1.80) <- 1991:2080
polC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"W.pollock_Adu"]
polC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"W.pollock_Adu"]
polC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"W.pollock_Adu"]
# head(polC.45.f1.80)
polC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) polC.45.f1.80.up[i] <- max(polC.45.f1.80[i,])
polC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) polC.45.f1.80.lo[i] <- min(polC.45.f1.80[i,])
# Everything from 2081-2099
polC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(polC.45.f1.99) <- c("gfd","mir")
row.names(polC.45.f1.99) <- 2081:2099
polC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"W.pollock_Adu"]
polC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"W.pollock_Adu"]
# head(polC.45.f1.99)
polC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) polC.45.f1.99.up[i] <- max(polC.45.f1.99[i,])
polC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) polC.45.f1.99.lo[i] <- min(polC.45.f1.99[i,])
# now append these two time periods
polC.45.f1.up <- c(polC.45.f1.80.up,polC.45.f1.99.up)
polC.45.f1.lo <- c(polC.45.f1.80.lo,polC.45.f1.99.lo)

# RCP 8.5
polC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(polC.85.f1) <- c("gfd","mir","ces")
row.names(polC.85.f1) <- 1991:2099
polC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"W.pollock_Adu"]
polC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"W.pollock_Adu"]
polC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"W.pollock_Adu"]
# head(polC.85.f1)
polC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) polC.85.f1.up[i] <- max(polC.85.f1[i,])
polC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) polC.85.f1.lo[i] <- min(polC.85.f1[i,])

# # SRES A1B
# polC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(polC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(polC.a1b.f1) <- 1991:2039
# polC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"W.pollock_Adu"]
# # head(polC.a1b.f1)
# polC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polC.a1b.f1.up[i] <- max(polC.a1b.f1[i,])
# polC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polC.a1b.f1.lo[i] <- min(polC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# W.pollock F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
polB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(polB.45.f2.80) <- c("gfd","mir","ces")
row.names(polB.45.f2.80) <- 1991:2080
polB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
polB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
polB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"W.pollock_Adu"]
# head(polB.45.f2.80)
polB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) polB.45.f2.80.up[i] <- max(polB.45.f2.80[i,])
polB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) polB.45.f2.80.lo[i] <- min(polB.45.f2.80[i,])
# Everything from 2081-2099
polB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(polB.45.f2.99) <- c("gfd","mir")
row.names(polB.45.f2.99) <- 2081:2099
polB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
polB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
# head(polB.45.f2.99)
polB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) polB.45.f2.99.up[i] <- max(polB.45.f2.99[i,])
polB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) polB.45.f2.99.lo[i] <- min(polB.45.f2.99[i,])
# now append these two time periods
polB.45.f2.up <- c(polB.45.f2.80.up,polB.45.f2.99.up)
polB.45.f2.lo <- c(polB.45.f2.80.lo,polB.45.f2.99.lo)

# RCP 8.5
polB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(polB.85.f2) <- c("gfd","mir","ces")
row.names(polB.85.f2) <- 1991:2099
polB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"W.pollock_Adu"]
polB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"W.pollock_Adu"]
polB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"W.pollock_Adu"]
# head(polB.85.f2)
polB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) polB.85.f2.up[i] <- max(polB.85.f2[i,])
polB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) polB.85.f2.lo[i] <- min(polB.85.f2[i,])

# # SRES A1B
# polB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(polB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(polB.a1b.f2) <- 1991:2039
# polB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"W.pollock_Adu"]
# # head(polB.a1b.f2)
# polB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polB.a1b.f2.up[i] <- max(polB.a1b.f2[i,])
# polB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polB.a1b.f2.lo[i] <- min(polB.a1b.f2[i,])

# W.pollock Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
polC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(polC.45.f2.80) <- c("gfd","mir","ces")
row.names(polC.45.f2.80) <- 1991:2080
polC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"W.pollock_Adu"]
polC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"W.pollock_Adu"]
polC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"W.pollock_Adu"]
# head(polC.45.f2.80)
polC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) polC.45.f2.80.up[i] <- max(polC.45.f2.80[i,])
polC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) polC.45.f2.80.lo[i] <- min(polC.45.f2.80[i,])
# Everything from 2081-2099
polC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(polC.45.f2.99) <- c("gfd","mir")
row.names(polC.45.f2.99) <- 2081:2099
polC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"W.pollock_Adu"]
polC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"W.pollock_Adu"]
# head(polC.45.f2.99)
polC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) polC.45.f2.99.up[i] <- max(polC.45.f2.99[i,])
polC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) polC.45.f2.99.lo[i] <- min(polC.45.f2.99[i,])
# now append these two time periods
polC.45.f2.up <- c(polC.45.f2.80.up,polC.45.f2.99.up)
polC.45.f2.lo <- c(polC.45.f2.80.lo,polC.45.f2.99.lo)

# RCP 8.5
polC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(polC.85.f2) <- c("gfd","mir","ces")
row.names(polC.85.f2) <- 1991:2099
polC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"W.pollock_Adu"]
polC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"W.pollock_Adu"]
polC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"W.pollock_Adu"]
# head(polC.85.f2)
polC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) polC.85.f2.up[i] <- max(polC.85.f2[i,])
polC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) polC.85.f2.lo[i] <- min(polC.85.f2[i,])

# # SRES A1B
# polC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(polC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(polC.a1b.f2) <- 1991:2039
# polC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"W.pollock_Adu"]
# # head(polC.a1b.f2)
# polC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polC.a1b.f2.up[i] <- max(polC.a1b.f2[i,])
# polC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polC.a1b.f2.lo[i] <- min(polC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# W.pollock F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
polB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(polB.45.f3.80) <- c("gfd","mir","ces")
row.names(polB.45.f3.80) <- 1991:2080
polB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
polB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
polB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"W.pollock_Adu"]
# head(polB.45.f3.80)
polB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) polB.45.f3.80.up[i] <- max(polB.45.f3.80[i,])
polB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) polB.45.f3.80.lo[i] <- min(polB.45.f3.80[i,])
# Everything from 2081-2099
polB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(polB.45.f3.99) <- c("gfd","mir")
row.names(polB.45.f3.99) <- 2081:2099
polB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
polB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
# head(polB.45.f3.99)
polB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) polB.45.f3.99.up[i] <- max(polB.45.f3.99[i,])
polB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) polB.45.f3.99.lo[i] <- min(polB.45.f3.99[i,])
# now append these two time periods
polB.45.f3.up <- c(polB.45.f3.80.up,polB.45.f3.99.up)
polB.45.f3.lo <- c(polB.45.f3.80.lo,polB.45.f3.99.lo)

# RCP 8.5
polB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(polB.85.f3) <- c("gfd","mir","ces")
row.names(polB.85.f3) <- 1991:2099
polB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"W.pollock_Adu"]
polB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"W.pollock_Adu"]
polB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"W.pollock_Adu"]
# head(polB.85.f3)
polB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) polB.85.f3.up[i] <- max(polB.85.f3[i,])
polB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) polB.85.f3.lo[i] <- min(polB.85.f3[i,])

# # SRES A1B
# polB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(polB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(polB.a1b.f3) <- 1991:2039
# polB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"W.pollock_Adu"]
# # head(polB.a1b.f3)
# polB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polB.a1b.f3.up[i] <- max(polB.a1b.f3[i,])
# polB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polB.a1b.f3.lo[i] <- min(polB.a1b.f3[i,])

# W.pollock Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
polC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(polC.45.f3.80) <- c("gfd","mir","ces")
row.names(polC.45.f3.80) <- 1991:2080
polC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"W.pollock_Adu"]
polC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"W.pollock_Adu"]
polC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"W.pollock_Adu"]
# head(polC.45.f3.80)
polC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) polC.45.f3.80.up[i] <- max(polC.45.f3.80[i,])
polC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) polC.45.f3.80.lo[i] <- min(polC.45.f3.80[i,])
# Everything from 2081-2099
polC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(polC.45.f3.99) <- c("gfd","mir")
row.names(polC.45.f3.99) <- 2081:2099
polC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"W.pollock_Adu"]
polC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"W.pollock_Adu"]
# head(polC.45.f3.99)
polC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) polC.45.f3.99.up[i] <- max(polC.45.f3.99[i,])
polC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) polC.45.f3.99.lo[i] <- min(polC.45.f3.99[i,])
# now append these two time periods
polC.45.f3.up <- c(polC.45.f3.80.up,polC.45.f3.99.up)
polC.45.f3.lo <- c(polC.45.f3.80.lo,polC.45.f3.99.lo)

# RCP 8.5
polC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(polC.85.f3) <- c("gfd","mir","ces")
row.names(polC.85.f3) <- 1991:2099
polC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"W.pollock_Adu"]
polC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"W.pollock_Adu"]
polC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"W.pollock_Adu"]
# head(polC.85.f3)
polC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) polC.85.f3.up[i] <- max(polC.85.f3[i,])
polC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) polC.85.f3.lo[i] <- min(polC.85.f3[i,])

# SRES A1B
polC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
colnames(polC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
row.names(polC.a1b.f3) <- 1991:2039
polC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"W.pollock_Adu"]
polC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"W.pollock_Adu"]
polC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"W.pollock_Adu"]
# head(polC.a1b.f3)
polC.a1b.f3.up <- matrix(nrow=49,ncol=1)
for (i in 1:49) polC.a1b.f3.up[i] <- max(polC.a1b.f3[i,])
polC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
for (i in 1:49) polC.a1b.f3.lo[i] <- min(polC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# W.pollock F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
polB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(polB.45.f4.80) <- c("gfd","mir","ces")
row.names(polB.45.f4.80) <- 1991:2080
polB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
polB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
polB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"W.pollock_Adu"]
# head(polB.45.f4.80)
polB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) polB.45.f4.80.up[i] <- max(polB.45.f4.80[i,])
polB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) polB.45.f4.80.lo[i] <- min(polB.45.f4.80[i,])
# Everything from 2081-2099
polB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(polB.45.f4.99) <- c("gfd","mir")
row.names(polB.45.f4.99) <- 2081:2099
polB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
polB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
# head(polB.45.f4.99)
polB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) polB.45.f4.99.up[i] <- max(polB.45.f4.99[i,])
polB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) polB.45.f4.99.lo[i] <- min(polB.45.f4.99[i,])
# now append these two time periods
polB.45.f4.up <- c(polB.45.f4.80.up,polB.45.f4.99.up)
polB.45.f4.lo <- c(polB.45.f4.80.lo,polB.45.f4.99.lo)

# RCP 8.5
polB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(polB.85.f4) <- c("gfd","mir","ces")
row.names(polB.85.f4) <- 1991:2099
polB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"W.pollock_Adu"]
polB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"W.pollock_Adu"]
polB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"W.pollock_Adu"]
# head(polB.85.f4)
polB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) polB.85.f4.up[i] <- max(polB.85.f4[i,])
polB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) polB.85.f4.lo[i] <- min(polB.85.f4[i,])

# # SRES A1B
# polB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(polB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(polB.a1b.f4) <- 1991:2039
# polB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"W.pollock_Adu"]
# # head(polB.a1b.f4)
# polB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polB.a1b.f4.up[i] <- max(polB.a1b.f4[i,])
# polB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polB.a1b.f4.lo[i] <- min(polB.a1b.f4[i,])

# W.pollock Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
polC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(polC.45.f4.80) <- c("gfd","mir","ces")
row.names(polC.45.f4.80) <- 1991:2080
polC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"W.pollock_Adu"]
polC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"W.pollock_Adu"]
polC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"W.pollock_Adu"]
# head(polC.45.f4.80)
polC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) polC.45.f4.80.up[i] <- max(polC.45.f4.80[i,])
polC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) polC.45.f4.80.lo[i] <- min(polC.45.f4.80[i,])
# Everything from 2081-2099
polC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(polC.45.f4.99) <- c("gfd","mir")
row.names(polC.45.f4.99) <- 2081:2099
polC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"W.pollock_Adu"]
polC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"W.pollock_Adu"]
# head(polC.45.f4.99)
polC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) polC.45.f4.99.up[i] <- max(polC.45.f4.99[i,])
polC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) polC.45.f4.99.lo[i] <- min(polC.45.f4.99[i,])
# now append these two time periods
polC.45.f4.up <- c(polC.45.f4.80.up,polC.45.f4.99.up)
polC.45.f4.lo <- c(polC.45.f4.80.lo,polC.45.f4.99.lo)

# RCP 8.5
polC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(polC.85.f4) <- c("gfd","mir","ces")
row.names(polC.85.f4) <- 1991:2099
polC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"W.pollock_Adu"]
polC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"W.pollock_Adu"]
polC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"W.pollock_Adu"]
# head(polC.85.f4)
polC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) polC.85.f4.up[i] <- max(polC.85.f4[i,])
polC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) polC.85.f4.lo[i] <- min(polC.85.f4[i,])

# # SRES A1B
# polC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(polC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(polC.a1b.f4) <- 1991:2039
# polC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"W.pollock_Adu"]
# # head(polC.a1b.f4)
# polC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polC.a1b.f4.up[i] <- max(polC.a1b.f4[i,])
# polC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polC.a1b.f4.lo[i] <- min(polC.a1b.f4[i,])

# ---------------------------------------------------------------------------- #
# W.pollock f5 ---*ABC*---
# RCP 4.5
# Everything up through 2080
# polB.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(polB.45.f5.80) <- c("gfd","mir","ces")
# row.names(polB.45.f5.80) <- 1991:2080
# polB.45.f5.80[,1] <- gfd45.f5.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
# polB.45.f5.80[,2] <- mir45.f5.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
# polB.45.f5.80[,3] <- ces45.f5.91.add$annual_Biomass[,"W.pollock_Adu"]
# # head(polB.45.f5.80)
# polB.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) polB.45.f5.80.up[i] <- max(polB.45.f5.80[i,])
# polB.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) polB.45.f5.80.lo[i] <- min(polB.45.f5.80[i,])
# # Everything from 2081-2099
# polB.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(polB.45.f5.99) <- c("gfd","mir")
# row.names(polB.45.f5.99) <- 2081:2099
# polB.45.f5.99[,1] <- gfd45.f5.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
# polB.45.f5.99[,2] <- mir45.f5.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
# # head(polB.45.f5.99)
# polB.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) polB.45.f5.99.up[i] <- max(polB.45.f5.99[i,])
# polB.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) polB.45.f5.99.lo[i] <- min(polB.45.f5.99[i,])
# # now append these two time periods
# polB.45.f5.up <- c(polB.45.f5.80.up,polB.45.f5.99.up)
# polB.45.f5.lo <- c(polB.45.f5.80.lo,polB.45.f5.99.lo)
# 
# # RCP 8.5
# polB.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(polB.85.f5) <- c("gfd","mir","ces")
# row.names(polB.85.f5) <- 1991:2099
# polB.85.f5[,1] <- gfd85.f5.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.85.f5[,2] <- mir85.f5.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.85.f5[,3] <- ces85.f5.91.add$annual_Biomass[,"W.pollock_Adu"]
# # head(polB.85.f5)
# polB.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) polB.85.f5.up[i] <- max(polB.85.f5[i,])
# polB.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) polB.85.f5.lo[i] <- min(polB.85.f5[i,])
# 
# # # SRES A1B
# # polB.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(polB.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(polB.a1b.f5) <- 1991:2039
# # polB.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Biomass[,"W.pollock_Adu"]
# # polB.a1b.f5[,2] <- echA1B.f5.91.add$annual_Biomass[,"W.pollock_Adu"]
# # polB.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Biomass[,"W.pollock_Adu"]
# # # head(polB.a1b.f5)
# # polB.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) polB.a1b.f5.up[i] <- max(polB.a1b.f5[i,])
# # polB.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) polB.a1b.f5.lo[i] <- min(polB.a1b.f5[i,])
# 
# # W.pollock Catch ----- *ABC*
# # RCP 4.5
# # Everything up through 2080
# polC.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(polC.45.f5.80) <- c("gfd","mir","ces")
# row.names(polC.45.f5.80) <- 1991:2080
# polC.45.f5.80[,1] <- gfd45.f5.91.add$annual_Catch[1:90,"W.pollock_Adu"]
# polC.45.f5.80[,2] <- mir45.f5.91.add$annual_Catch[1:90,"W.pollock_Adu"]
# polC.45.f5.80[,3] <- ces45.f5.91.add$annual_Catch[,"W.pollock_Adu"]
# # head(polC.45.f5.80)
# polC.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) polC.45.f5.80.up[i] <- max(polC.45.f5.80[i,])
# polC.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) polC.45.f5.80.lo[i] <- min(polC.45.f5.80[i,])
# # Everything from 2081-2099
# polC.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(polC.45.f5.99) <- c("gfd","mir")
# row.names(polC.45.f5.99) <- 2081:2099
# polC.45.f5.99[,1] <- gfd45.f5.91.add$annual_Catch[91:109,"W.pollock_Adu"]
# polC.45.f5.99[,2] <- mir45.f5.91.add$annual_Catch[91:109,"W.pollock_Adu"]
# # head(polC.45.f5.99)
# polC.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) polC.45.f5.99.up[i] <- max(polC.45.f5.99[i,])
# polC.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) polC.45.f5.99.lo[i] <- min(polC.45.f5.99[i,])
# # now append these two time periods
# polC.45.f5.up <- c(polC.45.f5.80.up,polC.45.f5.99.up)
# polC.45.f5.lo <- c(polC.45.f5.80.lo,polC.45.f5.99.lo)
# 
# # RCP 8.5
# polC.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(polC.85.f5) <- c("gfd","mir","ces")
# row.names(polC.85.f5) <- 1991:2099
# polC.85.f5[,1] <- gfd85.f5.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.85.f5[,2] <- mir85.f5.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.85.f5[,3] <- ces85.f5.91.add$annual_Catch[,"W.pollock_Adu"]
# # head(polC.85.f5)
# polC.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) polC.85.f5.up[i] <- max(polC.85.f5[i,])
# polC.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) polC.85.f5.lo[i] <- min(polC.85.f5[i,])
# 
# # # SRES A1B
# # polC.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(polC.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(polC.a1b.f5) <- 1991:2039
# # polC.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Catch[,"W.pollock_Adu"]
# # polC.a1b.f5[,2] <- echA1B.f5.91.add$annual_Catch[,"W.pollock_Adu"]
# # polC.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Catch[,"W.pollock_Adu"]
# # # head(polC.a1b.f5)
# # polC.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) polC.a1b.f5.up[i] <- max(polC.a1b.f5[i,])
# # polC.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) polC.a1b.f5.lo[i] <- min(polC.a1b.f5[i,])
# 
# # ---------------------------------------------------------------------------- #
# # W.pollock f6 ---*F_equil*---
# # RCP 4.5
# # Everything up through 2080
# polB.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(polB.45.f6.80) <- c("gfd","mir","ces")
# row.names(polB.45.f6.80) <- 1991:2080
# polB.45.f6.80[,1] <- gfd45.f6.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
# polB.45.f6.80[,2] <- mir45.f6.91.add$annual_Biomass[1:90,"W.pollock_Adu"]
# polB.45.f6.80[,3] <- ces45.f6.91.add$annual_Biomass[,"W.pollock_Adu"]
# # head(polB.45.f6.80)
# polB.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) polB.45.f6.80.up[i] <- max(polB.45.f6.80[i,])
# polB.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) polB.45.f6.80.lo[i] <- min(polB.45.f6.80[i,])
# # Everything from 2081-2099
# polB.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(polB.45.f6.99) <- c("gfd","mir")
# row.names(polB.45.f6.99) <- 2081:2099
# polB.45.f6.99[,1] <- gfd45.f6.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
# polB.45.f6.99[,2] <- mir45.f6.91.add$annual_Biomass[91:109,"W.pollock_Adu"]
# # head(polB.45.f6.99)
# polB.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) polB.45.f6.99.up[i] <- max(polB.45.f6.99[i,])
# polB.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) polB.45.f6.99.lo[i] <- min(polB.45.f6.99[i,])
# # now append these two time periods
# polB.45.f6.up <- c(polB.45.f6.80.up,polB.45.f6.99.up)
# polB.45.f6.lo <- c(polB.45.f6.80.lo,polB.45.f6.99.lo)
# 
# # RCP 8.5
# polB.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(polB.85.f6) <- c("gfd","mir","ces")
# row.names(polB.85.f6) <- 1991:2099
# polB.85.f6[,1] <- gfd85.f6.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.85.f6[,2] <- mir85.f6.91.add$annual_Biomass[,"W.pollock_Adu"]
# polB.85.f6[,3] <- ces85.f6.91.add$annual_Biomass[,"W.pollock_Adu"]
# # head(polB.85.f6)
# polB.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) polB.85.f6.up[i] <- max(polB.85.f6[i,])
# polB.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) polB.85.f6.lo[i] <- min(polB.85.f6[i,])
# 
# # # SRES A1B
# # polB.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(polB.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(polB.a1b.f6) <- 1991:2039
# # polB.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Biomass[,"W.pollock_Adu"]
# # polB.a1b.f6[,2] <- echA1B.f6.91.add$annual_Biomass[,"W.pollock_Adu"]
# # polB.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Biomass[,"W.pollock_Adu"]
# # # head(polB.a1b.f6)
# # polB.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) polB.a1b.f6.up[i] <- max(polB.a1b.f6[i,])
# # polB.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) polB.a1b.f6.lo[i] <- min(polB.a1b.f6[i,])
# 
# # W.pollock Catch ----- *F_equil*
# # RCP 4.5
# # Everything up through 2080
# polC.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(polC.45.f6.80) <- c("gfd","mir","ces")
# row.names(polC.45.f6.80) <- 1991:2080
# polC.45.f6.80[,1] <- gfd45.f6.91.add$annual_Catch[1:90,"W.pollock_Adu"]
# polC.45.f6.80[,2] <- mir45.f6.91.add$annual_Catch[1:90,"W.pollock_Adu"]
# polC.45.f6.80[,3] <- ces45.f6.91.add$annual_Catch[,"W.pollock_Adu"]
# # head(polC.45.f6.80)
# polC.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) polC.45.f6.80.up[i] <- max(polC.45.f6.80[i,])
# polC.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) polC.45.f6.80.lo[i] <- min(polC.45.f6.80[i,])
# # Everything from 2081-2099
# polC.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(polC.45.f6.99) <- c("gfd","mir")
# row.names(polC.45.f6.99) <- 2081:2099
# polC.45.f6.99[,1] <- gfd45.f6.91.add$annual_Catch[91:109,"W.pollock_Adu"]
# polC.45.f6.99[,2] <- mir45.f6.91.add$annual_Catch[91:109,"W.pollock_Adu"]
# # head(polC.45.f6.99)
# polC.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) polC.45.f6.99.up[i] <- max(polC.45.f6.99[i,])
# polC.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) polC.45.f6.99.lo[i] <- min(polC.45.f6.99[i,])
# # now append these two time periods
# polC.45.f6.up <- c(polC.45.f6.80.up,polC.45.f6.99.up)
# polC.45.f6.lo <- c(polC.45.f6.80.lo,polC.45.f6.99.lo)
# 
# # RCP 8.5
# polC.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(polC.85.f6) <- c("gfd","mir","ces")
# row.names(polC.85.f6) <- 1991:2099
# polC.85.f6[,1] <- gfd85.f6.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.85.f6[,2] <- mir85.f6.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.85.f6[,3] <- ces85.f6.91.add$annual_Catch[,"W.pollock_Adu"]
# # head(polC.85.f6)
# polC.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) polC.85.f6.up[i] <- max(polC.85.f6[i,])
# polC.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) polC.85.f6.lo[i] <- min(polC.85.f6[i,])

# # SRES A1B
# polC.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(polC.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# row.names(polC.a1b.f6) <- 1991:2039
# polC.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.a1b.f6[,2] <- echA1B.f6.91.add$annual_Catch[,"W.pollock_Adu"]
# polC.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Catch[,"W.pollock_Adu"]
# # head(polC.a1b.f6)
# polC.a1b.f6.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polC.a1b.f6.up[i] <- max(polC.a1b.f6[i,])
# polC.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) polC.a1b.f6.lo[i] <- min(polC.a1b.f6[i,])





# ============================================================================ #
# ============================================================================ #



################################################################################
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
################################################################################

# ---------------------------------------------------------------------------- #
# Arrowtooth biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
atfB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfB.45.f1.80) <- c("gfd","mir","ces")
row.names(atfB.45.f1.80) <- 1991:2080
atfB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
atfB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
atfB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# head(atfB.45.f1.80)
atfB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfB.45.f1.80.up[i] <- max(atfB.45.f1.80[i,])
atfB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfB.45.f1.80.lo[i] <- min(atfB.45.f1.80[i,])
# Everything from 2081-2099
atfB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfB.45.f1.99) <- c("gfd","mir")
row.names(atfB.45.f1.99) <- 2081:2099
atfB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
atfB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
# head(atfB.45.f1.99)
atfB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfB.45.f1.99.up[i] <- max(atfB.45.f1.99[i,])
atfB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfB.45.f1.99.lo[i] <- min(atfB.45.f1.99[i,])
# now append these two time periods
atfB.45.f1.up <- c(atfB.45.f1.80.up,atfB.45.f1.99.up)
atfB.45.f1.lo <- c(atfB.45.f1.80.lo,atfB.45.f1.99.lo)

# RCP 8.5
atfB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfB.85.f1) <- c("gfd","mir","ces")
row.names(atfB.85.f1) <- 1991:2099
atfB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"]
atfB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"]
atfB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# head(atfB.85.f1)
atfB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfB.85.f1.up[i] <- max(atfB.85.f1[i,])
atfB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfB.85.f1.lo[i] <- min(atfB.85.f1[i,])

# # SRES A1B
# atfB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfB.a1b.f1) <- 1991:2039
# atfB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # head(atfB.a1b.f1)
# atfB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f1.up[i] <- max(atfB.a1b.f1[i,])
# atfB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f1.lo[i] <- min(atfB.a1b.f1[i,])

# Arrowtooth Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
atfC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfC.45.f1.80) <- c("gfd","mir","ces")
row.names(atfC.45.f1.80) <- 1991:2080
atfC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
atfC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
atfC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Arrowtooth_Adu"]
# head(atfC.45.f1.80)
atfC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfC.45.f1.80.up[i] <- max(atfC.45.f1.80[i,])
atfC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfC.45.f1.80.lo[i] <- min(atfC.45.f1.80[i,])
# Everything from 2081-2099
atfC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfC.45.f1.99) <- c("gfd","mir")
row.names(atfC.45.f1.99) <- 2081:2099
atfC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
atfC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
# head(atfC.45.f1.99)
atfC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfC.45.f1.99.up[i] <- max(atfC.45.f1.99[i,])
atfC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfC.45.f1.99.lo[i] <- min(atfC.45.f1.99[i,])
# now append these two time periods
atfC.45.f1.up <- c(atfC.45.f1.80.up,atfC.45.f1.99.up)
atfC.45.f1.lo <- c(atfC.45.f1.80.lo,atfC.45.f1.99.lo)

# RCP 8.5
atfC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfC.85.f1) <- c("gfd","mir","ces")
row.names(atfC.85.f1) <- 1991:2099
atfC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Arrowtooth_Adu"]
atfC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Arrowtooth_Adu"]
atfC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Arrowtooth_Adu"]
# head(atfC.85.f1)
atfC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfC.85.f1.up[i] <- max(atfC.85.f1[i,])
atfC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfC.85.f1.lo[i] <- min(atfC.85.f1[i,])

# # SRES A1B
# atfC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfC.a1b.f1) <- 1991:2039
# atfC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # head(atfC.a1b.f1)
# atfC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f1.up[i] <- max(atfC.a1b.f1[i,])
# atfC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f1.lo[i] <- min(atfC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Arrowtooth F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
atfB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfB.45.f2.80) <- c("gfd","mir","ces")
row.names(atfB.45.f2.80) <- 1991:2080
atfB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
atfB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
atfB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# head(atfB.45.f2.80)
atfB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfB.45.f2.80.up[i] <- max(atfB.45.f2.80[i,])
atfB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfB.45.f2.80.lo[i] <- min(atfB.45.f2.80[i,])
# Everything from 2081-2099
atfB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfB.45.f2.99) <- c("gfd","mir")
row.names(atfB.45.f2.99) <- 2081:2099
atfB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
atfB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
# head(atfB.45.f2.99)
atfB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfB.45.f2.99.up[i] <- max(atfB.45.f2.99[i,])
atfB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfB.45.f2.99.lo[i] <- min(atfB.45.f2.99[i,])
# now append these two time periods
atfB.45.f2.up <- c(atfB.45.f2.80.up,atfB.45.f2.99.up)
atfB.45.f2.lo <- c(atfB.45.f2.80.lo,atfB.45.f2.99.lo)

# RCP 8.5
atfB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfB.85.f2) <- c("gfd","mir","ces")
row.names(atfB.85.f2) <- 1991:2099
atfB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"]
atfB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"]
atfB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# head(atfB.85.f2)
atfB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfB.85.f2.up[i] <- max(atfB.85.f2[i,])
atfB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfB.85.f2.lo[i] <- min(atfB.85.f2[i,])

# # SRES A1B
# atfB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfB.a1b.f2) <- 1991:2039
# atfB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # head(atfB.a1b.f2)
# atfB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f2.up[i] <- max(atfB.a1b.f2[i,])
# atfB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f2.lo[i] <- min(atfB.a1b.f2[i,])

# Arrowtooth Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
atfC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfC.45.f2.80) <- c("gfd","mir","ces")
row.names(atfC.45.f2.80) <- 1991:2080
atfC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
atfC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
atfC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Arrowtooth_Adu"]
# head(atfC.45.f2.80)
atfC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfC.45.f2.80.up[i] <- max(atfC.45.f2.80[i,])
atfC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfC.45.f2.80.lo[i] <- min(atfC.45.f2.80[i,])
# Everything from 2081-2099
atfC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfC.45.f2.99) <- c("gfd","mir")
row.names(atfC.45.f2.99) <- 2081:2099
atfC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
atfC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
# head(atfC.45.f2.99)
atfC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfC.45.f2.99.up[i] <- max(atfC.45.f2.99[i,])
atfC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfC.45.f2.99.lo[i] <- min(atfC.45.f2.99[i,])
# now append these two time periods
atfC.45.f2.up <- c(atfC.45.f2.80.up,atfC.45.f2.99.up)
atfC.45.f2.lo <- c(atfC.45.f2.80.lo,atfC.45.f2.99.lo)

# RCP 8.5
atfC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfC.85.f2) <- c("gfd","mir","ces")
row.names(atfC.85.f2) <- 1991:2099
atfC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Arrowtooth_Adu"]
atfC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Arrowtooth_Adu"]
atfC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Arrowtooth_Adu"]
# head(atfC.85.f2)
atfC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfC.85.f2.up[i] <- max(atfC.85.f2[i,])
atfC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfC.85.f2.lo[i] <- min(atfC.85.f2[i,])

# # SRES A1B
# atfC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfC.a1b.f2) <- 1991:2039
# atfC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # head(atfC.a1b.f2)
# atfC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f2.up[i] <- max(atfC.a1b.f2[i,])
# atfC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f2.lo[i] <- min(atfC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Arrowtooth F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
atfB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfB.45.f3.80) <- c("gfd","mir","ces")
row.names(atfB.45.f3.80) <- 1991:2080
atfB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
atfB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
atfB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# head(atfB.45.f3.80)
atfB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfB.45.f3.80.up[i] <- max(atfB.45.f3.80[i,])
atfB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfB.45.f3.80.lo[i] <- min(atfB.45.f3.80[i,])
# Everything from 2081-2099
atfB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfB.45.f3.99) <- c("gfd","mir")
row.names(atfB.45.f3.99) <- 2081:2099
atfB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
atfB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
# head(atfB.45.f3.99)
atfB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfB.45.f3.99.up[i] <- max(atfB.45.f3.99[i,])
atfB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfB.45.f3.99.lo[i] <- min(atfB.45.f3.99[i,])
# now append these two time periods
atfB.45.f3.up <- c(atfB.45.f3.80.up,atfB.45.f3.99.up)
atfB.45.f3.lo <- c(atfB.45.f3.80.lo,atfB.45.f3.99.lo)

# RCP 8.5
atfB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfB.85.f3) <- c("gfd","mir","ces")
row.names(atfB.85.f3) <- 1991:2099
atfB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"]
atfB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"]
atfB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# head(atfB.85.f3)
atfB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfB.85.f3.up[i] <- max(atfB.85.f3[i,])
atfB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfB.85.f3.lo[i] <- min(atfB.85.f3[i,])

# # SRES A1B
# atfB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfB.a1b.f3) <- 1991:2039
# atfB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # head(atfB.a1b.f3)
# atfB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f3.up[i] <- max(atfB.a1b.f3[i,])
# atfB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f3.lo[i] <- min(atfB.a1b.f3[i,])

# Arrowtooth Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
atfC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfC.45.f3.80) <- c("gfd","mir","ces")
row.names(atfC.45.f3.80) <- 1991:2080
atfC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
atfC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
atfC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Arrowtooth_Adu"]
# head(atfC.45.f3.80)
atfC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfC.45.f3.80.up[i] <- max(atfC.45.f3.80[i,])
atfC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfC.45.f3.80.lo[i] <- min(atfC.45.f3.80[i,])
# Everything from 2081-2099
atfC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfC.45.f3.99) <- c("gfd","mir")
row.names(atfC.45.f3.99) <- 2081:2099
atfC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
atfC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
# head(atfC.45.f3.99)
atfC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfC.45.f3.99.up[i] <- max(atfC.45.f3.99[i,])
atfC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfC.45.f3.99.lo[i] <- min(atfC.45.f3.99[i,])
# now append these two time periods
atfC.45.f3.up <- c(atfC.45.f3.80.up,atfC.45.f3.99.up)
atfC.45.f3.lo <- c(atfC.45.f3.80.lo,atfC.45.f3.99.lo)

# RCP 8.5
atfC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfC.85.f3) <- c("gfd","mir","ces")
row.names(atfC.85.f3) <- 1991:2099
atfC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Arrowtooth_Adu"]
atfC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Arrowtooth_Adu"]
atfC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Arrowtooth_Adu"]
# head(atfC.85.f3)
atfC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfC.85.f3.up[i] <- max(atfC.85.f3[i,])
atfC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfC.85.f3.lo[i] <- min(atfC.85.f3[i,])

# # SRES A1B
# atfC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfC.a1b.f3) <- 1991:2039
# atfC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # head(atfC.a1b.f3)
# atfC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f3.up[i] <- max(atfC.a1b.f3[i,])
# atfC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f3.lo[i] <- min(atfC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Arrowtooth F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
atfB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfB.45.f4.80) <- c("gfd","mir","ces")
row.names(atfB.45.f4.80) <- 1991:2080
atfB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
atfB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
atfB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# head(atfB.45.f4.80)
atfB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfB.45.f4.80.up[i] <- max(atfB.45.f4.80[i,])
atfB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfB.45.f4.80.lo[i] <- min(atfB.45.f4.80[i,])
# Everything from 2081-2099
atfB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfB.45.f4.99) <- c("gfd","mir")
row.names(atfB.45.f4.99) <- 2081:2099
atfB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
atfB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
# head(atfB.45.f4.99)
atfB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfB.45.f4.99.up[i] <- max(atfB.45.f4.99[i,])
atfB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfB.45.f4.99.lo[i] <- min(atfB.45.f4.99[i,])
# now append these two time periods
atfB.45.f4.up <- c(atfB.45.f4.80.up,atfB.45.f4.99.up)
atfB.45.f4.lo <- c(atfB.45.f4.80.lo,atfB.45.f4.99.lo)

# RCP 8.5
atfB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfB.85.f4) <- c("gfd","mir","ces")
row.names(atfB.85.f4) <- 1991:2099
atfB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"]
atfB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"]
atfB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# head(atfB.85.f4)
atfB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfB.85.f4.up[i] <- max(atfB.85.f4[i,])
atfB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfB.85.f4.lo[i] <- min(atfB.85.f4[i,])

# # SRES A1B
# atfB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfB.a1b.f4) <- 1991:2039
# atfB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # head(atfB.a1b.f4)
# atfB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f4.up[i] <- max(atfB.a1b.f4[i,])
# atfB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f4.lo[i] <- min(atfB.a1b.f4[i,])

# Arrowtooth Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
atfC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(atfC.45.f4.80) <- c("gfd","mir","ces")
row.names(atfC.45.f4.80) <- 1991:2080
atfC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
atfC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
atfC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Arrowtooth_Adu"]
# head(atfC.45.f4.80)
atfC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfC.45.f4.80.up[i] <- max(atfC.45.f4.80[i,])
atfC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) atfC.45.f4.80.lo[i] <- min(atfC.45.f4.80[i,])
# Everything from 2081-2099
atfC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(atfC.45.f4.99) <- c("gfd","mir")
row.names(atfC.45.f4.99) <- 2081:2099
atfC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
atfC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
# head(atfC.45.f4.99)
atfC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfC.45.f4.99.up[i] <- max(atfC.45.f4.99[i,])
atfC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) atfC.45.f4.99.lo[i] <- min(atfC.45.f4.99[i,])
# now append these two time periods
atfC.45.f4.up <- c(atfC.45.f4.80.up,atfC.45.f4.99.up)
atfC.45.f4.lo <- c(atfC.45.f4.80.lo,atfC.45.f4.99.lo)

# RCP 8.5
atfC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(atfC.85.f4) <- c("gfd","mir","ces")
row.names(atfC.85.f4) <- 1991:2099
atfC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Arrowtooth_Adu"]
atfC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Arrowtooth_Adu"]
atfC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Arrowtooth_Adu"]
# head(atfC.85.f4)
atfC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfC.85.f4.up[i] <- max(atfC.85.f4[i,])
atfC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) atfC.85.f4.lo[i] <- min(atfC.85.f4[i,])

# # SRES A1B
# atfC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfC.a1b.f4) <- 1991:2039
# atfC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # head(atfC.a1b.f4)
# atfC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f4.up[i] <- max(atfC.a1b.f4[i,])
# atfC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f4.lo[i] <- min(atfC.a1b.f4[i,])

# ---------------------------------------------------------------------------- #
# Arrowtooth f5 ---*ABC*---
# RCP 4.5
# Everything up through 2080
# atfB.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(atfB.45.f5.80) <- c("gfd","mir","ces")
# row.names(atfB.45.f5.80) <- 1991:2080
# atfB.45.f5.80[,1] <- gfd45.f5.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
# atfB.45.f5.80[,2] <- mir45.f5.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
# atfB.45.f5.80[,3] <- ces45.f5.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # head(atfB.45.f5.80)
# atfB.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) atfB.45.f5.80.up[i] <- max(atfB.45.f5.80[i,])
# atfB.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) atfB.45.f5.80.lo[i] <- min(atfB.45.f5.80[i,])
# # Everything from 2081-2099
# atfB.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(atfB.45.f5.99) <- c("gfd","mir")
# row.names(atfB.45.f5.99) <- 2081:2099
# atfB.45.f5.99[,1] <- gfd45.f5.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
# atfB.45.f5.99[,2] <- mir45.f5.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
# # head(atfB.45.f5.99)
# atfB.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) atfB.45.f5.99.up[i] <- max(atfB.45.f5.99[i,])
# atfB.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) atfB.45.f5.99.lo[i] <- min(atfB.45.f5.99[i,])
# # now append these two time periods
# atfB.45.f5.up <- c(atfB.45.f5.80.up,atfB.45.f5.99.up)
# atfB.45.f5.lo <- c(atfB.45.f5.80.lo,atfB.45.f5.99.lo)
# 
# # RCP 8.5
# atfB.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(atfB.85.f5) <- c("gfd","mir","ces")
# row.names(atfB.85.f5) <- 1991:2099
# atfB.85.f5[,1] <- gfd85.f5.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.85.f5[,2] <- mir85.f5.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.85.f5[,3] <- ces85.f5.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # head(atfB.85.f5)
# atfB.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) atfB.85.f5.up[i] <- max(atfB.85.f5[i,])
# atfB.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) atfB.85.f5.lo[i] <- min(atfB.85.f5[i,])
# 
# # # SRES A1B
# # atfB.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(atfB.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(atfB.a1b.f5) <- 1991:2039
# # atfB.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # atfB.a1b.f5[,2] <- echA1B.f5.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # atfB.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # # head(atfB.a1b.f5)
# # atfB.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) atfB.a1b.f5.up[i] <- max(atfB.a1b.f5[i,])
# # atfB.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) atfB.a1b.f5.lo[i] <- min(atfB.a1b.f5[i,])
# 
# # Arrowtooth Catch ----- *ABC*
# # RCP 4.5
# # Everything up through 2080
# atfC.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(atfC.45.f5.80) <- c("gfd","mir","ces")
# row.names(atfC.45.f5.80) <- 1991:2080
# atfC.45.f5.80[,1] <- gfd45.f5.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
# atfC.45.f5.80[,2] <- mir45.f5.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
# atfC.45.f5.80[,3] <- ces45.f5.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # head(atfC.45.f5.80)
# atfC.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) atfC.45.f5.80.up[i] <- max(atfC.45.f5.80[i,])
# atfC.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) atfC.45.f5.80.lo[i] <- min(atfC.45.f5.80[i,])
# # Everything from 2081-2099
# atfC.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(atfC.45.f5.99) <- c("gfd","mir")
# row.names(atfC.45.f5.99) <- 2081:2099
# atfC.45.f5.99[,1] <- gfd45.f5.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
# atfC.45.f5.99[,2] <- mir45.f5.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
# # head(atfC.45.f5.99)
# atfC.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) atfC.45.f5.99.up[i] <- max(atfC.45.f5.99[i,])
# atfC.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) atfC.45.f5.99.lo[i] <- min(atfC.45.f5.99[i,])
# # now append these two time periods
# atfC.45.f5.up <- c(atfC.45.f5.80.up,atfC.45.f5.99.up)
# atfC.45.f5.lo <- c(atfC.45.f5.80.lo,atfC.45.f5.99.lo)
# 
# # RCP 8.5
# atfC.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(atfC.85.f5) <- c("gfd","mir","ces")
# row.names(atfC.85.f5) <- 1991:2099
# atfC.85.f5[,1] <- gfd85.f5.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.85.f5[,2] <- mir85.f5.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.85.f5[,3] <- ces85.f5.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # head(atfC.85.f5)
# atfC.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) atfC.85.f5.up[i] <- max(atfC.85.f5[i,])
# atfC.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) atfC.85.f5.lo[i] <- min(atfC.85.f5[i,])
# 
# # # SRES A1B
# # atfC.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(atfC.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(atfC.a1b.f5) <- 1991:2039
# # atfC.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # atfC.a1b.f5[,2] <- echA1B.f5.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # atfC.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # # head(atfC.a1b.f5)
# # atfC.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) atfC.a1b.f5.up[i] <- max(atfC.a1b.f5[i,])
# # atfC.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) atfC.a1b.f5.lo[i] <- min(atfC.a1b.f5[i,])
# 
# # ---------------------------------------------------------------------------- #
# # Arrowtooth f6 ---*F_equil*---
# # RCP 4.5
# # Everything up through 2080
# atfB.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(atfB.45.f6.80) <- c("gfd","mir","ces")
# row.names(atfB.45.f6.80) <- 1991:2080
# atfB.45.f6.80[,1] <- gfd45.f6.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
# atfB.45.f6.80[,2] <- mir45.f6.91.add$annual_Biomass[1:90,"Arrowtooth_Adu"]
# atfB.45.f6.80[,3] <- ces45.f6.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # head(atfB.45.f6.80)
# atfB.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) atfB.45.f6.80.up[i] <- max(atfB.45.f6.80[i,])
# atfB.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) atfB.45.f6.80.lo[i] <- min(atfB.45.f6.80[i,])
# # Everything from 2081-2099
# atfB.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(atfB.45.f6.99) <- c("gfd","mir")
# row.names(atfB.45.f6.99) <- 2081:2099
# atfB.45.f6.99[,1] <- gfd45.f6.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
# atfB.45.f6.99[,2] <- mir45.f6.91.add$annual_Biomass[91:109,"Arrowtooth_Adu"]
# # head(atfB.45.f6.99)
# atfB.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) atfB.45.f6.99.up[i] <- max(atfB.45.f6.99[i,])
# atfB.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) atfB.45.f6.99.lo[i] <- min(atfB.45.f6.99[i,])
# # now append these two time periods
# atfB.45.f6.up <- c(atfB.45.f6.80.up,atfB.45.f6.99.up)
# atfB.45.f6.lo <- c(atfB.45.f6.80.lo,atfB.45.f6.99.lo)
# 
# # RCP 8.5
# atfB.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(atfB.85.f6) <- c("gfd","mir","ces")
# row.names(atfB.85.f6) <- 1991:2099
# atfB.85.f6[,1] <- gfd85.f6.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.85.f6[,2] <- mir85.f6.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.85.f6[,3] <- ces85.f6.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # head(atfB.85.f6)
# atfB.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) atfB.85.f6.up[i] <- max(atfB.85.f6[i,])
# atfB.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) atfB.85.f6.lo[i] <- min(atfB.85.f6[i,])

# # SRES A1B
# atfB.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfB.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfB.a1b.f6) <- 1991:2039
# atfB.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f6[,2] <- echA1B.f6.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# atfB.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Biomass[,"Arrowtooth_Adu"]
# # head(atfB.a1b.f6)
# atfB.a1b.f6.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f6.up[i] <- max(atfB.a1b.f6[i,])
# atfB.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfB.a1b.f6.lo[i] <- min(atfB.a1b.f6[i,])

# Arrowtooth Catch ----- *F_equil*
# RCP 4.5
# Everything up through 2080
# atfC.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(atfC.45.f6.80) <- c("gfd","mir","ces")
# row.names(atfC.45.f6.80) <- 1991:2080
# atfC.45.f6.80[,1] <- gfd45.f6.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
# atfC.45.f6.80[,2] <- mir45.f6.91.add$annual_Catch[1:90,"Arrowtooth_Adu"]
# atfC.45.f6.80[,3] <- ces45.f6.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # head(atfC.45.f6.80)
# atfC.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) atfC.45.f6.80.up[i] <- max(atfC.45.f6.80[i,])
# atfC.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) atfC.45.f6.80.lo[i] <- min(atfC.45.f6.80[i,])
# # Everything from 2081-2099
# atfC.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(atfC.45.f6.99) <- c("gfd","mir")
# row.names(atfC.45.f6.99) <- 2081:2099
# atfC.45.f6.99[,1] <- gfd45.f6.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
# atfC.45.f6.99[,2] <- mir45.f6.91.add$annual_Catch[91:109,"Arrowtooth_Adu"]
# # head(atfC.45.f6.99)
# atfC.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) atfC.45.f6.99.up[i] <- max(atfC.45.f6.99[i,])
# atfC.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) atfC.45.f6.99.lo[i] <- min(atfC.45.f6.99[i,])
# # now append these two time periods
# atfC.45.f6.up <- c(atfC.45.f6.80.up,atfC.45.f6.99.up)
# atfC.45.f6.lo <- c(atfC.45.f6.80.lo,atfC.45.f6.99.lo)
# 
# # RCP 8.5
# atfC.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(atfC.85.f6) <- c("gfd","mir","ces")
# row.names(atfC.85.f6) <- 1991:2099
# atfC.85.f6[,1] <- gfd85.f6.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.85.f6[,2] <- mir85.f6.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.85.f6[,3] <- ces85.f6.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # head(atfC.85.f6)
# atfC.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) atfC.85.f6.up[i] <- max(atfC.85.f6[i,])
# atfC.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) atfC.85.f6.lo[i] <- min(atfC.85.f6[i,])

# # SRES A1B
# atfC.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(atfC.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# row.names(atfC.a1b.f6) <- 1991:2039
# atfC.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f6[,2] <- echA1B.f6.91.add$annual_Catch[,"Arrowtooth_Adu"]
# atfC.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Catch[,"Arrowtooth_Adu"]
# # head(atfC.a1b.f6)
# atfC.a1b.f6.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f6.up[i] <- max(atfC.a1b.f6[i,])
# atfC.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) atfC.a1b.f6.lo[i] <- min(atfC.a1b.f6[i,])




# ============================================================================ #
# ============================================================================ #



################################################################################
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
################################################################################

# ---------------------------------------------------------------------------- #
# N.Rock.sole biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
nrsB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrsB.45.f1.80) <- c("gfd","mir","ces")
row.names(nrsB.45.f1.80) <- 1991:2080
nrsB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"N.Rock.sole"]
nrsB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"N.Rock.sole"]
nrsB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"N.Rock.sole"]
# head(nrsB.45.f1.80)
nrsB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsB.45.f1.80.up[i] <- max(nrsB.45.f1.80[i,])
nrsB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsB.45.f1.80.lo[i] <- min(nrsB.45.f1.80[i,])
# Everything from 2081-2099
nrsB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrsB.45.f1.99) <- c("gfd","mir")
row.names(nrsB.45.f1.99) <- 2081:2099
nrsB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"N.Rock.sole"]
nrsB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"N.Rock.sole"]
# head(nrsB.45.f1.99)
nrsB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsB.45.f1.99.up[i] <- max(nrsB.45.f1.99[i,])
nrsB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsB.45.f1.99.lo[i] <- min(nrsB.45.f1.99[i,])
# now append these two time periods
nrsB.45.f1.up <- c(nrsB.45.f1.80.up,nrsB.45.f1.99.up)
nrsB.45.f1.lo <- c(nrsB.45.f1.80.lo,nrsB.45.f1.99.lo)

# RCP 8.5
nrsB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrsB.85.f1) <- c("gfd","mir","ces")
row.names(nrsB.85.f1) <- 1991:2099
nrsB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"N.Rock.sole"]
nrsB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"N.Rock.sole"]
nrsB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"N.Rock.sole"]
# head(nrsB.85.f1)
nrsB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsB.85.f1.up[i] <- max(nrsB.85.f1[i,])
nrsB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsB.85.f1.lo[i] <- min(nrsB.85.f1[i,])

# # SRES A1B
# nrsB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrsB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrsB.a1b.f1) <- 1991:2039
# nrsB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"N.Rock.sole"]
# # head(nrsB.a1b.f1)
# nrsB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsB.a1b.f1.up[i] <- max(nrsB.a1b.f1[i,])
# nrsB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsB.a1b.f1.lo[i] <- min(nrsB.a1b.f1[i,])

# N.Rock.sole Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
nrsC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrsC.45.f1.80) <- c("gfd","mir","ces")
row.names(nrsC.45.f1.80) <- 1991:2080
nrsC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"N.Rock.sole"]
nrsC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"N.Rock.sole"]
nrsC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"N.Rock.sole"]
# head(nrsC.45.f1.80)
nrsC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsC.45.f1.80.up[i] <- max(nrsC.45.f1.80[i,])
nrsC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsC.45.f1.80.lo[i] <- min(nrsC.45.f1.80[i,])
# Everything from 2081-2099
nrsC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrsC.45.f1.99) <- c("gfd","mir")
row.names(nrsC.45.f1.99) <- 2081:2099
nrsC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"N.Rock.sole"]
nrsC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"N.Rock.sole"]
# head(nrsC.45.f1.99)
nrsC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsC.45.f1.99.up[i] <- max(nrsC.45.f1.99[i,])
nrsC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsC.45.f1.99.lo[i] <- min(nrsC.45.f1.99[i,])
# now append these two time periods
nrsC.45.f1.up <- c(nrsC.45.f1.80.up,nrsC.45.f1.99.up)
nrsC.45.f1.lo <- c(nrsC.45.f1.80.lo,nrsC.45.f1.99.lo)

# RCP 8.5
nrsC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrsC.85.f1) <- c("gfd","mir","ces")
row.names(nrsC.85.f1) <- 1991:2099
nrsC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"N.Rock.sole"]
nrsC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"N.Rock.sole"]
nrsC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"N.Rock.sole"]
# head(nrsC.85.f1)
nrsC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsC.85.f1.up[i] <- max(nrsC.85.f1[i,])
nrsC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsC.85.f1.lo[i] <- min(nrsC.85.f1[i,])

# # SRES A1B
# nrsC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrsC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrsC.a1b.f1) <- 1991:2039
# nrsC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"N.Rock.sole"]
# # head(nrsC.a1b.f1)
# nrsC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f1.up[i] <- max(nrsC.a1b.f1[i,])
# nrsC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f1.lo[i] <- min(nrsC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# N.Rock.sole F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
nrsB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrsB.45.f2.80) <- c("gfd","mir","ces")
row.names(nrsB.45.f2.80) <- 1991:2080
nrsB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"N.Rock.sole"]
nrsB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"N.Rock.sole"]
nrsB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"N.Rock.sole"]
# head(nrsB.45.f2.80)
nrsB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsB.45.f2.80.up[i] <- max(nrsB.45.f2.80[i,])
nrsB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsB.45.f2.80.lo[i] <- min(nrsB.45.f2.80[i,])
# Everything from 2081-2099
nrsB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrsB.45.f2.99) <- c("gfd","mir")
row.names(nrsB.45.f2.99) <- 2081:2099
nrsB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"N.Rock.sole"]
nrsB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"N.Rock.sole"]
# head(nrsB.45.f2.99)
nrsB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsB.45.f2.99.up[i] <- max(nrsB.45.f2.99[i,])
nrsB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsB.45.f2.99.lo[i] <- min(nrsB.45.f2.99[i,])
# now append these two time periods
nrsB.45.f2.up <- c(nrsB.45.f2.80.up,nrsB.45.f2.99.up)
nrsB.45.f2.lo <- c(nrsB.45.f2.80.lo,nrsB.45.f2.99.lo)

# RCP 8.5
nrsB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrsB.85.f2) <- c("gfd","mir","ces")
row.names(nrsB.85.f2) <- 1991:2099
nrsB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"N.Rock.sole"]
nrsB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"N.Rock.sole"]
nrsB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"N.Rock.sole"]
# head(nrsB.85.f2)
nrsB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsB.85.f2.up[i] <- max(nrsB.85.f2[i,])
nrsB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsB.85.f2.lo[i] <- min(nrsB.85.f2[i,])

# # SRES A1B
# nrsB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrsB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrsB.a1b.f2) <- 1991:2039
# nrsB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"N.Rock.sole"]
# # head(nrsB.a1b.f2)
# nrsB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsB.a1b.f2.up[i] <- max(nrsB.a1b.f2[i,])
# nrsB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsB.a1b.f2.lo[i] <- min(nrsB.a1b.f2[i,])

# N.Rock.sole Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
nrsC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrsC.45.f2.80) <- c("gfd","mir","ces")
row.names(nrsC.45.f2.80) <- 1991:2080
nrsC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"N.Rock.sole"]
nrsC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"N.Rock.sole"]
nrsC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"N.Rock.sole"]
# head(nrsC.45.f2.80)
nrsC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsC.45.f2.80.up[i] <- max(nrsC.45.f2.80[i,])
nrsC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsC.45.f2.80.lo[i] <- min(nrsC.45.f2.80[i,])
# Everything from 2081-2099
nrsC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrsC.45.f2.99) <- c("gfd","mir")
row.names(nrsC.45.f2.99) <- 2081:2099
nrsC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"N.Rock.sole"]
nrsC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"N.Rock.sole"]
# head(nrsC.45.f2.99)
nrsC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsC.45.f2.99.up[i] <- max(nrsC.45.f2.99[i,])
nrsC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsC.45.f2.99.lo[i] <- min(nrsC.45.f2.99[i,])
# now append these two time periods
nrsC.45.f2.up <- c(nrsC.45.f2.80.up,nrsC.45.f2.99.up)
nrsC.45.f2.lo <- c(nrsC.45.f2.80.lo,nrsC.45.f2.99.lo)

# RCP 8.5
nrsC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrsC.85.f2) <- c("gfd","mir","ces")
row.names(nrsC.85.f2) <- 1991:2099
nrsC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"N.Rock.sole"]
nrsC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"N.Rock.sole"]
nrsC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"N.Rock.sole"]
# head(nrsC.85.f2)
nrsC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsC.85.f2.up[i] <- max(nrsC.85.f2[i,])
nrsC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsC.85.f2.lo[i] <- min(nrsC.85.f2[i,])

# # SRES A1B
# nrsC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrsC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrsC.a1b.f2) <- 1991:2039
# nrsC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"N.Rock.sole"]
# # head(nrsC.a1b.f2)
# nrsC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f2.up[i] <- max(nrsC.a1b.f2[i,])
# nrsC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f2.lo[i] <- min(nrsC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# N.Rock.sole F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
nrsB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrsB.45.f3.80) <- c("gfd","mir","ces")
row.names(nrsB.45.f3.80) <- 1991:2080
nrsB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"N.Rock.sole"]
nrsB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"N.Rock.sole"]
nrsB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"N.Rock.sole"]
# head(nrsB.45.f3.80)
nrsB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsB.45.f3.80.up[i] <- max(nrsB.45.f3.80[i,])
nrsB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsB.45.f3.80.lo[i] <- min(nrsB.45.f3.80[i,])
# Everything from 2081-2099
nrsB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrsB.45.f3.99) <- c("gfd","mir")
row.names(nrsB.45.f3.99) <- 2081:2099
nrsB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"N.Rock.sole"]
nrsB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"N.Rock.sole"]
# head(nrsB.45.f3.99)
nrsB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsB.45.f3.99.up[i] <- max(nrsB.45.f3.99[i,])
nrsB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsB.45.f3.99.lo[i] <- min(nrsB.45.f3.99[i,])
# now append these two time periods
nrsB.45.f3.up <- c(nrsB.45.f3.80.up,nrsB.45.f3.99.up)
nrsB.45.f3.lo <- c(nrsB.45.f3.80.lo,nrsB.45.f3.99.lo)

# RCP 8.5
nrsB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrsB.85.f3) <- c("gfd","mir","ces")
row.names(nrsB.85.f3) <- 1991:2099
nrsB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"N.Rock.sole"]
nrsB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"N.Rock.sole"]
nrsB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"N.Rock.sole"]
# head(nrsB.85.f3)
nrsB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsB.85.f3.up[i] <- max(nrsB.85.f3[i,])
nrsB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsB.85.f3.lo[i] <- min(nrsB.85.f3[i,])

# # SRES A1B
# nrsB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrsB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrsB.a1b.f3) <- 1991:2039
# nrsB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"N.Rock.sole"]
# # head(nrsB.a1b.f3)
# nrsB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsB.a1b.f3.up[i] <- max(nrsB.a1b.f3[i,])
# nrsB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsB.a1b.f3.lo[i] <- min(nrsB.a1b.f3[i,])

# N.Rock.sole Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
nrsC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrsC.45.f3.80) <- c("gfd","mir","ces")
row.names(nrsC.45.f3.80) <- 1991:2080
nrsC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"N.Rock.sole"]
nrsC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"N.Rock.sole"]
nrsC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"N.Rock.sole"]
# head(nrsC.45.f3.80)
nrsC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsC.45.f3.80.up[i] <- max(nrsC.45.f3.80[i,])
nrsC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsC.45.f3.80.lo[i] <- min(nrsC.45.f3.80[i,])
# Everything from 2081-2099
nrsC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrsC.45.f3.99) <- c("gfd","mir")
row.names(nrsC.45.f3.99) <- 2081:2099
nrsC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"N.Rock.sole"]
nrsC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"N.Rock.sole"]
# head(nrsC.45.f3.99)
nrsC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsC.45.f3.99.up[i] <- max(nrsC.45.f3.99[i,])
nrsC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsC.45.f3.99.lo[i] <- min(nrsC.45.f3.99[i,])
# now append these two time periods
nrsC.45.f3.up <- c(nrsC.45.f3.80.up,nrsC.45.f3.99.up)
nrsC.45.f3.lo <- c(nrsC.45.f3.80.lo,nrsC.45.f3.99.lo)

# RCP 8.5
nrsC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrsC.85.f3) <- c("gfd","mir","ces")
row.names(nrsC.85.f3) <- 1991:2099
nrsC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"N.Rock.sole"]
nrsC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"N.Rock.sole"]
nrsC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"N.Rock.sole"]
# head(nrsC.85.f3)
nrsC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsC.85.f3.up[i] <- max(nrsC.85.f3[i,])
nrsC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsC.85.f3.lo[i] <- min(nrsC.85.f3[i,])

# # SRES A1B
# nrsC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrsC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrsC.a1b.f3) <- 1991:2039
# nrsC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"N.Rock.sole"]
# # head(nrsC.a1b.f3)
# nrsC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f3.up[i] <- max(nrsC.a1b.f3[i,])
# nrsC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f3.lo[i] <- min(nrsC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# N.Rock.sole F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
nrsB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrsB.45.f4.80) <- c("gfd","mir","ces")
row.names(nrsB.45.f4.80) <- 1991:2080
nrsB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"N.Rock.sole"]
nrsB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"N.Rock.sole"]
nrsB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"N.Rock.sole"]
# head(nrsB.45.f4.80)
nrsB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsB.45.f4.80.up[i] <- max(nrsB.45.f4.80[i,])
nrsB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsB.45.f4.80.lo[i] <- min(nrsB.45.f4.80[i,])
# Everything from 2081-2099
nrsB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrsB.45.f4.99) <- c("gfd","mir")
row.names(nrsB.45.f4.99) <- 2081:2099
nrsB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"N.Rock.sole"]
nrsB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"N.Rock.sole"]
# head(nrsB.45.f4.99)
nrsB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsB.45.f4.99.up[i] <- max(nrsB.45.f4.99[i,])
nrsB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsB.45.f4.99.lo[i] <- min(nrsB.45.f4.99[i,])
# now append these two time periods
nrsB.45.f4.up <- c(nrsB.45.f4.80.up,nrsB.45.f4.99.up)
nrsB.45.f4.lo <- c(nrsB.45.f4.80.lo,nrsB.45.f4.99.lo)

# RCP 8.5
nrsB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrsB.85.f4) <- c("gfd","mir","ces")
row.names(nrsB.85.f4) <- 1991:2099
nrsB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"N.Rock.sole"]
nrsB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"N.Rock.sole"]
nrsB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"N.Rock.sole"]
# head(nrsB.85.f4)
nrsB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsB.85.f4.up[i] <- max(nrsB.85.f4[i,])
nrsB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsB.85.f4.lo[i] <- min(nrsB.85.f4[i,])

# # SRES A1B
# nrsB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrsB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrsB.a1b.f4) <- 1991:2039
# nrsB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"N.Rock.sole"]
# # head(nrsB.a1b.f4)
# nrsB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsB.a1b.f4.up[i] <- max(nrsB.a1b.f4[i,])
# nrsB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsB.a1b.f4.lo[i] <- min(nrsB.a1b.f4[i,])

# N.Rock.sole Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
nrsC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(nrsC.45.f4.80) <- c("gfd","mir","ces")
row.names(nrsC.45.f4.80) <- 1991:2080
nrsC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"N.Rock.sole"]
nrsC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"N.Rock.sole"]
nrsC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"N.Rock.sole"]
# head(nrsC.45.f4.80)
nrsC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsC.45.f4.80.up[i] <- max(nrsC.45.f4.80[i,])
nrsC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) nrsC.45.f4.80.lo[i] <- min(nrsC.45.f4.80[i,])
# Everything from 2081-2099
nrsC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(nrsC.45.f4.99) <- c("gfd","mir")
row.names(nrsC.45.f4.99) <- 2081:2099
nrsC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"N.Rock.sole"]
nrsC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"N.Rock.sole"]
# head(nrsC.45.f4.99)
nrsC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsC.45.f4.99.up[i] <- max(nrsC.45.f4.99[i,])
nrsC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) nrsC.45.f4.99.lo[i] <- min(nrsC.45.f4.99[i,])
# now append these two time periods
nrsC.45.f4.up <- c(nrsC.45.f4.80.up,nrsC.45.f4.99.up)
nrsC.45.f4.lo <- c(nrsC.45.f4.80.lo,nrsC.45.f4.99.lo)

# RCP 8.5
nrsC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(nrsC.85.f4) <- c("gfd","mir","ces")
row.names(nrsC.85.f4) <- 1991:2099
nrsC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"N.Rock.sole"]
nrsC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"N.Rock.sole"]
nrsC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"N.Rock.sole"]
# head(nrsC.85.f4)
nrsC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsC.85.f4.up[i] <- max(nrsC.85.f4[i,])
nrsC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) nrsC.85.f4.lo[i] <- min(nrsC.85.f4[i,])

# # SRES A1B
# nrsC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrsC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrsC.a1b.f4) <- 1991:2039
# nrsC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"N.Rock.sole"]
# # head(nrsC.a1b.f4)
# nrsC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f4.up[i] <- max(nrsC.a1b.f4[i,])
# nrsC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f4.lo[i] <- min(nrsC.a1b.f4[i,])

# ---------------------------------------------------------------------------- #
# N.Rock.sole f5 ---*ABC*---
# RCP 4.5
# Everything up through 2080
# nrsB.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(nrsB.45.f5.80) <- c("gfd","mir","ces")
# row.names(nrsB.45.f5.80) <- 1991:2080
# nrsB.45.f5.80[,1] <- gfd45.f5.91.add$annual_Biomass[1:90,"N.Rock.sole"]
# nrsB.45.f5.80[,2] <- mir45.f5.91.add$annual_Biomass[1:90,"N.Rock.sole"]
# nrsB.45.f5.80[,3] <- ces45.f5.91.add$annual_Biomass[,"N.Rock.sole"]
# # head(nrsB.45.f5.80)
# nrsB.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) nrsB.45.f5.80.up[i] <- max(nrsB.45.f5.80[i,])
# nrsB.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) nrsB.45.f5.80.lo[i] <- min(nrsB.45.f5.80[i,])
# # Everything from 2081-2099
# nrsB.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(nrsB.45.f5.99) <- c("gfd","mir")
# row.names(nrsB.45.f5.99) <- 2081:2099
# nrsB.45.f5.99[,1] <- gfd45.f5.91.add$annual_Biomass[91:109,"N.Rock.sole"]
# nrsB.45.f5.99[,2] <- mir45.f5.91.add$annual_Biomass[91:109,"N.Rock.sole"]
# # head(nrsB.45.f5.99)
# nrsB.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) nrsB.45.f5.99.up[i] <- max(nrsB.45.f5.99[i,])
# nrsB.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) nrsB.45.f5.99.lo[i] <- min(nrsB.45.f5.99[i,])
# # now append these two time periods
# nrsB.45.f5.up <- c(nrsB.45.f5.80.up,nrsB.45.f5.99.up)
# nrsB.45.f5.lo <- c(nrsB.45.f5.80.lo,nrsB.45.f5.99.lo)
# 
# # RCP 8.5
# nrsB.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(nrsB.85.f5) <- c("gfd","mir","ces")
# row.names(nrsB.85.f5) <- 1991:2099
# nrsB.85.f5[,1] <- gfd85.f5.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.85.f5[,2] <- mir85.f5.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.85.f5[,3] <- ces85.f5.91.add$annual_Biomass[,"N.Rock.sole"]
# # head(nrsB.85.f5)
# nrsB.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) nrsB.85.f5.up[i] <- max(nrsB.85.f5[i,])
# nrsB.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) nrsB.85.f5.lo[i] <- min(nrsB.85.f5[i,])
# 
# # # SRES A1B
# # nrsB.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(nrsB.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(nrsB.a1b.f5) <- 1991:2039
# # nrsB.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Biomass[,"N.Rock.sole"]
# # nrsB.a1b.f5[,2] <- echA1B.f5.91.add$annual_Biomass[,"N.Rock.sole"]
# # nrsB.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Biomass[,"N.Rock.sole"]
# # # head(nrsB.a1b.f5)
# # nrsB.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) nrsB.a1b.f5.up[i] <- max(nrsB.a1b.f5[i,])
# # nrsB.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) nrsB.a1b.f5.lo[i] <- min(nrsB.a1b.f5[i,])
# 
# # N.Rock.sole Catch ----- *ABC*
# # RCP 4.5
# # Everything up through 2080
# nrsC.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(nrsC.45.f5.80) <- c("gfd","mir","ces")
# row.names(nrsC.45.f5.80) <- 1991:2080
# nrsC.45.f5.80[,1] <- gfd45.f5.91.add$annual_Catch[1:90,"N.Rock.sole"]
# nrsC.45.f5.80[,2] <- mir45.f5.91.add$annual_Catch[1:90,"N.Rock.sole"]
# nrsC.45.f5.80[,3] <- ces45.f5.91.add$annual_Catch[,"N.Rock.sole"]
# # head(nrsC.45.f5.80)
# nrsC.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) nrsC.45.f5.80.up[i] <- max(nrsC.45.f5.80[i,])
# nrsC.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) nrsC.45.f5.80.lo[i] <- min(nrsC.45.f5.80[i,])
# # Everything from 2081-2099
# nrsC.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(nrsC.45.f5.99) <- c("gfd","mir")
# row.names(nrsC.45.f5.99) <- 2081:2099
# nrsC.45.f5.99[,1] <- gfd45.f5.91.add$annual_Catch[91:109,"N.Rock.sole"]
# nrsC.45.f5.99[,2] <- mir45.f5.91.add$annual_Catch[91:109,"N.Rock.sole"]
# # head(nrsC.45.f5.99)
# nrsC.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) nrsC.45.f5.99.up[i] <- max(nrsC.45.f5.99[i,])
# nrsC.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) nrsC.45.f5.99.lo[i] <- min(nrsC.45.f5.99[i,])
# # now append these two time periods
# nrsC.45.f5.up <- c(nrsC.45.f5.80.up,nrsC.45.f5.99.up)
# nrsC.45.f5.lo <- c(nrsC.45.f5.80.lo,nrsC.45.f5.99.lo)
# 
# # RCP 8.5
# nrsC.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(nrsC.85.f5) <- c("gfd","mir","ces")
# row.names(nrsC.85.f5) <- 1991:2099
# nrsC.85.f5[,1] <- gfd85.f5.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.85.f5[,2] <- mir85.f5.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.85.f5[,3] <- ces85.f5.91.add$annual_Catch[,"N.Rock.sole"]
# # head(nrsC.85.f5)
# nrsC.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) nrsC.85.f5.up[i] <- max(nrsC.85.f5[i,])
# nrsC.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) nrsC.85.f5.lo[i] <- min(nrsC.85.f5[i,])
# 
# # # SRES A1B
# # nrsC.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(nrsC.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(nrsC.a1b.f5) <- 1991:2039
# # nrsC.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Catch[,"N.Rock.sole"]
# # nrsC.a1b.f5[,2] <- echA1B.f5.91.add$annual_Catch[,"N.Rock.sole"]
# # nrsC.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Catch[,"N.Rock.sole"]
# # # head(nrsC.a1b.f5)
# # nrsC.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) nrsC.a1b.f5.up[i] <- max(nrsC.a1b.f5[i,])
# # nrsC.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) nrsC.a1b.f5.lo[i] <- min(nrsC.a1b.f5[i,])
# 
# # ---------------------------------------------------------------------------- #
# # N.Rock.sole f6 ---*F_equil*---
# # RCP 4.5
# # Everything up through 2080
# nrsB.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(nrsB.45.f6.80) <- c("gfd","mir","ces")
# row.names(nrsB.45.f6.80) <- 1991:2080
# nrsB.45.f6.80[,1] <- gfd45.f6.91.add$annual_Biomass[1:90,"N.Rock.sole"]
# nrsB.45.f6.80[,2] <- mir45.f6.91.add$annual_Biomass[1:90,"N.Rock.sole"]
# nrsB.45.f6.80[,3] <- ces45.f6.91.add$annual_Biomass[,"N.Rock.sole"]
# # head(nrsB.45.f6.80)
# nrsB.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) nrsB.45.f6.80.up[i] <- max(nrsB.45.f6.80[i,])
# nrsB.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) nrsB.45.f6.80.lo[i] <- min(nrsB.45.f6.80[i,])
# # Everything from 2081-2099
# nrsB.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(nrsB.45.f6.99) <- c("gfd","mir")
# row.names(nrsB.45.f6.99) <- 2081:2099
# nrsB.45.f6.99[,1] <- gfd45.f6.91.add$annual_Biomass[91:109,"N.Rock.sole"]
# nrsB.45.f6.99[,2] <- mir45.f6.91.add$annual_Biomass[91:109,"N.Rock.sole"]
# # head(nrsB.45.f6.99)
# nrsB.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) nrsB.45.f6.99.up[i] <- max(nrsB.45.f6.99[i,])
# nrsB.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) nrsB.45.f6.99.lo[i] <- min(nrsB.45.f6.99[i,])
# # now append these two time periods
# nrsB.45.f6.up <- c(nrsB.45.f6.80.up,nrsB.45.f6.99.up)
# nrsB.45.f6.lo <- c(nrsB.45.f6.80.lo,nrsB.45.f6.99.lo)
# 
# # RCP 8.5
# nrsB.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(nrsB.85.f6) <- c("gfd","mir","ces")
# row.names(nrsB.85.f6) <- 1991:2099
# nrsB.85.f6[,1] <- gfd85.f6.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.85.f6[,2] <- mir85.f6.91.add$annual_Biomass[,"N.Rock.sole"]
# nrsB.85.f6[,3] <- ces85.f6.91.add$annual_Biomass[,"N.Rock.sole"]
# # head(nrsB.85.f6)
# nrsB.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) nrsB.85.f6.up[i] <- max(nrsB.85.f6[i,])
# nrsB.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) nrsB.85.f6.lo[i] <- min(nrsB.85.f6[i,])
# 
# # # SRES A1B
# # nrsB.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(nrsB.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(nrsB.a1b.f6) <- 1991:2039
# # nrsB.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Biomass[,"N.Rock.sole"]
# # nrsB.a1b.f6[,2] <- echA1B.f6.91.add$annual_Biomass[,"N.Rock.sole"]
# # nrsB.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Biomass[,"N.Rock.sole"]
# # # head(nrsB.a1b.f6)
# # nrsB.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) nrsB.a1b.f6.up[i] <- max(nrsB.a1b.f6[i,])
# # nrsB.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) nrsB.a1b.f6.lo[i] <- min(nrsB.a1b.f6[i,])
# 
# # N.Rock.sole Catch ----- *F_equil*
# # RCP 4.5
# # Everything up through 2080
# nrsC.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(nrsC.45.f6.80) <- c("gfd","mir","ces")
# row.names(nrsC.45.f6.80) <- 1991:2080
# nrsC.45.f6.80[,1] <- gfd45.f6.91.add$annual_Catch[1:90,"N.Rock.sole"]
# nrsC.45.f6.80[,2] <- mir45.f6.91.add$annual_Catch[1:90,"N.Rock.sole"]
# nrsC.45.f6.80[,3] <- ces45.f6.91.add$annual_Catch[,"N.Rock.sole"]
# # head(nrsC.45.f6.80)
# nrsC.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) nrsC.45.f6.80.up[i] <- max(nrsC.45.f6.80[i,])
# nrsC.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) nrsC.45.f6.80.lo[i] <- min(nrsC.45.f6.80[i,])
# # Everything from 2081-2099
# nrsC.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(nrsC.45.f6.99) <- c("gfd","mir")
# row.names(nrsC.45.f6.99) <- 2081:2099
# nrsC.45.f6.99[,1] <- gfd45.f6.91.add$annual_Catch[91:109,"N.Rock.sole"]
# nrsC.45.f6.99[,2] <- mir45.f6.91.add$annual_Catch[91:109,"N.Rock.sole"]
# # head(nrsC.45.f6.99)
# nrsC.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) nrsC.45.f6.99.up[i] <- max(nrsC.45.f6.99[i,])
# nrsC.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) nrsC.45.f6.99.lo[i] <- min(nrsC.45.f6.99[i,])
# # now append these two time periods
# nrsC.45.f6.up <- c(nrsC.45.f6.80.up,nrsC.45.f6.99.up)
# nrsC.45.f6.lo <- c(nrsC.45.f6.80.lo,nrsC.45.f6.99.lo)
# 
# # RCP 8.5
# nrsC.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(nrsC.85.f6) <- c("gfd","mir","ces")
# row.names(nrsC.85.f6) <- 1991:2099
# nrsC.85.f6[,1] <- gfd85.f6.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.85.f6[,2] <- mir85.f6.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.85.f6[,3] <- ces85.f6.91.add$annual_Catch[,"N.Rock.sole"]
# # head(nrsC.85.f6)
# nrsC.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) nrsC.85.f6.up[i] <- max(nrsC.85.f6[i,])
# nrsC.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) nrsC.85.f6.lo[i] <- min(nrsC.85.f6[i,])

# # SRES A1B
# nrsC.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(nrsC.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# row.names(nrsC.a1b.f6) <- 1991:2039
# nrsC.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f6[,2] <- echA1B.f6.91.add$annual_Catch[,"N.Rock.sole"]
# nrsC.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Catch[,"N.Rock.sole"]
# # head(nrsC.a1b.f6)
# nrsC.a1b.f6.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f6.up[i] <- max(nrsC.a1b.f6[i,])
# nrsC.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) nrsC.a1b.f6.lo[i] <- min(nrsC.a1b.f6[i,])





# ============================================================================ #
# ============================================================================ #



################################################################################
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
################################################################################

# ---------------------------------------------------------------------------- #
# YF.sole biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
yfsB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(yfsB.45.f1.80) <- c("gfd","mir","ces")
row.names(yfsB.45.f1.80) <- 1991:2080
yfsB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"YF.sole"]
yfsB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"YF.sole"]
yfsB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"YF.sole"]
# head(yfsB.45.f1.80)
yfsB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsB.45.f1.80.up[i] <- max(yfsB.45.f1.80[i,])
yfsB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsB.45.f1.80.lo[i] <- min(yfsB.45.f1.80[i,])
# Everything from 2081-2099
yfsB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(yfsB.45.f1.99) <- c("gfd","mir")
row.names(yfsB.45.f1.99) <- 2081:2099
yfsB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"YF.sole"]
yfsB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"YF.sole"]
# head(yfsB.45.f1.99)
yfsB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsB.45.f1.99.up[i] <- max(yfsB.45.f1.99[i,])
yfsB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsB.45.f1.99.lo[i] <- min(yfsB.45.f1.99[i,])
# now append these two time periods
yfsB.45.f1.up <- c(yfsB.45.f1.80.up,yfsB.45.f1.99.up)
yfsB.45.f1.lo <- c(yfsB.45.f1.80.lo,yfsB.45.f1.99.lo)

# RCP 8.5
yfsB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(yfsB.85.f1) <- c("gfd","mir","ces")
row.names(yfsB.85.f1) <- 1991:2099
yfsB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"YF.sole"]
yfsB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"YF.sole"]
yfsB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"YF.sole"]
# head(yfsB.85.f1)
yfsB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsB.85.f1.up[i] <- max(yfsB.85.f1[i,])
yfsB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsB.85.f1.lo[i] <- min(yfsB.85.f1[i,])

# # SRES A1B
# yfsB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(yfsB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(yfsB.a1b.f1) <- 1991:2039
# yfsB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"YF.sole"]
# yfsB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"YF.sole"]
# yfsB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"YF.sole"]
# # head(yfsB.a1b.f1)
# yfsB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsB.a1b.f1.up[i] <- max(yfsB.a1b.f1[i,])
# yfsB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsB.a1b.f1.lo[i] <- min(yfsB.a1b.f1[i,])

# YF.sole Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
yfsC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(yfsC.45.f1.80) <- c("gfd","mir","ces")
row.names(yfsC.45.f1.80) <- 1991:2080
yfsC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"YF.sole"]
yfsC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"YF.sole"]
yfsC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"YF.sole"]
# head(yfsC.45.f1.80)
yfsC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsC.45.f1.80.up[i] <- max(yfsC.45.f1.80[i,])
yfsC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsC.45.f1.80.lo[i] <- min(yfsC.45.f1.80[i,])
# Everything from 2081-2099
yfsC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(yfsC.45.f1.99) <- c("gfd","mir")
row.names(yfsC.45.f1.99) <- 2081:2099
yfsC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"YF.sole"]
yfsC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"YF.sole"]
# head(yfsC.45.f1.99)
yfsC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsC.45.f1.99.up[i] <- max(yfsC.45.f1.99[i,])
yfsC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsC.45.f1.99.lo[i] <- min(yfsC.45.f1.99[i,])
# now append these two time periods
yfsC.45.f1.up <- c(yfsC.45.f1.80.up,yfsC.45.f1.99.up)
yfsC.45.f1.lo <- c(yfsC.45.f1.80.lo,yfsC.45.f1.99.lo)

# RCP 8.5
yfsC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(yfsC.85.f1) <- c("gfd","mir","ces")
row.names(yfsC.85.f1) <- 1991:2099
yfsC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"YF.sole"]
yfsC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"YF.sole"]
yfsC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"YF.sole"]
# head(yfsC.85.f1)
yfsC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsC.85.f1.up[i] <- max(yfsC.85.f1[i,])
yfsC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsC.85.f1.lo[i] <- min(yfsC.85.f1[i,])

# # SRES A1B
# yfsC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(yfsC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(yfsC.a1b.f1) <- 1991:2039
# yfsC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"YF.sole"]
# # head(yfsC.a1b.f1)
# yfsC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f1.up[i] <- max(yfsC.a1b.f1[i,])
# yfsC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f1.lo[i] <- min(yfsC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# YF.sole F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
yfsB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(yfsB.45.f2.80) <- c("gfd","mir","ces")
row.names(yfsB.45.f2.80) <- 1991:2080
yfsB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"YF.sole"]
yfsB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"YF.sole"]
yfsB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"YF.sole"]
# head(yfsB.45.f2.80)
yfsB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsB.45.f2.80.up[i] <- max(yfsB.45.f2.80[i,])
yfsB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsB.45.f2.80.lo[i] <- min(yfsB.45.f2.80[i,])
# Everything from 2081-2099
yfsB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(yfsB.45.f2.99) <- c("gfd","mir")
row.names(yfsB.45.f2.99) <- 2081:2099
yfsB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"YF.sole"]
yfsB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"YF.sole"]
# head(yfsB.45.f2.99)
yfsB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsB.45.f2.99.up[i] <- max(yfsB.45.f2.99[i,])
yfsB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsB.45.f2.99.lo[i] <- min(yfsB.45.f2.99[i,])
# now append these two time periods
yfsB.45.f2.up <- c(yfsB.45.f2.80.up,yfsB.45.f2.99.up)
yfsB.45.f2.lo <- c(yfsB.45.f2.80.lo,yfsB.45.f2.99.lo)

# RCP 8.5
yfsB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(yfsB.85.f2) <- c("gfd","mir","ces")
row.names(yfsB.85.f2) <- 1991:2099
yfsB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"YF.sole"]
yfsB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"YF.sole"]
yfsB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"YF.sole"]
# head(yfsB.85.f2)
yfsB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsB.85.f2.up[i] <- max(yfsB.85.f2[i,])
yfsB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsB.85.f2.lo[i] <- min(yfsB.85.f2[i,])

# # SRES A1B
# yfsB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(yfsB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(yfsB.a1b.f2) <- 1991:2039
# yfsB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"YF.sole"]
# yfsB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"YF.sole"]
# yfsB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"YF.sole"]
# # head(yfsB.a1b.f2)
# yfsB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsB.a1b.f2.up[i] <- max(yfsB.a1b.f2[i,])
# yfsB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsB.a1b.f2.lo[i] <- min(yfsB.a1b.f2[i,])

# YF.sole Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
yfsC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(yfsC.45.f2.80) <- c("gfd","mir","ces")
row.names(yfsC.45.f2.80) <- 1991:2080
yfsC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"YF.sole"]
yfsC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"YF.sole"]
yfsC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"YF.sole"]
# head(yfsC.45.f2.80)
yfsC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsC.45.f2.80.up[i] <- max(yfsC.45.f2.80[i,])
yfsC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsC.45.f2.80.lo[i] <- min(yfsC.45.f2.80[i,])
# Everything from 2081-2099
yfsC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(yfsC.45.f2.99) <- c("gfd","mir")
row.names(yfsC.45.f2.99) <- 2081:2099
yfsC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"YF.sole"]
yfsC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"YF.sole"]
# head(yfsC.45.f2.99)
yfsC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsC.45.f2.99.up[i] <- max(yfsC.45.f2.99[i,])
yfsC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsC.45.f2.99.lo[i] <- min(yfsC.45.f2.99[i,])
# now append these two time periods
yfsC.45.f2.up <- c(yfsC.45.f2.80.up,yfsC.45.f2.99.up)
yfsC.45.f2.lo <- c(yfsC.45.f2.80.lo,yfsC.45.f2.99.lo)

# RCP 8.5
yfsC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(yfsC.85.f2) <- c("gfd","mir","ces")
row.names(yfsC.85.f2) <- 1991:2099
yfsC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"YF.sole"]
yfsC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"YF.sole"]
yfsC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"YF.sole"]
# head(yfsC.85.f2)
yfsC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsC.85.f2.up[i] <- max(yfsC.85.f2[i,])
yfsC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsC.85.f2.lo[i] <- min(yfsC.85.f2[i,])

# # SRES A1B
# yfsC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(yfsC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(yfsC.a1b.f2) <- 1991:2039
# yfsC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"YF.sole"]
# # head(yfsC.a1b.f2)
# yfsC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f2.up[i] <- max(yfsC.a1b.f2[i,])
# yfsC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f2.lo[i] <- min(yfsC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# YF.sole F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
yfsB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(yfsB.45.f3.80) <- c("gfd","mir","ces")
row.names(yfsB.45.f3.80) <- 1991:2080
yfsB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"YF.sole"]
yfsB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"YF.sole"]
yfsB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"YF.sole"]
# head(yfsB.45.f3.80)
yfsB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsB.45.f3.80.up[i] <- max(yfsB.45.f3.80[i,])
yfsB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsB.45.f3.80.lo[i] <- min(yfsB.45.f3.80[i,])
# Everything from 2081-2099
yfsB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(yfsB.45.f3.99) <- c("gfd","mir")
row.names(yfsB.45.f3.99) <- 2081:2099
yfsB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"YF.sole"]
yfsB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"YF.sole"]
# head(yfsB.45.f3.99)
yfsB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsB.45.f3.99.up[i] <- max(yfsB.45.f3.99[i,])
yfsB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsB.45.f3.99.lo[i] <- min(yfsB.45.f3.99[i,])
# now append these two time periods
yfsB.45.f3.up <- c(yfsB.45.f3.80.up,yfsB.45.f3.99.up)
yfsB.45.f3.lo <- c(yfsB.45.f3.80.lo,yfsB.45.f3.99.lo)

# RCP 8.5
yfsB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(yfsB.85.f3) <- c("gfd","mir","ces")
row.names(yfsB.85.f3) <- 1991:2099
yfsB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"YF.sole"]
yfsB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"YF.sole"]
yfsB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"YF.sole"]
# head(yfsB.85.f3)
yfsB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsB.85.f3.up[i] <- max(yfsB.85.f3[i,])
yfsB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsB.85.f3.lo[i] <- min(yfsB.85.f3[i,])

# # SRES A1B
# yfsB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(yfsB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(yfsB.a1b.f3) <- 1991:2039
# yfsB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"YF.sole"]
# yfsB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"YF.sole"]
# yfsB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"YF.sole"]
# # head(yfsB.a1b.f3)
# yfsB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsB.a1b.f3.up[i] <- max(yfsB.a1b.f3[i,])
# yfsB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsB.a1b.f3.lo[i] <- min(yfsB.a1b.f3[i,])

# YF.sole Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
yfsC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(yfsC.45.f3.80) <- c("gfd","mir","ces")
row.names(yfsC.45.f3.80) <- 1991:2080
yfsC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"YF.sole"]
yfsC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"YF.sole"]
yfsC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"YF.sole"]
# head(yfsC.45.f3.80)
yfsC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsC.45.f3.80.up[i] <- max(yfsC.45.f3.80[i,])
yfsC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsC.45.f3.80.lo[i] <- min(yfsC.45.f3.80[i,])
# Everything from 2081-2099
yfsC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(yfsC.45.f3.99) <- c("gfd","mir")
row.names(yfsC.45.f3.99) <- 2081:2099
yfsC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"YF.sole"]
yfsC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"YF.sole"]
# head(yfsC.45.f3.99)
yfsC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsC.45.f3.99.up[i] <- max(yfsC.45.f3.99[i,])
yfsC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsC.45.f3.99.lo[i] <- min(yfsC.45.f3.99[i,])
# now append these two time periods
yfsC.45.f3.up <- c(yfsC.45.f3.80.up,yfsC.45.f3.99.up)
yfsC.45.f3.lo <- c(yfsC.45.f3.80.lo,yfsC.45.f3.99.lo)

# RCP 8.5
yfsC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(yfsC.85.f3) <- c("gfd","mir","ces")
row.names(yfsC.85.f3) <- 1991:2099
yfsC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"YF.sole"]
yfsC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"YF.sole"]
yfsC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"YF.sole"]
# head(yfsC.85.f3)
yfsC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsC.85.f3.up[i] <- max(yfsC.85.f3[i,])
yfsC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsC.85.f3.lo[i] <- min(yfsC.85.f3[i,])

# # SRES A1B
# yfsC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(yfsC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(yfsC.a1b.f3) <- 1991:2039
# yfsC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"YF.sole"]
# # head(yfsC.a1b.f3)
# yfsC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f3.up[i] <- max(yfsC.a1b.f3[i,])
# yfsC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f3.lo[i] <- min(yfsC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# YF.sole F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
yfsB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(yfsB.45.f4.80) <- c("gfd","mir","ces")
row.names(yfsB.45.f4.80) <- 1991:2080
yfsB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"YF.sole"]
yfsB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"YF.sole"]
yfsB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"YF.sole"]
# head(yfsB.45.f4.80)
yfsB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsB.45.f4.80.up[i] <- max(yfsB.45.f4.80[i,])
yfsB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsB.45.f4.80.lo[i] <- min(yfsB.45.f4.80[i,])
# Everything from 2081-2099
yfsB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(yfsB.45.f4.99) <- c("gfd","mir")
row.names(yfsB.45.f4.99) <- 2081:2099
yfsB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"YF.sole"]
yfsB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"YF.sole"]
# head(yfsB.45.f4.99)
yfsB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsB.45.f4.99.up[i] <- max(yfsB.45.f4.99[i,])
yfsB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsB.45.f4.99.lo[i] <- min(yfsB.45.f4.99[i,])
# now append these two time periods
yfsB.45.f4.up <- c(yfsB.45.f4.80.up,yfsB.45.f4.99.up)
yfsB.45.f4.lo <- c(yfsB.45.f4.80.lo,yfsB.45.f4.99.lo)

# RCP 8.5
yfsB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(yfsB.85.f4) <- c("gfd","mir","ces")
row.names(yfsB.85.f4) <- 1991:2099
yfsB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"YF.sole"]
yfsB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"YF.sole"]
yfsB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"YF.sole"]
# head(yfsB.85.f4)
yfsB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsB.85.f4.up[i] <- max(yfsB.85.f4[i,])
yfsB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsB.85.f4.lo[i] <- min(yfsB.85.f4[i,])

# # SRES A1B
# yfsB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(yfsB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(yfsB.a1b.f4) <- 1991:2039
# yfsB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"YF.sole"]
# yfsB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"YF.sole"]
# yfsB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"YF.sole"]
# # head(yfsB.a1b.f4)
# yfsB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsB.a1b.f4.up[i] <- max(yfsB.a1b.f4[i,])
# yfsB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsB.a1b.f4.lo[i] <- min(yfsB.a1b.f4[i,])

# YF.sole Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
yfsC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(yfsC.45.f4.80) <- c("gfd","mir","ces")
row.names(yfsC.45.f4.80) <- 1991:2080
yfsC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"YF.sole"]
yfsC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"YF.sole"]
yfsC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"YF.sole"]
# head(yfsC.45.f4.80)
yfsC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsC.45.f4.80.up[i] <- max(yfsC.45.f4.80[i,])
yfsC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) yfsC.45.f4.80.lo[i] <- min(yfsC.45.f4.80[i,])
# Everything from 2081-2099
yfsC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(yfsC.45.f4.99) <- c("gfd","mir")
row.names(yfsC.45.f4.99) <- 2081:2099
yfsC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"YF.sole"]
yfsC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"YF.sole"]
# head(yfsC.45.f4.99)
yfsC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsC.45.f4.99.up[i] <- max(yfsC.45.f4.99[i,])
yfsC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) yfsC.45.f4.99.lo[i] <- min(yfsC.45.f4.99[i,])
# now append these two time periods
yfsC.45.f4.up <- c(yfsC.45.f4.80.up,yfsC.45.f4.99.up)
yfsC.45.f4.lo <- c(yfsC.45.f4.80.lo,yfsC.45.f4.99.lo)

# RCP 8.5
yfsC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(yfsC.85.f4) <- c("gfd","mir","ces")
row.names(yfsC.85.f4) <- 1991:2099
yfsC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"YF.sole"]
yfsC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"YF.sole"]
yfsC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"YF.sole"]
# head(yfsC.85.f4)
yfsC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsC.85.f4.up[i] <- max(yfsC.85.f4[i,])
yfsC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) yfsC.85.f4.lo[i] <- min(yfsC.85.f4[i,])

# # SRES A1B
# yfsC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(yfsC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(yfsC.a1b.f4) <- 1991:2039
# yfsC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"YF.sole"]
# # head(yfsC.a1b.f4)
# yfsC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f4.up[i] <- max(yfsC.a1b.f4[i,])
# yfsC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f4.lo[i] <- min(yfsC.a1b.f4[i,])

# ---------------------------------------------------------------------------- #
# YF.sole f5 ---*ABC*---
# RCP 4.5
# Everything up through 2080
# yfsB.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(yfsB.45.f5.80) <- c("gfd","mir","ces")
# row.names(yfsB.45.f5.80) <- 1991:2080
# yfsB.45.f5.80[,1] <- gfd45.f5.91.add$annual_Biomass[1:90,"YF.sole"]
# yfsB.45.f5.80[,2] <- mir45.f5.91.add$annual_Biomass[1:90,"YF.sole"]
# yfsB.45.f5.80[,3] <- ces45.f5.91.add$annual_Biomass[,"YF.sole"]
# # head(yfsB.45.f5.80)
# yfsB.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) yfsB.45.f5.80.up[i] <- max(yfsB.45.f5.80[i,])
# yfsB.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) yfsB.45.f5.80.lo[i] <- min(yfsB.45.f5.80[i,])
# # Everything from 2081-2099
# yfsB.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(yfsB.45.f5.99) <- c("gfd","mir")
# row.names(yfsB.45.f5.99) <- 2081:2099
# yfsB.45.f5.99[,1] <- gfd45.f5.91.add$annual_Biomass[91:109,"YF.sole"]
# yfsB.45.f5.99[,2] <- mir45.f5.91.add$annual_Biomass[91:109,"YF.sole"]
# # head(yfsB.45.f5.99)
# yfsB.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) yfsB.45.f5.99.up[i] <- max(yfsB.45.f5.99[i,])
# yfsB.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) yfsB.45.f5.99.lo[i] <- min(yfsB.45.f5.99[i,])
# # now append these two time periods
# yfsB.45.f5.up <- c(yfsB.45.f5.80.up,yfsB.45.f5.99.up)
# yfsB.45.f5.lo <- c(yfsB.45.f5.80.lo,yfsB.45.f5.99.lo)
# 
# # RCP 8.5
# yfsB.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(yfsB.85.f5) <- c("gfd","mir","ces")
# row.names(yfsB.85.f5) <- 1991:2099
# yfsB.85.f5[,1] <- gfd85.f5.91.add$annual_Biomass[,"YF.sole"]
# yfsB.85.f5[,2] <- mir85.f5.91.add$annual_Biomass[,"YF.sole"]
# yfsB.85.f5[,3] <- ces85.f5.91.add$annual_Biomass[,"YF.sole"]
# # head(yfsB.85.f5)
# yfsB.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) yfsB.85.f5.up[i] <- max(yfsB.85.f5[i,])
# yfsB.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) yfsB.85.f5.lo[i] <- min(yfsB.85.f5[i,])
# 
# # # SRES A1B
# # yfsB.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(yfsB.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(yfsB.a1b.f5) <- 1991:2039
# # yfsB.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Biomass[,"YF.sole"]
# # yfsB.a1b.f5[,2] <- echA1B.f5.91.add$annual_Biomass[,"YF.sole"]
# # yfsB.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Biomass[,"YF.sole"]
# # # head(yfsB.a1b.f5)
# # yfsB.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) yfsB.a1b.f5.up[i] <- max(yfsB.a1b.f5[i,])
# # yfsB.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) yfsB.a1b.f5.lo[i] <- min(yfsB.a1b.f5[i,])
# 
# # YF.sole Catch ----- *ABC*
# # RCP 4.5
# # Everything up through 2080
# yfsC.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(yfsC.45.f5.80) <- c("gfd","mir","ces")
# row.names(yfsC.45.f5.80) <- 1991:2080
# yfsC.45.f5.80[,1] <- gfd45.f5.91.add$annual_Catch[1:90,"YF.sole"]
# yfsC.45.f5.80[,2] <- mir45.f5.91.add$annual_Catch[1:90,"YF.sole"]
# yfsC.45.f5.80[,3] <- ces45.f5.91.add$annual_Catch[,"YF.sole"]
# # head(yfsC.45.f5.80)
# yfsC.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) yfsC.45.f5.80.up[i] <- max(yfsC.45.f5.80[i,])
# yfsC.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) yfsC.45.f5.80.lo[i] <- min(yfsC.45.f5.80[i,])
# # Everything from 2081-2099
# yfsC.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(yfsC.45.f5.99) <- c("gfd","mir")
# row.names(yfsC.45.f5.99) <- 2081:2099
# yfsC.45.f5.99[,1] <- gfd45.f5.91.add$annual_Catch[91:109,"YF.sole"]
# yfsC.45.f5.99[,2] <- mir45.f5.91.add$annual_Catch[91:109,"YF.sole"]
# # head(yfsC.45.f5.99)
# yfsC.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) yfsC.45.f5.99.up[i] <- max(yfsC.45.f5.99[i,])
# yfsC.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) yfsC.45.f5.99.lo[i] <- min(yfsC.45.f5.99[i,])
# # now append these two time periods
# yfsC.45.f5.up <- c(yfsC.45.f5.80.up,yfsC.45.f5.99.up)
# yfsC.45.f5.lo <- c(yfsC.45.f5.80.lo,yfsC.45.f5.99.lo)
# 
# # RCP 8.5
# yfsC.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(yfsC.85.f5) <- c("gfd","mir","ces")
# row.names(yfsC.85.f5) <- 1991:2099
# yfsC.85.f5[,1] <- gfd85.f5.91.add$annual_Catch[,"YF.sole"]
# yfsC.85.f5[,2] <- mir85.f5.91.add$annual_Catch[,"YF.sole"]
# yfsC.85.f5[,3] <- ces85.f5.91.add$annual_Catch[,"YF.sole"]
# # head(yfsC.85.f5)
# yfsC.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) yfsC.85.f5.up[i] <- max(yfsC.85.f5[i,])
# yfsC.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) yfsC.85.f5.lo[i] <- min(yfsC.85.f5[i,])
# 
# # # SRES A1B
# # yfsC.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(yfsC.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(yfsC.a1b.f5) <- 1991:2039
# # yfsC.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Catch[,"YF.sole"]
# # yfsC.a1b.f5[,2] <- echA1B.f5.91.add$annual_Catch[,"YF.sole"]
# # yfsC.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Catch[,"YF.sole"]
# # # head(yfsC.a1b.f5)
# # yfsC.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) yfsC.a1b.f5.up[i] <- max(yfsC.a1b.f5[i,])
# # yfsC.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) yfsC.a1b.f5.lo[i] <- min(yfsC.a1b.f5[i,])
# 
# # ---------------------------------------------------------------------------- #
# # YF.sole f6 ---*F_equil*---
# # RCP 4.5
# # Everything up through 2080
# yfsB.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(yfsB.45.f6.80) <- c("gfd","mir","ces")
# row.names(yfsB.45.f6.80) <- 1991:2080
# yfsB.45.f6.80[,1] <- gfd45.f6.91.add$annual_Biomass[1:90,"YF.sole"]
# yfsB.45.f6.80[,2] <- mir45.f6.91.add$annual_Biomass[1:90,"YF.sole"]
# yfsB.45.f6.80[,3] <- ces45.f6.91.add$annual_Biomass[,"YF.sole"]
# # head(yfsB.45.f6.80)
# yfsB.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) yfsB.45.f6.80.up[i] <- max(yfsB.45.f6.80[i,])
# yfsB.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) yfsB.45.f6.80.lo[i] <- min(yfsB.45.f6.80[i,])
# # Everything from 2081-2099
# yfsB.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(yfsB.45.f6.99) <- c("gfd","mir")
# row.names(yfsB.45.f6.99) <- 2081:2099
# yfsB.45.f6.99[,1] <- gfd45.f6.91.add$annual_Biomass[91:109,"YF.sole"]
# yfsB.45.f6.99[,2] <- mir45.f6.91.add$annual_Biomass[91:109,"YF.sole"]
# # head(yfsB.45.f6.99)
# yfsB.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) yfsB.45.f6.99.up[i] <- max(yfsB.45.f6.99[i,])
# yfsB.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) yfsB.45.f6.99.lo[i] <- min(yfsB.45.f6.99[i,])
# # now append these two time periods
# yfsB.45.f6.up <- c(yfsB.45.f6.80.up,yfsB.45.f6.99.up)
# yfsB.45.f6.lo <- c(yfsB.45.f6.80.lo,yfsB.45.f6.99.lo)
# 
# # RCP 8.5
# yfsB.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(yfsB.85.f6) <- c("gfd","mir","ces")
# row.names(yfsB.85.f6) <- 1991:2099
# yfsB.85.f6[,1] <- gfd85.f6.91.add$annual_Biomass[,"YF.sole"]
# yfsB.85.f6[,2] <- mir85.f6.91.add$annual_Biomass[,"YF.sole"]
# yfsB.85.f6[,3] <- ces85.f6.91.add$annual_Biomass[,"YF.sole"]
# # head(yfsB.85.f6)
# yfsB.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) yfsB.85.f6.up[i] <- max(yfsB.85.f6[i,])
# yfsB.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) yfsB.85.f6.lo[i] <- min(yfsB.85.f6[i,])
# 
# # # SRES A1B
# # yfsB.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(yfsB.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(yfsB.a1b.f6) <- 1991:2039
# # yfsB.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Biomass[,"YF.sole"]
# # yfsB.a1b.f6[,2] <- echA1B.f6.91.add$annual_Biomass[,"YF.sole"]
# # yfsB.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Biomass[,"YF.sole"]
# # # head(yfsB.a1b.f6)
# # yfsB.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) yfsB.a1b.f6.up[i] <- max(yfsB.a1b.f6[i,])
# # yfsB.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) yfsB.a1b.f6.lo[i] <- min(yfsB.a1b.f6[i,])
# 
# # YF.sole Catch ----- *F_equil*
# # RCP 4.5
# # Everything up through 2080
# yfsC.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(yfsC.45.f6.80) <- c("gfd","mir","ces")
# row.names(yfsC.45.f6.80) <- 1991:2080
# yfsC.45.f6.80[,1] <- gfd45.f6.91.add$annual_Catch[1:90,"YF.sole"]
# yfsC.45.f6.80[,2] <- mir45.f6.91.add$annual_Catch[1:90,"YF.sole"]
# yfsC.45.f6.80[,3] <- ces45.f6.91.add$annual_Catch[,"YF.sole"]
# # head(yfsC.45.f6.80)
# yfsC.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) yfsC.45.f6.80.up[i] <- max(yfsC.45.f6.80[i,])
# yfsC.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) yfsC.45.f6.80.lo[i] <- min(yfsC.45.f6.80[i,])
# # Everything from 2081-2099
# yfsC.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(yfsC.45.f6.99) <- c("gfd","mir")
# row.names(yfsC.45.f6.99) <- 2081:2099
# yfsC.45.f6.99[,1] <- gfd45.f6.91.add$annual_Catch[91:109,"YF.sole"]
# yfsC.45.f6.99[,2] <- mir45.f6.91.add$annual_Catch[91:109,"YF.sole"]
# # head(yfsC.45.f6.99)
# yfsC.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) yfsC.45.f6.99.up[i] <- max(yfsC.45.f6.99[i,])
# yfsC.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) yfsC.45.f6.99.lo[i] <- min(yfsC.45.f6.99[i,])
# # now append these two time periods
# yfsC.45.f6.up <- c(yfsC.45.f6.80.up,yfsC.45.f6.99.up)
# yfsC.45.f6.lo <- c(yfsC.45.f6.80.lo,yfsC.45.f6.99.lo)
# 
# # RCP 8.5
# yfsC.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(yfsC.85.f6) <- c("gfd","mir","ces")
# row.names(yfsC.85.f6) <- 1991:2099
# yfsC.85.f6[,1] <- gfd85.f6.91.add$annual_Catch[,"YF.sole"]
# yfsC.85.f6[,2] <- mir85.f6.91.add$annual_Catch[,"YF.sole"]
# yfsC.85.f6[,3] <- ces85.f6.91.add$annual_Catch[,"YF.sole"]
# # head(yfsC.85.f6)
# yfsC.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) yfsC.85.f6.up[i] <- max(yfsC.85.f6[i,])
# yfsC.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) yfsC.85.f6.lo[i] <- min(yfsC.85.f6[i,])

# # SRES A1B
# yfsC.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(yfsC.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# row.names(yfsC.a1b.f6) <- 1991:2039
# yfsC.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f6[,2] <- echA1B.f6.91.add$annual_Catch[,"YF.sole"]
# yfsC.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Catch[,"YF.sole"]
# # head(yfsC.a1b.f6)
# yfsC.a1b.f6.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f6.up[i] <- max(yfsC.a1b.f6[i,])
# yfsC.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) yfsC.a1b.f6.lo[i] <- min(yfsC.a1b.f6[i,])





# ============================================================================ #
# ============================================================================ #



################################################################################
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
################################################################################

# ---------------------------------------------------------------------------- #
# Opilio biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
opiB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(opiB.45.f1.80) <- c("gfd","mir","ces")
row.names(opiB.45.f1.80) <- 1991:2080
opiB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Opilio"]
opiB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Opilio"]
opiB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Opilio"]
# head(opiB.45.f1.80)
opiB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiB.45.f1.80.up[i] <- max(opiB.45.f1.80[i,])
opiB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiB.45.f1.80.lo[i] <- min(opiB.45.f1.80[i,])
# Everything from 2081-2099
opiB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(opiB.45.f1.99) <- c("gfd","mir")
row.names(opiB.45.f1.99) <- 2081:2099
opiB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Opilio"]
opiB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Opilio"]
# head(opiB.45.f1.99)
opiB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiB.45.f1.99.up[i] <- max(opiB.45.f1.99[i,])
opiB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiB.45.f1.99.lo[i] <- min(opiB.45.f1.99[i,])
# now append these two time periods
opiB.45.f1.up <- c(opiB.45.f1.80.up,opiB.45.f1.99.up)
opiB.45.f1.lo <- c(opiB.45.f1.80.lo,opiB.45.f1.99.lo)

# RCP 8.5
opiB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(opiB.85.f1) <- c("gfd","mir","ces")
row.names(opiB.85.f1) <- 1991:2099
opiB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Opilio"]
opiB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Opilio"]
opiB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Opilio"]
# head(opiB.85.f1)
opiB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiB.85.f1.up[i] <- max(opiB.85.f1[i,])
opiB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiB.85.f1.lo[i] <- min(opiB.85.f1[i,])

# # SRES A1B
# opiB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(opiB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(opiB.a1b.f1) <- 1991:2039
# opiB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Opilio"]
# opiB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Opilio"]
# opiB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Opilio"]
# # head(opiB.a1b.f1)
# opiB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiB.a1b.f1.up[i] <- max(opiB.a1b.f1[i,])
# opiB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiB.a1b.f1.lo[i] <- min(opiB.a1b.f1[i,])

# Opilio Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
opiC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(opiC.45.f1.80) <- c("gfd","mir","ces")
row.names(opiC.45.f1.80) <- 1991:2080
opiC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Opilio"]
opiC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Opilio"]
opiC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Opilio"]
# head(opiC.45.f1.80)
opiC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiC.45.f1.80.up[i] <- max(opiC.45.f1.80[i,])
opiC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiC.45.f1.80.lo[i] <- min(opiC.45.f1.80[i,])
# Everything from 2081-2099
opiC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(opiC.45.f1.99) <- c("gfd","mir")
row.names(opiC.45.f1.99) <- 2081:2099
opiC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Opilio"]
opiC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Opilio"]
# head(opiC.45.f1.99)
opiC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiC.45.f1.99.up[i] <- max(opiC.45.f1.99[i,])
opiC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiC.45.f1.99.lo[i] <- min(opiC.45.f1.99[i,])
# now append these two time periods
opiC.45.f1.up <- c(opiC.45.f1.80.up,opiC.45.f1.99.up)
opiC.45.f1.lo <- c(opiC.45.f1.80.lo,opiC.45.f1.99.lo)

# RCP 8.5
opiC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(opiC.85.f1) <- c("gfd","mir","ces")
row.names(opiC.85.f1) <- 1991:2099
opiC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Opilio"]
opiC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Opilio"]
opiC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Opilio"]
# head(opiC.85.f1)
opiC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiC.85.f1.up[i] <- max(opiC.85.f1[i,])
opiC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiC.85.f1.lo[i] <- min(opiC.85.f1[i,])

# # SRES A1B
# opiC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(opiC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(opiC.a1b.f1) <- 1991:2039
# opiC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Opilio"]
# # head(opiC.a1b.f1)
# opiC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f1.up[i] <- max(opiC.a1b.f1[i,])
# opiC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f1.lo[i] <- min(opiC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Opilio F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
opiB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(opiB.45.f2.80) <- c("gfd","mir","ces")
row.names(opiB.45.f2.80) <- 1991:2080
opiB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Opilio"]
opiB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Opilio"]
opiB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Opilio"]
# head(opiB.45.f2.80)
opiB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiB.45.f2.80.up[i] <- max(opiB.45.f2.80[i,])
opiB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiB.45.f2.80.lo[i] <- min(opiB.45.f2.80[i,])
# Everything from 2081-2099
opiB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(opiB.45.f2.99) <- c("gfd","mir")
row.names(opiB.45.f2.99) <- 2081:2099
opiB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Opilio"]
opiB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Opilio"]
# head(opiB.45.f2.99)
opiB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiB.45.f2.99.up[i] <- max(opiB.45.f2.99[i,])
opiB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiB.45.f2.99.lo[i] <- min(opiB.45.f2.99[i,])
# now append these two time periods
opiB.45.f2.up <- c(opiB.45.f2.80.up,opiB.45.f2.99.up)
opiB.45.f2.lo <- c(opiB.45.f2.80.lo,opiB.45.f2.99.lo)

# RCP 8.5
opiB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(opiB.85.f2) <- c("gfd","mir","ces")
row.names(opiB.85.f2) <- 1991:2099
opiB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Opilio"]
opiB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Opilio"]
opiB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Opilio"]
# head(opiB.85.f2)
opiB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiB.85.f2.up[i] <- max(opiB.85.f2[i,])
opiB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiB.85.f2.lo[i] <- min(opiB.85.f2[i,])

# # SRES A1B
# opiB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(opiB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(opiB.a1b.f2) <- 1991:2039
# opiB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Opilio"]
# opiB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Opilio"]
# opiB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Opilio"]
# # head(opiB.a1b.f2)
# opiB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiB.a1b.f2.up[i] <- max(opiB.a1b.f2[i,])
# opiB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiB.a1b.f2.lo[i] <- min(opiB.a1b.f2[i,])

# Opilio Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
opiC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(opiC.45.f2.80) <- c("gfd","mir","ces")
row.names(opiC.45.f2.80) <- 1991:2080
opiC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Opilio"]
opiC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Opilio"]
opiC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Opilio"]
# head(opiC.45.f2.80)
opiC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiC.45.f2.80.up[i] <- max(opiC.45.f2.80[i,])
opiC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiC.45.f2.80.lo[i] <- min(opiC.45.f2.80[i,])
# Everything from 2081-2099
opiC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(opiC.45.f2.99) <- c("gfd","mir")
row.names(opiC.45.f2.99) <- 2081:2099
opiC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Opilio"]
opiC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Opilio"]
# head(opiC.45.f2.99)
opiC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiC.45.f2.99.up[i] <- max(opiC.45.f2.99[i,])
opiC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiC.45.f2.99.lo[i] <- min(opiC.45.f2.99[i,])
# now append these two time periods
opiC.45.f2.up <- c(opiC.45.f2.80.up,opiC.45.f2.99.up)
opiC.45.f2.lo <- c(opiC.45.f2.80.lo,opiC.45.f2.99.lo)

# RCP 8.5
opiC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(opiC.85.f2) <- c("gfd","mir","ces")
row.names(opiC.85.f2) <- 1991:2099
opiC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Opilio"]
opiC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Opilio"]
opiC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Opilio"]
# head(opiC.85.f2)
opiC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiC.85.f2.up[i] <- max(opiC.85.f2[i,])
opiC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiC.85.f2.lo[i] <- min(opiC.85.f2[i,])

# # SRES A1B
# opiC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(opiC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(opiC.a1b.f2) <- 1991:2039
# opiC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Opilio"]
# # head(opiC.a1b.f2)
# opiC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f2.up[i] <- max(opiC.a1b.f2[i,])
# opiC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f2.lo[i] <- min(opiC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Opilio F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
opiB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(opiB.45.f3.80) <- c("gfd","mir","ces")
row.names(opiB.45.f3.80) <- 1991:2080
opiB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Opilio"]
opiB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Opilio"]
opiB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Opilio"]
# head(opiB.45.f3.80)
opiB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiB.45.f3.80.up[i] <- max(opiB.45.f3.80[i,])
opiB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiB.45.f3.80.lo[i] <- min(opiB.45.f3.80[i,])
# Everything from 2081-2099
opiB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(opiB.45.f3.99) <- c("gfd","mir")
row.names(opiB.45.f3.99) <- 2081:2099
opiB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Opilio"]
opiB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Opilio"]
# head(opiB.45.f3.99)
opiB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiB.45.f3.99.up[i] <- max(opiB.45.f3.99[i,])
opiB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiB.45.f3.99.lo[i] <- min(opiB.45.f3.99[i,])
# now append these two time periods
opiB.45.f3.up <- c(opiB.45.f3.80.up,opiB.45.f3.99.up)
opiB.45.f3.lo <- c(opiB.45.f3.80.lo,opiB.45.f3.99.lo)

# RCP 8.5
opiB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(opiB.85.f3) <- c("gfd","mir","ces")
row.names(opiB.85.f3) <- 1991:2099
opiB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Opilio"]
opiB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Opilio"]
opiB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Opilio"]
# head(opiB.85.f3)
opiB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiB.85.f3.up[i] <- max(opiB.85.f3[i,])
opiB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiB.85.f3.lo[i] <- min(opiB.85.f3[i,])

# # SRES A1B
# opiB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(opiB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(opiB.a1b.f3) <- 1991:2039
# opiB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Opilio"]
# opiB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Opilio"]
# opiB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Opilio"]
# # head(opiB.a1b.f3)
# opiB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiB.a1b.f3.up[i] <- max(opiB.a1b.f3[i,])
# opiB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiB.a1b.f3.lo[i] <- min(opiB.a1b.f3[i,])

# Opilio Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
opiC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(opiC.45.f3.80) <- c("gfd","mir","ces")
row.names(opiC.45.f3.80) <- 1991:2080
opiC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Opilio"]
opiC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Opilio"]
opiC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Opilio"]
# head(opiC.45.f3.80)
opiC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiC.45.f3.80.up[i] <- max(opiC.45.f3.80[i,])
opiC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiC.45.f3.80.lo[i] <- min(opiC.45.f3.80[i,])
# Everything from 2081-2099
opiC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(opiC.45.f3.99) <- c("gfd","mir")
row.names(opiC.45.f3.99) <- 2081:2099
opiC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Opilio"]
opiC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Opilio"]
# head(opiC.45.f3.99)
opiC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiC.45.f3.99.up[i] <- max(opiC.45.f3.99[i,])
opiC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiC.45.f3.99.lo[i] <- min(opiC.45.f3.99[i,])
# now append these two time periods
opiC.45.f3.up <- c(opiC.45.f3.80.up,opiC.45.f3.99.up)
opiC.45.f3.lo <- c(opiC.45.f3.80.lo,opiC.45.f3.99.lo)

# RCP 8.5
opiC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(opiC.85.f3) <- c("gfd","mir","ces")
row.names(opiC.85.f3) <- 1991:2099
opiC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Opilio"]
opiC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Opilio"]
opiC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Opilio"]
# head(opiC.85.f3)
opiC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiC.85.f3.up[i] <- max(opiC.85.f3[i,])
opiC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiC.85.f3.lo[i] <- min(opiC.85.f3[i,])

# # SRES A1B
# opiC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(opiC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(opiC.a1b.f3) <- 1991:2039
# opiC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Opilio"]
# # head(opiC.a1b.f3)
# opiC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f3.up[i] <- max(opiC.a1b.f3[i,])
# opiC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f3.lo[i] <- min(opiC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Opilio F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
opiB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(opiB.45.f4.80) <- c("gfd","mir","ces")
row.names(opiB.45.f4.80) <- 1991:2080
opiB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Opilio"]
opiB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Opilio"]
opiB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Opilio"]
# head(opiB.45.f4.80)
opiB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiB.45.f4.80.up[i] <- max(opiB.45.f4.80[i,])
opiB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiB.45.f4.80.lo[i] <- min(opiB.45.f4.80[i,])
# Everything from 2081-2099
opiB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(opiB.45.f4.99) <- c("gfd","mir")
row.names(opiB.45.f4.99) <- 2081:2099
opiB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Opilio"]
opiB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Opilio"]
# head(opiB.45.f4.99)
opiB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiB.45.f4.99.up[i] <- max(opiB.45.f4.99[i,])
opiB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiB.45.f4.99.lo[i] <- min(opiB.45.f4.99[i,])
# now append these two time periods
opiB.45.f4.up <- c(opiB.45.f4.80.up,opiB.45.f4.99.up)
opiB.45.f4.lo <- c(opiB.45.f4.80.lo,opiB.45.f4.99.lo)

# RCP 8.5
opiB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(opiB.85.f4) <- c("gfd","mir","ces")
row.names(opiB.85.f4) <- 1991:2099
opiB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Opilio"]
opiB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Opilio"]
opiB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Opilio"]
# head(opiB.85.f4)
opiB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiB.85.f4.up[i] <- max(opiB.85.f4[i,])
opiB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiB.85.f4.lo[i] <- min(opiB.85.f4[i,])

# # SRES A1B
# opiB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(opiB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(opiB.a1b.f4) <- 1991:2039
# opiB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Opilio"]
# opiB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Opilio"]
# opiB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Opilio"]
# # head(opiB.a1b.f4)
# opiB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiB.a1b.f4.up[i] <- max(opiB.a1b.f4[i,])
# opiB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiB.a1b.f4.lo[i] <- min(opiB.a1b.f4[i,])

# Opilio Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
opiC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(opiC.45.f4.80) <- c("gfd","mir","ces")
row.names(opiC.45.f4.80) <- 1991:2080
opiC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Opilio"]
opiC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Opilio"]
opiC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Opilio"]
# head(opiC.45.f4.80)
opiC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiC.45.f4.80.up[i] <- max(opiC.45.f4.80[i,])
opiC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) opiC.45.f4.80.lo[i] <- min(opiC.45.f4.80[i,])
# Everything from 2081-2099
opiC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(opiC.45.f4.99) <- c("gfd","mir")
row.names(opiC.45.f4.99) <- 2081:2099
opiC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Opilio"]
opiC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Opilio"]
# head(opiC.45.f4.99)
opiC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiC.45.f4.99.up[i] <- max(opiC.45.f4.99[i,])
opiC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) opiC.45.f4.99.lo[i] <- min(opiC.45.f4.99[i,])
# now append these two time periods
opiC.45.f4.up <- c(opiC.45.f4.80.up,opiC.45.f4.99.up)
opiC.45.f4.lo <- c(opiC.45.f4.80.lo,opiC.45.f4.99.lo)

# RCP 8.5
opiC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(opiC.85.f4) <- c("gfd","mir","ces")
row.names(opiC.85.f4) <- 1991:2099
opiC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Opilio"]
opiC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Opilio"]
opiC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Opilio"]
# head(opiC.85.f4)
opiC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiC.85.f4.up[i] <- max(opiC.85.f4[i,])
opiC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) opiC.85.f4.lo[i] <- min(opiC.85.f4[i,])

# # SRES A1B
# opiC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(opiC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(opiC.a1b.f4) <- 1991:2039
# opiC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Opilio"]
# # head(opiC.a1b.f4)
# opiC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f4.up[i] <- max(opiC.a1b.f4[i,])
# opiC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f4.lo[i] <- min(opiC.a1b.f4[i,])


# ---------------------------------------------------------------------------- #
# Opilio f5 ---*ABC*---
# RCP 4.5
# Everything up through 2080
# opiB.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(opiB.45.f5.80) <- c("gfd","mir","ces")
# row.names(opiB.45.f5.80) <- 1991:2080
# opiB.45.f5.80[,1] <- gfd45.f5.91.add$annual_Biomass[1:90,"Opilio"]
# opiB.45.f5.80[,2] <- mir45.f5.91.add$annual_Biomass[1:90,"Opilio"]
# opiB.45.f5.80[,3] <- ces45.f5.91.add$annual_Biomass[,"Opilio"]
# # head(opiB.45.f5.80)
# opiB.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) opiB.45.f5.80.up[i] <- max(opiB.45.f5.80[i,])
# opiB.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) opiB.45.f5.80.lo[i] <- min(opiB.45.f5.80[i,])
# # Everything from 2081-2099
# opiB.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(opiB.45.f5.99) <- c("gfd","mir")
# row.names(opiB.45.f5.99) <- 2081:2099
# opiB.45.f5.99[,1] <- gfd45.f5.91.add$annual_Biomass[91:109,"Opilio"]
# opiB.45.f5.99[,2] <- mir45.f5.91.add$annual_Biomass[91:109,"Opilio"]
# # head(opiB.45.f5.99)
# opiB.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) opiB.45.f5.99.up[i] <- max(opiB.45.f5.99[i,])
# opiB.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) opiB.45.f5.99.lo[i] <- min(opiB.45.f5.99[i,])
# # now append these two time periods
# opiB.45.f5.up <- c(opiB.45.f5.80.up,opiB.45.f5.99.up)
# opiB.45.f5.lo <- c(opiB.45.f5.80.lo,opiB.45.f5.99.lo)
# 
# # RCP 8.5
# opiB.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(opiB.85.f5) <- c("gfd","mir","ces")
# row.names(opiB.85.f5) <- 1991:2099
# opiB.85.f5[,1] <- gfd85.f5.91.add$annual_Biomass[,"Opilio"]
# opiB.85.f5[,2] <- mir85.f5.91.add$annual_Biomass[,"Opilio"]
# opiB.85.f5[,3] <- ces85.f5.91.add$annual_Biomass[,"Opilio"]
# # head(opiB.85.f5)
# opiB.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) opiB.85.f5.up[i] <- max(opiB.85.f5[i,])
# opiB.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) opiB.85.f5.lo[i] <- min(opiB.85.f5[i,])
# 
# # # SRES A1B
# # opiB.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(opiB.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(opiB.a1b.f5) <- 1991:2039
# # opiB.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Biomass[,"Opilio"]
# # opiB.a1b.f5[,2] <- echA1B.f5.91.add$annual_Biomass[,"Opilio"]
# # opiB.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Biomass[,"Opilio"]
# # # head(opiB.a1b.f5)
# # opiB.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) opiB.a1b.f5.up[i] <- max(opiB.a1b.f5[i,])
# # opiB.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) opiB.a1b.f5.lo[i] <- min(opiB.a1b.f5[i,])
# 
# # Opilio Catch ----- *ABC*
# # RCP 4.5
# # Everything up through 2080
# opiC.45.f5.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(opiC.45.f5.80) <- c("gfd","mir","ces")
# row.names(opiC.45.f5.80) <- 1991:2080
# opiC.45.f5.80[,1] <- gfd45.f5.91.add$annual_Catch[1:90,"Opilio"]
# opiC.45.f5.80[,2] <- mir45.f5.91.add$annual_Catch[1:90,"Opilio"]
# opiC.45.f5.80[,3] <- ces45.f5.91.add$annual_Catch[,"Opilio"]
# # head(opiC.45.f5.80)
# opiC.45.f5.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) opiC.45.f5.80.up[i] <- max(opiC.45.f5.80[i,])
# opiC.45.f5.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) opiC.45.f5.80.lo[i] <- min(opiC.45.f5.80[i,])
# # Everything from 2081-2099
# opiC.45.f5.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(opiC.45.f5.99) <- c("gfd","mir")
# row.names(opiC.45.f5.99) <- 2081:2099
# opiC.45.f5.99[,1] <- gfd45.f5.91.add$annual_Catch[91:109,"Opilio"]
# opiC.45.f5.99[,2] <- mir45.f5.91.add$annual_Catch[91:109,"Opilio"]
# # head(opiC.45.f5.99)
# opiC.45.f5.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) opiC.45.f5.99.up[i] <- max(opiC.45.f5.99[i,])
# opiC.45.f5.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) opiC.45.f5.99.lo[i] <- min(opiC.45.f5.99[i,])
# # now append these two time periods
# opiC.45.f5.up <- c(opiC.45.f5.80.up,opiC.45.f5.99.up)
# opiC.45.f5.lo <- c(opiC.45.f5.80.lo,opiC.45.f5.99.lo)
# 
# # RCP 8.5
# opiC.85.f5 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(opiC.85.f5) <- c("gfd","mir","ces")
# row.names(opiC.85.f5) <- 1991:2099
# opiC.85.f5[,1] <- gfd85.f5.91.add$annual_Catch[,"Opilio"]
# opiC.85.f5[,2] <- mir85.f5.91.add$annual_Catch[,"Opilio"]
# opiC.85.f5[,3] <- ces85.f5.91.add$annual_Catch[,"Opilio"]
# # head(opiC.85.f5)
# opiC.85.f5.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) opiC.85.f5.up[i] <- max(opiC.85.f5[i,])
# opiC.85.f5.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) opiC.85.f5.lo[i] <- min(opiC.85.f5[i,])
# 
# # # SRES A1B
# # opiC.a1b.f5 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(opiC.a1b.f5) <- c("cccA1B","echA1B","mirA1B")
# # row.names(opiC.a1b.f5) <- 1991:2039
# # opiC.a1b.f5[,1] <- cccA1B.f5.91.add$annual_Catch[,"Opilio"]
# # opiC.a1b.f5[,2] <- echA1B.f5.91.add$annual_Catch[,"Opilio"]
# # opiC.a1b.f5[,3] <- mirA1B.f5.91.add$annual_Catch[,"Opilio"]
# # # head(opiC.a1b.f5)
# # opiC.a1b.f5.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) opiC.a1b.f5.up[i] <- max(opiC.a1b.f5[i,])
# # opiC.a1b.f5.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) opiC.a1b.f5.lo[i] <- min(opiC.a1b.f5[i,])
# 
# 
# # ---------------------------------------------------------------------------- #
# # Opilio f6 ---*F_equil*---
# # RCP 4.5
# # Everything up through 2080
# opiB.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(opiB.45.f6.80) <- c("gfd","mir","ces")
# row.names(opiB.45.f6.80) <- 1991:2080
# opiB.45.f6.80[,1] <- gfd45.f6.91.add$annual_Biomass[1:90,"Opilio"]
# opiB.45.f6.80[,2] <- mir45.f6.91.add$annual_Biomass[1:90,"Opilio"]
# opiB.45.f6.80[,3] <- ces45.f6.91.add$annual_Biomass[,"Opilio"]
# # head(opiB.45.f6.80)
# opiB.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) opiB.45.f6.80.up[i] <- max(opiB.45.f6.80[i,])
# opiB.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) opiB.45.f6.80.lo[i] <- min(opiB.45.f6.80[i,])
# # Everything from 2081-2099
# opiB.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(opiB.45.f6.99) <- c("gfd","mir")
# row.names(opiB.45.f6.99) <- 2081:2099
# opiB.45.f6.99[,1] <- gfd45.f6.91.add$annual_Biomass[91:109,"Opilio"]
# opiB.45.f6.99[,2] <- mir45.f6.91.add$annual_Biomass[91:109,"Opilio"]
# # head(opiB.45.f6.99)
# opiB.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) opiB.45.f6.99.up[i] <- max(opiB.45.f6.99[i,])
# opiB.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) opiB.45.f6.99.lo[i] <- min(opiB.45.f6.99[i,])
# # now append these two time periods
# opiB.45.f6.up <- c(opiB.45.f6.80.up,opiB.45.f6.99.up)
# opiB.45.f6.lo <- c(opiB.45.f6.80.lo,opiB.45.f6.99.lo)
# 
# # RCP 8.5
# opiB.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(opiB.85.f6) <- c("gfd","mir","ces")
# row.names(opiB.85.f6) <- 1991:2099
# opiB.85.f6[,1] <- gfd85.f6.91.add$annual_Biomass[,"Opilio"]
# opiB.85.f6[,2] <- mir85.f6.91.add$annual_Biomass[,"Opilio"]
# opiB.85.f6[,3] <- ces85.f6.91.add$annual_Biomass[,"Opilio"]
# # head(opiB.85.f6)
# opiB.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) opiB.85.f6.up[i] <- max(opiB.85.f6[i,])
# opiB.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) opiB.85.f6.lo[i] <- min(opiB.85.f6[i,])
# 
# # # SRES A1B
# # opiB.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# # colnames(opiB.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# # row.names(opiB.a1b.f6) <- 1991:2039
# # opiB.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Biomass[,"Opilio"]
# # opiB.a1b.f6[,2] <- echA1B.f6.91.add$annual_Biomass[,"Opilio"]
# # opiB.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Biomass[,"Opilio"]
# # # head(opiB.a1b.f6)
# # opiB.a1b.f6.up <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) opiB.a1b.f6.up[i] <- max(opiB.a1b.f6[i,])
# # opiB.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# # for (i in 1:49) opiB.a1b.f6.lo[i] <- min(opiB.a1b.f6[i,])
# 
# # Opilio Catch ----- *F_equil*
# # RCP 4.5
# # Everything up through 2080
# opiC.45.f6.80 <- matrix(data=NA,nrow=90, ncol=3)
# colnames(opiC.45.f6.80) <- c("gfd","mir","ces")
# row.names(opiC.45.f6.80) <- 1991:2080
# opiC.45.f6.80[,1] <- gfd45.f6.91.add$annual_Catch[1:90,"Opilio"]
# opiC.45.f6.80[,2] <- mir45.f6.91.add$annual_Catch[1:90,"Opilio"]
# opiC.45.f6.80[,3] <- ces45.f6.91.add$annual_Catch[,"Opilio"]
# # head(opiC.45.f6.80)
# opiC.45.f6.80.up <- matrix(nrow=90,ncol=1)
# for (i in 1:90) opiC.45.f6.80.up[i] <- max(opiC.45.f6.80[i,])
# opiC.45.f6.80.lo <- matrix(nrow=90,ncol=1)
# for (i in 1:90) opiC.45.f6.80.lo[i] <- min(opiC.45.f6.80[i,])
# # Everything from 2081-2099
# opiC.45.f6.99 <- matrix(data=NA,nrow=19, ncol=2)
# colnames(opiC.45.f6.99) <- c("gfd","mir")
# row.names(opiC.45.f6.99) <- 2081:2099
# opiC.45.f6.99[,1] <- gfd45.f6.91.add$annual_Catch[91:109,"Opilio"]
# opiC.45.f6.99[,2] <- mir45.f6.91.add$annual_Catch[91:109,"Opilio"]
# # head(opiC.45.f6.99)
# opiC.45.f6.99.up <- matrix(nrow=19,ncol=1)
# for (i in 1:19) opiC.45.f6.99.up[i] <- max(opiC.45.f6.99[i,])
# opiC.45.f6.99.lo <- matrix(nrow=19,ncol=1)
# for (i in 1:19) opiC.45.f6.99.lo[i] <- min(opiC.45.f6.99[i,])
# # now append these two time periods
# opiC.45.f6.up <- c(opiC.45.f6.80.up,opiC.45.f6.99.up)
# opiC.45.f6.lo <- c(opiC.45.f6.80.lo,opiC.45.f6.99.lo)
# 
# # RCP 8.5
# opiC.85.f6 <- matrix(data=NA,nrow=109, ncol=3)
# colnames(opiC.85.f6) <- c("gfd","mir","ces")
# row.names(opiC.85.f6) <- 1991:2099
# opiC.85.f6[,1] <- gfd85.f6.91.add$annual_Catch[,"Opilio"]
# opiC.85.f6[,2] <- mir85.f6.91.add$annual_Catch[,"Opilio"]
# opiC.85.f6[,3] <- ces85.f6.91.add$annual_Catch[,"Opilio"]
# # head(opiC.85.f6)
# opiC.85.f6.up <- matrix(nrow=109,ncol=1)
# for (i in 1:109) opiC.85.f6.up[i] <- max(opiC.85.f6[i,])
# opiC.85.f6.lo <- matrix(nrow=109,ncol=1)
# for (i in 1:109) opiC.85.f6.lo[i] <- min(opiC.85.f6[i,])

# # SRES A1B
# opiC.a1b.f6 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(opiC.a1b.f6) <- c("cccA1B","echA1B","mirA1B")
# row.names(opiC.a1b.f6) <- 1991:2039
# opiC.a1b.f6[,1] <- cccA1B.f6.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f6[,2] <- echA1B.f6.91.add$annual_Catch[,"Opilio"]
# opiC.a1b.f6[,3] <- mirA1B.f6.91.add$annual_Catch[,"Opilio"]
# # head(opiC.a1b.f6)
# opiC.a1b.f6.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f6.up[i] <- max(opiC.a1b.f6[i,])
# opiC.a1b.f6.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) opiC.a1b.f6.lo[i] <- min(opiC.a1b.f6[i,])

