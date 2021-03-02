# Running mean for forcing groups. Take the average of all 12 months in a given
# year and use that as the "annual" value.

# my output for the projections that go through 2099 will be 109 rows (years).
# For CESM 4.5, it goes through 2080, so 90 rows.
# counters to 2099 and to 2080
rcp.ann.counter <- seq(1,1308,12)
ces.ann.counter <- seq(1,1080,12)

# Euphausiids ================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# gfd45 f1
gfd45.f1.annB.eup <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.eup <- mean(gfd45.f1.91.add$out_Biomass[i:(i+11),"Euphausiids"])
  k <- k+1
  gfd45.f1.annB.eup[k] <- temp_mean.eup
}

# mir45 f1
mir45.f1.annB.eup <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.eup <- mean(mir45.f1.91.add$out_Biomass[i:(i+11),"Euphausiids"])
  k <- k+1
  mir45.f1.annB.eup[k] <- temp_mean.eup
}

# ces45 f1
ces45.f1.annB.eup <- matrix(data=NA,nrow=90, ncol=1)
k <- 0
for(i in ces.ann.counter) {
  temp_mean.eup <- mean(ces45.f1.91.add$out_Biomass[i:(i+11),"Euphausiids"])
  k <- k+1
  ces45.f1.annB.eup[k] <- temp_mean.eup
}

# plot(gfd45.f1.annB.eup, type="l", col="blue", lwd=2, ylim=c(0,max(gfd45.f1.annB.eup,mir45.f1.annB.eup,ces45.f1.annB.eup)))
# lines(mir45.f1.annB.eup, col="red", lwd=2)
# lines(ces45.f1.annB.eup, col="purple", lwd=2)
# lines(ces45.f1.annB.eup[1:27], col="gray50", lwd=2)
# abline(h=mean(ces45.f1.annB.eup[1:27]))

# RCP 8.5 -------------------------------------------------------------------- #
# gfd85 f1
gfd85.f1.annB.eup <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.eup <- mean(gfd85.f1.91.add$out_Biomass[i:(i+11),"Euphausiids"])
  k <- k+1
  gfd85.f1.annB.eup[k] <- temp_mean.eup
}

# mir85 f1
mir85.f1.annB.eup <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.eup <- mean(mir85.f1.91.add$out_Biomass[i:(i+11),"Euphausiids"])
  k <- k+1
  mir85.f1.annB.eup[k] <- temp_mean.eup
}

# ces85 f1
ces85.f1.annB.eup <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.eup <- mean(ces85.f1.91.add$out_Biomass[i:(i+11),"Euphausiids"])
  k <- k+1
  ces85.f1.annB.eup[k] <- temp_mean.eup
}

# plot(gfd85.f1.annB.eup, type="l", col="blue", lwd=2, ylim=c(0,max(gfd85.f1.annB.eup,mir85.f1.annB.eup,ces85.f1.annB.eup)))
# lines(mir85.f1.annB.eup, col="red", lwd=2)
# lines(ces85.f1.annB.eup, col="purple", lwd=2)
# lines(ces85.f1.annB.eup[1:27], col="gray50", lwd=2)
# abline(h=mean(ces85.f1.annB.eup[1:27]))


# Copepods ================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# gfd45 f1
gfd45.f1.annB.cop <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.cop <- mean(gfd45.f1.91.add$out_Biomass[i:(i+11),"Copepods"])
  k <- k+1
  gfd45.f1.annB.cop[k] <- temp_mean.cop
}

# mir45 f1
mir45.f1.annB.cop <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.cop <- mean(mir45.f1.91.add$out_Biomass[i:(i+11),"Copepods"])
  k <- k+1
  mir45.f1.annB.cop[k] <- temp_mean.cop
}

# ces45 f1
ces45.f1.annB.cop <- matrix(data=NA,nrow=90, ncol=1)
k <- 0
for(i in ces.ann.counter) {
  temp_mean.cop <- mean(ces45.f1.91.add$out_Biomass[i:(i+11),"Copepods"])
  k <- k+1
  ces45.f1.annB.cop[k] <- temp_mean.cop
}

# plot(gfd45.f1.annB.cop, type="l", col="blue", lwd=2, ylim=c(0,max(gfd45.f1.annB.cop,mir45.f1.annB.cop,ces45.f1.annB.cop)))
# lines(mir45.f1.annB.cop, col="red", lwd=2)
# lines(ces45.f1.annB.cop, col="purple", lwd=2)
# lines(ces45.f1.annB.cop[1:27], col="gray50", lwd=2)
# abline(h=mean(ces45.f1.annB.cop[1:27]))

# RCP 8.5 -------------------------------------------------------------------- #
# gfd85 f1
gfd85.f1.annB.cop <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.cop <- mean(gfd85.f1.91.add$out_Biomass[i:(i+11),"Copepods"])
  k <- k+1
  gfd85.f1.annB.cop[k] <- temp_mean.cop
}

# mir85 f1
mir85.f1.annB.cop <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.cop <- mean(mir85.f1.91.add$out_Biomass[i:(i+11),"Copepods"])
  k <- k+1
  mir85.f1.annB.cop[k] <- temp_mean.cop
}

# ces85 f1
ces85.f1.annB.cop <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.cop <- mean(ces85.f1.91.add$out_Biomass[i:(i+11),"Copepods"])
  k <- k+1
  ces85.f1.annB.cop[k] <- temp_mean.cop
}

# plot(gfd85.f1.annB.cop, type="l", col="blue", lwd=2, ylim=c(0,max(gfd85.f1.annB.cop,mir85.f1.annB.cop,ces85.f1.annB.cop)))
# lines(mir85.f1.annB.cop, col="red", lwd=2)
# lines(ces85.f1.annB.cop, col="purple", lwd=2)
# lines(ces85.f1.annB.cop[1:27], col="gray50", lwd=2)
# abline(h=mean(ces85.f1.annB.cop[1:27]))


# Pelagic.microbes ================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# gfd45 f1
gfd45.f1.annB.pmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pmcr <- mean(gfd45.f1.91.add$out_Biomass[i:(i+11),"Pelagic.microbes"])
  k <- k+1
  gfd45.f1.annB.pmcr[k] <- temp_mean.pmcr
}

# mir45 f1
mir45.f1.annB.pmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pmcr <- mean(mir45.f1.91.add$out_Biomass[i:(i+11),"Pelagic.microbes"])
  k <- k+1
  mir45.f1.annB.pmcr[k] <- temp_mean.pmcr
}

# ces45 f1
ces45.f1.annB.pmcr <- matrix(data=NA,nrow=90, ncol=1)
k <- 0
for(i in ces.ann.counter) {
  temp_mean.pmcr <- mean(ces45.f1.91.add$out_Biomass[i:(i+11),"Pelagic.microbes"])
  k <- k+1
  ces45.f1.annB.pmcr[k] <- temp_mean.pmcr
}

# plot(gfd45.f1.annB.pmcr, type="l", col="blue", lwd=2, ylim=c(0,max(gfd45.f1.annB.pmcr,mir45.f1.annB.pmcr,ces45.f1.annB.pmcr)))
# lines(mir45.f1.annB.pmcr, col="red", lwd=2)
# lines(ces45.f1.annB.pmcr, col="purple", lwd=2)
# lines(ces45.f1.annB.pmcr[1:27], col="gray50", lwd=2)
# abline(h=mean(ces45.f1.annB.pmcr[1:27]))

