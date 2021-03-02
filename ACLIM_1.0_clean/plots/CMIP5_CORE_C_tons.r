# plot core species CATCH under all three fishing scenarios as a 6 x 3 plot.
# Portrait 6.5 x 8.0

# In order to do this in tons, I need to add multiply by 495218 a bunch of times.

# with colorblind friendly pallete
# .libPaths("C:/Program Files/R/R-3.6.1/library")
library(viridis)
# rcp.line <- viridis(2)
# poly.col <- viridis(2,alpha = 0.4)
# with 10 colors but only using numbers 8 and 1. RCP 8.5 is no. 1 (purple) and RCP 4.5 is no. 8 (green)
rcp.line10 <- viridis(10)
poly.col10 <- viridis(10,alpha = 0.4)


par(mfrow=c(6,3), omi=c(0.3,0.3,0.4,0.1))
# P.cod f1 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,codC.45.f1.up[1:90], col=FALSE, ylim=c(0,max(codC.45.f2.up*495218,codC.85.f2.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Status quo", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(codC.85.f1.up*495218,rev(codC.85.f1.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_CC[,"P.cod_Adu"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(codC.45.f1.up[1:90]*495218,rev(codC.45.f1.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_CC[1:90,"P.cod_Adu"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f1_CC[1:27,"P.cod_Adu"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"P.cod_Adu"]), lty=2)
abline(h=max(mean85.f1_CC[1:27,"P.cod_Adu"]*495218),lty=2)
abline(h=min(mean85.f1_CC[1:27,"P.cod_Adu"]*495218),lty=2)
text(2020,50000,"Pacific cod", cex=1.2)

