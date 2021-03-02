# Marine mammal plots for manuscript

# with colorblind friendly pallete
# .libPaths("C:/Program Files/R/R-3.6.1/library")
library(viridis)
# rcp.line <- viridis(2)
# poly.col <- viridis(2,alpha = 0.4)
# with 10 colors but only using numbers 8 and 1. RCP 8.5 is no. 1 (purple) and RCP 4.5 is no. 8 (green)
rcp.line10 <- viridis(10)
poly.col10 <- viridis(10,alpha = 0.4)

# Plots of marine mammals as a 3x3 plot: Portrait, 6.5 x 4.5


par(mfrow=c(3,3), mai=c(0.3, 0.3, 0.6, 0.3), omi=c(0.3,0.3,0.2,0.1))
# Plots
# Transient.killer.whales F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,kilB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(kilB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Transient killer whales", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(kilB.85.f1.up,rev(kilB.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Transient.killer.whales"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(kilB.45.f1.up[1:90],rev(kilB.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Transient.killer.whales"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(kilB.a1b.f1.up,rev(kilB.a1b.f1.lo)), col=trans.col.kilB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Transient.killer.whales"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Transient.killer.whales"], col="gray50", lwd=2)
# abline(h=min(mean45.f1_BB[1:27,"Transient.killer.whales"]), lty=2)
# abline(h=max(mean45.f1_BB[1:27,"Transient.killer.whales"]), lty=2)
abline(h=mean(mean85.f1_BB[1:27,"Transient.killer.whales"]), lty=2)
legend("bottomleft", legend = c("RCP 4.5", "RCP 8.5"),
       fill = c(rcp.line10[8], rcp.line10[1]),
       bty="n", cex=1.2, y.intersp = 1.2, border=NA)

# ============================================================================ #
# ============================================================================ #
# Plots
# Toothed.whales F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,tthB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(tthB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Toothed whales", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(tthB.85.f1.up,rev(tthB.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Toothed.whales"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(tthB.45.f1.up[1:90],rev(tthB.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Toothed.whales"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(tthB.a1b.f1.up,rev(tthB.a1b.f1.lo)), col=trans.col.tthB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Toothed.whales"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Toothed.whales"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Toothed.whales"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Toothed.whales"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Toothed.whales"]), lty=2)

# ============================================================================ #
# ============================================================================ #
# Plots
# Gray.whales F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,gryB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(gryB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Gray whales", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(gryB.85.f1.up,rev(gryB.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Gray.whales"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(gryB.45.f1.up[1:90],rev(gryB.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Gray.whales"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(gryB.a1b.f1.up,rev(gryB.a1b.f1.lo)), col=trans.col.gryB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Gray.whales"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Gray.whales"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Gray.whales"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Gray.whales"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Gray.whales"]), lty=2)

# ============================================================================ #
# ============================================================================ #
# Plots
# Baleen.whales F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,blnB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(blnB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Baleen whales", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(blnB.85.f1.up,rev(blnB.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Baleen.whales"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(blnB.45.f1.up[1:90],rev(blnB.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Baleen.whales"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(blnB.a1b.f1.up,rev(blnB.a1b.f1.lo)), col=trans.col.blnB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Baleen.whales"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Baleen.whales"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Baleen.whales"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Baleen.whales"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Baleen.whales"]), lty=2)

# ============================================================================ #
# ============================================================================ #
# Plots
# Pinnipeds F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,pinB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(pinB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Pinnipeds", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(pinB.85.f1.up,rev(pinB.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Pinnipeds"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(pinB.45.f1.up[1:90],rev(pinB.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Pinnipeds"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(pinB.a1b.f1.up,rev(pinB.a1b.f1.lo)), col=trans.col.pinB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Pinnipeds"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Pinnipeds"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Pinnipeds"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Pinnipeds"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Pinnipeds"]), lty=2)

# ============================================================================ #
# ============================================================================ #
# Plots
# Walrus.bd.seals F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,wbsB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(wbsB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Walrus & Bearded seals", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(wbsB.85.f1.up,rev(wbsB.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Walrus.bd.seals"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(wbsB.45.f1.up[1:90],rev(wbsB.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Walrus.bd.seals"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(wbsB.a1b.f1.up,rev(wbsB.a1b.f1.lo)), col=trans.col.wbsB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Walrus.bd.seals"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Walrus.bd.seals"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Walrus.bd.seals"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Walrus.bd.seals"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Walrus.bd.seals"]), lty=2)

# ============================================================================ #
# ============================================================================ #
# Plots
# N.fur.seal_Juv F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,nfsjB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(nfsjB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ")
box(col="gray50")
mtext("N. Fur seal juvenile", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(nfsjB.85.f1.up,rev(nfsjB.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"N.fur.seal_Juv"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(nfsjB.45.f1.up[1:90],rev(nfsjB.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"N.fur.seal_Juv"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(nfsjB.a1b.f1.up,rev(nfsjB.a1b.f1.lo)), col=trans.col.nfsjB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"N.fur.seal_Juv"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"N.fur.seal_Juv"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"N.fur.seal_Juv"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"N.fur.seal_Juv"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"N.fur.seal_Juv"]), lty=2)

# ============================================================================ #
# ============================================================================ #
# Plots
# N.fur.seal_Adu F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,nfsaB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(nfsaB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ")
box(col="gray50")
mtext("N. Fur seal adult", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(nfsaB.85.f1.up,rev(nfsaB.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"N.fur.seal_Adu"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(nfsaB.45.f1.up[1:90],rev(nfsaB.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"N.fur.seal_Adu"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(nfsaB.a1b.f1.up,rev(nfsaB.a1b.f1.lo)), col=trans.col.nfsaB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"N.fur.seal_Adu"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"N.fur.seal_Adu"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"N.fur.seal_Adu"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"N.fur.seal_Adu"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"N.fur.seal_Adu"]), lty=2)

# ============================================================================ #
# ============================================================================ #
# Plots
# Ice.seals F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,iceB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(iceB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ")
box(col="gray50")
mtext("Ice seals", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(iceB.85.f1.up,rev(iceB.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Ice.seals"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(iceB.45.f1.up[1:90],rev(iceB.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Ice.seals"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(iceB.a1b.f1.up,rev(iceB.a1b.f1.lo)), col=trans.col.iceB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Ice.seals"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Ice.seals"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Ice.seals"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Ice.seals"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Ice.seals"]), lty=2)

mtext("Year", side=1, outer=T, at=0.53, line=1, cex=1)
mtext(expression('Biomass (t km'^"-2"*')'), side=2, outer=T, at=0.5, cex=1)