# RCP 8.5 -------------------------------------------------------------------- #
# gfd85 f1
gfd85.f1.annB.pmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pmcr <- mean(gfd85.f1.91.add$out_Biomass[i:(i+11),"Pelagic.microbes"])
  k <- k+1
  gfd85.f1.annB.pmcr[k] <- temp_mean.pmcr
}

# mir85 f1
mir85.f1.annB.pmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pmcr <- mean(mir85.f1.91.add$out_Biomass[i:(i+11),"Pelagic.microbes"])
  k <- k+1
  mir85.f1.annB.pmcr[k] <- temp_mean.pmcr
}

# ces85 f1
ces85.f1.annB.pmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pmcr <- mean(ces85.f1.91.add$out_Biomass[i:(i+11),"Pelagic.microbes"])
  k <- k+1
  ces85.f1.annB.pmcr[k] <- temp_mean.pmcr
}

# plot(gfd85.f1.annB.pmcr, type="l", col="blue", lwd=2, ylim=c(0,max(gfd85.f1.annB.pmcr,mir85.f1.annB.pmcr,ces85.f1.annB.pmcr)))
# lines(mir85.f1.annB.pmcr, col="red", lwd=2)
# lines(ces85.f1.annB.pmcr, col="purple", lwd=2)
# lines(ces85.f1.annB.pmcr[1:27], col="gray50", lwd=2)
# abline(h=mean(ces85.f1.annB.pmcr[1:27]))


# Benthic.microbes ================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# gfd45 f1
gfd45.f1.annB.bmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bmcr <- mean(gfd45.f1.91.add$out_Biomass[i:(i+11),"Benthic.microbes"])
  k <- k+1
  gfd45.f1.annB.bmcr[k] <- temp_mean.bmcr
}

# mir45 f1
mir45.f1.annB.bmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bmcr <- mean(mir45.f1.91.add$out_Biomass[i:(i+11),"Benthic.microbes"])
  k <- k+1
  mir45.f1.annB.bmcr[k] <- temp_mean.bmcr
}

# ces45 f1
ces45.f1.annB.bmcr <- matrix(data=NA,nrow=90, ncol=1)
k <- 0
for(i in ces.ann.counter) {
  temp_mean.bmcr <- mean(ces45.f1.91.add$out_Biomass[i:(i+11),"Benthic.microbes"])
  k <- k+1
  ces45.f1.annB.bmcr[k] <- temp_mean.bmcr
}

# plot(gfd45.f1.annB.bmcr, type="l", col="blue", lwd=2, ylim=c(0,max(gfd45.f1.annB.bmcr,mir45.f1.annB.bmcr,ces45.f1.annB.bmcr)))
# lines(mir45.f1.annB.bmcr, col="red", lwd=2)
# lines(ces45.f1.annB.bmcr, col="purple", lwd=2)
# lines(ces45.f1.annB.bmcr[1:27], col="gray50", lwd=2)
# abline(h=mean(ces45.f1.annB.bmcr[1:27]))

# RCP 8.5 -------------------------------------------------------------------- #
# gfd85 f1
gfd85.f1.annB.bmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bmcr <- mean(gfd85.f1.91.add$out_Biomass[i:(i+11),"Benthic.microbes"])
  k <- k+1
  gfd85.f1.annB.bmcr[k] <- temp_mean.bmcr
}

# mir85 f1
mir85.f1.annB.bmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bmcr <- mean(mir85.f1.91.add$out_Biomass[i:(i+11),"Benthic.microbes"])
  k <- k+1
  mir85.f1.annB.bmcr[k] <- temp_mean.bmcr
}

# ces85 f1
ces85.f1.annB.bmcr <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bmcr <- mean(ces85.f1.91.add$out_Biomass[i:(i+11),"Benthic.microbes"])
  k <- k+1
  ces85.f1.annB.bmcr[k] <- temp_mean.bmcr
}

# plot(gfd85.f1.annB.bmcr, type="l", col="blue", lwd=2, ylim=c(0,max(gfd85.f1.annB.bmcr,mir85.f1.annB.bmcr,ces85.f1.annB.bmcr)))
# lines(mir85.f1.annB.bmcr, col="red", lwd=2)
# lines(ces85.f1.annB.bmcr, col="purple", lwd=2)
# lines(ces85.f1.annB.bmcr[1:27], col="gray50", lwd=2)
# abline(h=mean(ces85.f1.annB.bmcr[1:27]))


# Lg.phytoplankton ================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# gfd45 f1
gfd45.f1.annB.lpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.lpht <- mean(gfd45.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"])
  k <- k+1
  gfd45.f1.annB.lpht[k] <- temp_mean.lpht
}

# mir45 f1
mir45.f1.annB.lpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.lpht <- mean(mir45.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"])
  k <- k+1
  mir45.f1.annB.lpht[k] <- temp_mean.lpht
}

