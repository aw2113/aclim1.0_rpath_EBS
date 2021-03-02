# Box plots of relative change in biomass between last 10 hindcast and 2071-2080
# The data used in these plots is from the file ACLIM_plots_guilds_RelB2.r

# with colorblind friendly pallete
.libPaths("C:/Program Files/R/R-3.6.1/library")
library(viridis)
# rcp.line <- viridis(2)
# poly.col <- viridis(2,alpha = 0.4)
# with 10 colors but only using numbers 8 and 1. RCP 8.5 is no. 1 (purple) and RCP 4.5 is no. 8 (green)
rcp.line10 <- viridis(10)
poly.col10 <- viridis(10,alpha = 0.4)


# Box plots grouped by GCM and RCP
# ============================================================================ #
# 2080 plots ----------------------------------------------------------------- #
# par(mfrow=c(2,2), omi=c(0.6,0.3,0.2,0.1), bty='n')
par(mfrow=c(2,2), omi=c(0.6,0.3,0.2,0.1))
# Apex predator
par(mar=c(0.5,3,1,0))
boxplot(cbind(apex.ces.2080.45*100,apex.ces.2080.85*100,apex.gfd.2080.45*100,apex.gfd.2080.85*100,
              apex.mir.2080.45*100,apex.mir.2080.85*100), ylab=" ",
        col=c(rep(poly.col10[8],4),rep(poly.col10[1],4),
              rep(poly.col10[8],4),rep(poly.col10[1],4),
              rep(poly.col10[8],4),rep(poly.col10[1],4)),
        boxwex=0.5, xlim=c(0,15), lwd=0.5,
        ylim=c(min(apex.ces.2080.45*100,apex.ces.2080.85*100,apex.gfd.2080.45*100,apex.gfd.2080.85*100,apex.mir.2080.45*100,apex.mir.2080.85*100),
               1.2*max(apex.ces.2080.45*100,apex.ces.2080.85*100,apex.gfd.2080.45*100,apex.gfd.2080.85*100,apex.mir.2080.45*100,apex.mir.2080.85*100)),
        at=c(0.5,1,1.5,2,3,3.5,4,4.5,5.5,6,6.5,7,8,8.5,9,9.5,10.5,11,11.5,12,13,13.5,14,14.5),
        las=2, xlab=" ", xaxt='n', cex.axis=0.8, pt.cex=0.6)
box(col="gray50")
# axis(1, labels=F)
mtext(c("CESM","GFDL","MIROC"), side = 3, line=-1, at=c(2.5,7.5,12.5), cex=0.6)
mtext("Apex predators", side=3,line=0.5,cex=0.8)
abline(h=0,lty=2,lwd=0.9)
# Benthic forager
par(mar=c(0.5,3,1,0))
boxplot(cbind(benf.ces.2080.45*100,benf.ces.2080.85*100,benf.gfd.2080.45*100,benf.gfd.2080.85*100,
              benf.mir.2080.45*100,benf.mir.2080.85*100), ylab=" ",
        col=c(rep(poly.col10[8],4),rep(poly.col10[1],4),
              rep(poly.col10[8],4),rep(poly.col10[1],4),
              rep(poly.col10[8],4),rep(poly.col10[1],4)),
        boxwex=0.5, xlim=c(0,15), lwd=0.5,
        ylim=c(min(benf.ces.2080.45*100,benf.ces.2080.85*100,benf.gfd.2080.45*100,benf.gfd.2080.85*100,benf.mir.2080.45*100,benf.mir.2080.85*100),
               1.2*max(benf.ces.2080.45*100,benf.ces.2080.85*100,benf.gfd.2080.45*100,benf.gfd.2080.85*100,benf.mir.2080.45*100,benf.mir.2080.85*100)),
        at=c(0.5,1,1.5,2,3,3.5,4,4.5,5.5,6,6.5,7,8,8.5,9,9.5,10.5,11,11.5,12,13,13.5,14,14.5),
        las=2, xlab=" ", xaxt='n', cex.axis=0.8)
