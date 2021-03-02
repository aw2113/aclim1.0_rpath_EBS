# For reference the Motile.epifauna species are:
Motile.epifauna <- c("Bairdi","Eelpouts","King.Crab","Motile.epifauna","Octopi",
                     "Opilio")

rcp.yrs <- 1991:2099
a1b.yrs <- 1991:2039
ces.yrs <- 1991:2080


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Bairdi biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
brdiB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(brdiB.45.f1.80) <- c("gfd","mir","ces")
row.names(brdiB.45.f1.80) <- 1991:2080
brdiB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Bairdi"]
brdiB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Bairdi"]
brdiB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Bairdi"]
# head(brdiB.45.f1.80)
brdiB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiB.45.f1.80.up[i] <- max(brdiB.45.f1.80[i,])
brdiB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiB.45.f1.80.lo[i] <- min(brdiB.45.f1.80[i,])
# Everything from 2081-2099
brdiB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(brdiB.45.f1.99) <- c("gfd","mir")
row.names(brdiB.45.f1.99) <- 2081:2099
brdiB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Bairdi"]
brdiB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Bairdi"]
# head(brdiB.45.f1.99)
brdiB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiB.45.f1.99.up[i] <- max(brdiB.45.f1.99[i,])
brdiB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiB.45.f1.99.lo[i] <- min(brdiB.45.f1.99[i,])
# now append these two time periods
brdiB.45.f1.up <- c(brdiB.45.f1.80.up,brdiB.45.f1.99.up)
brdiB.45.f1.lo <- c(brdiB.45.f1.80.lo,brdiB.45.f1.99.lo)

# RCP 8.5
brdiB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(brdiB.85.f1) <- c("gfd","mir","ces")
row.names(brdiB.85.f1) <- 1991:2099
brdiB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Bairdi"]
brdiB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Bairdi"]
brdiB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Bairdi"]
# head(brdiB.85.f1)
brdiB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiB.85.f1.up[i] <- max(brdiB.85.f1[i,])
brdiB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiB.85.f1.lo[i] <- min(brdiB.85.f1[i,])

# # SRES A1B
# brdiB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(brdiB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(brdiB.a1b.f1) <- 1991:2039
# brdiB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Bairdi"]
# brdiB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Bairdi"]
# brdiB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Bairdi"]
# # head(brdiB.a1b.f1)
# brdiB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiB.a1b.f1.up[i] <- max(brdiB.a1b.f1[i,])
# brdiB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiB.a1b.f1.lo[i] <- min(brdiB.a1b.f1[i,])

# Bairdi Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
brdiC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(brdiC.45.f1.80) <- c("gfd","mir","ces")
row.names(brdiC.45.f1.80) <- 1991:2080
brdiC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Bairdi"]
brdiC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Bairdi"]
brdiC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Bairdi"]
# head(brdiC.45.f1.80)
brdiC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiC.45.f1.80.up[i] <- max(brdiC.45.f1.80[i,])
brdiC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiC.45.f1.80.lo[i] <- min(brdiC.45.f1.80[i,])
# Everything from 2081-2099
brdiC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(brdiC.45.f1.99) <- c("gfd","mir")
row.names(brdiC.45.f1.99) <- 2081:2099
brdiC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Bairdi"]
brdiC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Bairdi"]
# head(brdiC.45.f1.99)
brdiC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiC.45.f1.99.up[i] <- max(brdiC.45.f1.99[i,])
brdiC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiC.45.f1.99.lo[i] <- min(brdiC.45.f1.99[i,])
# now append these two time periods
brdiC.45.f1.up <- c(brdiC.45.f1.80.up,brdiC.45.f1.99.up)
brdiC.45.f1.lo <- c(brdiC.45.f1.80.lo,brdiC.45.f1.99.lo)

# RCP 8.5
brdiC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(brdiC.85.f1) <- c("gfd","mir","ces")
row.names(brdiC.85.f1) <- 1991:2099
brdiC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Bairdi"]
brdiC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Bairdi"]
brdiC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Bairdi"]
# head(brdiC.85.f1)
brdiC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiC.85.f1.up[i] <- max(brdiC.85.f1[i,])
brdiC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiC.85.f1.lo[i] <- min(brdiC.85.f1[i,])

# # SRES A1B
# brdiC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(brdiC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(brdiC.a1b.f1) <- 1991:2039
# brdiC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Bairdi"]
# brdiC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Bairdi"]
# brdiC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Bairdi"]
# # head(brdiC.a1b.f1)
# brdiC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiC.a1b.f1.up[i] <- max(brdiC.a1b.f1[i,])
# brdiC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiC.a1b.f1.lo[i] <- min(brdiC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Bairdi F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
brdiB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(brdiB.45.f2.80) <- c("gfd","mir","ces")
row.names(brdiB.45.f2.80) <- 1991:2080
brdiB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Bairdi"]
brdiB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Bairdi"]
brdiB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Bairdi"]
# head(brdiB.45.f2.80)
brdiB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiB.45.f2.80.up[i] <- max(brdiB.45.f2.80[i,])
brdiB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiB.45.f2.80.lo[i] <- min(brdiB.45.f2.80[i,])
# Everything from 2081-2099
brdiB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(brdiB.45.f2.99) <- c("gfd","mir")
row.names(brdiB.45.f2.99) <- 2081:2099
brdiB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Bairdi"]
brdiB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Bairdi"]
# head(brdiB.45.f2.99)
brdiB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiB.45.f2.99.up[i] <- max(brdiB.45.f2.99[i,])
brdiB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiB.45.f2.99.lo[i] <- min(brdiB.45.f2.99[i,])
# now append these two time periods
brdiB.45.f2.up <- c(brdiB.45.f2.80.up,brdiB.45.f2.99.up)
brdiB.45.f2.lo <- c(brdiB.45.f2.80.lo,brdiB.45.f2.99.lo)

# RCP 8.5
brdiB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(brdiB.85.f2) <- c("gfd","mir","ces")
row.names(brdiB.85.f2) <- 1991:2099
brdiB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Bairdi"]
brdiB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Bairdi"]
brdiB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Bairdi"]
# head(brdiB.85.f2)
brdiB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiB.85.f2.up[i] <- max(brdiB.85.f2[i,])
brdiB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiB.85.f2.lo[i] <- min(brdiB.85.f2[i,])

# # SRES A1B
# brdiB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(brdiB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(brdiB.a1b.f2) <- 1991:2039
# brdiB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Bairdi"]
# brdiB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Bairdi"]
# brdiB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Bairdi"]
# # head(brdiB.a1b.f2)
# brdiB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiB.a1b.f2.up[i] <- max(brdiB.a1b.f2[i,])
# brdiB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiB.a1b.f2.lo[i] <- min(brdiB.a1b.f2[i,])

# Bairdi Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
brdiC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(brdiC.45.f2.80) <- c("gfd","mir","ces")
row.names(brdiC.45.f2.80) <- 1991:2080
brdiC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Bairdi"]
brdiC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Bairdi"]
brdiC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Bairdi"]
# head(brdiC.45.f2.80)
brdiC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiC.45.f2.80.up[i] <- max(brdiC.45.f2.80[i,])
brdiC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiC.45.f2.80.lo[i] <- min(brdiC.45.f2.80[i,])
# Everything from 2081-2099
brdiC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(brdiC.45.f2.99) <- c("gfd","mir")
row.names(brdiC.45.f2.99) <- 2081:2099
brdiC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Bairdi"]
brdiC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Bairdi"]
# head(brdiC.45.f2.99)
brdiC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiC.45.f2.99.up[i] <- max(brdiC.45.f2.99[i,])
brdiC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiC.45.f2.99.lo[i] <- min(brdiC.45.f2.99[i,])
# now append these two time periods
brdiC.45.f2.up <- c(brdiC.45.f2.80.up,brdiC.45.f2.99.up)
brdiC.45.f2.lo <- c(brdiC.45.f2.80.lo,brdiC.45.f2.99.lo)

# RCP 8.5
brdiC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(brdiC.85.f2) <- c("gfd","mir","ces")
row.names(brdiC.85.f2) <- 1991:2099
brdiC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Bairdi"]
brdiC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Bairdi"]
brdiC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Bairdi"]
# head(brdiC.85.f2)
brdiC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiC.85.f2.up[i] <- max(brdiC.85.f2[i,])
brdiC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiC.85.f2.lo[i] <- min(brdiC.85.f2[i,])

# # SRES A1B
# brdiC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(brdiC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(brdiC.a1b.f2) <- 1991:2039
# brdiC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Bairdi"]
# brdiC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Bairdi"]
# brdiC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Bairdi"]
# # head(brdiC.a1b.f2)
# brdiC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiC.a1b.f2.up[i] <- max(brdiC.a1b.f2[i,])
# brdiC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiC.a1b.f2.lo[i] <- min(brdiC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Bairdi F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
brdiB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(brdiB.45.f3.80) <- c("gfd","mir","ces")
row.names(brdiB.45.f3.80) <- 1991:2080
brdiB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Bairdi"]
brdiB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Bairdi"]
brdiB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Bairdi"]
# head(brdiB.45.f3.80)
brdiB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiB.45.f3.80.up[i] <- max(brdiB.45.f3.80[i,])
brdiB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiB.45.f3.80.lo[i] <- min(brdiB.45.f3.80[i,])
# Everything from 2081-2099
brdiB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(brdiB.45.f3.99) <- c("gfd","mir")
row.names(brdiB.45.f3.99) <- 2081:2099
brdiB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Bairdi"]
brdiB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Bairdi"]
# head(brdiB.45.f3.99)
brdiB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiB.45.f3.99.up[i] <- max(brdiB.45.f3.99[i,])
brdiB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiB.45.f3.99.lo[i] <- min(brdiB.45.f3.99[i,])
# now append these two time periods
brdiB.45.f3.up <- c(brdiB.45.f3.80.up,brdiB.45.f3.99.up)
brdiB.45.f3.lo <- c(brdiB.45.f3.80.lo,brdiB.45.f3.99.lo)

# RCP 8.5
brdiB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(brdiB.85.f3) <- c("gfd","mir","ces")
row.names(brdiB.85.f3) <- 1991:2099
brdiB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Bairdi"]
brdiB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Bairdi"]
brdiB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Bairdi"]
# head(brdiB.85.f3)
brdiB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiB.85.f3.up[i] <- max(brdiB.85.f3[i,])
brdiB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiB.85.f3.lo[i] <- min(brdiB.85.f3[i,])

# # SRES A1B
# brdiB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(brdiB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(brdiB.a1b.f3) <- 1991:2039
# brdiB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Bairdi"]
# brdiB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Bairdi"]
# brdiB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Bairdi"]
# # head(brdiB.a1b.f3)
# brdiB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiB.a1b.f3.up[i] <- max(brdiB.a1b.f3[i,])
# brdiB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiB.a1b.f3.lo[i] <- min(brdiB.a1b.f3[i,])