# ces45 f1
ces45.f1.annB.lpht <- matrix(data=NA,nrow=90, ncol=1)
k <- 0
for(i in ces.ann.counter) {
  temp_mean.lpht <- mean(ces45.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"])
  k <- k+1
  ces45.f1.annB.lpht[k] <- temp_mean.lpht
}

# plot(1991:2099,gfd45.f1.annB.lpht, type="l", col="blue", lwd=2, ylim=c(0,max(gfd45.f1.annB.lpht,mir45.f1.annB.lpht,ces45.f1.annB.lpht)),
#      xlab="Year", ylab=expression('Biomass (t km'^"-2"*')'), main="Lg.phytoplankton RCP 4.5")
# lines(1991:2099,mir45.f1.annB.lpht, col="red", lwd=2)
# lines(1991:2080,ces45.f1.annB.lpht, col="purple", lwd=2)
# lines(1991:2017,ces45.f1.annB.lpht[1:27], col="gray50", lwd=2)
# abline(h=mean(ces45.f1.annB.lpht[1:27]))

# RCP 8.5 -------------------------------------------------------------------- #
# gfd85 f1
gfd85.f1.annB.lpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.lpht <- mean(gfd85.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"])
  k <- k+1
  gfd85.f1.annB.lpht[k] <- temp_mean.lpht
}

# mir85 f1
mir85.f1.annB.lpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.lpht <- mean(mir85.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"])
  k <- k+1
  mir85.f1.annB.lpht[k] <- temp_mean.lpht
}

# ces85 f1
ces85.f1.annB.lpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.lpht <- mean(ces85.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"])
  k <- k+1
  ces85.f1.annB.lpht[k] <- temp_mean.lpht
}

# par(mai=c(0.9,1,0.5,0.2))
# plot(1991:2099,gfd85.f1.annB.lpht, type="l", col="blue", lwd=2, ylim=c(0,max(gfd85.f1.annB.lpht,mir85.f1.annB.lpht,ces85.f1.annB.lpht)),
#      xlab="Year", ylab=expression('Biomass (t km'^"-2"*')'), main="Lg.phytoplankton RCP 8.5")
# lines(1991:2099,mir85.f1.annB.lpht, col="red", lwd=2)
# lines(1991:2099,ces85.f1.annB.lpht, col="purple", lwd=2)
# lines(1991:2017,ces85.f1.annB.lpht[1:27], col="gray50", lwd=2)
# abline(h=mean(ces85.f1.annB.lpht[1:27]))


# Sm.phytoplankton ================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# gfd45 f1
gfd45.f1.annB.spht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.spht <- mean(gfd45.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  gfd45.f1.annB.spht[k] <- temp_mean.spht
}

# mir45 f1
mir45.f1.annB.spht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.spht <- mean(mir45.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  mir45.f1.annB.spht[k] <- temp_mean.spht
}

# ces45 f1
ces45.f1.annB.spht <- matrix(data=NA,nrow=90, ncol=1)
k <- 0
for(i in ces.ann.counter) {
  temp_mean.spht <- mean(ces45.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  ces45.f1.annB.spht[k] <- temp_mean.spht
}

# plot(1991:2099,gfd45.f1.annB.spht, type="l", col="blue", lwd=2, ylim=c(0,max(gfd45.f1.annB.spht,mir45.f1.annB.spht,ces45.f1.annB.spht)),
#      xlab="Year", ylab=expression('Biomass (t km'^"-2"*')'), main="Sm.phytoplankton RCP 4.5")
# lines(1991:2099,mir45.f1.annB.spht, col="red", lwd=2)
# lines(1991:2080,ces45.f1.annB.spht, col="purple", lwd=2)
# lines(1991:2017,ces45.f1.annB.spht[1:27], col="gray50", lwd=2)
# abline(h=mean(ces45.f1.annB.spht[1:27]))

# RCP 8.5 -------------------------------------------------------------------- #
# gfd85 f1
gfd85.f1.annB.spht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.spht <- mean(gfd85.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  gfd85.f1.annB.spht[k] <- temp_mean.spht
}

# mir85 f1
mir85.f1.annB.spht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.spht <- mean(mir85.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  mir85.f1.annB.spht[k] <- temp_mean.spht
}

# ces85 f1
ces85.f1.annB.spht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.spht <- mean(ces85.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  ces85.f1.annB.spht[k] <- temp_mean.spht
}

# plot(1991:2099,gfd85.f1.annB.spht, type="l", col="blue", lwd=2, ylim=c(0,max(gfd85.f1.annB.spht,mir85.f1.annB.spht,ces85.f1.annB.spht)),
#      xlab="Year", ylab=expression('Biomass (t km'^"-2"*')'), main="Sm.phytoplankton RCP 8.5")
# lines(1991:2099,mir85.f1.annB.spht, col="red", lwd=2)
# lines(1991:2099,ces85.f1.annB.spht, col="purple", lwd=2)
# lines(1991:2017,ces85.f1.annB.spht[1:27], col="gray50", lwd=2)
# abline(h=mean(ces85.f1.annB.spht[1:27]))


# Small and Large phytoplankton *COMBINED* ==================================== #
# RCP 4.5 -------------------------------------------------------------------- #
# gfd45 f1
gfd45.f1.annB.Tpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.Tpht <- mean(gfd45.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"] + gfd45.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  gfd45.f1.annB.Tpht[k] <- temp_mean.Tpht
}

# mir45 f1
mir45.f1.annB.Tpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.Tpht <- mean(mir45.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"] + mir45.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  mir45.f1.annB.Tpht[k] <- temp_mean.Tpht
}

# ces45 f1
ces45.f1.annB.Tpht <- matrix(data=NA,nrow=90, ncol=1)
k <- 0
for(i in ces.ann.counter) {
  temp_mean.Tpht <- mean(ces45.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"] + ces45.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  ces45.f1.annB.Tpht[k] <- temp_mean.Tpht
}

# plot(1991:2099,gfd45.f1.annB.Tpht, type="l", col="blue", lwd=2, ylim=c(0,max(gfd45.f1.annB.Tpht,mir45.f1.annB.Tpht,ces45.f1.annB.Tpht)),
#      xlab="Year", ylab=expression('Biomass (t km'^"-2"*')'), main="Total phytoplankton RCP 4.5")
# lines(1991:2099,mir45.f1.annB.Tpht, col="red", lwd=2)
# lines(1991:2080,ces45.f1.annB.Tpht, col="purple", lwd=2)
# lines(1991:2017,ces45.f1.annB.Tpht[1:27], col="gray50", lwd=2)
# abline(h=mean(ces45.f1.annB.Tpht[1:27]))

# RCP 8.5 -------------------------------------------------------------------- #
# gfd85 f1
gfd85.f1.annB.Tpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.Tpht <- mean(gfd85.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"] + gfd85.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  gfd85.f1.annB.Tpht[k] <- temp_mean.Tpht
}

# mir85 f1
mir85.f1.annB.Tpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.Tpht <- mean(mir85.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"] + mir85.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  mir85.f1.annB.Tpht[k] <- temp_mean.Tpht
}

# ces85 f1
ces85.f1.annB.Tpht <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.Tpht <- mean(ces85.f1.91.add$out_Biomass[i:(i+11),"Lg.phytoplankton"] + ces85.f1.91.add$out_Biomass[i:(i+11),"Sm.phytoplankton"])
  k <- k+1
  ces85.f1.annB.Tpht[k] <- temp_mean.Tpht
}

# par(mai=c(0.9,1,0.5,0.2))
# plot(1991:2099,gfd85.f1.annB.Tpht, type="l", col="blue", lwd=2, ylim=c(0,max(gfd85.f1.annB.Tpht,mir85.f1.annB.Tpht,ces85.f1.annB.Tpht)),
#      xlab="Year", ylab=expression('Biomass (t km'^"-2"*')'), main="Phytoplankton RCP 8.5")
# lines(1991:2099,mir85.f1.annB.Tpht, col="red", lwd=2)
# lines(1991:2099,ces85.f1.annB.Tpht, col="purple", lwd=2)
# lines(1991:2017,ces85.f1.annB.Tpht[1:27], col="gray50", lwd=2)
# abline(h=mean(ces85.f1.annB.Tpht[1:27]))




# Pelagic.Detritus ================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# gfd45 f1
gfd45.f1.annB.pdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pdet <- mean(gfd45.f1.91.add$out_Biomass[i:(i+11),"Pelagic.Detritus"])
  k <- k+1
  gfd45.f1.annB.pdet[k] <- temp_mean.pdet
}

# mir45 f1
mir45.f1.annB.pdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pdet <- mean(mir45.f1.91.add$out_Biomass[i:(i+11),"Pelagic.Detritus"])
  k <- k+1
  mir45.f1.annB.pdet[k] <- temp_mean.pdet
}

# ces45 f1
ces45.f1.annB.pdet <- matrix(data=NA,nrow=90, ncol=1)
k <- 0
for(i in ces.ann.counter) {
  temp_mean.pdet <- mean(ces45.f1.91.add$out_Biomass[i:(i+11),"Pelagic.Detritus"])
  k <- k+1
  ces45.f1.annB.pdet[k] <- temp_mean.pdet
}

# plot(gfd45.f1.annB.pdet, type="l", col="blue", lwd=2, ylim=c(0,max(gfd45.f1.annB.pdet,mir45.f1.annB.pdet,ces45.f1.annB.pdet)))
# lines(mir45.f1.annB.pdet, col="red", lwd=2)
# lines(ces45.f1.annB.pdet, col="purple", lwd=2)
# lines(ces45.f1.annB.pdet[1:27], col="gray50", lwd=2)
# abline(h=mean(ces45.f1.annB.pdet[1:27]))

