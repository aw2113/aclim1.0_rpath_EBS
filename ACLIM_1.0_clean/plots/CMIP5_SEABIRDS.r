# Seabirds plots for manuscript
# 6.5 x 3.0 portrait

# with colorblind friendly pallete
# .libPaths("C:/Program Files/R/R-3.6.1/library")
library(viridis)
# rcp.line <- viridis(2)
# poly.col <- viridis(2,alpha = 0.4)
# with 10 colors but only using numbers 8 and 1. RCP 8.5 is no. 1 (purple) and RCP 4.5 is no. 8 (green)
rcp.line10 <- viridis(10)
poly.col10 <- viridis(10,alpha = 0.4)


par(mfrow=c(2,3), mai=c(0.3, 0.3, 0.6, 0.3), omi=c(0.3,0.3,0.2,0.1))
# Plots
# ============================================================================ #
# Oth.birds F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,obrdB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(obrdB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Other birds", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(obrdB.85.f1.up,rev(obrdB.85.f1.lo)), col=poly.col10[1], lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Oth.birds"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(obrdB.45.f1.up[1:90],rev(obrdB.45.f1.lo[1:90])), col=poly.col10[8], lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Oth.birds"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(obrdB.a1b.f1.up,rev(obrdB.a1b.f1.lo)), col=trans.col.obrdB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Oth.birds"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Oth.birds"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Oth.birds"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Oth.birds"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Oth.birds"]), lty=2)
legend("bottomleft", legend = c("RCP 4.5", "RCP 8.5"),
       fill = c(rcp.line10[8], rcp.line10[1]),
       bty="n", cex=1.2, y.intersp = 1.2, border=NA)

# ============================================================================ #
# Murres.puffins F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,mpfB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(mpfB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Murres & Puffins", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(mpfB.85.f1.up,rev(mpfB.85.f1.lo)), col=poly.col10[1], lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Murres.puffins"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(mpfB.45.f1.up[1:90],rev(mpfB.45.f1.lo[1:90])), col=poly.col10[8], lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Murres.puffins"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(mpfB.a1b.f1.up,rev(mpfB.a1b.f1.lo)), col=trans.col.mpfB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Murres.puffins"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Murres.puffins"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Murres.puffins"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Murres.puffins"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Murres.puffins"]), lty=2)

# ============================================================================ #
# Kittiwakes F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,ktwB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(ktwB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Kittiwakes", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(ktwB.85.f1.up,rev(ktwB.85.f1.lo)), col=poly.col10[1], lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Kittiwakes"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(ktwB.45.f1.up[1:90],rev(ktwB.45.f1.lo[1:90])), col=poly.col10[8], lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Kittiwakes"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(ktwB.a1b.f1.up,rev(ktwB.a1b.f1.lo)), col=trans.col.ktwB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Kittiwakes"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Kittiwakes"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Kittiwakes"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Kittiwakes"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Kittiwakes"]), lty=2)

# ============================================================================ #
# Auklets F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,aklB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(aklB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ")
box(col="gray50")
mtext("Auklets", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(aklB.85.f1.up,rev(aklB.85.f1.lo)), col=poly.col10[1], lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Auklets"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(aklB.45.f1.up[1:90],rev(aklB.45.f1.lo[1:90])), col=poly.col10[8], lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Auklets"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(aklB.a1b.f1.up,rev(aklB.a1b.f1.lo)), col=trans.col.aklB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Auklets"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Auklets"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Auklets"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Auklets"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Auklets"]), lty=2)

# ============================================================================ #
# Fulmars F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,flmB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(flmB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ")
box(col="gray50")
mtext("Fulmars", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(flmB.85.f1.up,rev(flmB.85.f1.lo)), col=poly.col10[1], lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Fulmars"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(flmB.45.f1.up[1:90],rev(flmB.45.f1.lo[1:90])), col=poly.col10[8], lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Fulmars"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(flmB.a1b.f1.up,rev(flmB.a1b.f1.lo)), col=trans.col.flmB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Fulmars"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Fulmars"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Fulmars"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Fulmars"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Fulmars"]), lty=2)

# ============================================================================ #
# Albatross F1 biomass
par(mai=c(0.2,0.3,0.2,0))
plot(ces.yrs,albB.45.f1.up[1:90], col=FALSE, ylim=c(0,max(albB.85.f1.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ")
box(col="gray50")
mtext("Albatross", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(albB.85.f1.up,rev(albB.85.f1.lo)), col=poly.col10[1], lwd=0.5)
lines(rcp.yrs,mean85.f1_BB[,"Albatross"], col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(albB.45.f1.up[1:90],rev(albB.45.f1.lo[1:90])), col=poly.col10[8], lwd=0.5)
lines(ces.yrs,mean45.f1_BB[1:90,"Albatross"], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(albB.a1b.f1.up,rev(albB.a1b.f1.lo)), col=trans.col.albB.a1b.f1)
# lines(a1b.yrs,meanA1B.f1_BB[,"Albatross"], col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean85.f1_BB[1:27,"Albatross"], col="gray50", lwd=2)
# abline(h=mean(mean85.f1_BB[1:27,"Albatross"]), lty=2)
abline(h=min(mean85.f1_BB[1:27,"Albatross"]), lty=2)
abline(h=max(mean85.f1_BB[1:27,"Albatross"]), lty=2)

mtext("Year", side=1, outer=T, at=0.53, line=1, cex=1)
mtext(expression('Biomass (t km'^"-2"*')'), side=2, outer=T, at=0.5, cex=1)