# Bairdi Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
brdiC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(brdiC.45.f3.80) <- c("gfd","mir","ces")
row.names(brdiC.45.f3.80) <- 1991:2080
brdiC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Bairdi"]
brdiC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Bairdi"]
brdiC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Bairdi"]
# head(brdiC.45.f3.80)
brdiC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiC.45.f3.80.up[i] <- max(brdiC.45.f3.80[i,])
brdiC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiC.45.f3.80.lo[i] <- min(brdiC.45.f3.80[i,])
# Everything from 2081-2099
brdiC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(brdiC.45.f3.99) <- c("gfd","mir")
row.names(brdiC.45.f3.99) <- 2081:2099
brdiC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Bairdi"]
brdiC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Bairdi"]
# head(brdiC.45.f3.99)
brdiC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiC.45.f3.99.up[i] <- max(brdiC.45.f3.99[i,])
brdiC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiC.45.f3.99.lo[i] <- min(brdiC.45.f3.99[i,])
# now append these two time periods
brdiC.45.f3.up <- c(brdiC.45.f3.80.up,brdiC.45.f3.99.up)
brdiC.45.f3.lo <- c(brdiC.45.f3.80.lo,brdiC.45.f3.99.lo)

# RCP 8.5
brdiC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(brdiC.85.f3) <- c("gfd","mir","ces")
row.names(brdiC.85.f3) <- 1991:2099
brdiC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Bairdi"]
brdiC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Bairdi"]
brdiC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Bairdi"]
# head(brdiC.85.f3)
brdiC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiC.85.f3.up[i] <- max(brdiC.85.f3[i,])
brdiC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiC.85.f3.lo[i] <- min(brdiC.85.f3[i,])

# # SRES A1B
# brdiC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(brdiC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(brdiC.a1b.f3) <- 1991:2039
# brdiC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Bairdi"]
# brdiC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Bairdi"]
# brdiC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Bairdi"]
# # head(brdiC.a1b.f3)
# brdiC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiC.a1b.f3.up[i] <- max(brdiC.a1b.f3[i,])
# brdiC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiC.a1b.f3.lo[i] <- min(brdiC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Bairdi F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
brdiB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(brdiB.45.f4.80) <- c("gfd","mir","ces")
row.names(brdiB.45.f4.80) <- 1991:2080
brdiB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Bairdi"]
brdiB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Bairdi"]
brdiB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Bairdi"]
# head(brdiB.45.f4.80)
brdiB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiB.45.f4.80.up[i] <- max(brdiB.45.f4.80[i,])
brdiB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiB.45.f4.80.lo[i] <- min(brdiB.45.f4.80[i,])
# Everything from 2081-2099
brdiB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(brdiB.45.f4.99) <- c("gfd","mir")
row.names(brdiB.45.f4.99) <- 2081:2099
brdiB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Bairdi"]
brdiB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Bairdi"]
# head(brdiB.45.f4.99)
brdiB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiB.45.f4.99.up[i] <- max(brdiB.45.f4.99[i,])
brdiB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiB.45.f4.99.lo[i] <- min(brdiB.45.f4.99[i,])
# now append these two time periods
brdiB.45.f4.up <- c(brdiB.45.f4.80.up,brdiB.45.f4.99.up)
brdiB.45.f4.lo <- c(brdiB.45.f4.80.lo,brdiB.45.f4.99.lo)

# RCP 8.5
brdiB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(brdiB.85.f4) <- c("gfd","mir","ces")
row.names(brdiB.85.f4) <- 1991:2099
brdiB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Bairdi"]
brdiB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Bairdi"]
brdiB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Bairdi"]
# head(brdiB.85.f4)
brdiB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiB.85.f4.up[i] <- max(brdiB.85.f4[i,])
brdiB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiB.85.f4.lo[i] <- min(brdiB.85.f4[i,])

# # SRES A1B
# brdiB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(brdiB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(brdiB.a1b.f4) <- 1991:2039
# brdiB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Bairdi"]
# brdiB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Bairdi"]
# brdiB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Bairdi"]
# # head(brdiB.a1b.f4)
# brdiB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiB.a1b.f4.up[i] <- max(brdiB.a1b.f4[i,])
# brdiB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiB.a1b.f4.lo[i] <- min(brdiB.a1b.f4[i,])

# Bairdi Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
brdiC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(brdiC.45.f4.80) <- c("gfd","mir","ces")
row.names(brdiC.45.f4.80) <- 1991:2080
brdiC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Bairdi"]
brdiC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Bairdi"]
brdiC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Bairdi"]
# head(brdiC.45.f4.80)
brdiC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiC.45.f4.80.up[i] <- max(brdiC.45.f4.80[i,])
brdiC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) brdiC.45.f4.80.lo[i] <- min(brdiC.45.f4.80[i,])
# Everything from 2081-2099
brdiC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(brdiC.45.f4.99) <- c("gfd","mir")
row.names(brdiC.45.f4.99) <- 2081:2099
brdiC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Bairdi"]
brdiC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Bairdi"]
# head(brdiC.45.f4.99)
brdiC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiC.45.f4.99.up[i] <- max(brdiC.45.f4.99[i,])
brdiC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) brdiC.45.f4.99.lo[i] <- min(brdiC.45.f4.99[i,])
# now append these two time periods
brdiC.45.f4.up <- c(brdiC.45.f4.80.up,brdiC.45.f4.99.up)
brdiC.45.f4.lo <- c(brdiC.45.f4.80.lo,brdiC.45.f4.99.lo)

# RCP 8.5
brdiC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(brdiC.85.f4) <- c("gfd","mir","ces")
row.names(brdiC.85.f4) <- 1991:2099
brdiC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Bairdi"]
brdiC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Bairdi"]
brdiC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Bairdi"]
# head(brdiC.85.f4)
brdiC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiC.85.f4.up[i] <- max(brdiC.85.f4[i,])
brdiC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) brdiC.85.f4.lo[i] <- min(brdiC.85.f4[i,])

# # SRES A1B
# brdiC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(brdiC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(brdiC.a1b.f4) <- 1991:2039
# brdiC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Bairdi"]
# brdiC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Bairdi"]
# brdiC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Bairdi"]
# # head(brdiC.a1b.f4)
# brdiC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiC.a1b.f4.up[i] <- max(brdiC.a1b.f4[i,])
# brdiC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) brdiC.a1b.f4.lo[i] <- min(brdiC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Eelpouts biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
eelB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(eelB.45.f1.80) <- c("gfd","mir","ces")
row.names(eelB.45.f1.80) <- 1991:2080
eelB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Eelpouts"]
eelB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Eelpouts"]
eelB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Eelpouts"]
# head(eelB.45.f1.80)
eelB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelB.45.f1.80.up[i] <- max(eelB.45.f1.80[i,])
eelB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelB.45.f1.80.lo[i] <- min(eelB.45.f1.80[i,])
# Everything from 2081-2099
eelB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(eelB.45.f1.99) <- c("gfd","mir")
row.names(eelB.45.f1.99) <- 2081:2099
eelB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Eelpouts"]
eelB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Eelpouts"]
# head(eelB.45.f1.99)
eelB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelB.45.f1.99.up[i] <- max(eelB.45.f1.99[i,])
eelB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelB.45.f1.99.lo[i] <- min(eelB.45.f1.99[i,])
# now append these two time periods
eelB.45.f1.up <- c(eelB.45.f1.80.up,eelB.45.f1.99.up)
eelB.45.f1.lo <- c(eelB.45.f1.80.lo,eelB.45.f1.99.lo)

# RCP 8.5
eelB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(eelB.85.f1) <- c("gfd","mir","ces")
row.names(eelB.85.f1) <- 1991:2099
eelB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Eelpouts"]
eelB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Eelpouts"]
eelB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Eelpouts"]
# head(eelB.85.f1)
eelB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelB.85.f1.up[i] <- max(eelB.85.f1[i,])
eelB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelB.85.f1.lo[i] <- min(eelB.85.f1[i,])

# # SRES A1B
# eelB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(eelB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(eelB.a1b.f1) <- 1991:2039
# eelB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Eelpouts"]
# eelB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Eelpouts"]
# eelB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Eelpouts"]
# # head(eelB.a1b.f1)
# eelB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelB.a1b.f1.up[i] <- max(eelB.a1b.f1[i,])
# eelB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelB.a1b.f1.lo[i] <- min(eelB.a1b.f1[i,])

# Eelpouts Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
eelC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(eelC.45.f1.80) <- c("gfd","mir","ces")
row.names(eelC.45.f1.80) <- 1991:2080
eelC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Eelpouts"]
eelC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Eelpouts"]
eelC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Eelpouts"]
# head(eelC.45.f1.80)
eelC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelC.45.f1.80.up[i] <- max(eelC.45.f1.80[i,])
eelC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelC.45.f1.80.lo[i] <- min(eelC.45.f1.80[i,])
# Everything from 2081-2099
eelC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(eelC.45.f1.99) <- c("gfd","mir")
row.names(eelC.45.f1.99) <- 2081:2099
eelC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Eelpouts"]
eelC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Eelpouts"]
# head(eelC.45.f1.99)
eelC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelC.45.f1.99.up[i] <- max(eelC.45.f1.99[i,])
eelC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelC.45.f1.99.lo[i] <- min(eelC.45.f1.99[i,])
# now append these two time periods
eelC.45.f1.up <- c(eelC.45.f1.80.up,eelC.45.f1.99.up)
eelC.45.f1.lo <- c(eelC.45.f1.80.lo,eelC.45.f1.99.lo)

# RCP 8.5
eelC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(eelC.85.f1) <- c("gfd","mir","ces")
row.names(eelC.85.f1) <- 1991:2099
eelC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Eelpouts"]
eelC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Eelpouts"]
eelC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Eelpouts"]
# head(eelC.85.f1)
eelC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelC.85.f1.up[i] <- max(eelC.85.f1[i,])
eelC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelC.85.f1.lo[i] <- min(eelC.85.f1[i,])

# # SRES A1B
# eelC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(eelC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(eelC.a1b.f1) <- 1991:2039
# eelC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Eelpouts"]
# eelC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Eelpouts"]
# eelC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Eelpouts"]
# # head(eelC.a1b.f1)
# eelC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelC.a1b.f1.up[i] <- max(eelC.a1b.f1[i,])
# eelC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelC.a1b.f1.lo[i] <- min(eelC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Eelpouts F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
eelB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(eelB.45.f2.80) <- c("gfd","mir","ces")
row.names(eelB.45.f2.80) <- 1991:2080
eelB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Eelpouts"]
eelB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Eelpouts"]
eelB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Eelpouts"]
# head(eelB.45.f2.80)
eelB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelB.45.f2.80.up[i] <- max(eelB.45.f2.80[i,])
eelB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelB.45.f2.80.lo[i] <- min(eelB.45.f2.80[i,])
# Everything from 2081-2099
eelB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(eelB.45.f2.99) <- c("gfd","mir")
row.names(eelB.45.f2.99) <- 2081:2099
eelB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Eelpouts"]
eelB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Eelpouts"]
# head(eelB.45.f2.99)
eelB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelB.45.f2.99.up[i] <- max(eelB.45.f2.99[i,])
eelB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelB.45.f2.99.lo[i] <- min(eelB.45.f2.99[i,])
# now append these two time periods
eelB.45.f2.up <- c(eelB.45.f2.80.up,eelB.45.f2.99.up)
eelB.45.f2.lo <- c(eelB.45.f2.80.lo,eelB.45.f2.99.lo)