# RCP 8.5 -------------------------------------------------------------------- #
# gfd85 f1
gfd85.f1.annB.pdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pdet <- mean(gfd85.f1.91.add$out_Biomass[i:(i+11),"Pelagic.Detritus"])
  k <- k+1
  gfd85.f1.annB.pdet[k] <- temp_mean.pdet
}

# mir85 f1
mir85.f1.annB.pdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pdet <- mean(mir85.f1.91.add$out_Biomass[i:(i+11),"Pelagic.Detritus"])
  k <- k+1
  mir85.f1.annB.pdet[k] <- temp_mean.pdet
}

# ces85 f1
ces85.f1.annB.pdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.pdet <- mean(ces85.f1.91.add$out_Biomass[i:(i+11),"Pelagic.Detritus"])
  k <- k+1
  ces85.f1.annB.pdet[k] <- temp_mean.pdet
}

# plot(gfd85.f1.annB.pdet, type="l", col="blue", lwd=2, ylim=c(0,max(gfd85.f1.annB.pdet,mir85.f1.annB.pdet,ces85.f1.annB.pdet)))
# lines(mir85.f1.annB.pdet, col="red", lwd=2)
# lines(ces85.f1.annB.pdet, col="purple", lwd=2)
# lines(ces85.f1.annB.pdet[1:27], col="gray50", lwd=2)
# abline(h=mean(ces85.f1.annB.pdet[1:27]))


# Benthic.Detritus ================================================================ #
# RCP 4.5 -------------------------------------------------------------------- #
# gfd45 f1
gfd45.f1.annB.bdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bdet <- mean(gfd45.f1.91.add$out_Biomass[i:(i+11),"Benthic.Detritus"])
  k <- k+1
  gfd45.f1.annB.bdet[k] <- temp_mean.bdet
}

# mir45 f1
mir45.f1.annB.bdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bdet <- mean(mir45.f1.91.add$out_Biomass[i:(i+11),"Benthic.Detritus"])
  k <- k+1
  mir45.f1.annB.bdet[k] <- temp_mean.bdet
}

# ces45 f1
ces45.f1.annB.bdet <- matrix(data=NA,nrow=90, ncol=1)
k <- 0
for(i in ces.ann.counter) {
  temp_mean.bdet <- mean(ces45.f1.91.add$out_Biomass[i:(i+11),"Benthic.Detritus"])
  k <- k+1
  ces45.f1.annB.bdet[k] <- temp_mean.bdet
}

# plot(gfd45.f1.annB.bdet, type="l", col="blue", lwd=2, ylim=c(0,max(gfd45.f1.annB.bdet,mir45.f1.annB.bdet,ces45.f1.annB.bdet)))
# lines(mir45.f1.annB.bdet, col="red", lwd=2)
# lines(ces45.f1.annB.bdet, col="purple", lwd=2)
# lines(ces45.f1.annB.bdet[1:27], col="gray50", lwd=2)
# abline(h=mean(ces45.f1.annB.bdet[1:27]))

# RCP 8.5 -------------------------------------------------------------------- #
# gfd85 f1
gfd85.f1.annB.bdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bdet <- mean(gfd85.f1.91.add$out_Biomass[i:(i+11),"Benthic.Detritus"])
  k <- k+1
  gfd85.f1.annB.bdet[k] <- temp_mean.bdet
}

# mir85 f1
mir85.f1.annB.bdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bdet <- mean(mir85.f1.91.add$out_Biomass[i:(i+11),"Benthic.Detritus"])
  k <- k+1
  mir85.f1.annB.bdet[k] <- temp_mean.bdet
}

# ces85 f1
ces85.f1.annB.bdet <- matrix(data=NA,nrow=109, ncol=1)
k <- 0
for(i in rcp.ann.counter) {
  temp_mean.bdet <- mean(ces85.f1.91.add$out_Biomass[i:(i+11),"Benthic.Detritus"])
  k <- k+1
  ces85.f1.annB.bdet[k] <- temp_mean.bdet
}

# plot(gfd85.f1.annB.bdet, type="l", col="blue", lwd=2, ylim=c(0,max(gfd85.f1.annB.bdet,mir85.f1.annB.bdet,ces85.f1.annB.bdet)))
# lines(mir85.f1.annB.bdet, col="red", lwd=2)
# lines(ces85.f1.annB.bdet, col="purple", lwd=2)
# lines(ces85.f1.annB.bdet[1:27], col="gray50", lwd=2)
# abline(h=mean(ces85.f1.annB.bdet[1:27]))

# create matrices by ESM-RCP-F scenario
# 1991:2080
# RCP 45
gfd45.f1.forceB <- cbind(gfd45.f1.annB.eup,gfd45.f1.annB.cop,
                            gfd45.f1.annB.pmcr,gfd45.f1.annB.bmcr,
                            gfd45.f1.annB.lpht,gfd45.f1.annB.spht,
                         gfd45.f1.annB.Tpht, gfd45.f1.annB.pdet,gfd45.f1.annB.bdet)