# P.cod f2 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,codC.45.f2.up[1:90], col=FALSE, ylim=c(0,max(codC.45.f2.up*495218,codC.85.f2.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
mtext("More gadid catch", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(codC.85.f2.up*495218,rev(codC.85.f2.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f2_CC[,"P.cod_Adu"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(codC.45.f2.up[1:90]*495218,rev(codC.45.f2.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f2_CC[1:90,"P.cod_Adu"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f2_CC[1:27,"P.cod_Adu"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"P.cod_Adu"]), lty=2)
abline(h=max(mean85.f2_CC[1:27,"P.cod_Adu"]*495218),lty=2)
abline(h=min(mean85.f2_CC[1:27,"P.cod_Adu"]*495218),lty=2)

legend("bottom", legend = c("RCP 4.5", "RCP 8.5"),
       fill = c(rcp.line10[8], rcp.line10[1]),
       bty="n", cex=1.2, y.intersp = 1.3, border=NA)

# P.cod f3 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,codC.45.f3.up[1:90], col=FALSE, ylim=c(0,max(codC.45.f2.up*495218,codC.85.f2.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')#, bg=rgb(245,235,248))
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
mtext("More flatfish catch", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(codC.85.f3.up*495218,rev(codC.85.f3.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f3_CC[,"P.cod_Adu"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(codC.45.f3.up[1:90]*495218,rev(codC.45.f3.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f3_CC[1:90,"P.cod_Adu"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f3_CC[1:27,"P.cod_Adu"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"P.cod_Adu"]), lty=2)
abline(h=max(mean85.f3_CC[1:27,"P.cod_Adu"]*495218),lty=2)
abline(h=min(mean85.f3_CC[1:27,"P.cod_Adu"]*495218),lty=2)


# W.pollock f1 catch ======================================================= #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,polC.45.f1.up[1:90], col=FALSE, ylim=c(0,max(polC.45.f2.up*495218,polC.85.f2.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(polC.85.f1.up*495218,rev(polC.85.f1.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_CC[,"W.pollock_Adu"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(polC.45.f1.up[1:90]*495218,rev(polC.45.f1.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_CC[1:90,"W.pollock_Adu"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f1_CC[1:27,"W.pollock_Adu"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"W.pollock_Adu"]), lty=2)
abline(h=max(mean85.f1_CC[1:27,"W.pollock_Adu"]*495218),lty=2)
abline(h=min(mean85.f1_CC[1:27,"W.pollock_Adu"]*495218),lty=2)
text(2013,300000,"Pollock", cex=1.2)
# W.pollock f2 catch ----------------------------------------------------------- #
# par(mfrow=c(1,2))
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,polC.45.f2.up[1:90], col=FALSE, ylim=c(0,max(polC.45.f2.up*495218,polC.85.f2.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')#, bg=rgb(245,235,248))
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(polC.85.f2.up*495218,rev(polC.85.f2.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f2_CC[,"W.pollock_Adu"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(polC.45.f2.up[1:90]*495218,rev(polC.45.f2.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f2_CC[1:90,"W.pollock_Adu"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f2_CC[1:27,"W.pollock_Adu"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"W.pollock_Adu"]), lty=2)
abline(h=max(mean85.f2_CC[1:27,"W.pollock_Adu"]*495218),lty=2)
abline(h=min(mean85.f2_CC[1:27,"W.pollock_Adu"]*495218),lty=2)
# W.pollock f3 catch ----------------------------------------------------------- #
# par(mfrow=c(1,2))
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,polC.45.f3.up[1:90], col=FALSE, ylim=c(0,max(polC.45.f2.up*495218,polC.85.f2.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')#, bg=rgb(245,235,248))
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(polC.85.f3.up*495218,rev(polC.85.f3.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f3_CC[,"W.pollock_Adu"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(polC.45.f3.up[1:90]*495218,rev(polC.45.f3.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f3_CC[1:90,"W.pollock_Adu"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f3_CC[1:27,"W.pollock_Adu"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"W.pollock_Adu"]), lty=2)
abline(h=max(mean85.f3_CC[1:27,"W.pollock_Adu"]*495218),lty=2)
abline(h=min(mean85.f3_CC[1:27,"W.pollock_Adu"]*495218),lty=2)


# Arrowtooth flounder ======================================================== #
# Arrowtooth f1 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,atfC.45.f1.up[1:90], col=FALSE, ylim=c(0,max(atfC.45.f3.up*495218,atfC.85.f3.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(atfC.85.f1.up*495218,rev(atfC.85.f1.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_CC[,"Arrowtooth_Adu"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(atfC.45.f1.up[1:90]*495218,rev(atfC.45.f1.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_CC[1:90,"Arrowtooth_Adu"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f1_CC[1:27,"Arrowtooth_Adu"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"Arrowtooth_Adu"]), lty=2)
abline(h=max(mean85.f1_CC[1:27,"Arrowtooth_Adu"]*495218),lty=2)
abline(h=min(mean85.f1_CC[1:27,"Arrowtooth_Adu"]*495218),lty=2)
text(2020,3000,"Arrowtooth", cex=1.2)
# Arrowtooth f2 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,atfC.45.f2.up[1:90], col=FALSE, ylim=c(0,max(atfC.45.f3.up*495218,atfC.85.f3.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')#, bg=rgb(245,235,248))
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(atfC.85.f2.up*495218,rev(atfC.85.f2.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f2_CC[,"Arrowtooth_Adu"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(atfC.45.f2.up[1:90]*495218,rev(atfC.45.f2.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f2_CC[1:90,"Arrowtooth_Adu"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f2_CC[1:27,"Arrowtooth_Adu"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"Arrowtooth_Adu"]), lty=2)
abline(h=max(mean85.f2_CC[1:27,"Arrowtooth_Adu"]*495218),lty=2)
abline(h=min(mean85.f2_CC[1:27,"Arrowtooth_Adu"]*495218),lty=2)
# Arrowtooth f3 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,atfC.45.f3.up[1:90], col=FALSE, ylim=c(0,max(atfC.45.f3.up*495218,atfC.85.f3.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')#, bg=rgb(245,235,248))
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(atfC.85.f3.up*495218,rev(atfC.85.f3.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f3_CC[,"Arrowtooth_Adu"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(atfC.45.f3.up[1:90]*495218,rev(atfC.45.f3.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f3_CC[1:90,"Arrowtooth_Adu"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f3_CC[1:27,"Arrowtooth_Adu"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"Arrowtooth_Adu"]), lty=2)
abline(h=max(mean85.f3_CC[1:27,"Arrowtooth_Adu"]*495218),lty=2)
abline(h=min(mean85.f3_CC[1:27,"Arrowtooth_Adu"]*495218),lty=2)


# N.Rock.sole f1 catch ===================================================== #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,nrsC.45.f1.up[1:90], col=FALSE, ylim=c(0,max(nrsC.45.f3.up*495218,nrsC.85.f3.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(nrsC.85.f1.up*495218,rev(nrsC.85.f1.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_CC[,"N.Rock.sole"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(nrsC.45.f1.up[1:90]*495218,rev(nrsC.45.f1.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_CC[1:90,"N.Rock.sole"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f1_CC[1:27,"N.Rock.sole"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"N.Rock.sole"]), lty=2)
abline(h=max(mean85.f1_CC[1:27,"N.Rock.sole"]*495218),lty=2)
abline(h=min(mean85.f1_CC[1:27,"N.Rock.sole"]*495218),lty=2)
text(2025,13000,"N. rock sole", cex=1.2)
# N.Rock.sole f2 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,nrsC.45.f2.up[1:90], col=FALSE, ylim=c(0,max(nrsC.45.f3.up*495218,nrsC.85.f3.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')#, bg=rgb(245,235,248))
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(nrsC.85.f2.up*495218,rev(nrsC.85.f2.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f2_CC[,"N.Rock.sole"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(nrsC.45.f2.up[1:90]*495218,rev(nrsC.45.f2.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f2_CC[1:90,"N.Rock.sole"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f2_CC[1:27,"N.Rock.sole"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"N.Rock.sole"]), lty=2)
abline(h=max(mean85.f2_CC[1:27,"N.Rock.sole"]*495218),lty=2)
abline(h=min(mean85.f2_CC[1:27,"N.Rock.sole"]*495218),lty=2)
# N.Rock.sole f3 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,nrsC.45.f3.up[1:90], col=FALSE, ylim=c(0,max(nrsC.45.f3.up*495218,nrsC.85.f3.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')#, bg=rgb(245,235,248))
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(nrsC.85.f3.up*495218,rev(nrsC.85.f3.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f3_CC[,"N.Rock.sole"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(nrsC.45.f3.up[1:90]*495218,rev(nrsC.45.f3.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f3_CC[1:90,"N.Rock.sole"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f3_CC[1:27,"N.Rock.sole"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"N.Rock.sole"]), lty=2)
abline(h=max(mean85.f3_CC[1:27,"N.Rock.sole"]*495218),lty=2)
abline(h=min(mean85.f3_CC[1:27,"N.Rock.sole"]*495218),lty=2)


# YF.sole f1 catch ===================================================== #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,yfsC.45.f1.up[1:90], col=FALSE, ylim=c(0,max(yfsC.45.f3.up*495218,yfsC.85.f3.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(yfsC.85.f1.up*495218,rev(yfsC.85.f1.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_CC[,"YF.sole"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(yfsC.45.f1.up[1:90]*495218,rev(yfsC.45.f1.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_CC[1:90,"YF.sole"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f1_CC[1:27,"YF.sole"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"YF.sole"]), lty=2)
abline(h=max(mean85.f1_CC[1:27,"YF.sole"]*495218),lty=2)
abline(h=min(mean85.f1_CC[1:27,"YF.sole"]*495218),lty=2)
text(2025,30000,"Yellowfin sole", cex=1.2)
# YF.sole f2 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,yfsC.45.f2.up[1:90], col=FALSE, ylim=c(0,max(yfsC.45.f3.up*495218,yfsC.85.f3.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(yfsC.85.f2.up*495218,rev(yfsC.85.f2.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f2_CC[,"YF.sole"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(yfsC.45.f2.up[1:90]*495218,rev(yfsC.45.f2.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f2_CC[1:90,"YF.sole"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f2_CC[1:27,"YF.sole"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"YF.sole"]), lty=2)
abline(h=max(mean85.f2_CC[1:27,"YF.sole"]*495218),lty=2)
abline(h=min(mean85.f2_CC[1:27,"YF.sole"]*495218),lty=2)
# YF.sole f3 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,yfsC.45.f3.up[1:90], col=FALSE, ylim=c(0,max(yfsC.45.f3.up*495218,yfsC.85.f3.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')#, bg=rgb(245,235,248))
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(yfsC.85.f3.up*495218,rev(yfsC.85.f3.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f3_CC[,"YF.sole"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(yfsC.45.f3.up[1:90]*495218,rev(yfsC.45.f3.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f3_CC[1:90,"YF.sole"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f3_CC[1:27,"YF.sole"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"YF.sole"]), lty=2)
abline(h=max(mean85.f3_CC[1:27,"YF.sole"]*495218),lty=2)
abline(h=min(mean85.f3_CC[1:27,"YF.sole"]*495218),lty=2)


# Opilio f1 catch ===================================================== #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,opiC.45.f1.up[1:90], col=FALSE, ylim=c(0,max(opiC.45.f1.up*495218,opiC.85.f1.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ")
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(opiC.85.f1.up*495218,rev(opiC.85.f1.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1_CC[,"Opilio"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(opiC.45.f1.up[1:90]*495218,rev(opiC.45.f1.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1_CC[1:90,"Opilio"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f1_CC[1:27,"Opilio"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"Opilio"]), lty=2)
abline(h=max(mean85.f1_CC[1:27,"Opilio"]*495218),lty=2)
abline(h=min(mean85.f1_CC[1:27,"Opilio"]*495218),lty=2)
text(2011,230000,"Snow crab", cex=1.2)
# Opilio f2 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,opiC.45.f2.up[1:90], col=FALSE, ylim=c(0,max(opiC.45.f1.up*495218,opiC.85.f1.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", yaxt='n')
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(opiC.85.f2.up*495218,rev(opiC.85.f2.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f2_CC[,"Opilio"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(opiC.45.f2.up[1:90]*495218,rev(opiC.45.f2.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f2_CC[1:90,"Opilio"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f2_CC[1:27,"Opilio"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"Opilio"]), lty=2)
abline(h=max(mean85.f2_CC[1:27,"Opilio"]*495218),lty=2)
abline(h=min(mean85.f2_CC[1:27,"Opilio"]*495218),lty=2)
# Opilio f3 catch ----------------------------------------------------------- #
par(mai=c(0.2,0.3,0.1,0))
plot(ces.yrs,opiC.45.f3.up[1:90], col=FALSE, ylim=c(0,max(opiC.45.f1.up*495218,opiC.85.f1.up*495218)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", yaxt='n')#, bg=rgb(245,235,248))
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(opiC.85.f3.up*495218,rev(opiC.85.f3.lo*495218)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f3_CC[,"Opilio"]*495218, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(opiC.45.f3.up[1:90]*495218,rev(opiC.45.f3.lo[1:90]*495218)), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f3_CC[1:90,"Opilio"]*495218, col=rcp.line10[8], lwd=2)
lines(rcp.yrs[1:27],mean85.f3_CC[1:27,"Opilio"]*495218, col="gray50", lwd=2)
# abline(h=mean(mean85.f1_CC[1:27,"Opilio"]), lty=2)
abline(h=max(mean85.f3_CC[1:27,"Opilio"]*495218),lty=2)
abline(h=min(mean85.f3_CC[1:27,"Opilio"]*495218),lty=2)

mtext("Year", side=1, outer=T, at=0.515, line=1, cex=1)
mtext("Catch (tonnes)", side=2, outer=T, at=0.5, cex=1, line=0.4)