# RCP 8.5
eelB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(eelB.85.f2) <- c("gfd","mir","ces")
row.names(eelB.85.f2) <- 1991:2099
eelB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Eelpouts"]
eelB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Eelpouts"]
eelB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Eelpouts"]
# head(eelB.85.f2)
eelB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelB.85.f2.up[i] <- max(eelB.85.f2[i,])
eelB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelB.85.f2.lo[i] <- min(eelB.85.f2[i,])

# # SRES A1B
# eelB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(eelB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(eelB.a1b.f2) <- 1991:2039
# eelB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Eelpouts"]
# eelB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Eelpouts"]
# eelB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Eelpouts"]
# # head(eelB.a1b.f2)
# eelB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelB.a1b.f2.up[i] <- max(eelB.a1b.f2[i,])
# eelB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelB.a1b.f2.lo[i] <- min(eelB.a1b.f2[i,])

# Eelpouts Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
eelC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(eelC.45.f2.80) <- c("gfd","mir","ces")
row.names(eelC.45.f2.80) <- 1991:2080
eelC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Eelpouts"]
eelC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Eelpouts"]
eelC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Eelpouts"]
# head(eelC.45.f2.80)
eelC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelC.45.f2.80.up[i] <- max(eelC.45.f2.80[i,])
eelC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelC.45.f2.80.lo[i] <- min(eelC.45.f2.80[i,])
# Everything from 2081-2099
eelC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(eelC.45.f2.99) <- c("gfd","mir")
row.names(eelC.45.f2.99) <- 2081:2099
eelC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Eelpouts"]
eelC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Eelpouts"]
# head(eelC.45.f2.99)
eelC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelC.45.f2.99.up[i] <- max(eelC.45.f2.99[i,])
eelC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelC.45.f2.99.lo[i] <- min(eelC.45.f2.99[i,])
# now append these two time periods
eelC.45.f2.up <- c(eelC.45.f2.80.up,eelC.45.f2.99.up)
eelC.45.f2.lo <- c(eelC.45.f2.80.lo,eelC.45.f2.99.lo)

# RCP 8.5
eelC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(eelC.85.f2) <- c("gfd","mir","ces")
row.names(eelC.85.f2) <- 1991:2099
eelC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Eelpouts"]
eelC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Eelpouts"]
eelC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Eelpouts"]
# head(eelC.85.f2)
eelC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelC.85.f2.up[i] <- max(eelC.85.f2[i,])
eelC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelC.85.f2.lo[i] <- min(eelC.85.f2[i,])

# # SRES A1B
# eelC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(eelC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(eelC.a1b.f2) <- 1991:2039
# eelC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Eelpouts"]
# eelC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Eelpouts"]
# eelC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Eelpouts"]
# # head(eelC.a1b.f2)
# eelC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelC.a1b.f2.up[i] <- max(eelC.a1b.f2[i,])
# eelC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelC.a1b.f2.lo[i] <- min(eelC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Eelpouts F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
eelB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(eelB.45.f3.80) <- c("gfd","mir","ces")
row.names(eelB.45.f3.80) <- 1991:2080
eelB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Eelpouts"]
eelB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Eelpouts"]
eelB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Eelpouts"]
# head(eelB.45.f3.80)
eelB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelB.45.f3.80.up[i] <- max(eelB.45.f3.80[i,])
eelB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelB.45.f3.80.lo[i] <- min(eelB.45.f3.80[i,])
# Everything from 2081-2099
eelB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(eelB.45.f3.99) <- c("gfd","mir")
row.names(eelB.45.f3.99) <- 2081:2099
eelB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Eelpouts"]
eelB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Eelpouts"]
# head(eelB.45.f3.99)
eelB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelB.45.f3.99.up[i] <- max(eelB.45.f3.99[i,])
eelB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelB.45.f3.99.lo[i] <- min(eelB.45.f3.99[i,])
# now append these two time periods
eelB.45.f3.up <- c(eelB.45.f3.80.up,eelB.45.f3.99.up)
eelB.45.f3.lo <- c(eelB.45.f3.80.lo,eelB.45.f3.99.lo)

# RCP 8.5
eelB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(eelB.85.f3) <- c("gfd","mir","ces")
row.names(eelB.85.f3) <- 1991:2099
eelB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Eelpouts"]
eelB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Eelpouts"]
eelB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Eelpouts"]
# head(eelB.85.f3)
eelB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelB.85.f3.up[i] <- max(eelB.85.f3[i,])
eelB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelB.85.f3.lo[i] <- min(eelB.85.f3[i,])

# # SRES A1B
# eelB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(eelB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(eelB.a1b.f3) <- 1991:2039
# eelB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Eelpouts"]
# eelB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Eelpouts"]
# eelB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Eelpouts"]
# # head(eelB.a1b.f3)
# eelB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelB.a1b.f3.up[i] <- max(eelB.a1b.f3[i,])
# eelB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelB.a1b.f3.lo[i] <- min(eelB.a1b.f3[i,])

# Eelpouts Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
eelC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(eelC.45.f3.80) <- c("gfd","mir","ces")
row.names(eelC.45.f3.80) <- 1991:2080
eelC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Eelpouts"]
eelC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Eelpouts"]
eelC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Eelpouts"]
# head(eelC.45.f3.80)
eelC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelC.45.f3.80.up[i] <- max(eelC.45.f3.80[i,])
eelC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelC.45.f3.80.lo[i] <- min(eelC.45.f3.80[i,])
# Everything from 2081-2099
eelC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(eelC.45.f3.99) <- c("gfd","mir")
row.names(eelC.45.f3.99) <- 2081:2099
eelC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Eelpouts"]
eelC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Eelpouts"]
# head(eelC.45.f3.99)
eelC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelC.45.f3.99.up[i] <- max(eelC.45.f3.99[i,])
eelC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelC.45.f3.99.lo[i] <- min(eelC.45.f3.99[i,])
# now append these two time periods
eelC.45.f3.up <- c(eelC.45.f3.80.up,eelC.45.f3.99.up)
eelC.45.f3.lo <- c(eelC.45.f3.80.lo,eelC.45.f3.99.lo)

# RCP 8.5
eelC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(eelC.85.f3) <- c("gfd","mir","ces")
row.names(eelC.85.f3) <- 1991:2099
eelC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Eelpouts"]
eelC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Eelpouts"]
eelC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Eelpouts"]
# head(eelC.85.f3)
eelC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelC.85.f3.up[i] <- max(eelC.85.f3[i,])
eelC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelC.85.f3.lo[i] <- min(eelC.85.f3[i,])

# # SRES A1B
# eelC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(eelC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(eelC.a1b.f3) <- 1991:2039
# eelC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Eelpouts"]
# eelC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Eelpouts"]
# eelC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Eelpouts"]
# # head(eelC.a1b.f3)
# eelC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelC.a1b.f3.up[i] <- max(eelC.a1b.f3[i,])
# eelC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelC.a1b.f3.lo[i] <- min(eelC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Eelpouts F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
eelB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(eelB.45.f4.80) <- c("gfd","mir","ces")
row.names(eelB.45.f4.80) <- 1991:2080
eelB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Eelpouts"]
eelB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Eelpouts"]
eelB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Eelpouts"]
# head(eelB.45.f4.80)
eelB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelB.45.f4.80.up[i] <- max(eelB.45.f4.80[i,])
eelB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelB.45.f4.80.lo[i] <- min(eelB.45.f4.80[i,])
# Everything from 2081-2099
eelB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(eelB.45.f4.99) <- c("gfd","mir")
row.names(eelB.45.f4.99) <- 2081:2099
eelB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Eelpouts"]
eelB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Eelpouts"]
# head(eelB.45.f4.99)
eelB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelB.45.f4.99.up[i] <- max(eelB.45.f4.99[i,])
eelB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelB.45.f4.99.lo[i] <- min(eelB.45.f4.99[i,])
# now append these two time periods
eelB.45.f4.up <- c(eelB.45.f4.80.up,eelB.45.f4.99.up)
eelB.45.f4.lo <- c(eelB.45.f4.80.lo,eelB.45.f4.99.lo)

# RCP 8.5
eelB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(eelB.85.f4) <- c("gfd","mir","ces")
row.names(eelB.85.f4) <- 1991:2099
eelB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Eelpouts"]
eelB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Eelpouts"]
eelB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Eelpouts"]
# head(eelB.85.f4)
eelB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelB.85.f4.up[i] <- max(eelB.85.f4[i,])
eelB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelB.85.f4.lo[i] <- min(eelB.85.f4[i,])

# # SRES A1B
# eelB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(eelB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(eelB.a1b.f4) <- 1991:2039
# eelB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Eelpouts"]
# eelB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Eelpouts"]
# eelB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Eelpouts"]
# # head(eelB.a1b.f4)
# eelB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelB.a1b.f4.up[i] <- max(eelB.a1b.f4[i,])
# eelB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelB.a1b.f4.lo[i] <- min(eelB.a1b.f4[i,])

# Eelpouts Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
eelC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(eelC.45.f4.80) <- c("gfd","mir","ces")
row.names(eelC.45.f4.80) <- 1991:2080
eelC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Eelpouts"]
eelC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Eelpouts"]
eelC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Eelpouts"]
# head(eelC.45.f4.80)
eelC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelC.45.f4.80.up[i] <- max(eelC.45.f4.80[i,])
eelC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) eelC.45.f4.80.lo[i] <- min(eelC.45.f4.80[i,])
# Everything from 2081-2099
eelC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(eelC.45.f4.99) <- c("gfd","mir")
row.names(eelC.45.f4.99) <- 2081:2099
eelC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Eelpouts"]
eelC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Eelpouts"]
# head(eelC.45.f4.99)
eelC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelC.45.f4.99.up[i] <- max(eelC.45.f4.99[i,])
eelC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) eelC.45.f4.99.lo[i] <- min(eelC.45.f4.99[i,])
# now append these two time periods
eelC.45.f4.up <- c(eelC.45.f4.80.up,eelC.45.f4.99.up)
eelC.45.f4.lo <- c(eelC.45.f4.80.lo,eelC.45.f4.99.lo)

# RCP 8.5
eelC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(eelC.85.f4) <- c("gfd","mir","ces")
row.names(eelC.85.f4) <- 1991:2099
eelC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Eelpouts"]
eelC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Eelpouts"]
eelC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Eelpouts"]
# head(eelC.85.f4)
eelC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelC.85.f4.up[i] <- max(eelC.85.f4[i,])
eelC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) eelC.85.f4.lo[i] <- min(eelC.85.f4[i,])

# # SRES A1B
# eelC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(eelC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(eelC.a1b.f4) <- 1991:2039
# eelC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Eelpouts"]
# eelC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Eelpouts"]
# eelC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Eelpouts"]
# # head(eelC.a1b.f4)
# eelC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelC.a1b.f4.up[i] <- max(eelC.a1b.f4[i,])
# eelC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eelC.a1b.f4.lo[i] <- min(eelC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# King.Crab biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
kingB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kingB.45.f1.80) <- c("gfd","mir","ces")
row.names(kingB.45.f1.80) <- 1991:2080
kingB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"King.Crab"]
kingB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"King.Crab"]
kingB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"King.Crab"]
# head(kingB.45.f1.80)
kingB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingB.45.f1.80.up[i] <- max(kingB.45.f1.80[i,])
kingB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingB.45.f1.80.lo[i] <- min(kingB.45.f1.80[i,])
# Everything from 2081-2099
kingB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kingB.45.f1.99) <- c("gfd","mir")
row.names(kingB.45.f1.99) <- 2081:2099
kingB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"King.Crab"]
kingB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"King.Crab"]
# head(kingB.45.f1.99)
kingB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingB.45.f1.99.up[i] <- max(kingB.45.f1.99[i,])
kingB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingB.45.f1.99.lo[i] <- min(kingB.45.f1.99[i,])
# now append these two time periods
kingB.45.f1.up <- c(kingB.45.f1.80.up,kingB.45.f1.99.up)
kingB.45.f1.lo <- c(kingB.45.f1.80.lo,kingB.45.f1.99.lo)