colnames(gfd45.f1.forceB) <- c("Euphausiids","Copepods","Pelagic.microbes",
                                  "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                                  "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")
mir45.f1.forceB <- cbind(mir45.f1.annB.eup,mir45.f1.annB.cop,
                            mir45.f1.annB.pmcr,mir45.f1.annB.bmcr,
                            mir45.f1.annB.lpht,mir45.f1.annB.spht,
                         mir45.f1.annB.Tpht, mir45.f1.annB.pdet,mir45.f1.annB.bdet)
colnames(mir45.f1.forceB) <- c("Euphausiids","Copepods","Pelagic.microbes",
                                  "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                               "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")
ces45.f1.forceB <- cbind(ces45.f1.annB.eup[1:90],ces45.f1.annB.cop[1:90],
                            ces45.f1.annB.pmcr[1:90],ces45.f1.annB.bmcr[1:90],
                            ces45.f1.annB.lpht[1:90],ces45.f1.annB.spht[1:90],
                         ces45.f1.annB.Tpht[1:90],ces45.f1.annB.pdet[1:90],ces45.f1.annB.bdet[1:90])
colnames(ces45.f1.forceB) <- c("Euphausiids","Copepods","Pelagic.microbes",
                                  "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                                  "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")
# 2081:2099
gfd45.f1.forceB_99 <- cbind(gfd45.f1.annB.eup[91:109],gfd45.f1.annB.cop[91:109],
                         gfd45.f1.annB.pmcr[91:109],gfd45.f1.annB.bmcr[91:109],
                         gfd45.f1.annB.lpht[91:109],gfd45.f1.annB.spht[91:109],
                         gfd45.f1.annB.Tpht[91:109],gfd45.f1.annB.pdet[91:109],gfd45.f1.annB.bdet[91:109])

colnames(gfd45.f1.forceB_99) <- c("Euphausiids","Copepods","Pelagic.microbes",
                               "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                               "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")
mir45.f1.forceB_99 <- cbind(mir45.f1.annB.eup[91:109],mir45.f1.annB.cop[91:109],
                         mir45.f1.annB.pmcr[91:109],mir45.f1.annB.bmcr[91:109],
                         mir45.f1.annB.lpht[91:109],mir45.f1.annB.spht[91:109],
                         mir45.f1.annB.Tpht[91:109],mir45.f1.annB.pdet[91:109],mir45.f1.annB.bdet[91:109])
colnames(mir45.f1.forceB_99) <- c("Euphausiids","Copepods","Pelagic.microbes",
                               "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                               "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")

# RCP 85
gfd85.f1.forceB <- cbind(gfd85.f1.annB.eup,gfd85.f1.annB.cop,
                         gfd85.f1.annB.pmcr,gfd85.f1.annB.bmcr,
                         gfd85.f1.annB.lpht,gfd85.f1.annB.spht,
                         gfd85.f1.annB.Tpht,gfd85.f1.annB.pdet,gfd85.f1.annB.bdet)
colnames(gfd85.f1.forceB) <- c("Euphausiids","Copepods","Pelagic.microbes",
                               "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                               "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")
mir85.f1.forceB <- cbind(mir85.f1.annB.eup,mir85.f1.annB.cop,
                         mir85.f1.annB.pmcr,mir85.f1.annB.bmcr,
                         mir85.f1.annB.lpht,mir85.f1.annB.spht,
                         mir85.f1.annB.Tpht,mir85.f1.annB.pdet,mir85.f1.annB.bdet)
colnames(mir85.f1.forceB) <- c("Euphausiids","Copepods","Pelagic.microbes",
                               "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                               "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")
ces85.f1.forceB <- cbind(ces85.f1.annB.eup,ces85.f1.annB.cop,
                         ces85.f1.annB.pmcr,ces85.f1.annB.bmcr,
                         ces85.f1.annB.lpht,ces85.f1.annB.spht,
                         ces85.f1.annB.Tpht,ces85.f1.annB.pdet,ces85.f1.annB.bdet)
colnames(ces85.f1.forceB) <- c("Euphausiids","Copepods","Pelagic.microbes",
                               "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                               "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")

# ============================================================================ #
# Calculate a mean vector within an RCP to be used for plotting.

# RCP 4.5 -------------------------------------------------------------------- #
# Mean biomass up to 2080 (when cesm rcp 4.5 ends)
mean45.f1.force_80_BB <- matrix(nrow=90, ncol=9)
for (j in 1:9) {
  temp_mean45.f1_80_BB <- cbind(gfd45.f1.forceB[1:90,j],mir45.f1.forceB[1:90,j],ces45.f1.forceB[,j])
  for (i in 1:90) {
    # mean45.f1_80[i,j] <- mean(gfd45.f1.91.add$annual_BB[i,j],mir45.f1.91.add$annual_BB[i,j],ces45.f1.91.add$annual_BB[i,j])
    mean45.f1.force_80_BB[i,j] <- mean(temp_mean45.f1_80_BB[i,])
  }
}
rownames(mean45.f1.force_80_BB) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1.force_99_BB <- matrix(nrow=19, ncol=9)
for (j in 1:9) {
  temp_mean45.f1_81_99_BB <- cbind(gfd45.f1.forceB[91:109,j],mir45.f1.forceB[91:109,j])
  for (i in 91:109) {
    # mean45.f1_81_99_2[i-90,j] <- mean(gfd45.f1.91.add$annual_BB[i-90,j],mir45.f1.91.add$annual_BB[i-90,j])
    mean45.f1.force_99_BB[i-90,j] <- mean(temp_mean45.f1_81_99_BB[i-90,])
  }
}
rownames(mean45.f1.force_99_BB) <- 2081:2099
# rbind them together
mean45.f1.force_BB <- rbind(mean45.f1.force_80_BB, mean45.f1.force_99_BB)
colnames(mean45.f1.force_BB) <- c("Euphausiids","Copepods","Pelagic.microbes",
                                  "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                                  "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")


# RCP 8.5 -------------------------------------------------------------------- #
# Mean biomass up to 2099
mean85.f1.force_BB <- matrix(nrow=109, ncol=9)
for (j in 1:9) {
  temp_mean85.f1_force_BB <- cbind(gfd85.f1.forceB[,j],mir85.f1.forceB[,j],ces85.f1.forceB[,j])
  for (i in 1:109) {
    # mean85.f1_80[i,j] <- mean(gfd85.f1.91.add$annual_BB[i,j],mir85.f1.91.add$annual_BB[i,j],ces85.f1.91.add$annual_BB[i,j])
    mean85.f1.force_BB[i,j] <- mean(temp_mean85.f1_force_BB[i,])
  }
}
rownames(mean85.f1.force_BB) <- 1991:2099
colnames(mean85.f1.force_BB) <- c("Euphausiids","Copepods","Pelagic.microbes",
                                  "Benthic.microbes","Lg.phytoplankton","Sm.phytoplankton",
                                  "Tot.phytoplankton","Pelagic.Detritus","Benthic.Detritus")

################################################################################
# ============================================================================ #
# ============================================================================ #
# ============================================================================ #
################################################################################

# for now only biomass, only Status quo, and no A1B.

rcp.yrs <- 1991:2099
# a1b.yrs <- 1991:2039
ces.yrs <- 1991:2080


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Euphausiids biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
eupB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(eupB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(eupB.45.f1.80) <- 1991:2080
eupB.45.f1.80[,1] <- gfd45.f1.annB.eup[1:90]
eupB.45.f1.80[,2] <- mir45.f1.annB.eup[1:90]
eupB.45.f1.80[,3] <- ces45.f1.annB.eup
# head(eupB.45.f1.80)
eupB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) eupB.45.f1.80.up[i] <- max(eupB.45.f1.80[i,])
eupB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) eupB.45.f1.80.lo[i] <- min(eupB.45.f1.80[i,])
# Everything from 2081-2099
eupB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(eupB.45.f1.99) <- c("gfd45","mir45")
row.names(eupB.45.f1.99) <- 2081:2099
eupB.45.f1.99[,1] <- gfd45.f1.annB.eup[91:109]
eupB.45.f1.99[,2] <- mir45.f1.annB.eup[91:109]
# head(eupB.45.f1.99)
eupB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) eupB.45.f1.99.up[i] <- max(eupB.45.f1.99[i,])
eupB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) eupB.45.f1.99.lo[i] <- min(eupB.45.f1.99[i,])
# now append these two time periods
eupB.45.f1.up <- c(eupB.45.f1.80.up,eupB.45.f1.99.up)
eupB.45.f1.lo <- c(eupB.45.f1.80.lo,eupB.45.f1.99.lo)

# RCP 8.5
eupB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(eupB.85.f1) <- c("gfd45","mir45","ces45")
row.names(eupB.85.f1) <- 1991:2099
eupB.85.f1[,1] <- gfd85.f1.annB.eup
eupB.85.f1[,2] <- mir85.f1.annB.eup
eupB.85.f1[,3] <- ces85.f1.annB.eup
# head(eupB.85.f1)
eupB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) eupB.85.f1.up[i] <- max(eupB.85.f1[i,])
eupB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) eupB.85.f1.lo[i] <- min(eupB.85.f1[i,])

# # SRES A1B
# eupB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(eupB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(eupB.a1b.f1) <- 1991:2039
# eupB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_BB[,"Euphausiids"]
# eupB.a1b.f1[,2] <- echA1B.f1.91.add$annual_BB[,"Euphausiids"]
# eupB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_BB[,"Euphausiids"]
# # head(eupB.a1b.f1)
# eupB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eupB.a1b.f1.up[i] <- max(eupB.a1b.f1[i,])
# eupB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) eupB.a1b.f1.lo[i] <- min(eupB.a1b.f1[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Copepods biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
copB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(copB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(copB.45.f1.80) <- 1991:2080
copB.45.f1.80[,1] <- gfd45.f1.annB.cop[1:90]
copB.45.f1.80[,2] <- mir45.f1.annB.cop[1:90]
copB.45.f1.80[,3] <- ces45.f1.annB.cop
# head(copB.45.f1.80)
copB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) copB.45.f1.80.up[i] <- max(copB.45.f1.80[i,])
copB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) copB.45.f1.80.lo[i] <- min(copB.45.f1.80[i,])
# Everything from 2081-2099
copB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(copB.45.f1.99) <- c("gfd45","mir45")
row.names(copB.45.f1.99) <- 2081:2099
copB.45.f1.99[,1] <- gfd45.f1.annB.cop[91:109]
copB.45.f1.99[,2] <- mir45.f1.annB.cop[91:109]
# head(copB.45.f1.99)
copB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) copB.45.f1.99.up[i] <- max(copB.45.f1.99[i,])
copB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) copB.45.f1.99.lo[i] <- min(copB.45.f1.99[i,])
# now append these two time periods
copB.45.f1.up <- c(copB.45.f1.80.up,copB.45.f1.99.up)
copB.45.f1.lo <- c(copB.45.f1.80.lo,copB.45.f1.99.lo)

# RCP 8.5
copB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(copB.85.f1) <- c("gfd45","mir45","ces45")
row.names(copB.85.f1) <- 1991:2099
copB.85.f1[,1] <- gfd85.f1.annB.cop
copB.85.f1[,2] <- mir85.f1.annB.cop
copB.85.f1[,3] <- ces85.f1.annB.cop
# head(copB.85.f1)
copB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) copB.85.f1.up[i] <- max(copB.85.f1[i,])
copB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) copB.85.f1.lo[i] <- min(copB.85.f1[i,])