box(col="gray50")
# axis(1, labels=F)
mtext(c("CESM","GFDL","MIROC"), side = 3, line=-1, at=c(2.5,7.5,12.5), cex=0.6)
mtext("Benthic foragers", side=3,line=0.5,cex=0.8)
abline(h=0,lty=2,lwd=0.9)
# Motile epifauna
par(mar=c(0,3,1.5,0))
boxplot(cbind(mote.ces.2080.45*100,mote.ces.2080.85*100,mote.gfd.2080.45*100,mote.gfd.2080.85*100,
              mote.mir.2080.45*100,mote.mir.2080.85*100), ylab=" ",
        col=c(rep(poly.col10[8],4),rep(poly.col10[1],4),
              rep(poly.col10[8],4),rep(poly.col10[1],4),
              rep(poly.col10[8],4),rep(poly.col10[1],4)),
        boxwex=0.5, xlim=c(0,15), lwd=0.5,
        ylim=c(min(mote.ces.2080.45*100,mote.ces.2080.85*100,mote.gfd.2080.45*100,mote.gfd.2080.85*100,mote.mir.2080.45*100,mote.mir.2080.85*100),
               10),
        at=c(0.5,1,1.5,2,3,3.5,4,4.5,5.5,6,6.5,7,8,8.5,9,9.5,10.5,11,11.5,12,13,13.5,14,14.5),
        las=1, cex.axis=0.8, xaxt='n')# names=rep(c(1:4),6))
# axis(side=1, at=c(0.5,1,1.5,2,3,3.5,4,4.5,5.5,6,6.5,7,8,8.5,9,9.5,10.5,11,11.5,12,13,13.5,14,14.5),
#      labels=rep(c(1:4),6), tick=TRUE, lwd=1, cex.axis=0.48)
axis(side=1, at=c(0.5,1,1.5,2,3,3.5,4,4.5,5.5,6,6.5,7,8,8.5,9,9.5,10.5,11,11.5,12,13,13.5,14,14.5),
     tick=TRUE, lwd=1, labels=FALSE)
box(col="gray50")
mtext(rep(c("1","2","3","4"),6),side=1,at=c(0.5,1,1.5,2,3,3.5,4,4.5,5.5,6,6.5,7,8,8.5,9,9.5,10.5,11,11.5,12,13,13.5,14,14.5),
      cex=0.8,line=1)
# box(col="gray75")
# axis(1, labels=F)
mtext(c("CESM","GFDL","MIROC"), side = 3, line=-1, at=c(2.5,7.5,12.5), cex=0.6)
mtext("Motile epifauna", side=3,line=0.5,cex=0.8)
abline(h=0,lty=2,lwd=0.9)
legend("bottom", legend = c("RCP 4.5", "RCP 8.5"),
       fill = c(poly.col10[8], poly.col10[1]),
       bty="n", cex=0.9, y.intersp = 1, border=NA)

# Pelagic forager
par(mar=c(0,3,1.5,0))
boxplot(cbind(pelf.ces.2080.45*100,pelf.ces.2080.85*100,pelf.gfd.2080.45*100,pelf.gfd.2080.85*100,
              pelf.mir.2080.45*100,pelf.mir.2080.85*100), ylab=" ",
        col=c(rep(poly.col10[8],4),rep(poly.col10[1],4),
              rep(poly.col10[8],4),rep(poly.col10[1],4),
              rep(poly.col10[8],4),rep(poly.col10[1],4)),
        boxwex=0.5, xlim=c(0,15), lwd=0.5,
        ylim=c(-100,
               1.2*max(pelf.ces.2080.45*100,pelf.ces.2080.85*100,pelf.gfd.2080.45*100,pelf.gfd.2080.85*100,pelf.mir.2080.45*100,pelf.mir.2080.85*100)),
        at=c(0.5,1,1.5,2,3,3.5,4,4.5,5.5,6,6.5,7,8,8.5,9,9.5,10.5,11,11.5,12,13,13.5,14,14.5),
        las=1, cex.axis=0.8, xaxt='n')
axis(side=1, at=c(0.5,1,1.5,2,3,3.5,4,4.5,5.5,6,6.5,7,8,8.5,9,9.5,10.5,11,11.5,12,13,13.5,14,14.5),
     tick=TRUE, lwd=1, labels=FALSE)
box(col="gray50")
mtext(rep(c("1","2","3","4"),6),side=1,at=c(0.5,1,1.5,2,3,3.5,4,4.5,5.5,6,6.5,7,8,8.5,9,9.5,10.5,11,11.5,12,13,13.5,14,14.5),
      cex=0.8,line=1)
# box(col="gray75")
# axis(1, labels=F)
mtext(c("CESM","GFDL","MIROC"), side = 3, line=-1, at=c(2.5,7.5,12.5), cex=0.6)
mtext("Pelagic foragers", side=3,line=0.5,cex=0.8)
abline(h=0,lty=2,lwd=0.9)
# legend(0,3, legend = c("RCP 4.5", "RCP 8.5"),
#        fill = c(trans.col.opiC.45.f1, trans.col.opiC.85.f1),
#        bty="n", cex=0.9, y.intersp = 1, border=NA)

mtext("% change in biomass", side=2, outer=T, at=0.5, cex=1, line=0.4)
mtext("Fishing scenario", side=1, outer=T, at=0.53, line=2.5, cex=1)