# RCP 8.5
kingB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kingB.85.f1) <- c("gfd","mir","ces")
row.names(kingB.85.f1) <- 1991:2099
kingB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"King.Crab"]
kingB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"King.Crab"]
kingB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"King.Crab"]
# head(kingB.85.f1)
kingB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingB.85.f1.up[i] <- max(kingB.85.f1[i,])
kingB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingB.85.f1.lo[i] <- min(kingB.85.f1[i,])

# # SRES A1B
# kingB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kingB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(kingB.a1b.f1) <- 1991:2039
# kingB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"King.Crab"]
# kingB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"King.Crab"]
# kingB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"King.Crab"]
# # head(kingB.a1b.f1)
# kingB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingB.a1b.f1.up[i] <- max(kingB.a1b.f1[i,])
# kingB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingB.a1b.f1.lo[i] <- min(kingB.a1b.f1[i,])

# King.Crab Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
kingC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kingC.45.f1.80) <- c("gfd","mir","ces")
row.names(kingC.45.f1.80) <- 1991:2080
kingC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"King.Crab"]
kingC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"King.Crab"]
kingC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"King.Crab"]
# head(kingC.45.f1.80)
kingC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingC.45.f1.80.up[i] <- max(kingC.45.f1.80[i,])
kingC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingC.45.f1.80.lo[i] <- min(kingC.45.f1.80[i,])
# Everything from 2081-2099
kingC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kingC.45.f1.99) <- c("gfd","mir")
row.names(kingC.45.f1.99) <- 2081:2099
kingC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"King.Crab"]
kingC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"King.Crab"]
# head(kingC.45.f1.99)
kingC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingC.45.f1.99.up[i] <- max(kingC.45.f1.99[i,])
kingC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingC.45.f1.99.lo[i] <- min(kingC.45.f1.99[i,])
# now append these two time periods
kingC.45.f1.up <- c(kingC.45.f1.80.up,kingC.45.f1.99.up)
kingC.45.f1.lo <- c(kingC.45.f1.80.lo,kingC.45.f1.99.lo)

# RCP 8.5
kingC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kingC.85.f1) <- c("gfd","mir","ces")
row.names(kingC.85.f1) <- 1991:2099
kingC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"King.Crab"]
kingC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"King.Crab"]
kingC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"King.Crab"]
# head(kingC.85.f1)
kingC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingC.85.f1.up[i] <- max(kingC.85.f1[i,])
kingC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingC.85.f1.lo[i] <- min(kingC.85.f1[i,])

# # SRES A1B
# kingC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kingC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(kingC.a1b.f1) <- 1991:2039
# kingC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"King.Crab"]
# kingC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"King.Crab"]
# kingC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"King.Crab"]
# # head(kingC.a1b.f1)
# kingC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingC.a1b.f1.up[i] <- max(kingC.a1b.f1[i,])
# kingC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingC.a1b.f1.lo[i] <- min(kingC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# King.Crab F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
kingB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kingB.45.f2.80) <- c("gfd","mir","ces")
row.names(kingB.45.f2.80) <- 1991:2080
kingB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"King.Crab"]
kingB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"King.Crab"]
kingB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"King.Crab"]
# head(kingB.45.f2.80)
kingB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingB.45.f2.80.up[i] <- max(kingB.45.f2.80[i,])
kingB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingB.45.f2.80.lo[i] <- min(kingB.45.f2.80[i,])
# Everything from 2081-2099
kingB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kingB.45.f2.99) <- c("gfd","mir")
row.names(kingB.45.f2.99) <- 2081:2099
kingB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"King.Crab"]
kingB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"King.Crab"]
# head(kingB.45.f2.99)
kingB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingB.45.f2.99.up[i] <- max(kingB.45.f2.99[i,])
kingB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingB.45.f2.99.lo[i] <- min(kingB.45.f2.99[i,])
# now append these two time periods
kingB.45.f2.up <- c(kingB.45.f2.80.up,kingB.45.f2.99.up)
kingB.45.f2.lo <- c(kingB.45.f2.80.lo,kingB.45.f2.99.lo)

# RCP 8.5
kingB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kingB.85.f2) <- c("gfd","mir","ces")
row.names(kingB.85.f2) <- 1991:2099
kingB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"King.Crab"]
kingB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"King.Crab"]
kingB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"King.Crab"]
# head(kingB.85.f2)
kingB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingB.85.f2.up[i] <- max(kingB.85.f2[i,])
kingB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingB.85.f2.lo[i] <- min(kingB.85.f2[i,])

# # SRES A1B
# kingB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kingB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(kingB.a1b.f2) <- 1991:2039
# kingB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"King.Crab"]
# kingB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"King.Crab"]
# kingB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"King.Crab"]
# # head(kingB.a1b.f2)
# kingB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingB.a1b.f2.up[i] <- max(kingB.a1b.f2[i,])
# kingB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingB.a1b.f2.lo[i] <- min(kingB.a1b.f2[i,])

# King.Crab Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
kingC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kingC.45.f2.80) <- c("gfd","mir","ces")
row.names(kingC.45.f2.80) <- 1991:2080
kingC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"King.Crab"]
kingC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"King.Crab"]
kingC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"King.Crab"]
# head(kingC.45.f2.80)
kingC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingC.45.f2.80.up[i] <- max(kingC.45.f2.80[i,])
kingC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingC.45.f2.80.lo[i] <- min(kingC.45.f2.80[i,])
# Everything from 2081-2099
kingC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kingC.45.f2.99) <- c("gfd","mir")
row.names(kingC.45.f2.99) <- 2081:2099
kingC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"King.Crab"]
kingC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"King.Crab"]
# head(kingC.45.f2.99)
kingC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingC.45.f2.99.up[i] <- max(kingC.45.f2.99[i,])
kingC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingC.45.f2.99.lo[i] <- min(kingC.45.f2.99[i,])
# now append these two time periods
kingC.45.f2.up <- c(kingC.45.f2.80.up,kingC.45.f2.99.up)
kingC.45.f2.lo <- c(kingC.45.f2.80.lo,kingC.45.f2.99.lo)

# RCP 8.5
kingC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kingC.85.f2) <- c("gfd","mir","ces")
row.names(kingC.85.f2) <- 1991:2099
kingC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"King.Crab"]
kingC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"King.Crab"]
kingC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"King.Crab"]
# head(kingC.85.f2)
kingC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingC.85.f2.up[i] <- max(kingC.85.f2[i,])
kingC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingC.85.f2.lo[i] <- min(kingC.85.f2[i,])

# # SRES A1B
# kingC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kingC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(kingC.a1b.f2) <- 1991:2039
# kingC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"King.Crab"]
# kingC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"King.Crab"]
# kingC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"King.Crab"]
# # head(kingC.a1b.f2)
# kingC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingC.a1b.f2.up[i] <- max(kingC.a1b.f2[i,])
# kingC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingC.a1b.f2.lo[i] <- min(kingC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# King.Crab F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
kingB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kingB.45.f3.80) <- c("gfd","mir","ces")
row.names(kingB.45.f3.80) <- 1991:2080
kingB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"King.Crab"]
kingB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"King.Crab"]
kingB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"King.Crab"]
# head(kingB.45.f3.80)
kingB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingB.45.f3.80.up[i] <- max(kingB.45.f3.80[i,])
kingB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingB.45.f3.80.lo[i] <- min(kingB.45.f3.80[i,])
# Everything from 2081-2099
kingB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kingB.45.f3.99) <- c("gfd","mir")
row.names(kingB.45.f3.99) <- 2081:2099
kingB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"King.Crab"]
kingB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"King.Crab"]
# head(kingB.45.f3.99)
kingB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingB.45.f3.99.up[i] <- max(kingB.45.f3.99[i,])
kingB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingB.45.f3.99.lo[i] <- min(kingB.45.f3.99[i,])
# now append these two time periods
kingB.45.f3.up <- c(kingB.45.f3.80.up,kingB.45.f3.99.up)
kingB.45.f3.lo <- c(kingB.45.f3.80.lo,kingB.45.f3.99.lo)

# RCP 8.5
kingB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kingB.85.f3) <- c("gfd","mir","ces")
row.names(kingB.85.f3) <- 1991:2099
kingB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"King.Crab"]
kingB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"King.Crab"]
kingB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"King.Crab"]
# head(kingB.85.f3)
kingB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingB.85.f3.up[i] <- max(kingB.85.f3[i,])
kingB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingB.85.f3.lo[i] <- min(kingB.85.f3[i,])

# # SRES A1B
# kingB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kingB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(kingB.a1b.f3) <- 1991:2039
# kingB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"King.Crab"]
# kingB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"King.Crab"]
# kingB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"King.Crab"]
# # head(kingB.a1b.f3)
# kingB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingB.a1b.f3.up[i] <- max(kingB.a1b.f3[i,])
# kingB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingB.a1b.f3.lo[i] <- min(kingB.a1b.f3[i,])

# King.Crab Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
kingC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kingC.45.f3.80) <- c("gfd","mir","ces")
row.names(kingC.45.f3.80) <- 1991:2080
kingC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"King.Crab"]
kingC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"King.Crab"]
kingC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"King.Crab"]
# head(kingC.45.f3.80)
kingC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingC.45.f3.80.up[i] <- max(kingC.45.f3.80[i,])
kingC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingC.45.f3.80.lo[i] <- min(kingC.45.f3.80[i,])
# Everything from 2081-2099
kingC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kingC.45.f3.99) <- c("gfd","mir")
row.names(kingC.45.f3.99) <- 2081:2099
kingC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"King.Crab"]
kingC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"King.Crab"]
# head(kingC.45.f3.99)
kingC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingC.45.f3.99.up[i] <- max(kingC.45.f3.99[i,])
kingC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingC.45.f3.99.lo[i] <- min(kingC.45.f3.99[i,])
# now append these two time periods
kingC.45.f3.up <- c(kingC.45.f3.80.up,kingC.45.f3.99.up)
kingC.45.f3.lo <- c(kingC.45.f3.80.lo,kingC.45.f3.99.lo)

# RCP 8.5
kingC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kingC.85.f3) <- c("gfd","mir","ces")
row.names(kingC.85.f3) <- 1991:2099
kingC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"King.Crab"]
kingC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"King.Crab"]
kingC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"King.Crab"]
# head(kingC.85.f3)
kingC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingC.85.f3.up[i] <- max(kingC.85.f3[i,])
kingC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingC.85.f3.lo[i] <- min(kingC.85.f3[i,])