# # SRES A1B
# copB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(copB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(copB.a1b.f1) <- 1991:2039
# copB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_BB[,"Copepods"]
# copB.a1b.f1[,2] <- echA1B.f1.91.add$annual_BB[,"Copepods"]
# copB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_BB[,"Copepods"]
# # head(copB.a1b.f1)
# copB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) copB.a1b.f1.up[i] <- max(copB.a1b.f1[i,])
# copB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) copB.a1b.f1.lo[i] <- min(copB.a1b.f1[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Pelagic.microbes biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
pmcrB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pmcrB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(pmcrB.45.f1.80) <- 1991:2080
pmcrB.45.f1.80[,1] <- gfd45.f1.annB.pmcr[1:90]
pmcrB.45.f1.80[,2] <- mir45.f1.annB.pmcr[1:90]
pmcrB.45.f1.80[,3] <- ces45.f1.annB.pmcr
# head(pmcrB.45.f1.80)
pmcrB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pmcrB.45.f1.80.up[i] <- max(pmcrB.45.f1.80[i,])
pmcrB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pmcrB.45.f1.80.lo[i] <- min(pmcrB.45.f1.80[i,])
# Everything from 2081-2099
pmcrB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pmcrB.45.f1.99) <- c("gfd45","mir45")
row.names(pmcrB.45.f1.99) <- 2081:2099
pmcrB.45.f1.99[,1] <- gfd45.f1.annB.pmcr[91:109]
pmcrB.45.f1.99[,2] <- mir45.f1.annB.pmcr[91:109]
# head(pmcrB.45.f1.99)
pmcrB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pmcrB.45.f1.99.up[i] <- max(pmcrB.45.f1.99[i,])
pmcrB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pmcrB.45.f1.99.lo[i] <- min(pmcrB.45.f1.99[i,])
# now append these two time periods
pmcrB.45.f1.up <- c(pmcrB.45.f1.80.up,pmcrB.45.f1.99.up)
pmcrB.45.f1.lo <- c(pmcrB.45.f1.80.lo,pmcrB.45.f1.99.lo)

# RCP 8.5
pmcrB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pmcrB.85.f1) <- c("gfd45","mir45","ces45")
row.names(pmcrB.85.f1) <- 1991:2099
pmcrB.85.f1[,1] <- gfd85.f1.annB.pmcr
pmcrB.85.f1[,2] <- mir85.f1.annB.pmcr
pmcrB.85.f1[,3] <- ces85.f1.annB.pmcr
# head(pmcrB.85.f1)
pmcrB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pmcrB.85.f1.up[i] <- max(pmcrB.85.f1[i,])
pmcrB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pmcrB.85.f1.lo[i] <- min(pmcrB.85.f1[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Benthic.microbes biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
bmcrB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bmcrB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(bmcrB.45.f1.80) <- 1991:2080
bmcrB.45.f1.80[,1] <- gfd45.f1.annB.bmcr[1:90]
bmcrB.45.f1.80[,2] <- mir45.f1.annB.bmcr[1:90]
bmcrB.45.f1.80[,3] <- ces45.f1.annB.bmcr
# head(bmcrB.45.f1.80)
bmcrB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bmcrB.45.f1.80.up[i] <- max(bmcrB.45.f1.80[i,])
bmcrB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bmcrB.45.f1.80.lo[i] <- min(bmcrB.45.f1.80[i,])
# Everything from 2081-2099
bmcrB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bmcrB.45.f1.99) <- c("gfd45","mir45")
row.names(bmcrB.45.f1.99) <- 2081:2099
bmcrB.45.f1.99[,1] <- gfd45.f1.annB.bmcr[91:109]
bmcrB.45.f1.99[,2] <- mir45.f1.annB.bmcr[91:109]
# head(bmcrB.45.f1.99)
bmcrB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bmcrB.45.f1.99.up[i] <- max(bmcrB.45.f1.99[i,])
bmcrB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bmcrB.45.f1.99.lo[i] <- min(bmcrB.45.f1.99[i,])
# now append these two time periods
bmcrB.45.f1.up <- c(bmcrB.45.f1.80.up,bmcrB.45.f1.99.up)
bmcrB.45.f1.lo <- c(bmcrB.45.f1.80.lo,bmcrB.45.f1.99.lo)

# RCP 8.5
bmcrB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bmcrB.85.f1) <- c("gfd45","mir45","ces45")
row.names(bmcrB.85.f1) <- 1991:2099
bmcrB.85.f1[,1] <- gfd85.f1.annB.bmcr
bmcrB.85.f1[,2] <- mir85.f1.annB.bmcr
bmcrB.85.f1[,3] <- ces85.f1.annB.bmcr
# head(bmcrB.85.f1)
bmcrB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bmcrB.85.f1.up[i] <- max(bmcrB.85.f1[i,])
bmcrB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bmcrB.85.f1.lo[i] <- min(bmcrB.85.f1[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Lg.phytoplankton biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
lphtB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(lphtB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(lphtB.45.f1.80) <- 1991:2080
lphtB.45.f1.80[,1] <- gfd45.f1.annB.lpht[1:90]
lphtB.45.f1.80[,2] <- mir45.f1.annB.lpht[1:90]
lphtB.45.f1.80[,3] <- ces45.f1.annB.lpht
# head(lphtB.45.f1.80)
lphtB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) lphtB.45.f1.80.up[i] <- max(lphtB.45.f1.80[i,])
lphtB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) lphtB.45.f1.80.lo[i] <- min(lphtB.45.f1.80[i,])
# Everything from 2081-2099
lphtB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(lphtB.45.f1.99) <- c("gfd45","mir45")
row.names(lphtB.45.f1.99) <- 2081:2099
lphtB.45.f1.99[,1] <- gfd45.f1.annB.lpht[91:109]
lphtB.45.f1.99[,2] <- mir45.f1.annB.lpht[91:109]
# head(lphtB.45.f1.99)
lphtB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) lphtB.45.f1.99.up[i] <- max(lphtB.45.f1.99[i,])
lphtB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) lphtB.45.f1.99.lo[i] <- min(lphtB.45.f1.99[i,])
# now append these two time periods
lphtB.45.f1.up <- c(lphtB.45.f1.80.up,lphtB.45.f1.99.up)
lphtB.45.f1.lo <- c(lphtB.45.f1.80.lo,lphtB.45.f1.99.lo)

