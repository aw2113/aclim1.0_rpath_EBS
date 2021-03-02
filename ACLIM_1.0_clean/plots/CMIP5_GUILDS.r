# Guild plots for manuscript
# 3.5 x 8.0

# with colorblind friendly pallete
# .libPaths("C:/Program Files/R/R-3.6.1/library")
library(viridis)
# rcp.line <- viridis(2)
# poly.col <- viridis(2,alpha = 0.4)
# with 10 colors but only using numbers 8 and 1. RCP 8.5 is no. 1 (purple) and RCP 4.5 is no. 8 (green)
rcp.line10 <- viridis(10)
poly.col10 <- viridis(10,alpha = 0.4)


par(mfrow=c(7,2), mai=c(0.3, 0.3, 0.6, 0.3), omi=c(0.3,0.3,0.3,0.1))
# Apex predator -------------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
# Plot Apex predator guild biomass for f1 (status quo) ----------------------- #
plot(rcp.yrs,apex.85.f1.up, col=FALSE, ylim=c(0,max(apex.85.f1.up,apex.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
mtext("Status quo", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(apex.85.f1.up,rev(apex.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1.apex, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(apex.45.f1.up[1:90],rev(apex.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1.apex[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(apex.a1b.f1.up,rev(apex.a1b.f1.lo)), col=trans.col.apex.a1b.f1,border = NA)
# lines(a1b.yrs,meanA1B.f1.apex, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f1.apex[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f1.apex[1:27]), lty=2)
abline(h=max(mean45.f1.apex[1:27]), lty=2)
text(2050,2,labels="Apex predators",cex = 1, font=1)

# apex f4 - no fishing ------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
plot(rcp.yrs,apex.85.f4.up, col=FALSE, ylim=c(0,max(apex.85.f1.up,apex.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
mtext("No fishing", side=3, line=0.5, cex=0.8)
polygon(c(rcp.yrs,rev(rcp.yrs)), c(apex.85.f4.up,rev(apex.85.f4.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f4.apex, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(apex.45.f4.up[1:90],rev(apex.45.f4.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f4.apex[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(apex.a1b.f4.up,rev(apex.a1b.f4.lo)), col=trans.col.apex.a1b.f4,border = NA)
# lines(a1b.yrs,meanA1B.f4.apex, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f4.apex[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f4.apex[1:27]), lty=2)
abline(h=max(mean45.f4.apex[1:27]), lty=2)
legend("bottomleft", legend = c("RCP 4.5", "RCP 8.5"),
       fill = c(rcp.line10[8], rcp.line10[1]),
       bty="n", cex=1, y.intersp = 1.2, border=NA)

# ============================================================================ #
# ============================================================================ #
# ============================================================================ #

# Benthic forager -------------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
# Plot Benthic forager guild biomass for f1 (status quo) ----------------------- #
plot(rcp.yrs,benf.85.f1.up, col=FALSE, ylim=c(0,max(benf.85.f1.up,benf.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(benf.85.f1.up,rev(benf.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1.benf, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(benf.45.f1.up[1:90],rev(benf.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1.benf[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(benf.a1b.f1.up,rev(benf.a1b.f1.lo)), col=trans.col.benf.a1b.f1,border = NA)
# lines(a1b.yrs,meanA1B.f1.benf, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f1.benf[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f1.benf[1:27]), lty=2)
abline(h=max(mean45.f1.benf[1:27]), lty=2)
text(2050,3,labels="Benthic foragers",cex = 1, font=1)

# benf f4 - no fishing ------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
plot(rcp.yrs,benf.85.f4.up, col=FALSE, ylim=c(0,max(benf.85.f1.up,benf.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(benf.85.f4.up,rev(benf.85.f4.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f4.benf, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(benf.45.f4.up[1:90],rev(benf.45.f4.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f4.benf[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(benf.a1b.f4.up,rev(benf.a1b.f4.lo)), col=trans.col.benf.a1b.f4,border = NA)
# lines(a1b.yrs,meanA1B.f4.benf, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f4.benf[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f4.benf[1:27]), lty=2)
abline(h=max(mean45.f4.benf[1:27]), lty=2)

# ============================================================================ #
# ============================================================================ #
# ============================================================================ #


# Pelagic forager -------------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
# Plot Pelagic forager guild biomass for f1 (status quo) ----------------------- #
plot(rcp.yrs,pelf.85.f1.up, col=FALSE, ylim=c(0,max(pelf.85.f1.up,pelf.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(pelf.85.f1.up,rev(pelf.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1.pelf, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(pelf.45.f1.up[1:90],rev(pelf.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1.pelf[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(pelf.a1b.f1.up,rev(pelf.a1b.f1.lo)), col=trans.col.pelf.a1b.f1,border = NA)
# lines(a1b.yrs,meanA1B.f1.pelf, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f1.pelf[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f1.pelf[1:27]), lty=2)
abline(h=max(mean45.f1.pelf[1:27]), lty=2)
text(2050,8,labels="Pelagic foragers",cex = 1, font=1)

# pelf f4 - no fishing ------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
plot(rcp.yrs,pelf.85.f4.up, col=FALSE, ylim=c(0,max(pelf.85.f1.up,pelf.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(pelf.85.f4.up,rev(pelf.85.f4.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f4.pelf, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(pelf.45.f4.up[1:90],rev(pelf.45.f4.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f4.pelf[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(pelf.a1b.f4.up,rev(pelf.a1b.f4.lo)), col=trans.col.pelf.a1b.f4,border = NA)
# lines(a1b.yrs,meanA1B.f4.pelf, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f4.pelf[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f4.pelf[1:27]), lty=2)
abline(h=max(mean45.f4.pelf[1:27]), lty=2)

# ============================================================================ #
# ============================================================================ #
# ============================================================================ #


# Motile epifauna -------------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
# Plot Motile epifauna guild biomass for f1 (status quo) ----------------------- #
plot(rcp.yrs,mote.85.f1.up, col=FALSE, ylim=c(0,max(mote.85.f1.up,mote.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(mote.85.f1.up,rev(mote.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1.mote, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(mote.45.f1.up[1:90],rev(mote.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1.mote[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(mote.a1b.f1.up,rev(mote.a1b.f1.lo)), col=trans.col.mote.a1b.f1,border = NA)
# lines(a1b.yrs,meanA1B.f1.mote, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f1.mote[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f1.mote[1:27]), lty=2)
abline(h=max(mean45.f1.mote[1:27]), lty=2)
text(2050,4,labels="Motile epifauna",cex = 1, font=1)

# mote f4 - no fishing ------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
plot(rcp.yrs,mote.85.f4.up, col=FALSE, ylim=c(0,max(mote.85.f1.up,mote.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(mote.85.f4.up,rev(mote.85.f4.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f4.mote, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(mote.45.f4.up[1:90],rev(mote.45.f4.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f4.mote[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(mote.a1b.f4.up,rev(mote.a1b.f4.lo)), col=trans.col.mote.a1b.f4,border = NA)
# lines(a1b.yrs,meanA1B.f4.mote, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f4.mote[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f4.mote[1:27]), lty=2)
abline(h=max(mean45.f4.mote[1:27]), lty=2)

# ============================================================================ #
# ============================================================================ #
# ============================================================================ #


# Shrimp -------------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
# Plot Shrimp guild biomass for f1 (status quo) ----------------------- #
plot(rcp.yrs,shmp.85.f1.up, col=FALSE, ylim=c(0,max(shmp.85.f1.up,shmp.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(shmp.85.f1.up,rev(shmp.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1.shmp, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(shmp.45.f1.up[1:90],rev(shmp.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1.shmp[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(shmp.a1b.f1.up,rev(shmp.a1b.f1.lo)), col=trans.col.shmp.a1b.f1,border = NA)
# lines(a1b.yrs,meanA1B.f1.shmp, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f1.shmp[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f1.shmp[1:27]), lty=2)
abline(h=max(mean45.f1.shmp[1:27]), lty=2)
text(2050,2,labels="Shrimp & other zoop",cex = 1, font=1)

# shmp f4 - no fishing ------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
plot(rcp.yrs,shmp.85.f4.up, col=FALSE, ylim=c(0,max(shmp.85.f1.up,shmp.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(shmp.85.f4.up,rev(shmp.85.f4.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f4.shmp, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(shmp.45.f4.up[1:90],rev(shmp.45.f4.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f4.shmp[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(shmp.a1b.f4.up,rev(shmp.a1b.f4.lo)), col=trans.col.shmp.a1b.f4,border = NA)
# lines(a1b.yrs,meanA1B.f4.shmp, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f4.shmp[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f4.shmp[1:27]), lty=2)
abline(h=max(mean45.f4.shmp[1:27]), lty=2)

# ============================================================================ #
# ============================================================================ #
# ============================================================================ #


# Infauna -------------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
# Plot Infauna guild biomass for f1 (status quo) ----------------------- #
plot(rcp.yrs,infa.85.f1.up, col=FALSE, ylim=c(0,max(infa.85.f1.up,infa.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n')
axis(1, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(infa.85.f1.up,rev(infa.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1.infa, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(infa.45.f1.up[1:90],rev(infa.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1.infa[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(infa.a1b.f1.up,rev(infa.a1b.f1.lo)), col=trans.col.infa.a1b.f1,border = NA)
# lines(a1b.yrs,meanA1B.f1.infa, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f1.infa[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f1.infa[1:27]), lty=2)
abline(h=max(mean45.f1.infa[1:27]), lty=2)
text(2050,25,labels="Infauna",cex = 1, font=1)

# infa f4 - no fishing ------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
plot(rcp.yrs,infa.85.f4.up, col=FALSE, ylim=c(0,max(infa.85.f1.up,infa.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", xaxt='n', yaxt='n')
axis(1, labels=F)
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(infa.85.f4.up,rev(infa.85.f4.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f4.infa, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(infa.45.f4.up[1:90],rev(infa.45.f4.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f4.infa[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(infa.a1b.f4.up,rev(infa.a1b.f4.lo)), col=trans.col.infa.a1b.f4,border = NA)
# lines(a1b.yrs,meanA1B.f4.infa, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f4.infa[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f4.infa[1:27]), lty=2)
abline(h=max(mean45.f4.infa[1:27]), lty=2)

# ============================================================================ #
# ============================================================================ #
# ============================================================================ #


# Structural epifauna -------------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
# Plot Structural epifauna guild biomass for f1 (status quo) ----------------------- #
plot(rcp.yrs,sepi.85.f1.up, col=FALSE, ylim=c(0,max(sepi.85.f1.up,sepi.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ")
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(sepi.85.f1.up,rev(sepi.85.f1.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f1.sepi, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(sepi.45.f1.up[1:90],rev(sepi.45.f1.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f1.sepi[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(sepi.a1b.f1.up,rev(sepi.a1b.f1.lo)), col=trans.col.sepi.a1b.f1,border = NA)
# lines(a1b.yrs,meanA1B.f1.sepi, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f1.sepi[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f1.sepi[1:27]), lty=2)
abline(h=max(mean45.f1.sepi[1:27]), lty=2)
text(2050,0.2,labels="Structural epifauna",cex = 1, font=1)

# sepi f4 - no fishing ------------------------------------------------------- #
par(mai=c(0.2,0.3,0,0))
plot(rcp.yrs,sepi.85.f4.up, col=FALSE, ylim=c(0,max(sepi.85.f1.up,sepi.85.f4.up)), xlim=c(1991,2099),
     ylab=" ", xlab=" ", yaxt='n')
axis(2, labels=F)
box(col="gray50")
polygon(c(rcp.yrs,rev(rcp.yrs)), c(sepi.85.f4.up,rev(sepi.85.f4.lo)), col=poly.col10[1],lwd=0.5)
lines(rcp.yrs,mean85.f4.sepi, col=rcp.line10[1], lwd=2)
polygon(c(ces.yrs,rev(ces.yrs)), c(sepi.45.f4.up[1:90],rev(sepi.45.f4.lo[1:90])), col=poly.col10[8],lwd=0.5)
lines(ces.yrs,mean45.f4.sepi[1:90], col=rcp.line10[8], lwd=2)
# polygon(c(a1b.yrs,rev(a1b.yrs)), c(sepi.a1b.f4.up,rev(sepi.a1b.f4.lo)), col=trans.col.sepi.a1b.f4,border = NA)
# lines(a1b.yrs,meanA1B.f4.sepi, col="cyan", lwd=2)
lines(rcp.yrs[1:27],mean45.f4.sepi[1:27], col="gray50", lwd=2)
abline(h=min(mean45.f4.sepi[1:27]), lty=2)
abline(h=max(mean45.f4.sepi[1:27]), lty=2)

# ============================================================================ #
# ============================================================================ #
# ============================================================================ #

mtext("Year", side=1, outer=T, at=0.53, line=1, cex=1)
mtext(expression('Biomass (t km'^"-2"*')'), side=2, outer=T, at=0.5, cex=1)