# # SRES A1B
# kingC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kingC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(kingC.a1b.f3) <- 1991:2039
# kingC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"King.Crab"]
# kingC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"King.Crab"]
# kingC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"King.Crab"]
# # head(kingC.a1b.f3)
# kingC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingC.a1b.f3.up[i] <- max(kingC.a1b.f3[i,])
# kingC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingC.a1b.f3.lo[i] <- min(kingC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# King.Crab F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
kingB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kingB.45.f4.80) <- c("gfd","mir","ces")
row.names(kingB.45.f4.80) <- 1991:2080
kingB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"King.Crab"]
kingB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"King.Crab"]
kingB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"King.Crab"]
# head(kingB.45.f4.80)
kingB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingB.45.f4.80.up[i] <- max(kingB.45.f4.80[i,])
kingB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingB.45.f4.80.lo[i] <- min(kingB.45.f4.80[i,])
# Everything from 2081-2099
kingB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kingB.45.f4.99) <- c("gfd","mir")
row.names(kingB.45.f4.99) <- 2081:2099
kingB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"King.Crab"]
kingB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"King.Crab"]
# head(kingB.45.f4.99)
kingB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingB.45.f4.99.up[i] <- max(kingB.45.f4.99[i,])
kingB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingB.45.f4.99.lo[i] <- min(kingB.45.f4.99[i,])
# now append these two time periods
kingB.45.f4.up <- c(kingB.45.f4.80.up,kingB.45.f4.99.up)
kingB.45.f4.lo <- c(kingB.45.f4.80.lo,kingB.45.f4.99.lo)

# RCP 8.5
kingB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kingB.85.f4) <- c("gfd","mir","ces")
row.names(kingB.85.f4) <- 1991:2099
kingB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"King.Crab"]
kingB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"King.Crab"]
kingB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"King.Crab"]
# head(kingB.85.f4)
kingB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingB.85.f4.up[i] <- max(kingB.85.f4[i,])
kingB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingB.85.f4.lo[i] <- min(kingB.85.f4[i,])

# # SRES A1B
# kingB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kingB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(kingB.a1b.f4) <- 1991:2039
# kingB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"King.Crab"]
# kingB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"King.Crab"]
# kingB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"King.Crab"]
# # head(kingB.a1b.f4)
# kingB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingB.a1b.f4.up[i] <- max(kingB.a1b.f4[i,])
# kingB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingB.a1b.f4.lo[i] <- min(kingB.a1b.f4[i,])

# King.Crab Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
kingC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(kingC.45.f4.80) <- c("gfd","mir","ces")
row.names(kingC.45.f4.80) <- 1991:2080
kingC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"King.Crab"]
kingC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"King.Crab"]
kingC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"King.Crab"]
# head(kingC.45.f4.80)
kingC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingC.45.f4.80.up[i] <- max(kingC.45.f4.80[i,])
kingC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) kingC.45.f4.80.lo[i] <- min(kingC.45.f4.80[i,])
# Everything from 2081-2099
kingC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(kingC.45.f4.99) <- c("gfd","mir")
row.names(kingC.45.f4.99) <- 2081:2099
kingC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"King.Crab"]
kingC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"King.Crab"]
# head(kingC.45.f4.99)
kingC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingC.45.f4.99.up[i] <- max(kingC.45.f4.99[i,])
kingC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) kingC.45.f4.99.lo[i] <- min(kingC.45.f4.99[i,])
# now append these two time periods
kingC.45.f4.up <- c(kingC.45.f4.80.up,kingC.45.f4.99.up)
kingC.45.f4.lo <- c(kingC.45.f4.80.lo,kingC.45.f4.99.lo)

# RCP 8.5
kingC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(kingC.85.f4) <- c("gfd","mir","ces")
row.names(kingC.85.f4) <- 1991:2099
kingC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"King.Crab"]
kingC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"King.Crab"]
kingC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"King.Crab"]
# head(kingC.85.f4)
kingC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingC.85.f4.up[i] <- max(kingC.85.f4[i,])
kingC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) kingC.85.f4.lo[i] <- min(kingC.85.f4[i,])

# # SRES A1B
# kingC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(kingC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(kingC.a1b.f4) <- 1991:2039
# kingC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"King.Crab"]
# kingC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"King.Crab"]
# kingC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"King.Crab"]
# # head(kingC.a1b.f4)
# kingC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingC.a1b.f4.up[i] <- max(kingC.a1b.f4[i,])
# kingC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) kingC.a1b.f4.lo[i] <- min(kingC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Motile.epifauna biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
motepB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(motepB.45.f1.80) <- c("gfd","mir","ces")
row.names(motepB.45.f1.80) <- 1991:2080
motepB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Motile.epifauna"]
motepB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Motile.epifauna"]
motepB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Motile.epifauna"]
# head(motepB.45.f1.80)
motepB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepB.45.f1.80.up[i] <- max(motepB.45.f1.80[i,])
motepB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepB.45.f1.80.lo[i] <- min(motepB.45.f1.80[i,])
# Everything from 2081-2099
motepB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(motepB.45.f1.99) <- c("gfd","mir")
row.names(motepB.45.f1.99) <- 2081:2099
motepB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Motile.epifauna"]
motepB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Motile.epifauna"]
# head(motepB.45.f1.99)
motepB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepB.45.f1.99.up[i] <- max(motepB.45.f1.99[i,])
motepB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepB.45.f1.99.lo[i] <- min(motepB.45.f1.99[i,])
# now append these two time periods
motepB.45.f1.up <- c(motepB.45.f1.80.up,motepB.45.f1.99.up)
motepB.45.f1.lo <- c(motepB.45.f1.80.lo,motepB.45.f1.99.lo)

# RCP 8.5
motepB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(motepB.85.f1) <- c("gfd","mir","ces")
row.names(motepB.85.f1) <- 1991:2099
motepB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Motile.epifauna"]
motepB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Motile.epifauna"]
motepB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Motile.epifauna"]
# head(motepB.85.f1)
motepB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepB.85.f1.up[i] <- max(motepB.85.f1[i,])
motepB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepB.85.f1.lo[i] <- min(motepB.85.f1[i,])

# # SRES A1B
# motepB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(motepB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(motepB.a1b.f1) <- 1991:2039
# motepB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Motile.epifauna"]
# motepB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Motile.epifauna"]
# motepB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Motile.epifauna"]
# # head(motepB.a1b.f1)
# motepB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepB.a1b.f1.up[i] <- max(motepB.a1b.f1[i,])
# motepB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepB.a1b.f1.lo[i] <- min(motepB.a1b.f1[i,])

# Motile.epifauna Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
motepC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(motepC.45.f1.80) <- c("gfd","mir","ces")
row.names(motepC.45.f1.80) <- 1991:2080
motepC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Motile.epifauna"]
motepC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Motile.epifauna"]
motepC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Motile.epifauna"]
# head(motepC.45.f1.80)
motepC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepC.45.f1.80.up[i] <- max(motepC.45.f1.80[i,])
motepC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepC.45.f1.80.lo[i] <- min(motepC.45.f1.80[i,])
# Everything from 2081-2099
motepC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(motepC.45.f1.99) <- c("gfd","mir")
row.names(motepC.45.f1.99) <- 2081:2099
motepC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Motile.epifauna"]
motepC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Motile.epifauna"]
# head(motepC.45.f1.99)
motepC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepC.45.f1.99.up[i] <- max(motepC.45.f1.99[i,])
motepC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepC.45.f1.99.lo[i] <- min(motepC.45.f1.99[i,])
# now append these two time periods
motepC.45.f1.up <- c(motepC.45.f1.80.up,motepC.45.f1.99.up)
motepC.45.f1.lo <- c(motepC.45.f1.80.lo,motepC.45.f1.99.lo)

# RCP 8.5
motepC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(motepC.85.f1) <- c("gfd","mir","ces")
row.names(motepC.85.f1) <- 1991:2099
motepC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Motile.epifauna"]
motepC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Motile.epifauna"]
motepC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Motile.epifauna"]
# head(motepC.85.f1)
motepC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepC.85.f1.up[i] <- max(motepC.85.f1[i,])
motepC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepC.85.f1.lo[i] <- min(motepC.85.f1[i,])

# # SRES A1B
# motepC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(motepC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(motepC.a1b.f1) <- 1991:2039
# motepC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Motile.epifauna"]
# motepC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Motile.epifauna"]
# motepC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Motile.epifauna"]
# # head(motepC.a1b.f1)
# motepC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepC.a1b.f1.up[i] <- max(motepC.a1b.f1[i,])
# motepC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepC.a1b.f1.lo[i] <- min(motepC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Motile.epifauna F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
motepB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(motepB.45.f2.80) <- c("gfd","mir","ces")
row.names(motepB.45.f2.80) <- 1991:2080
motepB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Motile.epifauna"]
motepB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Motile.epifauna"]
motepB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Motile.epifauna"]
# head(motepB.45.f2.80)
motepB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepB.45.f2.80.up[i] <- max(motepB.45.f2.80[i,])
motepB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepB.45.f2.80.lo[i] <- min(motepB.45.f2.80[i,])
# Everything from 2081-2099
motepB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(motepB.45.f2.99) <- c("gfd","mir")
row.names(motepB.45.f2.99) <- 2081:2099
motepB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Motile.epifauna"]
motepB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Motile.epifauna"]
# head(motepB.45.f2.99)
motepB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepB.45.f2.99.up[i] <- max(motepB.45.f2.99[i,])
motepB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepB.45.f2.99.lo[i] <- min(motepB.45.f2.99[i,])
# now append these two time periods
motepB.45.f2.up <- c(motepB.45.f2.80.up,motepB.45.f2.99.up)
motepB.45.f2.lo <- c(motepB.45.f2.80.lo,motepB.45.f2.99.lo)

# RCP 8.5
motepB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(motepB.85.f2) <- c("gfd","mir","ces")
row.names(motepB.85.f2) <- 1991:2099
motepB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Motile.epifauna"]
motepB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Motile.epifauna"]
motepB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Motile.epifauna"]
# head(motepB.85.f2)
motepB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepB.85.f2.up[i] <- max(motepB.85.f2[i,])
motepB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepB.85.f2.lo[i] <- min(motepB.85.f2[i,])

# # SRES A1B
# motepB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(motepB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(motepB.a1b.f2) <- 1991:2039
# motepB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Motile.epifauna"]
# motepB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Motile.epifauna"]
# motepB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Motile.epifauna"]
# # head(motepB.a1b.f2)
# motepB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepB.a1b.f2.up[i] <- max(motepB.a1b.f2[i,])
# motepB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepB.a1b.f2.lo[i] <- min(motepB.a1b.f2[i,])

# Motile.epifauna Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
motepC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(motepC.45.f2.80) <- c("gfd","mir","ces")
row.names(motepC.45.f2.80) <- 1991:2080
motepC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Motile.epifauna"]
motepC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Motile.epifauna"]
motepC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Motile.epifauna"]
# head(motepC.45.f2.80)
motepC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepC.45.f2.80.up[i] <- max(motepC.45.f2.80[i,])
motepC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepC.45.f2.80.lo[i] <- min(motepC.45.f2.80[i,])
# Everything from 2081-2099
motepC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(motepC.45.f2.99) <- c("gfd","mir")
row.names(motepC.45.f2.99) <- 2081:2099
motepC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Motile.epifauna"]
motepC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Motile.epifauna"]
# head(motepC.45.f2.99)
motepC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepC.45.f2.99.up[i] <- max(motepC.45.f2.99[i,])
motepC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepC.45.f2.99.lo[i] <- min(motepC.45.f2.99[i,])
# now append these two time periods
motepC.45.f2.up <- c(motepC.45.f2.80.up,motepC.45.f2.99.up)
motepC.45.f2.lo <- c(motepC.45.f2.80.lo,motepC.45.f2.99.lo)