# RCP 8.5
lphtB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(lphtB.85.f1) <- c("gfd45","mir45","ces45")
row.names(lphtB.85.f1) <- 1991:2099
lphtB.85.f1[,1] <- gfd85.f1.annB.lpht
lphtB.85.f1[,2] <- mir85.f1.annB.lpht
lphtB.85.f1[,3] <- ces85.f1.annB.lpht
# head(lphtB.85.f1)
lphtB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) lphtB.85.f1.up[i] <- max(lphtB.85.f1[i,])
lphtB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) lphtB.85.f1.lo[i] <- min(lphtB.85.f1[i,])

# SRES A1B
# lphtB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(lphtB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(lphtB.a1b.f1) <- 1991:2039
# lphtB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_BB[,"Lg.phytoplankton"]
# lphtB.a1b.f1[,2] <- echA1B.f1.91.add$annual_BB[,"Lg.phytoplankton"]
# lphtB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_BB[,"Lg.phytoplankton"]
# # head(lphtB.a1b.f1)
# lphtB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lphtB.a1b.f1.up[i] <- max(lphtB.a1b.f1[i,])
# lphtB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) lphtB.a1b.f1.lo[i] <- min(lphtB.a1b.f1[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Sm.phytoplankton biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
sphtB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(sphtB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(sphtB.45.f1.80) <- 1991:2080
sphtB.45.f1.80[,1] <- gfd45.f1.annB.spht[1:90]
sphtB.45.f1.80[,2] <- mir45.f1.annB.spht[1:90]
sphtB.45.f1.80[,3] <- ces45.f1.annB.spht
# head(sphtB.45.f1.80)
sphtB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) sphtB.45.f1.80.up[i] <- max(sphtB.45.f1.80[i,])
sphtB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) sphtB.45.f1.80.lo[i] <- min(sphtB.45.f1.80[i,])
# Everything from 2081-2099
sphtB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(sphtB.45.f1.99) <- c("gfd45","mir45")
row.names(sphtB.45.f1.99) <- 2081:2099
sphtB.45.f1.99[,1] <- gfd45.f1.annB.spht[91:109]
sphtB.45.f1.99[,2] <- mir45.f1.annB.spht[91:109]
# head(sphtB.45.f1.99)
sphtB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) sphtB.45.f1.99.up[i] <- max(sphtB.45.f1.99[i,])
sphtB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) sphtB.45.f1.99.lo[i] <- min(sphtB.45.f1.99[i,])
# now append these two time periods
sphtB.45.f1.up <- c(sphtB.45.f1.80.up,sphtB.45.f1.99.up)
sphtB.45.f1.lo <- c(sphtB.45.f1.80.lo,sphtB.45.f1.99.lo)

# RCP 8.5
sphtB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(sphtB.85.f1) <- c("gfd45","mir45","ces45")
row.names(sphtB.85.f1) <- 1991:2099
sphtB.85.f1[,1] <- gfd85.f1.annB.spht
sphtB.85.f1[,2] <- mir85.f1.annB.spht
sphtB.85.f1[,3] <- ces85.f1.annB.spht
# head(sphtB.85.f1)
sphtB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) sphtB.85.f1.up[i] <- max(sphtB.85.f1[i,])
sphtB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) sphtB.85.f1.lo[i] <- min(sphtB.85.f1[i,])

# SRES A1B
# sphtB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sphtB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sphtB.a1b.f1) <- 1991:2039
# sphtB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_BB[,"Sm.phytoplankton"]
# sphtB.a1b.f1[,2] <- echA1B.f1.91.add$annual_BB[,"Sm.phytoplankton"]
# sphtB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_BB[,"Sm.phytoplankton"]
# # head(sphtB.a1b.f1)
# sphtB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sphtB.a1b.f1.up[i] <- max(sphtB.a1b.f1[i,])
# sphtB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sphtB.a1b.f1.lo[i] <- min(sphtB.a1b.f1[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Tot.phytoplankton biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
TphtB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(TphtB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(TphtB.45.f1.80) <- 1991:2080
TphtB.45.f1.80[,1] <- gfd45.f1.annB.Tpht[1:90]
TphtB.45.f1.80[,2] <- mir45.f1.annB.Tpht[1:90]
TphtB.45.f1.80[,3] <- ces45.f1.annB.Tpht
# head(TphtB.45.f1.80)
TphtB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) TphtB.45.f1.80.up[i] <- max(TphtB.45.f1.80[i,])
TphtB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) TphtB.45.f1.80.lo[i] <- min(TphtB.45.f1.80[i,])
# Everything from 2081-2099
TphtB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(TphtB.45.f1.99) <- c("gfd45","mir45")
row.names(TphtB.45.f1.99) <- 2081:2099
TphtB.45.f1.99[,1] <- gfd45.f1.annB.Tpht[91:109]
TphtB.45.f1.99[,2] <- mir45.f1.annB.Tpht[91:109]
# head(TphtB.45.f1.99)
TphtB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) TphtB.45.f1.99.up[i] <- max(TphtB.45.f1.99[i,])
TphtB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) TphtB.45.f1.99.lo[i] <- min(TphtB.45.f1.99[i,])
# now append these two time periods
TphtB.45.f1.up <- c(TphtB.45.f1.80.up,TphtB.45.f1.99.up)
TphtB.45.f1.lo <- c(TphtB.45.f1.80.lo,TphtB.45.f1.99.lo)

# RCP 8.5
TphtB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(TphtB.85.f1) <- c("gfd45","mir45","ces45")
row.names(TphtB.85.f1) <- 1991:2099
TphtB.85.f1[,1] <- gfd85.f1.annB.Tpht
TphtB.85.f1[,2] <- mir85.f1.annB.Tpht
TphtB.85.f1[,3] <- ces85.f1.annB.Tpht
# head(TphtB.85.f1)
TphtB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) TphtB.85.f1.up[i] <- max(TphtB.85.f1[i,])
TphtB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) TphtB.85.f1.lo[i] <- min(TphtB.85.f1[i,])