# RCP 8.5
motepC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(motepC.85.f2) <- c("gfd","mir","ces")
row.names(motepC.85.f2) <- 1991:2099
motepC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Motile.epifauna"]
motepC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Motile.epifauna"]
motepC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Motile.epifauna"]
# head(motepC.85.f2)
motepC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepC.85.f2.up[i] <- max(motepC.85.f2[i,])
motepC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepC.85.f2.lo[i] <- min(motepC.85.f2[i,])

# # SRES A1B
# motepC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(motepC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(motepC.a1b.f2) <- 1991:2039
# motepC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Motile.epifauna"]
# motepC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Motile.epifauna"]
# motepC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Motile.epifauna"]
# # head(motepC.a1b.f2)
# motepC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepC.a1b.f2.up[i] <- max(motepC.a1b.f2[i,])
# motepC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepC.a1b.f2.lo[i] <- min(motepC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Motile.epifauna F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
motepB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(motepB.45.f3.80) <- c("gfd","mir","ces")
row.names(motepB.45.f3.80) <- 1991:2080
motepB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Motile.epifauna"]
motepB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Motile.epifauna"]
motepB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Motile.epifauna"]
# head(motepB.45.f3.80)
motepB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepB.45.f3.80.up[i] <- max(motepB.45.f3.80[i,])
motepB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepB.45.f3.80.lo[i] <- min(motepB.45.f3.80[i,])
# Everything from 2081-2099
motepB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(motepB.45.f3.99) <- c("gfd","mir")
row.names(motepB.45.f3.99) <- 2081:2099
motepB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Motile.epifauna"]
motepB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Motile.epifauna"]
# head(motepB.45.f3.99)
motepB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepB.45.f3.99.up[i] <- max(motepB.45.f3.99[i,])
motepB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepB.45.f3.99.lo[i] <- min(motepB.45.f3.99[i,])
# now append these two time periods
motepB.45.f3.up <- c(motepB.45.f3.80.up,motepB.45.f3.99.up)
motepB.45.f3.lo <- c(motepB.45.f3.80.lo,motepB.45.f3.99.lo)

# RCP 8.5
motepB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(motepB.85.f3) <- c("gfd","mir","ces")
row.names(motepB.85.f3) <- 1991:2099
motepB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Motile.epifauna"]
motepB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Motile.epifauna"]
motepB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Motile.epifauna"]
# head(motepB.85.f3)
motepB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepB.85.f3.up[i] <- max(motepB.85.f3[i,])
motepB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepB.85.f3.lo[i] <- min(motepB.85.f3[i,])

# # SRES A1B
# motepB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(motepB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(motepB.a1b.f3) <- 1991:2039
# motepB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Motile.epifauna"]
# motepB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Motile.epifauna"]
# motepB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Motile.epifauna"]
# # head(motepB.a1b.f3)
# motepB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepB.a1b.f3.up[i] <- max(motepB.a1b.f3[i,])
# motepB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepB.a1b.f3.lo[i] <- min(motepB.a1b.f3[i,])

# Motile.epifauna Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
motepC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(motepC.45.f3.80) <- c("gfd","mir","ces")
row.names(motepC.45.f3.80) <- 1991:2080
motepC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Motile.epifauna"]
motepC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Motile.epifauna"]
motepC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Motile.epifauna"]
# head(motepC.45.f3.80)
motepC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepC.45.f3.80.up[i] <- max(motepC.45.f3.80[i,])
motepC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepC.45.f3.80.lo[i] <- min(motepC.45.f3.80[i,])
# Everything from 2081-2099
motepC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(motepC.45.f3.99) <- c("gfd","mir")
row.names(motepC.45.f3.99) <- 2081:2099
motepC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Motile.epifauna"]
motepC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Motile.epifauna"]
# head(motepC.45.f3.99)
motepC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepC.45.f3.99.up[i] <- max(motepC.45.f3.99[i,])
motepC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepC.45.f3.99.lo[i] <- min(motepC.45.f3.99[i,])
# now append these two time periods
motepC.45.f3.up <- c(motepC.45.f3.80.up,motepC.45.f3.99.up)
motepC.45.f3.lo <- c(motepC.45.f3.80.lo,motepC.45.f3.99.lo)

# RCP 8.5
motepC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(motepC.85.f3) <- c("gfd","mir","ces")
row.names(motepC.85.f3) <- 1991:2099
motepC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Motile.epifauna"]
motepC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Motile.epifauna"]
motepC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Motile.epifauna"]
# head(motepC.85.f3)
motepC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepC.85.f3.up[i] <- max(motepC.85.f3[i,])
motepC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepC.85.f3.lo[i] <- min(motepC.85.f3[i,])

# # SRES A1B
# motepC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(motepC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(motepC.a1b.f3) <- 1991:2039
# motepC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Motile.epifauna"]
# motepC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Motile.epifauna"]
# motepC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Motile.epifauna"]
# # head(motepC.a1b.f3)
# motepC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepC.a1b.f3.up[i] <- max(motepC.a1b.f3[i,])
# motepC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepC.a1b.f3.lo[i] <- min(motepC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Motile.epifauna F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
motepB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(motepB.45.f4.80) <- c("gfd","mir","ces")
row.names(motepB.45.f4.80) <- 1991:2080
motepB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Motile.epifauna"]
motepB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Motile.epifauna"]
motepB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Motile.epifauna"]
# head(motepB.45.f4.80)
motepB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepB.45.f4.80.up[i] <- max(motepB.45.f4.80[i,])
motepB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepB.45.f4.80.lo[i] <- min(motepB.45.f4.80[i,])
# Everything from 2081-2099
motepB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(motepB.45.f4.99) <- c("gfd","mir")
row.names(motepB.45.f4.99) <- 2081:2099
motepB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Motile.epifauna"]
motepB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Motile.epifauna"]
# head(motepB.45.f4.99)
motepB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepB.45.f4.99.up[i] <- max(motepB.45.f4.99[i,])
motepB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepB.45.f4.99.lo[i] <- min(motepB.45.f4.99[i,])
# now append these two time periods
motepB.45.f4.up <- c(motepB.45.f4.80.up,motepB.45.f4.99.up)
motepB.45.f4.lo <- c(motepB.45.f4.80.lo,motepB.45.f4.99.lo)

# RCP 8.5
motepB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(motepB.85.f4) <- c("gfd","mir","ces")
row.names(motepB.85.f4) <- 1991:2099
motepB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Motile.epifauna"]
motepB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Motile.epifauna"]
motepB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Motile.epifauna"]
# head(motepB.85.f4)
motepB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepB.85.f4.up[i] <- max(motepB.85.f4[i,])
motepB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepB.85.f4.lo[i] <- min(motepB.85.f4[i,])

# # SRES A1B
# motepB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(motepB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(motepB.a1b.f4) <- 1991:2039
# motepB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Motile.epifauna"]
# motepB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Motile.epifauna"]
# motepB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Motile.epifauna"]
# # head(motepB.a1b.f4)
# motepB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepB.a1b.f4.up[i] <- max(motepB.a1b.f4[i,])
# motepB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepB.a1b.f4.lo[i] <- min(motepB.a1b.f4[i,])

# Motile.epifauna Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
motepC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(motepC.45.f4.80) <- c("gfd","mir","ces")
row.names(motepC.45.f4.80) <- 1991:2080
motepC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Motile.epifauna"]
motepC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Motile.epifauna"]
motepC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Motile.epifauna"]
# head(motepC.45.f4.80)
motepC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepC.45.f4.80.up[i] <- max(motepC.45.f4.80[i,])
motepC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) motepC.45.f4.80.lo[i] <- min(motepC.45.f4.80[i,])
# Everything from 2081-2099
motepC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(motepC.45.f4.99) <- c("gfd","mir")
row.names(motepC.45.f4.99) <- 2081:2099
motepC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Motile.epifauna"]
motepC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Motile.epifauna"]
# head(motepC.45.f4.99)
motepC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepC.45.f4.99.up[i] <- max(motepC.45.f4.99[i,])
motepC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) motepC.45.f4.99.lo[i] <- min(motepC.45.f4.99[i,])
# now append these two time periods
motepC.45.f4.up <- c(motepC.45.f4.80.up,motepC.45.f4.99.up)
motepC.45.f4.lo <- c(motepC.45.f4.80.lo,motepC.45.f4.99.lo)

# RCP 8.5
motepC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(motepC.85.f4) <- c("gfd","mir","ces")
row.names(motepC.85.f4) <- 1991:2099
motepC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Motile.epifauna"]
motepC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Motile.epifauna"]
motepC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Motile.epifauna"]
# head(motepC.85.f4)
motepC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepC.85.f4.up[i] <- max(motepC.85.f4[i,])
motepC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) motepC.85.f4.lo[i] <- min(motepC.85.f4[i,])

# # SRES A1B
# motepC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(motepC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(motepC.a1b.f4) <- 1991:2039
# motepC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Motile.epifauna"]
# motepC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Motile.epifauna"]
# motepC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Motile.epifauna"]
# # head(motepC.a1b.f4)
# motepC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepC.a1b.f4.up[i] <- max(motepC.a1b.f4[i,])
# motepC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) motepC.a1b.f4.lo[i] <- min(motepC.a1b.f4[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Octopi biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
octoB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(octoB.45.f1.80) <- c("gfd","mir","ces")
row.names(octoB.45.f1.80) <- 1991:2080
octoB.45.f1.80[,1] <- gfd45.f1.91.add$annual_Biomass[1:90,"Octopi"]
octoB.45.f1.80[,2] <- mir45.f1.91.add$annual_Biomass[1:90,"Octopi"]
octoB.45.f1.80[,3] <- ces45.f1.91.add$annual_Biomass[,"Octopi"]
# head(octoB.45.f1.80)
octoB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoB.45.f1.80.up[i] <- max(octoB.45.f1.80[i,])
octoB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoB.45.f1.80.lo[i] <- min(octoB.45.f1.80[i,])
# Everything from 2081-2099
octoB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(octoB.45.f1.99) <- c("gfd","mir")
row.names(octoB.45.f1.99) <- 2081:2099
octoB.45.f1.99[,1] <- gfd45.f1.91.add$annual_Biomass[91:109,"Octopi"]
octoB.45.f1.99[,2] <- mir45.f1.91.add$annual_Biomass[91:109,"Octopi"]
# head(octoB.45.f1.99)
octoB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoB.45.f1.99.up[i] <- max(octoB.45.f1.99[i,])
octoB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoB.45.f1.99.lo[i] <- min(octoB.45.f1.99[i,])
# now append these two time periods
octoB.45.f1.up <- c(octoB.45.f1.80.up,octoB.45.f1.99.up)
octoB.45.f1.lo <- c(octoB.45.f1.80.lo,octoB.45.f1.99.lo)

# RCP 8.5
octoB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(octoB.85.f1) <- c("gfd","mir","ces")
row.names(octoB.85.f1) <- 1991:2099
octoB.85.f1[,1] <- gfd85.f1.91.add$annual_Biomass[,"Octopi"]
octoB.85.f1[,2] <- mir85.f1.91.add$annual_Biomass[,"Octopi"]
octoB.85.f1[,3] <- ces85.f1.91.add$annual_Biomass[,"Octopi"]
# head(octoB.85.f1)
octoB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoB.85.f1.up[i] <- max(octoB.85.f1[i,])
octoB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoB.85.f1.lo[i] <- min(octoB.85.f1[i,])

# # SRES A1B
# octoB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(octoB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(octoB.a1b.f1) <- 1991:2039
# octoB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Biomass[,"Octopi"]
# octoB.a1b.f1[,2] <- echA1B.f1.91.add$annual_Biomass[,"Octopi"]
# octoB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Biomass[,"Octopi"]
# # head(octoB.a1b.f1)
# octoB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoB.a1b.f1.up[i] <- max(octoB.a1b.f1[i,])
# octoB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoB.a1b.f1.lo[i] <- min(octoB.a1b.f1[i,])

# Octopi Catch ----- *Status quo*
# RCP 4.5
# Everything up through 2080
octoC.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(octoC.45.f1.80) <- c("gfd","mir","ces")
row.names(octoC.45.f1.80) <- 1991:2080
octoC.45.f1.80[,1] <- gfd45.f1.91.add$annual_Catch[1:90,"Octopi"]
octoC.45.f1.80[,2] <- mir45.f1.91.add$annual_Catch[1:90,"Octopi"]
octoC.45.f1.80[,3] <- ces45.f1.91.add$annual_Catch[,"Octopi"]
# head(octoC.45.f1.80)
octoC.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoC.45.f1.80.up[i] <- max(octoC.45.f1.80[i,])
octoC.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoC.45.f1.80.lo[i] <- min(octoC.45.f1.80[i,])
# Everything from 2081-2099
octoC.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(octoC.45.f1.99) <- c("gfd","mir")
row.names(octoC.45.f1.99) <- 2081:2099
octoC.45.f1.99[,1] <- gfd45.f1.91.add$annual_Catch[91:109,"Octopi"]
octoC.45.f1.99[,2] <- mir45.f1.91.add$annual_Catch[91:109,"Octopi"]
# head(octoC.45.f1.99)
octoC.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoC.45.f1.99.up[i] <- max(octoC.45.f1.99[i,])
octoC.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoC.45.f1.99.lo[i] <- min(octoC.45.f1.99[i,])
# now append these two time periods
octoC.45.f1.up <- c(octoC.45.f1.80.up,octoC.45.f1.99.up)
octoC.45.f1.lo <- c(octoC.45.f1.80.lo,octoC.45.f1.99.lo)

# RCP 8.5
octoC.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(octoC.85.f1) <- c("gfd","mir","ces")
row.names(octoC.85.f1) <- 1991:2099
octoC.85.f1[,1] <- gfd85.f1.91.add$annual_Catch[,"Octopi"]
octoC.85.f1[,2] <- mir85.f1.91.add$annual_Catch[,"Octopi"]
octoC.85.f1[,3] <- ces85.f1.91.add$annual_Catch[,"Octopi"]
# head(octoC.85.f1)
octoC.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoC.85.f1.up[i] <- max(octoC.85.f1[i,])
octoC.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoC.85.f1.lo[i] <- min(octoC.85.f1[i,])

# # SRES A1B
# octoC.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(octoC.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(octoC.a1b.f1) <- 1991:2039
# octoC.a1b.f1[,1] <- cccA1B.f1.91.add$annual_Catch[,"Octopi"]
# octoC.a1b.f1[,2] <- echA1B.f1.91.add$annual_Catch[,"Octopi"]
# octoC.a1b.f1[,3] <- mirA1B.f1.91.add$annual_Catch[,"Octopi"]
# # head(octoC.a1b.f1)
# octoC.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoC.a1b.f1.up[i] <- max(octoC.a1b.f1[i,])
# octoC.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoC.a1b.f1.lo[i] <- min(octoC.a1b.f1[i,])


# ---------------------------------------------------------------------------- #
# Octopi F2 ---*More gadid catch*---
# RCP 4.5
# Everything up through 2080
octoB.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(octoB.45.f2.80) <- c("gfd","mir","ces")
row.names(octoB.45.f2.80) <- 1991:2080
octoB.45.f2.80[,1] <- gfd45.f2.91.add$annual_Biomass[1:90,"Octopi"]
octoB.45.f2.80[,2] <- mir45.f2.91.add$annual_Biomass[1:90,"Octopi"]
octoB.45.f2.80[,3] <- ces45.f2.91.add$annual_Biomass[,"Octopi"]
# head(octoB.45.f2.80)
octoB.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoB.45.f2.80.up[i] <- max(octoB.45.f2.80[i,])
octoB.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoB.45.f2.80.lo[i] <- min(octoB.45.f2.80[i,])
# Everything from 2081-2099
octoB.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(octoB.45.f2.99) <- c("gfd","mir")
row.names(octoB.45.f2.99) <- 2081:2099
octoB.45.f2.99[,1] <- gfd45.f2.91.add$annual_Biomass[91:109,"Octopi"]
octoB.45.f2.99[,2] <- mir45.f2.91.add$annual_Biomass[91:109,"Octopi"]
# head(octoB.45.f2.99)
octoB.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoB.45.f2.99.up[i] <- max(octoB.45.f2.99[i,])
octoB.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoB.45.f2.99.lo[i] <- min(octoB.45.f2.99[i,])
# now append these two time periods
octoB.45.f2.up <- c(octoB.45.f2.80.up,octoB.45.f2.99.up)
octoB.45.f2.lo <- c(octoB.45.f2.80.lo,octoB.45.f2.99.lo)

# RCP 8.5
octoB.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(octoB.85.f2) <- c("gfd","mir","ces")
row.names(octoB.85.f2) <- 1991:2099
octoB.85.f2[,1] <- gfd85.f2.91.add$annual_Biomass[,"Octopi"]
octoB.85.f2[,2] <- mir85.f2.91.add$annual_Biomass[,"Octopi"]
octoB.85.f2[,3] <- ces85.f2.91.add$annual_Biomass[,"Octopi"]
# head(octoB.85.f2)
octoB.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoB.85.f2.up[i] <- max(octoB.85.f2[i,])
octoB.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoB.85.f2.lo[i] <- min(octoB.85.f2[i,])

# # SRES A1B
# octoB.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(octoB.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(octoB.a1b.f2) <- 1991:2039
# octoB.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Biomass[,"Octopi"]
# octoB.a1b.f2[,2] <- echA1B.f2.91.add$annual_Biomass[,"Octopi"]
# octoB.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Biomass[,"Octopi"]
# # head(octoB.a1b.f2)
# octoB.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoB.a1b.f2.up[i] <- max(octoB.a1b.f2[i,])
# octoB.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoB.a1b.f2.lo[i] <- min(octoB.a1b.f2[i,])

# Octopi Catch ----- *more gadid catch*
# RCP 4.5
# Everything up through 2080
octoC.45.f2.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(octoC.45.f2.80) <- c("gfd","mir","ces")
row.names(octoC.45.f2.80) <- 1991:2080
octoC.45.f2.80[,1] <- gfd45.f2.91.add$annual_Catch[1:90,"Octopi"]
octoC.45.f2.80[,2] <- mir45.f2.91.add$annual_Catch[1:90,"Octopi"]
octoC.45.f2.80[,3] <- ces45.f2.91.add$annual_Catch[,"Octopi"]
# head(octoC.45.f2.80)
octoC.45.f2.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoC.45.f2.80.up[i] <- max(octoC.45.f2.80[i,])
octoC.45.f2.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoC.45.f2.80.lo[i] <- min(octoC.45.f2.80[i,])
# Everything from 2081-2099
octoC.45.f2.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(octoC.45.f2.99) <- c("gfd","mir")
row.names(octoC.45.f2.99) <- 2081:2099
octoC.45.f2.99[,1] <- gfd45.f2.91.add$annual_Catch[91:109,"Octopi"]
octoC.45.f2.99[,2] <- mir45.f2.91.add$annual_Catch[91:109,"Octopi"]
# head(octoC.45.f2.99)
octoC.45.f2.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoC.45.f2.99.up[i] <- max(octoC.45.f2.99[i,])
octoC.45.f2.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoC.45.f2.99.lo[i] <- min(octoC.45.f2.99[i,])
# now append these two time periods
octoC.45.f2.up <- c(octoC.45.f2.80.up,octoC.45.f2.99.up)
octoC.45.f2.lo <- c(octoC.45.f2.80.lo,octoC.45.f2.99.lo)

# RCP 8.5
octoC.85.f2 <- matrix(data=NA,nrow=109, ncol=3)
colnames(octoC.85.f2) <- c("gfd","mir","ces")
row.names(octoC.85.f2) <- 1991:2099
octoC.85.f2[,1] <- gfd85.f2.91.add$annual_Catch[,"Octopi"]
octoC.85.f2[,2] <- mir85.f2.91.add$annual_Catch[,"Octopi"]
octoC.85.f2[,3] <- ces85.f2.91.add$annual_Catch[,"Octopi"]
# head(octoC.85.f2)
octoC.85.f2.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoC.85.f2.up[i] <- max(octoC.85.f2[i,])
octoC.85.f2.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoC.85.f2.lo[i] <- min(octoC.85.f2[i,])

# # SRES A1B
# octoC.a1b.f2 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(octoC.a1b.f2) <- c("cccA1B","echA1B","mirA1B")
# row.names(octoC.a1b.f2) <- 1991:2039
# octoC.a1b.f2[,1] <- cccA1B.f2.91.add$annual_Catch[,"Octopi"]
# octoC.a1b.f2[,2] <- echA1B.f2.91.add$annual_Catch[,"Octopi"]
# octoC.a1b.f2[,3] <- mirA1B.f2.91.add$annual_Catch[,"Octopi"]
# # head(octoC.a1b.f2)
# octoC.a1b.f2.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoC.a1b.f2.up[i] <- max(octoC.a1b.f2[i,])
# octoC.a1b.f2.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoC.a1b.f2.lo[i] <- min(octoC.a1b.f2[i,])


# ---------------------------------------------------------------------------- #
# Octopi F3 ---*More flatfish catch*---
# RCP 4.5
# Everything up through 2080
octoB.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(octoB.45.f3.80) <- c("gfd","mir","ces")
row.names(octoB.45.f3.80) <- 1991:2080
octoB.45.f3.80[,1] <- gfd45.f3.91.add$annual_Biomass[1:90,"Octopi"]
octoB.45.f3.80[,2] <- mir45.f3.91.add$annual_Biomass[1:90,"Octopi"]
octoB.45.f3.80[,3] <- ces45.f3.91.add$annual_Biomass[,"Octopi"]
# head(octoB.45.f3.80)
octoB.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoB.45.f3.80.up[i] <- max(octoB.45.f3.80[i,])
octoB.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoB.45.f3.80.lo[i] <- min(octoB.45.f3.80[i,])
# Everything from 2081-2099
octoB.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(octoB.45.f3.99) <- c("gfd","mir")
row.names(octoB.45.f3.99) <- 2081:2099
octoB.45.f3.99[,1] <- gfd45.f3.91.add$annual_Biomass[91:109,"Octopi"]
octoB.45.f3.99[,2] <- mir45.f3.91.add$annual_Biomass[91:109,"Octopi"]
# head(octoB.45.f3.99)
octoB.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoB.45.f3.99.up[i] <- max(octoB.45.f3.99[i,])
octoB.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoB.45.f3.99.lo[i] <- min(octoB.45.f3.99[i,])
# now append these two time periods
octoB.45.f3.up <- c(octoB.45.f3.80.up,octoB.45.f3.99.up)
octoB.45.f3.lo <- c(octoB.45.f3.80.lo,octoB.45.f3.99.lo)