# SRES A1B
# TphtB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(TphtB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(TphtB.a1b.f1) <- 1991:2039
# TphtB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_BB[,"Sm.phytoplankton"]
# TphtB.a1b.f1[,2] <- echA1B.f1.91.add$annual_BB[,"Sm.phytoplankton"]
# TphtB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_BB[,"Sm.phytoplankton"]
# # head(TphtB.a1b.f1)
# TphtB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) TphtB.a1b.f1.up[i] <- max(TphtB.a1b.f1[i,])
# TphtB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) TphtB.a1b.f1.lo[i] <- min(TphtB.a1b.f1[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Pelagic.Detritus biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
pdetB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(pdetB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(pdetB.45.f1.80) <- 1991:2080
pdetB.45.f1.80[,1] <- gfd45.f1.annB.pdet[1:90]
pdetB.45.f1.80[,2] <- mir45.f1.annB.pdet[1:90]
pdetB.45.f1.80[,3] <- ces45.f1.annB.pdet
# head(pdetB.45.f1.80)
pdetB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) pdetB.45.f1.80.up[i] <- max(pdetB.45.f1.80[i,])
pdetB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) pdetB.45.f1.80.lo[i] <- min(pdetB.45.f1.80[i,])
# Everything from 2081-2099
pdetB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(pdetB.45.f1.99) <- c("gfd45","mir45")
row.names(pdetB.45.f1.99) <- 2081:2099
pdetB.45.f1.99[,1] <- gfd45.f1.annB.pdet[91:109]
pdetB.45.f1.99[,2] <- mir45.f1.annB.pdet[91:109]
# head(pdetB.45.f1.99)
pdetB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) pdetB.45.f1.99.up[i] <- max(pdetB.45.f1.99[i,])
pdetB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) pdetB.45.f1.99.lo[i] <- min(pdetB.45.f1.99[i,])
# now append these two time periods
pdetB.45.f1.up <- c(pdetB.45.f1.80.up,pdetB.45.f1.99.up)
pdetB.45.f1.lo <- c(pdetB.45.f1.80.lo,pdetB.45.f1.99.lo)

# RCP 8.5
pdetB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(pdetB.85.f1) <- c("gfd45","mir45","ces45")
row.names(pdetB.85.f1) <- 1991:2099
pdetB.85.f1[,1] <- gfd85.f1.annB.pdet
pdetB.85.f1[,2] <- mir85.f1.annB.pdet
pdetB.85.f1[,3] <- ces85.f1.annB.pdet
# head(pdetB.85.f1)
pdetB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) pdetB.85.f1.up[i] <- max(pdetB.85.f1[i,])
pdetB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) pdetB.85.f1.lo[i] <- min(pdetB.85.f1[i,])

# SRES A1B
# pdetB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(pdetB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(pdetB.a1b.f1) <- 1991:2039
# pdetB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_BB[,"Pelagic.Detritus"]
# pdetB.a1b.f1[,2] <- echA1B.f1.91.add$annual_BB[,"Pelagic.Detritus"]
# pdetB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_BB[,"Pelagic.Detritus"]
# # head(pdetB.a1b.f1)
# pdetB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pdetB.a1b.f1.up[i] <- max(pdetB.a1b.f1[i,])
# pdetB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) pdetB.a1b.f1.lo[i] <- min(pdetB.a1b.f1[i,])


# ============================================================================ #
# ---------------------------------------------------------------------------- #
# Benthic.Detritus biomass ----- *Status quo*
# RCP 4.5
# Everything up through 2080
bdetB.45.f1.80 <- matrix(data=NA,nrow=90, ncol=3)
colnames(bdetB.45.f1.80) <- c("gfd45","mir45","ces45")
row.names(bdetB.45.f1.80) <- 1991:2080
bdetB.45.f1.80[,1] <- gfd45.f1.annB.bdet[1:90]
bdetB.45.f1.80[,2] <- mir45.f1.annB.bdet[1:90]
bdetB.45.f1.80[,3] <- ces45.f1.annB.bdet
# head(bdetB.45.f1.80)
bdetB.45.f1.80.up <- matrix(nrow=90,ncol=1)
for (i in 1:90) bdetB.45.f1.80.up[i] <- max(bdetB.45.f1.80[i,])
bdetB.45.f1.80.lo <- matrix(nrow=90,ncol=1)
for (i in 1:90) bdetB.45.f1.80.lo[i] <- min(bdetB.45.f1.80[i,])
# Everything from 2081-2099
bdetB.45.f1.99 <- matrix(data=NA,nrow=19, ncol=2)
colnames(bdetB.45.f1.99) <- c("gfd45","mir45")
row.names(bdetB.45.f1.99) <- 2081:2099
bdetB.45.f1.99[,1] <- gfd45.f1.annB.bdet[91:109]
bdetB.45.f1.99[,2] <- mir45.f1.annB.bdet[91:109]
# head(bdetB.45.f1.99)
bdetB.45.f1.99.up <- matrix(nrow=19,ncol=1)
for (i in 1:19) bdetB.45.f1.99.up[i] <- max(bdetB.45.f1.99[i,])
bdetB.45.f1.99.lo <- matrix(nrow=19,ncol=1)
for (i in 1:19) bdetB.45.f1.99.lo[i] <- min(bdetB.45.f1.99[i,])
# now append these two time periods
bdetB.45.f1.up <- c(bdetB.45.f1.80.up,bdetB.45.f1.99.up)
bdetB.45.f1.lo <- c(bdetB.45.f1.80.lo,bdetB.45.f1.99.lo)

# RCP 8.5
bdetB.85.f1 <- matrix(data=NA,nrow=109, ncol=3)
colnames(bdetB.85.f1) <- c("gfd45","mir45","ces45")
row.names(bdetB.85.f1) <- 1991:2099
bdetB.85.f1[,1] <- gfd85.f1.annB.bdet
bdetB.85.f1[,2] <- mir85.f1.annB.bdet
bdetB.85.f1[,3] <- ces85.f1.annB.bdet
# head(bdetB.85.f1)
bdetB.85.f1.up <- matrix(nrow=109,ncol=1)
for (i in 1:109) bdetB.85.f1.up[i] <- max(bdetB.85.f1[i,])
bdetB.85.f1.lo <- matrix(nrow=109,ncol=1)
for (i in 1:109) bdetB.85.f1.lo[i] <- min(bdetB.85.f1[i,])

# SRES A1B
# sphtB.a1b.f1 <- matrix(data=NA,nrow=49, ncol=3)
# colnames(sphtB.a1b.f1) <- c("cccA1B","echA1B","mirA1B")
# row.names(sphtB.a1b.f1) <- 1991:2039
# sphtB.a1b.f1[,1] <- cccA1B.f1.91.add$annual_BB[,"Sm.phytoplankton"]
# sphtB.a1b.f1[,2] <- echA1B.f1.91.add$annual_BB[,"Sm.phytoplankton"]
# sphtB.a1b.f1[,3] <- mirA1B.f1.91.add$annual_BB[,"Sm.phytoplankton"]
# # head(sphtB.a1b.f1)
# sphtB.a1b.f1.up <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sphtB.a1b.f1.up[i] <- max(sphtB.a1b.f1[i,])
# sphtB.a1b.f1.lo <- matrix(nrow=49,ncol=1)
# for (i in 1:49) sphtB.a1b.f1.lo[i] <- min(sphtB.a1b.f1[i,])