# RCP 8.5
octoB.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(octoB.85.f3) <- c("gfd","mir","ces")
row.names(octoB.85.f3) <- 1991:2099
octoB.85.f3[,1] <- gfd85.f3.91.add$annual_Biomass[,"Octopi"]
octoB.85.f3[,2] <- mir85.f3.91.add$annual_Biomass[,"Octopi"]
octoB.85.f3[,3] <- ces85.f3.91.add$annual_Biomass[,"Octopi"]
# head(octoB.85.f3)
octoB.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoB.85.f3.up[i] <- max(octoB.85.f3[i,])
octoB.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoB.85.f3.lo[i] <- min(octoB.85.f3[i,])

# # SRES A1B
# octoB.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(octoB.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(octoB.a1b.f3) <- 1991:2039
# octoB.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Biomass[,"Octopi"]
# octoB.a1b.f3[,2] <- echA1B.f3.91.add$annual_Biomass[,"Octopi"]
# octoB.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Biomass[,"Octopi"]
# # head(octoB.a1b.f3)
# octoB.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoB.a1b.f3.up[i] <- max(octoB.a1b.f3[i,])
# octoB.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoB.a1b.f3.lo[i] <- min(octoB.a1b.f3[i,])

# Octopi Catch ----- *more flatfish catch*
# RCP 4.5
# Everything up through 2080
octoC.45.f3.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(octoC.45.f3.80) <- c("gfd","mir","ces")
row.names(octoC.45.f3.80) <- 1991:2080
octoC.45.f3.80[,1] <- gfd45.f3.91.add$annual_Catch[1:90,"Octopi"]
octoC.45.f3.80[,2] <- mir45.f3.91.add$annual_Catch[1:90,"Octopi"]
octoC.45.f3.80[,3] <- ces45.f3.91.add$annual_Catch[,"Octopi"]
# head(octoC.45.f3.80)
octoC.45.f3.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoC.45.f3.80.up[i] <- max(octoC.45.f3.80[i,])
octoC.45.f3.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoC.45.f3.80.lo[i] <- min(octoC.45.f3.80[i,])
# Everything from 2081-2099
octoC.45.f3.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(octoC.45.f3.99) <- c("gfd","mir")
row.names(octoC.45.f3.99) <- 2081:2099
octoC.45.f3.99[,1] <- gfd45.f3.91.add$annual_Catch[91:109,"Octopi"]
octoC.45.f3.99[,2] <- mir45.f3.91.add$annual_Catch[91:109,"Octopi"]
# head(octoC.45.f3.99)
octoC.45.f3.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoC.45.f3.99.up[i] <- max(octoC.45.f3.99[i,])
octoC.45.f3.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoC.45.f3.99.lo[i] <- min(octoC.45.f3.99[i,])
# now append these two time periods
octoC.45.f3.up <- c(octoC.45.f3.80.up,octoC.45.f3.99.up)
octoC.45.f3.lo <- c(octoC.45.f3.80.lo,octoC.45.f3.99.lo)

# RCP 8.5
octoC.85.f3 <- matrix(data=NA,nrow=109, ncol=3)
colnames(octoC.85.f3) <- c("gfd","mir","ces")
row.names(octoC.85.f3) <- 1991:2099
octoC.85.f3[,1] <- gfd85.f3.91.add$annual_Catch[,"Octopi"]
octoC.85.f3[,2] <- mir85.f3.91.add$annual_Catch[,"Octopi"]
octoC.85.f3[,3] <- ces85.f3.91.add$annual_Catch[,"Octopi"]
# head(octoC.85.f3)
octoC.85.f3.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoC.85.f3.up[i] <- max(octoC.85.f3[i,])
octoC.85.f3.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoC.85.f3.lo[i] <- min(octoC.85.f3[i,])

# # SRES A1B
# octoC.a1b.f3 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(octoC.a1b.f3) <- c("cccA1B","echA1B","mirA1B")
# row.names(octoC.a1b.f3) <- 1991:2039
# octoC.a1b.f3[,1] <- cccA1B.f3.91.add$annual_Catch[,"Octopi"]
# octoC.a1b.f3[,2] <- echA1B.f3.91.add$annual_Catch[,"Octopi"]
# octoC.a1b.f3[,3] <- mirA1B.f3.91.add$annual_Catch[,"Octopi"]
# # head(octoC.a1b.f3)
# octoC.a1b.f3.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoC.a1b.f3.up[i] <- max(octoC.a1b.f3[i,])
# octoC.a1b.f3.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoC.a1b.f3.lo[i] <- min(octoC.a1b.f3[i,])


# ---------------------------------------------------------------------------- #
# Octopi F4 ---*No fishing*---
# RCP 4.5
# Everything up through 2080
octoB.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(octoB.45.f4.80) <- c("gfd","mir","ces")
row.names(octoB.45.f4.80) <- 1991:2080
octoB.45.f4.80[,1] <- gfd45.f4.91.add$annual_Biomass[1:90,"Octopi"]
octoB.45.f4.80[,2] <- mir45.f4.91.add$annual_Biomass[1:90,"Octopi"]
octoB.45.f4.80[,3] <- ces45.f4.91.add$annual_Biomass[,"Octopi"]
# head(octoB.45.f4.80)
octoB.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoB.45.f4.80.up[i] <- max(octoB.45.f4.80[i,])
octoB.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoB.45.f4.80.lo[i] <- min(octoB.45.f4.80[i,])
# Everything from 2081-2099
octoB.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(octoB.45.f4.99) <- c("gfd","mir")
row.names(octoB.45.f4.99) <- 2081:2099
octoB.45.f4.99[,1] <- gfd45.f4.91.add$annual_Biomass[91:109,"Octopi"]
octoB.45.f4.99[,2] <- mir45.f4.91.add$annual_Biomass[91:109,"Octopi"]
# head(octoB.45.f4.99)
octoB.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoB.45.f4.99.up[i] <- max(octoB.45.f4.99[i,])
octoB.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoB.45.f4.99.lo[i] <- min(octoB.45.f4.99[i,])
# now append these two time periods
octoB.45.f4.up <- c(octoB.45.f4.80.up,octoB.45.f4.99.up)
octoB.45.f4.lo <- c(octoB.45.f4.80.lo,octoB.45.f4.99.lo)

# RCP 8.5
octoB.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(octoB.85.f4) <- c("gfd","mir","ces")
row.names(octoB.85.f4) <- 1991:2099
octoB.85.f4[,1] <- gfd85.f4.91.add$annual_Biomass[,"Octopi"]
octoB.85.f4[,2] <- mir85.f4.91.add$annual_Biomass[,"Octopi"]
octoB.85.f4[,3] <- ces85.f4.91.add$annual_Biomass[,"Octopi"]
# head(octoB.85.f4)
octoB.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoB.85.f4.up[i] <- max(octoB.85.f4[i,])
octoB.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoB.85.f4.lo[i] <- min(octoB.85.f4[i,])

# # SRES A1B
# octoB.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(octoB.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(octoB.a1b.f4) <- 1991:2039
# octoB.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Biomass[,"Octopi"]
# octoB.a1b.f4[,2] <- echA1B.f4.91.add$annual_Biomass[,"Octopi"]
# octoB.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Biomass[,"Octopi"]
# # head(octoB.a1b.f4)
# octoB.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoB.a1b.f4.up[i] <- max(octoB.a1b.f4[i,])
# octoB.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoB.a1b.f4.lo[i] <- min(octoB.a1b.f4[i,])

# Octopi Catch ----- *No fishing*
# RCP 4.5
# Everything up through 2080
octoC.45.f4.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(octoC.45.f4.80) <- c("gfd","mir","ces")
row.names(octoC.45.f4.80) <- 1991:2080
octoC.45.f4.80[,1] <- gfd45.f4.91.add$annual_Catch[1:90,"Octopi"]
octoC.45.f4.80[,2] <- mir45.f4.91.add$annual_Catch[1:90,"Octopi"]
octoC.45.f4.80[,3] <- ces45.f4.91.add$annual_Catch[,"Octopi"]
# head(octoC.45.f4.80)
octoC.45.f4.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoC.45.f4.80.up[i] <- max(octoC.45.f4.80[i,])
octoC.45.f4.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) octoC.45.f4.80.lo[i] <- min(octoC.45.f4.80[i,])
# Everything from 2081-2099
octoC.45.f4.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(octoC.45.f4.99) <- c("gfd","mir")
row.names(octoC.45.f4.99) <- 2081:2099
octoC.45.f4.99[,1] <- gfd45.f4.91.add$annual_Catch[91:109,"Octopi"]
octoC.45.f4.99[,2] <- mir45.f4.91.add$annual_Catch[91:109,"Octopi"]
# head(octoC.45.f4.99)
octoC.45.f4.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoC.45.f4.99.up[i] <- max(octoC.45.f4.99[i,])
octoC.45.f4.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) octoC.45.f4.99.lo[i] <- min(octoC.45.f4.99[i,])
# now append these two time periods
octoC.45.f4.up <- c(octoC.45.f4.80.up,octoC.45.f4.99.up)
octoC.45.f4.lo <- c(octoC.45.f4.80.lo,octoC.45.f4.99.lo)

# RCP 8.5
octoC.85.f4 <- matrix(data=NA,nrow=109, ncol=3)
colnames(octoC.85.f4) <- c("gfd","mir","ces")
row.names(octoC.85.f4) <- 1991:2099
octoC.85.f4[,1] <- gfd85.f4.91.add$annual_Catch[,"Octopi"]
octoC.85.f4[,2] <- mir85.f4.91.add$annual_Catch[,"Octopi"]
octoC.85.f4[,3] <- ces85.f4.91.add$annual_Catch[,"Octopi"]
# head(octoC.85.f4)
octoC.85.f4.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoC.85.f4.up[i] <- max(octoC.85.f4[i,])
octoC.85.f4.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) octoC.85.f4.lo[i] <- min(octoC.85.f4[i,])

# # SRES A1B
# octoC.a1b.f4 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(octoC.a1b.f4) <- c("cccA1B","echA1B","mirA1B")
# row.names(octoC.a1b.f4) <- 1991:2039
# octoC.a1b.f4[,1] <- cccA1B.f4.91.add$annual_Catch[,"Octopi"]
# octoC.a1b.f4[,2] <- echA1B.f4.91.add$annual_Catch[,"Octopi"]
# octoC.a1b.f4[,3] <- mirA1B.f4.91.add$annual_Catch[,"Octopi"]
# # head(octoC.a1b.f4)
# octoC.a1b.f4.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoC.a1b.f4.up[i] <- max(octoC.a1b.f4[i,])
# octoC.a1b.f4.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) octoC.a1b.f4.lo[i] <- min(octoC.a1b.f4[i,])

