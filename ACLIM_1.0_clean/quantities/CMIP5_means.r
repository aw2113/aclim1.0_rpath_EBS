#' Mean trajectories for ACLIM sims
#' With the workspace ACLIM_EBS_10_03_2019.RData
#' 
#' Mean trajectories for each emission scenario: A1B, rcp 4.5, and rcp 8.5 (not including 8.5_bio)
#' Also, 10-year means at the end of the century for comparison with the 10-year
#' mean at the end of the hindcast (2008-2017).


# RCP 4.5 -------------------------------------------------------------------- #
# Mean biomass up to 2080 (when cesm rcp 4.5 ends)
mean45.f1_80_BB <- matrix(nrow=90, ncol=73)
for (j in 1:73) {
  temp_mean45.f1_80_BB <- cbind(gfd45.f1.91.add$annual_Biomass[1:90,j],mir45.f1.91.add$annual_Biomass[1:90,j],ces45.f1.91.add$annual_Biomass[,j])
  for (i in 1:90) {
    # mean45.f1_80[i,j] <- mean(gfd45.f1.91.add$annual_Biomass[i,j],mir45.f1.91.add$annual_Biomass[i,j],ces45.f1.91.add$annual_Biomass[i,j])
    mean45.f1_80_BB[i,j] <- mean(temp_mean45.f1_80_BB[i,])
  }
}
rownames(mean45.f1_80_BB) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1_81_99_BB <- matrix(nrow=19, ncol=73)
for (j in 1:73) {
  temp_mean45.f1_81_99_BB <- cbind(gfd45.f1.91.add$annual_Biomass[91:109,j],mir45.f1.91.add$annual_Biomass[91:109,j])
  for (i in 91:109) {
    # mean45.f1_81_99_2[i-90,j] <- mean(gfd45.f1.91.add$annual_Biomass[i-90,j],mir45.f1.91.add$annual_Biomass[i-90,j])
    mean45.f1_81_99_BB[i-90,j] <- mean(temp_mean45.f1_81_99_BB[i-90,])
  }
}
rownames(mean45.f1_81_99_BB) <- 2081:2099
# rbind them together
mean45.f1_BB <- rbind(mean45.f1_80_BB, mean45.f1_81_99_BB)
colnames(mean45.f1_BB) <- colnames(gfd45.f1.91.add$annual_Biomass)

# Lets plot it now ------------- #
# Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean45.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,i],mir45.f1.91.add$annual_Biomass[,i],ces45.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Annual Biomass")
#   lines(gfd45.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,i],mir45.f1.91.add$annual_Biomass[,i],ces45.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Annual Biomass")
#   lines(gfd45.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean45.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,i],mir45.f1.91.add$annual_Biomass[,i],ces45.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Annual Biomass")
#   lines(gfd45.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean45.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,i],mir45.f1.91.add$annual_Biomass[,i],ces45.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Annual Biomass")
#   lines(gfd45.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,i],mir45.f1.91.add$annual_Biomass[,i],ces45.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Annual Biomass")
#   lines(gfd45.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean45.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,i],mir45.f1.91.add$annual_Biomass[,i],ces45.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Annual Biomass")
#   lines(gfd45.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean45.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,i],mir45.f1.91.add$annual_Biomass[,i],ces45.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Annual Biomass")
#   lines(gfd45.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2080 (when cesm rcp 4.5 ends)
mean45.f1_80_CC <- matrix(nrow=90, ncol=73)
for (j in 1:73) {
  temp_mean45.f1_80_CC <- cbind(gfd45.f1.91.add$annual_Catch[1:90,j],mir45.f1.91.add$annual_Catch[1:90,j],ces45.f1.91.add$annual_Catch[,j])
  for (i in 1:90) {
    # mean45.f1_80[i,j] <- mean(gfd45.f1.91.add$annual_Biomass[i,j],mir45.f1.91.add$annual_Biomass[i,j],ces45.f1.91.add$annual_Biomass[i,j])
    mean45.f1_80_CC[i,j] <- mean(temp_mean45.f1_80_CC[i,])
  }
}
rownames(mean45.f1_80_CC) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f1_81_99_CC <- matrix(nrow=19, ncol=73)
for (j in 1:73) {
  temp_mean45.f1_81_99_CC <- cbind(gfd45.f1.91.add$annual_Catch[91:109,j],mir45.f1.91.add$annual_Catch[91:109,j])
  for (i in 91:109) {
    # mean45.f1_81_99_2[i-90,j] <- mean(gfd45.f1.91.add$annual_Biomass[i-90,j],mir45.f1.91.add$annual_Biomass[i-90,j])
    mean45.f1_81_99_CC[i-90,j] <- mean(temp_mean45.f1_81_99_CC[i-90,])
  }
}
rownames(mean45.f1_81_99_CC) <- 2081:2099
# rbind them together
mean45.f1_CC <- rbind(mean45.f1_80_CC, mean45.f1_81_99_CC)
colnames(mean45.f1_CC) <- colnames(gfd45.f1.91.add$annual_Catch)

# Lets plot it now ------------- #
# Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean45.f1_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,i],mir45.f1.91.add$annual_Catch[,i],ces45.f1.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Catch")
#   lines(gfd45.f1.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f1_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,i],mir45.f1.91.add$annual_Catch[,i],ces45.f1.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Catch")
#   lines(gfd45.f1.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean45.f1_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,capped_sp[i]],mir45.f1.91.add$annual_Catch[,capped_sp[i]],ces45.f1.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd45-SQ"), ylab="Catch")
#   lines(gfd45.f1.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean45.f1_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,crab_sp[i]],mir45.f1.91.add$annual_Catch[,crab_sp[i]],ces45.f1.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd45-SQ"), ylab="Catch")
#   lines(gfd45.f1.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f1_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,i],mir45.f1.91.add$annual_Catch[,i],ces45.f1.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-SQ"), ylab="Annual Biomass")
#   lines(gfd45.f1.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f1.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f1.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f1_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f1.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f1.91.add$annual_Catch[18:27,i]), col="black")
# }



# ---------------------------------------------------------------------------- #
#' Mean of final ten years
# tenyr <- mean(gfd45.f1.91.add$annual_Biomass[100:109,i])


# ---------------------------------------------------------------------------- #
# ============================================================================ #
# RCP 4.5 F2 ----------------------------------------------------------------- #
# Mean biomass up to 2080 (when cesm rcp 4.5 ends)
mean45.f2_80_BB <- matrix(nrow=90, ncol=73)
for (j in 1:73) {
  temp_mean45.f2_80_BB <- cbind(gfd45.f2.91.add$annual_Biomass[1:90,j],mir45.f2.91.add$annual_Biomass[1:90,j],ces45.f2.91.add$annual_Biomass[,j])
  for (i in 1:90) {
    # mean45.f2_80[i,j] <- mean(gfd45.f2.91.add$annual_Biomass[i,j],mir45.f2.91.add$annual_Biomass[i,j],ces45.f2.91.add$annual_Biomass[i,j])
    mean45.f2_80_BB[i,j] <- mean(temp_mean45.f2_80_BB[i,])
  }
}
rownames(mean45.f2_80_BB) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f2_81_99_BB <- matrix(nrow=19, ncol=73)
for (j in 1:73) {
  temp_mean45.f2_81_99_BB <- cbind(gfd45.f2.91.add$annual_Biomass[91:109,j],mir45.f2.91.add$annual_Biomass[91:109,j])
  for (i in 91:109) {
    # mean45.f2_81_99_2[i-90,j] <- mean(gfd45.f2.91.add$annual_Biomass[i-90,j],mir45.f2.91.add$annual_Biomass[i-90,j])
    mean45.f2_81_99_BB[i-90,j] <- mean(temp_mean45.f2_81_99_BB[i-90,])
  }
}
rownames(mean45.f2_81_99_BB) <- 2081:2099
# rbind them together
mean45.f2_BB <- rbind(mean45.f2_80_BB, mean45.f2_81_99_BB)
colnames(mean45.f2_BB) <- colnames(gfd45.f2.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean45.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,i],mir45.f2.91.add$annual_Biomass[,i],ces45.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Annual Biomass")
#   lines(gfd45.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,i],mir45.f2.91.add$annual_Biomass[,i],ces45.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Annual Biomass")
#   lines(gfd45.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean45.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,i],mir45.f2.91.add$annual_Biomass[,i],ces45.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Annual Biomass")
#   lines(gfd45.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean45.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,i],mir45.f2.91.add$annual_Biomass[,i],ces45.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Annual Biomass")
#   lines(gfd45.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,i],mir45.f2.91.add$annual_Biomass[,i],ces45.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Annual Biomass")
#   lines(gfd45.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean45.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,i],mir45.f2.91.add$annual_Biomass[,i],ces45.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Annual Biomass")
#   lines(gfd45.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean45.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,i],mir45.f2.91.add$annual_Biomass[,i],ces45.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Annual Biomass")
#   lines(gfd45.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2080 (when cesm rcp 4.5 ends)
mean45.f2_80_CC <- matrix(nrow=90, ncol=73)
for (j in 1:73) {
  temp_mean45.f2_80_CC <- cbind(gfd45.f2.91.add$annual_Catch[1:90,j],mir45.f2.91.add$annual_Catch[1:90,j],ces45.f2.91.add$annual_Catch[,j])
  for (i in 1:90) {
    # mean45.f2_80[i,j] <- mean(gfd45.f2.91.add$annual_Biomass[i,j],mir45.f2.91.add$annual_Biomass[i,j],ces45.f2.91.add$annual_Biomass[i,j])
    mean45.f2_80_CC[i,j] <- mean(temp_mean45.f2_80_CC[i,])
  }
}
rownames(mean45.f2_80_CC) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f2_81_99_CC <- matrix(nrow=19, ncol=73)
for (j in 1:73) {
  temp_mean45.f2_81_99_CC <- cbind(gfd45.f2.91.add$annual_Catch[91:109,j],mir45.f2.91.add$annual_Catch[91:109,j])
  for (i in 91:109) {
    # mean45.f2_81_99_2[i-90,j] <- mean(gfd45.f2.91.add$annual_Biomass[i-90,j],mir45.f2.91.add$annual_Biomass[i-90,j])
    mean45.f2_81_99_CC[i-90,j] <- mean(temp_mean45.f2_81_99_CC[i-90,])
  }
}
rownames(mean45.f2_81_99_CC) <- 2081:2099
# rbind them together
mean45.f2_CC <- rbind(mean45.f2_80_CC, mean45.f2_81_99_CC)
colnames(mean45.f2_CC) <- colnames(gfd45.f2.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean45.f2_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,i],mir45.f2.91.add$annual_Catch[,i],ces45.f2.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Catch")
#   lines(gfd45.f2.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f2_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,i],mir45.f2.91.add$annual_Catch[,i],ces45.f2.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Catch")
#   lines(gfd45.f2.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean45.f2_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,capped_sp[i]],mir45.f2.91.add$annual_Catch[,capped_sp[i]],ces45.f2.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd45-gadid"), ylab="Catch")
#   lines(gfd45.f2.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean45.f2_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,crab_sp[i]],mir45.f2.91.add$annual_Catch[,crab_sp[i]],ces45.f2.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd45-gadid"), ylab="Catch")
#   lines(gfd45.f2.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f2_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,i],mir45.f2.91.add$annual_Catch[,i],ces45.f2.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-gadid"), ylab="Annual Biomass")
#   lines(gfd45.f2.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f2.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f2.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f2_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f2.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f2.91.add$annual_Catch[18:27,i]), col="black")
# }



# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# RCP 4.5 F3 ----------------------------------------------------------------- #
# Mean biomass up to 2080 (when cesm rcp 4.5 ends)
mean45.f3_80_BB <- matrix(nrow=90, ncol=73)
for (j in 1:73) {
  temp_mean45.f3_80_BB <- cbind(gfd45.f3.91.add$annual_Biomass[1:90,j],mir45.f3.91.add$annual_Biomass[1:90,j],ces45.f3.91.add$annual_Biomass[,j])
  for (i in 1:90) {
    # mean45.f3_80[i,j] <- mean(gfd45.f3.91.add$annual_Biomass[i,j],mir45.f3.91.add$annual_Biomass[i,j],ces45.f3.91.add$annual_Biomass[i,j])
    mean45.f3_80_BB[i,j] <- mean(temp_mean45.f3_80_BB[i,])
  }
}
rownames(mean45.f3_80_BB) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f3_81_99_BB <- matrix(nrow=19, ncol=73)
for (j in 1:73) {
  temp_mean45.f3_81_99_BB <- cbind(gfd45.f3.91.add$annual_Biomass[91:109,j],mir45.f3.91.add$annual_Biomass[91:109,j])
  for (i in 91:109) {
    # mean45.f3_81_99_2[i-90,j] <- mean(gfd45.f3.91.add$annual_Biomass[i-90,j],mir45.f3.91.add$annual_Biomass[i-90,j])
    mean45.f3_81_99_BB[i-90,j] <- mean(temp_mean45.f3_81_99_BB[i-90,])
  }
}
rownames(mean45.f3_81_99_BB) <- 2081:2099
# rbind them together
mean45.f3_BB <- rbind(mean45.f3_80_BB, mean45.f3_81_99_BB)
colnames(mean45.f3_BB) <- colnames(gfd45.f3.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean45.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,i],mir45.f3.91.add$annual_Biomass[,i],ces45.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Annual Biomass")
#   lines(gfd45.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,i],mir45.f3.91.add$annual_Biomass[,i],ces45.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Annual Biomass")
#   lines(gfd45.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean45.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,i],mir45.f3.91.add$annual_Biomass[,i],ces45.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Annual Biomass")
#   lines(gfd45.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean45.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,i],mir45.f3.91.add$annual_Biomass[,i],ces45.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Annual Biomass")
#   lines(gfd45.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,i],mir45.f3.91.add$annual_Biomass[,i],ces45.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Annual Biomass")
#   lines(gfd45.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean45.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,i],mir45.f3.91.add$annual_Biomass[,i],ces45.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Annual Biomass")
#   lines(gfd45.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean45.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,i],mir45.f3.91.add$annual_Biomass[,i],ces45.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Annual Biomass")
#   lines(gfd45.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2080 (when cesm rcp 4.5 ends)
mean45.f3_80_CC <- matrix(nrow=90, ncol=73)
for (j in 1:73) {
  temp_mean45.f3_80_CC <- cbind(gfd45.f3.91.add$annual_Catch[1:90,j],mir45.f3.91.add$annual_Catch[1:90,j],ces45.f3.91.add$annual_Catch[,j])
  for (i in 1:90) {
    # mean45.f3_80[i,j] <- mean(gfd45.f3.91.add$annual_Biomass[i,j],mir45.f3.91.add$annual_Biomass[i,j],ces45.f3.91.add$annual_Biomass[i,j])
    mean45.f3_80_CC[i,j] <- mean(temp_mean45.f3_80_CC[i,])
  }
}
rownames(mean45.f3_80_CC) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f3_81_99_CC <- matrix(nrow=19, ncol=73)
for (j in 1:73) {
  temp_mean45.f3_81_99_CC <- cbind(gfd45.f3.91.add$annual_Catch[91:109,j],mir45.f3.91.add$annual_Catch[91:109,j])
  for (i in 91:109) {
    # mean45.f3_81_99_2[i-90,j] <- mean(gfd45.f3.91.add$annual_Biomass[i-90,j],mir45.f3.91.add$annual_Biomass[i-90,j])
    mean45.f3_81_99_CC[i-90,j] <- mean(temp_mean45.f3_81_99_CC[i-90,])
  }
}
rownames(mean45.f3_81_99_CC) <- 2081:2099
# rbind them together
mean45.f3_CC <- rbind(mean45.f3_80_CC, mean45.f3_81_99_CC)
colnames(mean45.f3_CC) <- colnames(gfd45.f3.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean45.f3_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,i],mir45.f3.91.add$annual_Catch[,i],ces45.f3.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Catch")
#   lines(gfd45.f3.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f3_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,i],mir45.f3.91.add$annual_Catch[,i],ces45.f3.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Catch")
#   lines(gfd45.f3.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean45.f3_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,capped_sp[i]],mir45.f3.91.add$annual_Catch[,capped_sp[i]],ces45.f3.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd45-flat"), ylab="Catch")
#   lines(gfd45.f3.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean45.f3_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,crab_sp[i]],mir45.f3.91.add$annual_Catch[,crab_sp[i]],ces45.f3.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd45-flat"), ylab="Catch")
#   lines(gfd45.f3.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f3_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,i],mir45.f3.91.add$annual_Catch[,i],ces45.f3.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-flat"), ylab="Annual Biomass")
#   lines(gfd45.f3.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f3.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f3.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f3_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f3.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f3.91.add$annual_Catch[18:27,i]), col="black")
# }



# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# RCP 4.5 F4 ----------------------------------------------------------------- #
# Mean biomass up to 2080 (when cesm rcp 4.5 ends)
mean45.f4_80_BB <- matrix(nrow=90, ncol=73)
for (j in 1:73) {
  temp_mean45.f4_80_BB <- cbind(gfd45.f4.91.add$annual_Biomass[1:90,j],mir45.f4.91.add$annual_Biomass[1:90,j],ces45.f4.91.add$annual_Biomass[,j])
  for (i in 1:90) {
    # mean45.f4_80[i,j] <- mean(gfd45.f4.91.add$annual_Biomass[i,j],mir45.f4.91.add$annual_Biomass[i,j],ces45.f4.91.add$annual_Biomass[i,j])
    mean45.f4_80_BB[i,j] <- mean(temp_mean45.f4_80_BB[i,])
  }
}
rownames(mean45.f4_80_BB) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f4_81_99_BB <- matrix(nrow=19, ncol=73)
for (j in 1:73) {
  temp_mean45.f4_81_99_BB <- cbind(gfd45.f4.91.add$annual_Biomass[91:109,j],mir45.f4.91.add$annual_Biomass[91:109,j])
  for (i in 91:109) {
    # mean45.f4_81_99_2[i-90,j] <- mean(gfd45.f4.91.add$annual_Biomass[i-90,j],mir45.f4.91.add$annual_Biomass[i-90,j])
    mean45.f4_81_99_BB[i-90,j] <- mean(temp_mean45.f4_81_99_BB[i-90,])
  }
}
rownames(mean45.f4_81_99_BB) <- 2081:2099
# rbind them together
mean45.f4_BB <- rbind(mean45.f4_80_BB, mean45.f4_81_99_BB)
colnames(mean45.f4_BB) <- colnames(gfd45.f4.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean45.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,i],mir45.f4.91.add$annual_Biomass[,i],ces45.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Annual Biomass")
#   lines(gfd45.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,i],mir45.f4.91.add$annual_Biomass[,i],ces45.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Annual Biomass")
#   lines(gfd45.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean45.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,i],mir45.f4.91.add$annual_Biomass[,i],ces45.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Annual Biomass")
#   lines(gfd45.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean45.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,i],mir45.f4.91.add$annual_Biomass[,i],ces45.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Annual Biomass")
#   lines(gfd45.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,i],mir45.f4.91.add$annual_Biomass[,i],ces45.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Annual Biomass")
#   lines(gfd45.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean45.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,i],mir45.f4.91.add$annual_Biomass[,i],ces45.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Annual Biomass")
#   lines(gfd45.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean45.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,i],mir45.f4.91.add$annual_Biomass[,i],ces45.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Annual Biomass")
#   lines(gfd45.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2080 (when cesm rcp 4.5 ends)
mean45.f4_80_CC <- matrix(nrow=90, ncol=73)
for (j in 1:73) {
  temp_mean45.f4_80_CC <- cbind(gfd45.f4.91.add$annual_Catch[1:90,j],mir45.f4.91.add$annual_Catch[1:90,j],ces45.f4.91.add$annual_Catch[,j])
  for (i in 1:90) {
    # mean45.f4_80[i,j] <- mean(gfd45.f4.91.add$annual_Biomass[i,j],mir45.f4.91.add$annual_Biomass[i,j],ces45.f4.91.add$annual_Biomass[i,j])
    mean45.f4_80_CC[i,j] <- mean(temp_mean45.f4_80_CC[i,])
  }
}
rownames(mean45.f4_80_CC) <- 1991:2080
# Mean biomass from 2081 to 2099 (no cesm for this part)
mean45.f4_81_99_CC <- matrix(nrow=19, ncol=73)
for (j in 1:73) {
  temp_mean45.f4_81_99_CC <- cbind(gfd45.f4.91.add$annual_Catch[91:109,j],mir45.f4.91.add$annual_Catch[91:109,j])
  for (i in 91:109) {
    # mean45.f4_81_99_2[i-90,j] <- mean(gfd45.f4.91.add$annual_Biomass[i-90,j],mir45.f4.91.add$annual_Biomass[i-90,j])
    mean45.f4_81_99_CC[i-90,j] <- mean(temp_mean45.f4_81_99_CC[i-90,])
  }
}
rownames(mean45.f4_81_99_CC) <- 2081:2099
# rbind them together
mean45.f4_CC <- rbind(mean45.f4_80_CC, mean45.f4_81_99_CC)
colnames(mean45.f4_CC) <- colnames(gfd45.f4.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean45.f4_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,i],mir45.f4.91.add$annual_Catch[,i],ces45.f4.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Catch")
#   lines(gfd45.f4.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f4_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,i],mir45.f4.91.add$annual_Catch[,i],ces45.f4.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Catch")
#   lines(gfd45.f4.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean45.f4_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,capped_sp[i]],mir45.f4.91.add$annual_Catch[,capped_sp[i]],ces45.f4.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd45-no fishing"), ylab="Catch")
#   lines(gfd45.f4.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean45.f4_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,crab_sp[i]],mir45.f4.91.add$annual_Catch[,crab_sp[i]],ces45.f4.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd45-no fishing"), ylab="Catch")
#   lines(gfd45.f4.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f4_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,i],mir45.f4.91.add$annual_Catch[,i],ces45.f4.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-no fishing"), ylab="Annual Biomass")
#   lines(gfd45.f4.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f4.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f4.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f4_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f4.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f4.91.add$annual_Catch[18:27,i]), col="black")
# }

# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# RCP 4.5 f5 ----------------------------------------------------------------- #
# Mean biomass up to 2080 (when cesm rcp 4.5 ends)
# mean45.f5_80_BB <- matrix(nrow=90, ncol=73)
# for (j in 1:73) {
#   temp_mean45.f5_80_BB <- cbind(gfd45.f5.91.add$annual_Biomass[1:90,j],mir45.f5.91.add$annual_Biomass[1:90,j],ces45.f5.91.add$annual_Biomass[,j])
#   for (i in 1:90) {
#     # mean45.f5_80[i,j] <- mean(gfd45.f5.91.add$annual_Biomass[i,j],mir45.f5.91.add$annual_Biomass[i,j],ces45.f5.91.add$annual_Biomass[i,j])
#     mean45.f5_80_BB[i,j] <- mean(temp_mean45.f5_80_BB[i,])
#   }
# }
# rownames(mean45.f5_80_BB) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f5_81_99_BB <- matrix(nrow=19, ncol=73)
# for (j in 1:73) {
#   temp_mean45.f5_81_99_BB <- cbind(gfd45.f5.91.add$annual_Biomass[91:109,j],mir45.f5.91.add$annual_Biomass[91:109,j])
#   for (i in 91:109) {
#     # mean45.f5_81_99_2[i-90,j] <- mean(gfd45.f5.91.add$annual_Biomass[i-90,j],mir45.f5.91.add$annual_Biomass[i-90,j])
#     mean45.f5_81_99_BB[i-90,j] <- mean(temp_mean45.f5_81_99_BB[i-90,])
#   }
# }
# rownames(mean45.f5_81_99_BB) <- 2081:2099
# # rbind them together
# mean45.f5_BB <- rbind(mean45.f5_80_BB, mean45.f5_81_99_BB)
# colnames(mean45.f5_BB) <- colnames(gfd45.f5.91.add$annual_Biomass)
# 
# # # Lets plot it now ------------- #
# # # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean45.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Biomass[,i],mir45.f5.91.add$annual_Biomass[,i],ces45.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Annual Biomass")
#   lines(gfd45.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Biomass[,i],mir45.f5.91.add$annual_Biomass[,i],ces45.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Annual Biomass")
#   lines(gfd45.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean45.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Biomass[,i],mir45.f5.91.add$annual_Biomass[,i],ces45.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Annual Biomass")
#   lines(gfd45.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean45.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Biomass[,i],mir45.f5.91.add$annual_Biomass[,i],ces45.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Annual Biomass")
#   lines(gfd45.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Biomass[,i],mir45.f5.91.add$annual_Biomass[,i],ces45.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Annual Biomass")
#   lines(gfd45.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean45.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Biomass[,i],mir45.f5.91.add$annual_Biomass[,i],ces45.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Annual Biomass")
#   lines(gfd45.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean45.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Biomass[,i],mir45.f5.91.add$annual_Biomass[,i],ces45.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Annual Biomass")
#   lines(gfd45.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Biomass[1:27,i]), col="black")
# }
# 
# # Now do the same but for catch ---------------------------------------------- #
# # Mean catch up to 2080 (when cesm rcp 4.5 ends)
# mean45.f5_80_CC <- matrix(nrow=90, ncol=73)
# for (j in 1:73) {
#   temp_mean45.f5_80_CC <- cbind(gfd45.f5.91.add$annual_Catch[1:90,j],mir45.f5.91.add$annual_Catch[1:90,j],ces45.f5.91.add$annual_Catch[,j])
#   for (i in 1:90) {
#     # mean45.f5_80[i,j] <- mean(gfd45.f5.91.add$annual_Biomass[i,j],mir45.f5.91.add$annual_Biomass[i,j],ces45.f5.91.add$annual_Biomass[i,j])
#     mean45.f5_80_CC[i,j] <- mean(temp_mean45.f5_80_CC[i,])
#   }
# }
# rownames(mean45.f5_80_CC) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f5_81_99_CC <- matrix(nrow=19, ncol=73)
# for (j in 1:73) {
#   temp_mean45.f5_81_99_CC <- cbind(gfd45.f5.91.add$annual_Catch[91:109,j],mir45.f5.91.add$annual_Catch[91:109,j])
#   for (i in 91:109) {
#     # mean45.f5_81_99_2[i-90,j] <- mean(gfd45.f5.91.add$annual_Biomass[i-90,j],mir45.f5.91.add$annual_Biomass[i-90,j])
#     mean45.f5_81_99_CC[i-90,j] <- mean(temp_mean45.f5_81_99_CC[i-90,])
#   }
# }
# rownames(mean45.f5_81_99_CC) <- 2081:2099
# # rbind them together
# mean45.f5_CC <- rbind(mean45.f5_80_CC, mean45.f5_81_99_CC)
# colnames(mean45.f5_CC) <- colnames(gfd45.f5.91.add$annual_Catch)
# 
# # # Lets plot it now ------------- #
# # # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean45.f5_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Catch[,i],mir45.f5.91.add$annual_Catch[,i],ces45.f5.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Catch")
#   lines(gfd45.f5.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f5_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Catch[,i],mir45.f5.91.add$annual_Catch[,i],ces45.f5.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Catch")
#   lines(gfd45.f5.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean45.f5_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Catch[,capped_sp[i]],mir45.f5.91.add$annual_Catch[,capped_sp[i]],ces45.f5.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd45-ABC"), ylab="Catch")
#   lines(gfd45.f5.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean45.f5_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Catch[,crab_sp[i]],mir45.f5.91.add$annual_Catch[,crab_sp[i]],ces45.f5.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd45-ABC"), ylab="Catch")
#   lines(gfd45.f5.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f5_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f5.91.add$annual_Catch[,i],mir45.f5.91.add$annual_Catch[,i],ces45.f5.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-ABC"), ylab="Catch")
#   lines(gfd45.f5.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f5.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f5.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f5_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f5.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f5.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # ============================================================================ #
# # ---------------------------------------------------------------------------- #
# # ============================================================================ #
# # RCP 4.5 f6 ----------------------------------------------------------------- #
# # Mean biomass up to 2080 (when cesm rcp 4.5 ends)
# mean45.f6_80_BB <- matrix(nrow=90, ncol=73)
# for (j in 1:73) {
#   temp_mean45.f6_80_BB <- cbind(gfd45.f6.91.add$annual_Biomass[1:90,j],mir45.f6.91.add$annual_Biomass[1:90,j],ces45.f6.91.add$annual_Biomass[,j])
#   for (i in 1:90) {
#     # mean45.f6_80[i,j] <- mean(gfd45.f6.91.add$annual_Biomass[i,j],mir45.f6.91.add$annual_Biomass[i,j],ces45.f6.91.add$annual_Biomass[i,j])
#     mean45.f6_80_BB[i,j] <- mean(temp_mean45.f6_80_BB[i,])
#   }
# }
# rownames(mean45.f6_80_BB) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f6_81_99_BB <- matrix(nrow=19, ncol=73)
# for (j in 1:73) {
#   temp_mean45.f6_81_99_BB <- cbind(gfd45.f6.91.add$annual_Biomass[91:109,j],mir45.f6.91.add$annual_Biomass[91:109,j])
#   for (i in 91:109) {
#     # mean45.f6_81_99_2[i-90,j] <- mean(gfd45.f6.91.add$annual_Biomass[i-90,j],mir45.f6.91.add$annual_Biomass[i-90,j])
#     mean45.f6_81_99_BB[i-90,j] <- mean(temp_mean45.f6_81_99_BB[i-90,])
#   }
# }
# rownames(mean45.f6_81_99_BB) <- 2081:2099
# # rbind them together
# mean45.f6_BB <- rbind(mean45.f6_80_BB, mean45.f6_81_99_BB)
# colnames(mean45.f6_BB) <- colnames(gfd45.f6.91.add$annual_Biomass)
# 
# # # Lets plot it now ------------- #
# # # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean45.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Biomass[,i],mir45.f6.91.add$annual_Biomass[,i],ces45.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Annual Biomass")
#   lines(gfd45.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Biomass[,i],mir45.f6.91.add$annual_Biomass[,i],ces45.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Annual Biomass")
#   lines(gfd45.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean45.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Biomass[,i],mir45.f6.91.add$annual_Biomass[,i],ces45.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Annual Biomass")
#   lines(gfd45.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean45.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Biomass[,i],mir45.f6.91.add$annual_Biomass[,i],ces45.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Annual Biomass")
#   lines(gfd45.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Biomass[,i],mir45.f6.91.add$annual_Biomass[,i],ces45.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Annual Biomass")
#   lines(gfd45.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean45.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Biomass[,i],mir45.f6.91.add$annual_Biomass[,i],ces45.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Annual Biomass")
#   lines(gfd45.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean45.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Biomass[,i],mir45.f6.91.add$annual_Biomass[,i],ces45.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Annual Biomass")
#   lines(gfd45.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Biomass[1:27,i]), col="black")
# }
# 
# # Now do the same but for catch ---------------------------------------------- #
# # Mean catch up to 2080 (when cesm rcp 4.5 ends)
# mean45.f6_80_CC <- matrix(nrow=90, ncol=73)
# for (j in 1:73) {
#   temp_mean45.f6_80_CC <- cbind(gfd45.f6.91.add$annual_Catch[1:90,j],mir45.f6.91.add$annual_Catch[1:90,j],ces45.f6.91.add$annual_Catch[,j])
#   for (i in 1:90) {
#     # mean45.f6_80[i,j] <- mean(gfd45.f6.91.add$annual_Biomass[i,j],mir45.f6.91.add$annual_Biomass[i,j],ces45.f6.91.add$annual_Biomass[i,j])
#     mean45.f6_80_CC[i,j] <- mean(temp_mean45.f6_80_CC[i,])
#   }
# }
# rownames(mean45.f6_80_CC) <- 1991:2080
# # Mean biomass from 2081 to 2099 (no cesm for this part)
# mean45.f6_81_99_CC <- matrix(nrow=19, ncol=73)
# for (j in 1:73) {
#   temp_mean45.f6_81_99_CC <- cbind(gfd45.f6.91.add$annual_Catch[91:109,j],mir45.f6.91.add$annual_Catch[91:109,j])
#   for (i in 91:109) {
#     # mean45.f6_81_99_2[i-90,j] <- mean(gfd45.f6.91.add$annual_Biomass[i-90,j],mir45.f6.91.add$annual_Biomass[i-90,j])
#     mean45.f6_81_99_CC[i-90,j] <- mean(temp_mean45.f6_81_99_CC[i-90,])
#   }
# }
# rownames(mean45.f6_81_99_CC) <- 2081:2099
# # rbind them together
# mean45.f6_CC <- rbind(mean45.f6_80_CC, mean45.f6_81_99_CC)
# colnames(mean45.f6_CC) <- colnames(gfd45.f6.91.add$annual_Catch)
# 
# # # Lets plot it now ------------- #
# # # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean45.f6_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Catch[,i],mir45.f6.91.add$annual_Catch[,i],ces45.f6.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Catch")
#   lines(gfd45.f6.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean45.f6_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Catch[,i],mir45.f6.91.add$annual_Catch[,i],ces45.f6.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Catch")
#   lines(gfd45.f6.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean45.f6_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Catch[,capped_sp[i]],mir45.f6.91.add$annual_Catch[,capped_sp[i]],ces45.f6.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd45-F_equil"), ylab="Catch")
#   lines(gfd45.f6.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean45.f6_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Catch[,crab_sp[i]],mir45.f6.91.add$annual_Catch[,crab_sp[i]],ces45.f6.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd45-F_equil"), ylab="Catch")
#   lines(gfd45.f6.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean45.f6_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd45.f6.91.add$annual_Catch[,i],mir45.f6.91.add$annual_Catch[,i],ces45.f6.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd45-F_equil"), ylab="Catch")
#   lines(gfd45.f6.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces45.f6.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir45.f6.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean45.f6_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd45.f6.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27,90.5), lwd=2, lty=2)
#   abline(h=mean(gfd45.f6.91.add$annual_Catch[18:27,i]), col="black")
# }


# ---------------------------------------------------------------------------- #



# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ============================================================================ #


# RCP *8.5* ------------------------------------------------------------------ #
# Mean biomass up to 2099
mean85.f1_BB <- matrix(nrow=109, ncol=73)
for (j in 1:73) {
  temp_mean85.f1_BB <- cbind(gfd85.f1.91.add$annual_Biomass[,j],mir85.f1.91.add$annual_Biomass[,j],ces85.f1.91.add$annual_Biomass[,j])
  for (i in 1:109) {
    # mean85.f1[i,j] <- mean(gfd85.f1.91.add$annual_Biomass[i,j],mir85.f1.91.add$annual_Biomass[i,j],ces85.f1.91.add$annual_Biomass[i,j])
    mean85.f1_BB[i,j] <- mean(temp_mean85.f1_BB[i,])
  }
}
rownames(mean85.f1_BB) <- 1991:2099
colnames(mean85.f1_BB) <- colnames(gfd85.f1.91.add$annual_Biomass)

# Lets plot it now ------------- #
# Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean85.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Biomass[,i],mir85.f1.91.add$annual_Biomass[,i],ces85.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Annual Biomass")
#   lines(gfd85.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Biomass[,i],mir85.f1.91.add$annual_Biomass[,i],ces85.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Annual Biomass")
#   lines(gfd85.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean85.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Biomass[,i],mir85.f1.91.add$annual_Biomass[,i],ces85.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Annual Biomass")
#   lines(gfd85.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean85.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Biomass[,i],mir85.f1.91.add$annual_Biomass[,i],ces85.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Annual Biomass")
#   lines(gfd85.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Biomass[,i],mir85.f1.91.add$annual_Biomass[,i],ces85.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Annual Biomass")
#   lines(gfd85.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean85.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Biomass[,i],mir85.f1.91.add$annual_Biomass[,i],ces85.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Annual Biomass")
#   lines(gfd85.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean85.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Biomass[,i],mir85.f1.91.add$annual_Biomass[,i],ces85.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Annual Biomass")
#   lines(gfd85.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2099
mean85.f1_CC <- matrix(nrow=109, ncol=73)
for (j in 1:73) {
  temp_mean85.f1_CC <- cbind(gfd85.f1.91.add$annual_Catch[,j],mir85.f1.91.add$annual_Catch[,j],ces85.f1.91.add$annual_Catch[,j])
  for (i in 1:109) {
    # mean85.f1[i,j] <- mean(gfd85.f1.91.add$annual_Catch[i,j],mir85.f1.91.add$annual_Catch[i,j],ces85.f1.91.add$annual_Catch[i,j])
    mean85.f1_CC[i,j] <- mean(temp_mean85.f1_CC[i,])
  }
}
rownames(mean85.f1_CC) <- 1991:2099
colnames(mean85.f1_CC) <- colnames(gfd85.f1.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean85.f1_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Catch[,i],mir85.f1.91.add$annual_Catch[,i],ces85.f1.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Catch")
#   lines(gfd85.f1.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f1_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Catch[,i],mir85.f1.91.add$annual_Catch[,i],ces85.f1.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Catch")
#   lines(gfd85.f1.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean85.f1_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Catch[,capped_sp[i]],mir85.f1.91.add$annual_Catch[,capped_sp[i]],ces85.f1.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd85-SQ"), ylab="Catch")
#   lines(gfd85.f1.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean85.f1_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Catch[,crab_sp[i]],mir85.f1.91.add$annual_Catch[,crab_sp[i]],ces85.f1.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd85-SQ"), ylab="Catch")
#   lines(gfd85.f1.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f1_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f1.91.add$annual_Catch[,i],mir85.f1.91.add$annual_Catch[,i],ces85.f1.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-SQ"), ylab="Annual Biomass")
#   lines(gfd85.f1.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f1.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f1.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f1_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f1.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f1.91.add$annual_Catch[18:27,i]), col="black")
# }



# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# RCP 8.5 F2 ----------------------------------------------------------------- #
# Mean biomass up to 2099
mean85.f2_BB <- matrix(nrow=109, ncol=73)
for (j in 1:73) {
  temp_mean85.f2_BB <- cbind(gfd85.f2.91.add$annual_Biomass[,j],mir85.f2.91.add$annual_Biomass[,j],ces85.f2.91.add$annual_Biomass[,j])
  for (i in 1:109) {
    # mean85.f2[i,j] <- mean(gfd85.f2.91.add$annual_Biomass[i,j],mir85.f2.91.add$annual_Biomass[i,j],ces85.f2.91.add$annual_Biomass[i,j])
    mean85.f2_BB[i,j] <- mean(temp_mean85.f2_BB[i,])
  }
}
rownames(mean85.f2_BB) <- 1991:2099
colnames(mean85.f2_BB) <- colnames(gfd85.f2.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean85.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Biomass[,i],mir85.f2.91.add$annual_Biomass[,i],ces85.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Annual Biomass")
#   lines(gfd85.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Biomass[,i],mir85.f2.91.add$annual_Biomass[,i],ces85.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Annual Biomass")
#   lines(gfd85.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean85.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Biomass[,i],mir85.f2.91.add$annual_Biomass[,i],ces85.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Annual Biomass")
#   lines(gfd85.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean85.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Biomass[,i],mir85.f2.91.add$annual_Biomass[,i],ces85.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Annual Biomass")
#   lines(gfd85.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Biomass[,i],mir85.f2.91.add$annual_Biomass[,i],ces85.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Annual Biomass")
#   lines(gfd85.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean85.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Biomass[,i],mir85.f2.91.add$annual_Biomass[,i],ces85.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Annual Biomass")
#   lines(gfd85.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean85.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Biomass[,i],mir85.f2.91.add$annual_Biomass[,i],ces85.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Annual Biomass")
#   lines(gfd85.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2099
mean85.f2_CC <- matrix(nrow=109, ncol=73)
for (j in 1:73) {
  temp_mean85.f2_CC <- cbind(gfd85.f2.91.add$annual_Catch[,j],mir85.f2.91.add$annual_Catch[,j],ces85.f2.91.add$annual_Catch[,j])
  for (i in 1:109) {
    # mean85.f2[i,j] <- mean(gfd85.f2.91.add$annual_Catch[i,j],mir85.f2.91.add$annual_Catch[i,j],ces85.f2.91.add$annual_Catch[i,j])
    mean85.f2_CC[i,j] <- mean(temp_mean85.f2_CC[i,])
  }
}
rownames(mean85.f2_CC) <- 1991:2099
colnames(mean85.f2_CC) <- colnames(gfd85.f2.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean85.f2_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Catch[,i],mir85.f2.91.add$annual_Catch[,i],ces85.f2.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Catch")
#   lines(gfd85.f2.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f2_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Catch[,i],mir85.f2.91.add$annual_Catch[,i],ces85.f2.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Catch")
#   lines(gfd85.f2.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean85.f2_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Catch[,capped_sp[i]],mir85.f2.91.add$annual_Catch[,capped_sp[i]],ces85.f2.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd85-gadid"), ylab="Catch")
#   lines(gfd85.f2.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean85.f2_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Catch[,crab_sp[i]],mir85.f2.91.add$annual_Catch[,crab_sp[i]],ces85.f2.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd85-gadid"), ylab="Catch")
#   lines(gfd85.f2.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f2_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f2.91.add$annual_Catch[,i],mir85.f2.91.add$annual_Catch[,i],ces85.f2.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-gadid"), ylab="Annual Biomass")
#   lines(gfd85.f2.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f2.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f2.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f2_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f2.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f2.91.add$annual_Catch[18:27,i]), col="black")
# }



# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# RCP 8.5 f3 ----------------------------------------------------------------- #
# Mean biomass up to 2099
mean85.f3_BB <- matrix(nrow=109, ncol=73)
for (j in 1:73) {
  temp_mean85.f3_BB <- cbind(gfd85.f3.91.add$annual_Biomass[,j],mir85.f3.91.add$annual_Biomass[,j],ces85.f3.91.add$annual_Biomass[,j])
  for (i in 1:109) {
    # mean85.f3[i,j] <- mean(gfd85.f3.91.add$annual_Biomass[i,j],mir85.f3.91.add$annual_Biomass[i,j],ces85.f3.91.add$annual_Biomass[i,j])
    mean85.f3_BB[i,j] <- mean(temp_mean85.f3_BB[i,])
  }
}
rownames(mean85.f3_BB) <- 1991:2099
colnames(mean85.f3_BB) <- colnames(gfd85.f3.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean85.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Biomass[,i],mir85.f3.91.add$annual_Biomass[,i],ces85.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Annual Biomass")
#   lines(gfd85.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Biomass[,i],mir85.f3.91.add$annual_Biomass[,i],ces85.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Annual Biomass")
#   lines(gfd85.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean85.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Biomass[,i],mir85.f3.91.add$annual_Biomass[,i],ces85.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Annual Biomass")
#   lines(gfd85.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean85.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Biomass[,i],mir85.f3.91.add$annual_Biomass[,i],ces85.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Annual Biomass")
#   lines(gfd85.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Biomass[,i],mir85.f3.91.add$annual_Biomass[,i],ces85.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Annual Biomass")
#   lines(gfd85.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean85.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Biomass[,i],mir85.f3.91.add$annual_Biomass[,i],ces85.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Annual Biomass")
#   lines(gfd85.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean85.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Biomass[,i],mir85.f3.91.add$annual_Biomass[,i],ces85.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Annual Biomass")
#   lines(gfd85.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2099
mean85.f3_CC <- matrix(nrow=109, ncol=73)
for (j in 1:73) {
  temp_mean85.f3_CC <- cbind(gfd85.f3.91.add$annual_Catch[,j],mir85.f3.91.add$annual_Catch[,j],ces85.f3.91.add$annual_Catch[,j])
  for (i in 1:109) {
    # mean85.f3[i,j] <- mean(gfd85.f3.91.add$annual_Catch[i,j],mir85.f3.91.add$annual_Catch[i,j],ces85.f3.91.add$annual_Catch[i,j])
    mean85.f3_CC[i,j] <- mean(temp_mean85.f3_CC[i,])
  }
}
rownames(mean85.f3_CC) <- 1991:2099
colnames(mean85.f3_CC) <- colnames(gfd85.f3.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean85.f3_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Catch[,i],mir85.f3.91.add$annual_Catch[,i],ces85.f3.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Catch")
#   lines(gfd85.f3.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f3_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Catch[,i],mir85.f3.91.add$annual_Catch[,i],ces85.f3.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Catch")
#   lines(gfd85.f3.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean85.f3_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Catch[,capped_sp[i]],mir85.f3.91.add$annual_Catch[,capped_sp[i]],ces85.f3.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd85-flat"), ylab="Catch")
#   lines(gfd85.f3.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean85.f3_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Catch[,crab_sp[i]],mir85.f3.91.add$annual_Catch[,crab_sp[i]],ces85.f3.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd85-flat"), ylab="Catch")
#   lines(gfd85.f3.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f3_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f3.91.add$annual_Catch[,i],mir85.f3.91.add$annual_Catch[,i],ces85.f3.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-flat"), ylab="Annual Biomass")
#   lines(gfd85.f3.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f3.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f3.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f3_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f3.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f3.91.add$annual_Catch[18:27,i]), col="black")
# }



# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# RCP 8.5 f4 ----------------------------------------------------------------- #
# Mean biomass up to 2099
mean85.f4_BB <- matrix(nrow=109, ncol=73)
for (j in 1:73) {
  temp_mean85.f4_BB <- cbind(gfd85.f4.91.add$annual_Biomass[,j],mir85.f4.91.add$annual_Biomass[,j],ces85.f4.91.add$annual_Biomass[,j])
  for (i in 1:109) {
    # mean85.f4[i,j] <- mean(gfd85.f4.91.add$annual_Biomass[i,j],mir85.f4.91.add$annual_Biomass[i,j],ces85.f4.91.add$annual_Biomass[i,j])
    mean85.f4_BB[i,j] <- mean(temp_mean85.f4_BB[i,])
  }
}
rownames(mean85.f4_BB) <- 1991:2099
colnames(mean85.f4_BB) <- colnames(gfd85.f4.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean85.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Biomass[,i],mir85.f4.91.add$annual_Biomass[,i],ces85.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Annual Biomass")
#   lines(gfd85.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Biomass[,i],mir85.f4.91.add$annual_Biomass[,i],ces85.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Annual Biomass")
#   lines(gfd85.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean85.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Biomass[,i],mir85.f4.91.add$annual_Biomass[,i],ces85.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Annual Biomass")
#   lines(gfd85.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean85.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Biomass[,i],mir85.f4.91.add$annual_Biomass[,i],ces85.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Annual Biomass")
#   lines(gfd85.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Biomass[,i],mir85.f4.91.add$annual_Biomass[,i],ces85.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Annual Biomass")
#   lines(gfd85.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean85.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Biomass[,i],mir85.f4.91.add$annual_Biomass[,i],ces85.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Annual Biomass")
#   lines(gfd85.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean85.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Biomass[,i],mir85.f4.91.add$annual_Biomass[,i],ces85.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Annual Biomass")
#   lines(gfd85.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2080 (when cesm rcp 4.5 ends)
mean85.f4_CC <- matrix(nrow=109, ncol=73)
for (j in 1:73) {
  temp_mean85.f4_CC <- cbind(gfd85.f4.91.add$annual_Catch[,j],mir85.f4.91.add$annual_Catch[,j],ces85.f4.91.add$annual_Catch[,j])
  for (i in 1:109) {
    # mean85.f4[i,j] <- mean(gfd85.f4.91.add$annual_Catch[i,j],mir85.f4.91.add$annual_Catch[i,j],ces85.f4.91.add$annual_Catch[i,j])
    mean85.f4_CC[i,j] <- mean(temp_mean85.f4_CC[i,])
  }
}
rownames(mean85.f4_CC) <- 1991:2099
colnames(mean85.f4_CC) <- colnames(gfd85.f4.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean85.f4_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Catch[,i],mir85.f4.91.add$annual_Catch[,i],ces85.f4.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Catch")
#   lines(gfd85.f4.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f4_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Catch[,i],mir85.f4.91.add$annual_Catch[,i],ces85.f4.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Catch")
#   lines(gfd85.f4.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean85.f4_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Catch[,capped_sp[i]],mir85.f4.91.add$annual_Catch[,capped_sp[i]],ces85.f4.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd85-no fishing"), ylab="Catch")
#   lines(gfd85.f4.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean85.f4_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Catch[,crab_sp[i]],mir85.f4.91.add$annual_Catch[,crab_sp[i]],ces85.f4.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd85-no fishing"), ylab="Catch")
#   lines(gfd85.f4.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f4_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f4.91.add$annual_Catch[,i],mir85.f4.91.add$annual_Catch[,i],ces85.f4.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-no fishing"), ylab="Annual Biomass")
#   lines(gfd85.f4.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f4.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f4.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f4_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f4.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f4.91.add$annual_Catch[18:27,i]), col="black")
# }


# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# RCP 8.5 f5 ----------------------------------------------------------------- #
# Mean biomass up to 2099
# mean85.f5_BB <- matrix(nrow=109, ncol=73)
# for (j in 1:73) {
#   temp_mean85.f5_BB <- cbind(gfd85.f5.91.add$annual_Biomass[,j],mir85.f5.91.add$annual_Biomass[,j],ces85.f5.91.add$annual_Biomass[,j])
#   for (i in 1:109) {
#     # mean85.f5[i,j] <- mean(gfd85.f5.91.add$annual_Biomass[i,j],mir85.f5.91.add$annual_Biomass[i,j],ces85.f5.91.add$annual_Biomass[i,j])
#     mean85.f5_BB[i,j] <- mean(temp_mean85.f5_BB[i,])
#   }
# }
# rownames(mean85.f5_BB) <- 1991:2099
# colnames(mean85.f5_BB) <- colnames(gfd85.f5.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean85.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Biomass[,i],mir85.f5.91.add$annual_Biomass[,i],ces85.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Annual Biomass")
#   lines(gfd85.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Biomass[,i],mir85.f5.91.add$annual_Biomass[,i],ces85.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Annual Biomass")
#   lines(gfd85.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean85.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Biomass[,i],mir85.f5.91.add$annual_Biomass[,i],ces85.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Annual Biomass")
#   lines(gfd85.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean85.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Biomass[,i],mir85.f5.91.add$annual_Biomass[,i],ces85.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Annual Biomass")
#   lines(gfd85.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Biomass[,i],mir85.f5.91.add$annual_Biomass[,i],ces85.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Annual Biomass")
#   lines(gfd85.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean85.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Biomass[,i],mir85.f5.91.add$annual_Biomass[,i],ces85.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Annual Biomass")
#   lines(gfd85.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean85.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Biomass[,i],mir85.f5.91.add$annual_Biomass[,i],ces85.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Annual Biomass")
#   lines(gfd85.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Biomass[1:27,i]), col="black")
# }
# 
# # Now do the same but for catch ---------------------------------------------- #
# # Mean catch up to 2080 (when cesm rcp 4.5 ends)
# mean85.f5_CC <- matrix(nrow=109, ncol=73)
# for (j in 1:73) {
#   temp_mean85.f5_CC <- cbind(gfd85.f5.91.add$annual_Catch[,j],mir85.f5.91.add$annual_Catch[,j],ces85.f5.91.add$annual_Catch[,j])
#   for (i in 1:109) {
#     # mean85.f5[i,j] <- mean(gfd85.f5.91.add$annual_Catch[i,j],mir85.f5.91.add$annual_Catch[i,j],ces85.f5.91.add$annual_Catch[i,j])
#     mean85.f5_CC[i,j] <- mean(temp_mean85.f5_CC[i,])
#   }
# }
# rownames(mean85.f5_CC) <- 1991:2099
# colnames(mean85.f5_CC) <- colnames(gfd85.f5.91.add$annual_Catch)
# 
# # # Lets plot it now ------------- #
# # # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean85.f5_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Catch[,i],mir85.f5.91.add$annual_Catch[,i],ces85.f5.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Catch")
#   lines(gfd85.f5.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f5_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Catch[,i],mir85.f5.91.add$annual_Catch[,i],ces85.f5.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Catch")
#   lines(gfd85.f5.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean85.f5_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Catch[,capped_sp[i]],mir85.f5.91.add$annual_Catch[,capped_sp[i]],ces85.f5.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd85-ABC"), ylab="Catch")
#   lines(gfd85.f5.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean85.f5_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Catch[,crab_sp[i]],mir85.f5.91.add$annual_Catch[,crab_sp[i]],ces85.f5.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd85-ABC"), ylab="Catch")
#   lines(gfd85.f5.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f5_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f5.91.add$annual_Catch[,i],mir85.f5.91.add$annual_Catch[,i],ces85.f5.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-ABC"), ylab="Annual Biomass")
#   lines(gfd85.f5.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f5.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f5.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f5_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f5.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f5.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# 
# # ---------------------------------------------------------------------------- #
# # ============================================================================ #
# # ---------------------------------------------------------------------------- #
# # ============================================================================ #
# # RCP 8.5 f6 ----------------------------------------------------------------- #
# # Mean biomass up to 2099
# mean85.f6_BB <- matrix(nrow=109, ncol=73)
# for (j in 1:73) {
#   temp_mean85.f6_BB <- cbind(gfd85.f6.91.add$annual_Biomass[,j],mir85.f6.91.add$annual_Biomass[,j],ces85.f6.91.add$annual_Biomass[,j])
#   for (i in 1:109) {
#     # mean85.f6[i,j] <- mean(gfd85.f6.91.add$annual_Biomass[i,j],mir85.f6.91.add$annual_Biomass[i,j],ces85.f6.91.add$annual_Biomass[i,j])
#     mean85.f6_BB[i,j] <- mean(temp_mean85.f6_BB[i,])
#   }
# }
# rownames(mean85.f6_BB) <- 1991:2099
# colnames(mean85.f6_BB) <- colnames(gfd85.f6.91.add$annual_Biomass)
# 
# # # Lets plot it now ------------- #
# # # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(mean85.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Biomass[,i],mir85.f6.91.add$annual_Biomass[,i],ces85.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Annual Biomass")
#   lines(gfd85.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Biomass[,i],mir85.f6.91.add$annual_Biomass[,i],ces85.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Annual Biomass")
#   lines(gfd85.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(mean85.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Biomass[,i],mir85.f6.91.add$annual_Biomass[,i],ces85.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Annual Biomass")
#   lines(gfd85.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(mean85.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Biomass[,i],mir85.f6.91.add$annual_Biomass[,i],ces85.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Annual Biomass")
#   lines(gfd85.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Biomass[,i],mir85.f6.91.add$annual_Biomass[,i],ces85.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Annual Biomass")
#   lines(gfd85.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(mean85.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Biomass[,i],mir85.f6.91.add$annual_Biomass[,i],ces85.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Annual Biomass")
#   lines(gfd85.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(mean85.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Biomass[,i],mir85.f6.91.add$annual_Biomass[,i],ces85.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Annual Biomass")
#   lines(gfd85.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Biomass[1:27,i]), col="black")
# }
# 
# # Now do the same but for catch ---------------------------------------------- #
# # Mean catch up to 2080 (when cesm rcp 4.5 ends)
# mean85.f6_CC <- matrix(nrow=109, ncol=73)
# for (j in 1:73) {
#   temp_mean85.f6_CC <- cbind(gfd85.f6.91.add$annual_Catch[,j],mir85.f6.91.add$annual_Catch[,j],ces85.f6.91.add$annual_Catch[,j])
#   for (i in 1:109) {
#     # mean85.f6[i,j] <- mean(gfd85.f6.91.add$annual_Catch[i,j],mir85.f6.91.add$annual_Catch[i,j],ces85.f6.91.add$annual_Catch[i,j])
#     mean85.f6_CC[i,j] <- mean(temp_mean85.f6_CC[i,])
#   }
# }
# rownames(mean85.f6_CC) <- 1991:2099
# colnames(mean85.f6_CC) <- colnames(gfd85.f6.91.add$annual_Catch)
# 
# # # Lets plot it now ------------- #
# # # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(mean85.f6_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Catch[,i],mir85.f6.91.add$annual_Catch[,i],ces85.f6.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Catch")
#   lines(gfd85.f6.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(mean85.f6_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Catch[,i],mir85.f6.91.add$annual_Catch[,i],ces85.f6.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Catch")
#   lines(gfd85.f6.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(mean85.f6_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Catch[,capped_sp[i]],mir85.f6.91.add$annual_Catch[,capped_sp[i]],ces85.f6.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "gfd85-F_equil"), ylab="Catch")
#   lines(gfd85.f6.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(mean85.f6_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Catch[,crab_sp[i]],mir85.f6.91.add$annual_Catch[,crab_sp[i]],ces85.f6.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "gfd85-F_equil"), ylab="Catch")
#   lines(gfd85.f6.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(mean85.f6_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(gfd85.f6.91.add$annual_Catch[,i],mir85.f6.91.add$annual_Catch[,i],ces85.f6.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "gfd85-F_equil"), ylab="Annual Biomass")
#   lines(gfd85.f6.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(ces85.f6.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mir85.f6.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(mean85.f6_CC[,i], col='deepskyblue', lwd=3)
#   lines(gfd85.f6.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(gfd85.f6.91.add$annual_Catch[18:27,i]), col="black")
# }





# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ============================================================================ #


# SRES *A1B* ----------------------------------------------------------------- #
# Mean biomass up to 2039
# meanA1B.f1_BB <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f1_BB <- cbind(cccA1B.f1.91.add$annual_Biomass[,j],mirA1B.f1.91.add$annual_Biomass[,j],echA1B.f1.91.add$annual_Biomass[,j])
#   for (i in 1:49) {
#     # meanA1B.f1[i,j] <- mean(cccA1B.f1.91.add$annual_Biomass[i,j],mirA1B.f1.91.add$annual_Biomass[i,j],echA1B.f1.91.add$annual_Biomass[i,j])
#     meanA1B.f1_BB[i,j] <- mean(temp_meanA1B.f1_BB[i,])
#   }
# }
# rownames(meanA1B.f1_BB) <- 1991:2039
# colnames(meanA1B.f1_BB) <- colnames(cccA1B.f1.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(meanA1B.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Biomass[,i],mirA1B.f1.91.add$annual_Biomass[,i],echA1B.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Annual Biomass")
#   lines(cccA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Biomass[,i],mirA1B.f1.91.add$annual_Biomass[,i],echA1B.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Annual Biomass")
#   lines(cccA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(meanA1B.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Biomass[,i],mirA1B.f1.91.add$annual_Biomass[,i],echA1B.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Annual Biomass")
#   lines(cccA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(meanA1B.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Biomass[,i],mirA1B.f1.91.add$annual_Biomass[,i],echA1B.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Annual Biomass")
#   lines(cccA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Biomass[,i],mirA1B.f1.91.add$annual_Biomass[,i],echA1B.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Annual Biomass")
#   lines(cccA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(meanA1B.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Biomass[,i],mirA1B.f1.91.add$annual_Biomass[,i],echA1B.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Annual Biomass")
#   lines(cccA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(meanA1B.f1_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Biomass[,i],mirA1B.f1.91.add$annual_Biomass[,i],echA1B.f1.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Annual Biomass")
#   lines(cccA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2080
# meanA1B.f1_CC <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f1_CC <- cbind(cccA1B.f1.91.add$annual_Catch[,j],mirA1B.f1.91.add$annual_Catch[,j],echA1B.f1.91.add$annual_Catch[,j])
#   for (i in 1:49) {
#     # meanA1B.f1[i,j] <- mean(cccA1B.f1.91.add$annual_Catch[i,j],mirA1B.f1.91.add$annual_Catch[i,j],echA1B.f1.91.add$annual_Catch[i,j])
#     meanA1B.f1_CC[i,j] <- mean(temp_meanA1B.f1_CC[i,])
#   }
# }
# rownames(meanA1B.f1_CC) <- 1991:2039
# colnames(meanA1B.f1_CC) <- colnames(cccA1B.f1.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(meanA1B.f1_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Catch[,i],mirA1B.f1.91.add$annual_Catch[,i],echA1B.f1.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Catch")
#   lines(cccA1B.f1.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f1_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Catch[,i],mirA1B.f1.91.add$annual_Catch[,i],echA1B.f1.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Catch")
#   lines(cccA1B.f1.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(meanA1B.f1_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Catch[,capped_sp[i]],mirA1B.f1.91.add$annual_Catch[,capped_sp[i]],echA1B.f1.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "cccA1B-SQ"), ylab="Catch")
#   lines(cccA1B.f1.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(meanA1B.f1_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Catch[,crab_sp[i]],mirA1B.f1.91.add$annual_Catch[,crab_sp[i]],echA1B.f1.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "cccA1B-SQ"), ylab="Catch")
#   lines(cccA1B.f1.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f1_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f1.91.add$annual_Catch[,i],mirA1B.f1.91.add$annual_Catch[,i],echA1B.f1.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-SQ"), ylab="Annual Biomass")
#   lines(cccA1B.f1.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f1.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f1.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f1_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f1.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f1.91.add$annual_Catch[18:27,i]), col="black")
# }



# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# SRES A1B f2 ----------------------------------------------------------------- #
# Mean biomass up to 2039
# meanA1B.f2_BB <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f2_BB <- cbind(cccA1B.f2.91.add$annual_Biomass[,j],mirA1B.f2.91.add$annual_Biomass[,j],echA1B.f2.91.add$annual_Biomass[,j])
#   for (i in 1:49) {
#     # meanA1B.f2[i,j] <- mean(cccA1B.f2.91.add$annual_Biomass[i,j],mirA1B.f2.91.add$annual_Biomass[i,j],echA1B.f2.91.add$annual_Biomass[i,j])
#     meanA1B.f2_BB[i,j] <- mean(temp_meanA1B.f2_BB[i,])
#   }
# }
# rownames(meanA1B.f2_BB) <- 1991:2039
# colnames(meanA1B.f2_BB) <- colnames(cccA1B.f2.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(meanA1B.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Biomass[,i],mirA1B.f2.91.add$annual_Biomass[,i],echA1B.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Annual Biomass")
#   lines(cccA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Biomass[,i],mirA1B.f2.91.add$annual_Biomass[,i],echA1B.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Annual Biomass")
#   lines(cccA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(meanA1B.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Biomass[,i],mirA1B.f2.91.add$annual_Biomass[,i],echA1B.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Annual Biomass")
#   lines(cccA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(meanA1B.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Biomass[,i],mirA1B.f2.91.add$annual_Biomass[,i],echA1B.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Annual Biomass")
#   lines(cccA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Biomass[,i],mirA1B.f2.91.add$annual_Biomass[,i],echA1B.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Annual Biomass")
#   lines(cccA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(meanA1B.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Biomass[,i],mirA1B.f2.91.add$annual_Biomass[,i],echA1B.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Annual Biomass")
#   lines(cccA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(meanA1B.f2_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Biomass[,i],mirA1B.f2.91.add$annual_Biomass[,i],echA1B.f2.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Annual Biomass")
#   lines(cccA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2039
# meanA1B.f2_CC <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f2_CC <- cbind(cccA1B.f2.91.add$annual_Catch[,j],mirA1B.f2.91.add$annual_Catch[,j],echA1B.f2.91.add$annual_Catch[,j])
#   for (i in 1:49) {
#     # meanA1B.f2[i,j] <- mean(cccA1B.f2.91.add$annual_Catch[i,j],mirA1B.f2.91.add$annual_Catch[i,j],echA1B.f2.91.add$annual_Catch[i,j])
#     meanA1B.f2_CC[i,j] <- mean(temp_meanA1B.f2_CC[i,])
#   }
# }
# rownames(meanA1B.f2_CC) <- 1991:2039
# colnames(meanA1B.f2_CC) <- colnames(cccA1B.f2.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(meanA1B.f2_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Catch[,i],mirA1B.f2.91.add$annual_Catch[,i],echA1B.f2.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Catch")
#   lines(cccA1B.f2.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f2_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Catch[,i],mirA1B.f2.91.add$annual_Catch[,i],echA1B.f2.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Catch")
#   lines(cccA1B.f2.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(meanA1B.f2_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Catch[,capped_sp[i]],mirA1B.f2.91.add$annual_Catch[,capped_sp[i]],echA1B.f2.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "cccA1B-gadid"), ylab="Catch")
#   lines(cccA1B.f2.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(meanA1B.f2_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Catch[,crab_sp[i]],mirA1B.f2.91.add$annual_Catch[,crab_sp[i]],echA1B.f2.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "cccA1B-gadid"), ylab="Catch")
#   lines(cccA1B.f2.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f2_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f2.91.add$annual_Catch[,i],mirA1B.f2.91.add$annual_Catch[,i],echA1B.f2.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-gadid"), ylab="Annual Biomass")
#   lines(cccA1B.f2.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f2.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f2.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f2_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f2.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f2.91.add$annual_Catch[18:27,i]), col="black")
# }



# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# SRES A1B f3 ----------------------------------------------------------------- #
# Mean biomass up to 2039
# meanA1B.f3_BB <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f3_BB <- cbind(cccA1B.f3.91.add$annual_Biomass[,j],mirA1B.f3.91.add$annual_Biomass[,j],echA1B.f3.91.add$annual_Biomass[,j])
#   for (i in 1:49) {
#     # meanA1B.f3[i,j] <- mean(cccA1B.f3.91.add$annual_Biomass[i,j],mirA1B.f3.91.add$annual_Biomass[i,j],echA1B.f3.91.add$annual_Biomass[i,j])
#     meanA1B.f3_BB[i,j] <- mean(temp_meanA1B.f3_BB[i,])
#   }
# }
# rownames(meanA1B.f3_BB) <- 1991:2039
# colnames(meanA1B.f3_BB) <- colnames(cccA1B.f3.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(meanA1B.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Biomass[,i],mirA1B.f3.91.add$annual_Biomass[,i],echA1B.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Annual Biomass")
#   lines(cccA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Biomass[,i],mirA1B.f3.91.add$annual_Biomass[,i],echA1B.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Annual Biomass")
#   lines(cccA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(meanA1B.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Biomass[,i],mirA1B.f3.91.add$annual_Biomass[,i],echA1B.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Annual Biomass")
#   lines(cccA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(meanA1B.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Biomass[,i],mirA1B.f3.91.add$annual_Biomass[,i],echA1B.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Annual Biomass")
#   lines(cccA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Biomass[,i],mirA1B.f3.91.add$annual_Biomass[,i],echA1B.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Annual Biomass")
#   lines(cccA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(meanA1B.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Biomass[,i],mirA1B.f3.91.add$annual_Biomass[,i],echA1B.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Annual Biomass")
#   lines(cccA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(meanA1B.f3_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Biomass[,i],mirA1B.f3.91.add$annual_Biomass[,i],echA1B.f3.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Annual Biomass")
#   lines(cccA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2039
# meanA1B.f3_CC <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f3_CC <- cbind(cccA1B.f3.91.add$annual_Catch[,j],mirA1B.f3.91.add$annual_Catch[,j],echA1B.f3.91.add$annual_Catch[,j])
#   for (i in 1:49) {
#     # meanA1B.f3[i,j] <- mean(cccA1B.f3.91.add$annual_Catch[i,j],mirA1B.f3.91.add$annual_Catch[i,j],echA1B.f3.91.add$annual_Catch[i,j])
#     meanA1B.f3_CC[i,j] <- mean(temp_meanA1B.f3_CC[i,])
#   }
# }
# rownames(meanA1B.f3_CC) <- 1991:2039
# colnames(meanA1B.f3_CC) <- colnames(cccA1B.f3.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(meanA1B.f3_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Catch[,i],mirA1B.f3.91.add$annual_Catch[,i],echA1B.f3.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Catch")
#   lines(cccA1B.f3.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f3_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Catch[,i],mirA1B.f3.91.add$annual_Catch[,i],echA1B.f3.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Catch")
#   lines(cccA1B.f3.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(meanA1B.f3_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Catch[,capped_sp[i]],mirA1B.f3.91.add$annual_Catch[,capped_sp[i]],echA1B.f3.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "cccA1B-flat"), ylab="Catch")
#   lines(cccA1B.f3.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(meanA1B.f3_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Catch[,crab_sp[i]],mirA1B.f3.91.add$annual_Catch[,crab_sp[i]],echA1B.f3.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "cccA1B-flat"), ylab="Catch")
#   lines(cccA1B.f3.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f3_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f3.91.add$annual_Catch[,i],mirA1B.f3.91.add$annual_Catch[,i],echA1B.f3.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-flat"), ylab="Annual Biomass")
#   lines(cccA1B.f3.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f3.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f3.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f3_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f3.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f3.91.add$annual_Catch[18:27,i]), col="black")
# }



# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# SRES A1B f4 ----------------------------------------------------------------- #
# Mean biomass up to 2039
# meanA1B.f4_BB <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f4_BB <- cbind(cccA1B.f4.91.add$annual_Biomass[,j],mirA1B.f4.91.add$annual_Biomass[,j],echA1B.f4.91.add$annual_Biomass[,j])
#   for (i in 1:49) {
#     # meanA1B.f4[i,j] <- mean(cccA1B.f4.91.add$annual_Biomass[i,j],mirA1B.f4.91.add$annual_Biomass[i,j],echA1B.f4.91.add$annual_Biomass[i,j])
#     meanA1B.f4_BB[i,j] <- mean(temp_meanA1B.f4_BB[i,])
#   }
# }
# rownames(meanA1B.f4_BB) <- 1991:2039
# colnames(meanA1B.f4_BB) <- colnames(cccA1B.f4.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(meanA1B.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Biomass[,i],mirA1B.f4.91.add$annual_Biomass[,i],echA1B.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Annual Biomass")
#   lines(cccA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Biomass[,i],mirA1B.f4.91.add$annual_Biomass[,i],echA1B.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Annual Biomass")
#   lines(cccA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(meanA1B.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Biomass[,i],mirA1B.f4.91.add$annual_Biomass[,i],echA1B.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Annual Biomass")
#   lines(cccA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(meanA1B.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Biomass[,i],mirA1B.f4.91.add$annual_Biomass[,i],echA1B.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Annual Biomass")
#   lines(cccA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Biomass[,i],mirA1B.f4.91.add$annual_Biomass[,i],echA1B.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Annual Biomass")
#   lines(cccA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(meanA1B.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Biomass[,i],mirA1B.f4.91.add$annual_Biomass[,i],echA1B.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Annual Biomass")
#   lines(cccA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(meanA1B.f4_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Biomass[,i],mirA1B.f4.91.add$annual_Biomass[,i],echA1B.f4.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Annual Biomass")
#   lines(cccA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2039
# meanA1B.f4_CC <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f4_CC <- cbind(cccA1B.f4.91.add$annual_Catch[,j],mirA1B.f4.91.add$annual_Catch[,j],echA1B.f4.91.add$annual_Catch[,j])
#   for (i in 1:49) {
#     # meanA1B.f4[i,j] <- mean(cccA1B.f4.91.add$annual_Catch[i,j],mirA1B.f4.91.add$annual_Catch[i,j],echA1B.f4.91.add$annual_Catch[i,j])
#     meanA1B.f4_CC[i,j] <- mean(temp_meanA1B.f4_CC[i,])
#   }
# }
# rownames(meanA1B.f4_CC) <- 1991:2039
# colnames(meanA1B.f4_CC) <- colnames(cccA1B.f4.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(meanA1B.f4_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Catch[,i],mirA1B.f4.91.add$annual_Catch[,i],echA1B.f4.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Catch")
#   lines(cccA1B.f4.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f4_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Catch[,i],mirA1B.f4.91.add$annual_Catch[,i],echA1B.f4.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Catch")
#   lines(cccA1B.f4.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(meanA1B.f4_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Catch[,capped_sp[i]],mirA1B.f4.91.add$annual_Catch[,capped_sp[i]],echA1B.f4.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "cccA1B-no fishing"), ylab="Catch")
#   lines(cccA1B.f4.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(meanA1B.f4_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Catch[,crab_sp[i]],mirA1B.f4.91.add$annual_Catch[,crab_sp[i]],echA1B.f4.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "cccA1B-no fishing"), ylab="Catch")
#   lines(cccA1B.f4.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f4_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f4.91.add$annual_Catch[,i],mirA1B.f4.91.add$annual_Catch[,i],echA1B.f4.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-no fishing"), ylab="Annual Biomass")
#   lines(cccA1B.f4.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f4.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f4.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f4_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f4.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f4.91.add$annual_Catch[18:27,i]), col="black")
# }


# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# SRES A1B f5 ----------------------------------------------------------------- #
# Mean biomass up to 2039
# meanA1B.f5_BB <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f5_BB <- cbind(cccA1B.f5.91.add$annual_Biomass[,j],mirA1B.f5.91.add$annual_Biomass[,j],echA1B.f5.91.add$annual_Biomass[,j])
#   for (i in 1:49) {
#     # meanA1B.f5[i,j] <- mean(cccA1B.f5.91.add$annual_Biomass[i,j],mirA1B.f5.91.add$annual_Biomass[i,j],echA1B.f5.91.add$annual_Biomass[i,j])
#     meanA1B.f5_BB[i,j] <- mean(temp_meanA1B.f5_BB[i,])
#   }
# }
# rownames(meanA1B.f5_BB) <- 1991:2039
# colnames(meanA1B.f5_BB) <- colnames(cccA1B.f5.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(meanA1B.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Biomass[,i],mirA1B.f5.91.add$annual_Biomass[,i],echA1B.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Annual Biomass")
#   lines(cccA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Biomass[,i],mirA1B.f5.91.add$annual_Biomass[,i],echA1B.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Annual Biomass")
#   lines(cccA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(meanA1B.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Biomass[,i],mirA1B.f5.91.add$annual_Biomass[,i],echA1B.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Annual Biomass")
#   lines(cccA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(meanA1B.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Biomass[,i],mirA1B.f5.91.add$annual_Biomass[,i],echA1B.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Annual Biomass")
#   lines(cccA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Biomass[,i],mirA1B.f5.91.add$annual_Biomass[,i],echA1B.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Annual Biomass")
#   lines(cccA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(meanA1B.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Biomass[,i],mirA1B.f5.91.add$annual_Biomass[,i],echA1B.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Annual Biomass")
#   lines(cccA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(meanA1B.f5_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Biomass[,i],mirA1B.f5.91.add$annual_Biomass[,i],echA1B.f5.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Annual Biomass")
#   lines(cccA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2039
# meanA1B.f5_CC <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f5_CC <- cbind(cccA1B.f5.91.add$annual_Catch[,j],mirA1B.f5.91.add$annual_Catch[,j],echA1B.f5.91.add$annual_Catch[,j])
#   for (i in 1:49) {
#     # meanA1B.f5[i,j] <- mean(cccA1B.f5.91.add$annual_Catch[i,j],mirA1B.f5.91.add$annual_Catch[i,j],echA1B.f5.91.add$annual_Catch[i,j])
#     meanA1B.f5_CC[i,j] <- mean(temp_meanA1B.f5_CC[i,])
#   }
# }
# rownames(meanA1B.f5_CC) <- 1991:2039
# colnames(meanA1B.f5_CC) <- colnames(cccA1B.f5.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(meanA1B.f5_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Catch[,i],mirA1B.f5.91.add$annual_Catch[,i],echA1B.f5.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Catch")
#   lines(cccA1B.f5.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f5_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Catch[,i],mirA1B.f5.91.add$annual_Catch[,i],echA1B.f5.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Catch")
#   lines(cccA1B.f5.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(meanA1B.f5_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Catch[,capped_sp[i]],mirA1B.f5.91.add$annual_Catch[,capped_sp[i]],echA1B.f5.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "cccA1B-ABC"), ylab="Catch")
#   lines(cccA1B.f5.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(meanA1B.f5_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Catch[,crab_sp[i]],mirA1B.f5.91.add$annual_Catch[,crab_sp[i]],echA1B.f5.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "cccA1B-ABC"), ylab="Catch")
#   lines(cccA1B.f5.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f5_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f5.91.add$annual_Catch[,i],mirA1B.f5.91.add$annual_Catch[,i],echA1B.f5.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-ABC"), ylab="Annual Biomass")
#   lines(cccA1B.f5.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f5.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f5.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f5_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f5.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f5.91.add$annual_Catch[18:27,i]), col="black")
# }


# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ============================================================================ #
# SRES A1B f6 ----------------------------------------------------------------- #
# Mean biomass up to 2039
# meanA1B.f6_BB <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f6_BB <- cbind(cccA1B.f6.91.add$annual_Biomass[,j],mirA1B.f6.91.add$annual_Biomass[,j],echA1B.f6.91.add$annual_Biomass[,j])
#   for (i in 1:49) {
#     # meanA1B.f6[i,j] <- mean(cccA1B.f6.91.add$annual_Biomass[i,j],mirA1B.f6.91.add$annual_Biomass[i,j],echA1B.f6.91.add$annual_Biomass[i,j])
#     meanA1B.f6_BB[i,j] <- mean(temp_meanA1B.f6_BB[i,])
#   }
# }
# rownames(meanA1B.f6_BB) <- 1991:2039
# colnames(meanA1B.f6_BB) <- colnames(cccA1B.f6.91.add$annual_Biomass)

# # Lets plot it now ------------- #
# # Mammals
# par(mfrow=c(3,3))
# for (i in 2:10) {
#   plot(meanA1B.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Biomass[,i],mirA1B.f6.91.add$annual_Biomass[,i],echA1B.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Annual Biomass")
#   lines(cccA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Biomass[,i],mirA1B.f6.91.add$annual_Biomass[,i],echA1B.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Annual Biomass")
#   lines(cccA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 1
# par(mfrow=c(4,5))
# for (i in 17:36) {
#   plot(meanA1B.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Biomass[,i],mirA1B.f6.91.add$annual_Biomass[,i],echA1B.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Annual Biomass")
#   lines(cccA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Fish part 2
# par(mfrow=c(4,5))
# for (i in 37:56) {
#   plot(meanA1B.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Biomass[,i],mirA1B.f6.91.add$annual_Biomass[,i],echA1B.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Annual Biomass")
#   lines(cccA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Biomass[,i],mirA1B.f6.91.add$annual_Biomass[,i],echA1B.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Annual Biomass")
#   lines(cccA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Just the forcing groups
# par(mfrow=c(2,3))
# for (i in 65:70) {
#   plot(meanA1B.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Biomass[,i],mirA1B.f6.91.add$annual_Biomass[,i],echA1B.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Annual Biomass")
#   lines(cccA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Biomass[18:27,i]), col="black")
# }
# 
# # Detritus
# par(mfrow=c(1,2))
# for (i in 72:73) {
#   plot(meanA1B.f6_BB[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Biomass[,i],mirA1B.f6.91.add$annual_Biomass[,i],echA1B.f6.91.add$annual_Biomass[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Annual Biomass")
#   lines(cccA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Biomass[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_BB[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Biomass[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Biomass[1:27,i]), col="black")
# }

# Now do the same but for catch ---------------------------------------------- #
# Mean catch up to 2039
# meanA1B.f6_CC <- matrix(nrow=49, ncol=73)
# for (j in 1:73) {
#   temp_meanA1B.f6_CC <- cbind(cccA1B.f6.91.add$annual_Catch[,j],mirA1B.f6.91.add$annual_Catch[,j],echA1B.f6.91.add$annual_Catch[,j])
#   for (i in 1:49) {
#     # meanA1B.f6[i,j] <- mean(cccA1B.f6.91.add$annual_Catch[i,j],mirA1B.f6.91.add$annual_Catch[i,j],echA1B.f6.91.add$annual_Catch[i,j])
#     meanA1B.f6_CC[i,j] <- mean(temp_meanA1B.f6_CC[i,])
#   }
# }
# rownames(meanA1B.f6_CC) <- 1991:2039
# colnames(meanA1B.f6_CC) <- colnames(cccA1B.f6.91.add$annual_Catch)

# # Lets plot it now ------------- #
# # Mammals
# mam_CC <- c(3,5,6,7,9,10)
# par(mfrow=c(2,3))
# for (i in mam_CC) {
#   plot(meanA1B.f6_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Catch[,i],mirA1B.f6.91.add$annual_Catch[,i],echA1B.f6.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Catch")
#   lines(cccA1B.f6.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Seabirds
# par(mfrow=c(2,3))
# for (i in 11:16) {
#   plot(meanA1B.f6_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Catch[,i],mirA1B.f6.91.add$annual_Catch[,i],echA1B.f6.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Catch")
#   lines(cccA1B.f6.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Catch[18:27,i]), col="black")
# }
# 
# # Capped species (fish)
# par(mfrow=c(4,6))
# for (i in 1:22) {
#   plot(meanA1B.f6_CC[,capped_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Catch[,capped_sp[i]],mirA1B.f6.91.add$annual_Catch[,capped_sp[i]],echA1B.f6.91.add$annual_Catch[,capped_sp[i]])),
#        lwd=3, main=c(capped_sp[i], "cccA1B-F_equil"), ylab="Catch")
#   lines(cccA1B.f6.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Catch[,capped_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_CC[,capped_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Catch[1:27,capped_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Catch[18:27,capped_sp[i]]), col="black")
# }
# 
# # crab species
# par(mfrow=c(2,2))
# for (i in 1:3) {
#   plot(meanA1B.f6_CC[,crab_sp[i]], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Catch[,crab_sp[i]],mirA1B.f6.91.add$annual_Catch[,crab_sp[i]],echA1B.f6.91.add$annual_Catch[,crab_sp[i]])),
#        lwd=3, main=c(crab_sp[i], "cccA1B-F_equil"), ylab="Catch")
#   lines(cccA1B.f6.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Catch[,crab_sp[i]], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_CC[,crab_sp[i]], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Catch[1:27,crab_sp[i]], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Catch[18:27,crab_sp[i]]), col="black")
# }
# 
# # Inverts
# par(mfrow=c(4,4))
# for (i in 57:72) {
#   plot(meanA1B.f6_CC[,i], type='l', col='deepskyblue',
#        ylim=c(0,max(cccA1B.f6.91.add$annual_Catch[,i],mirA1B.f6.91.add$annual_Catch[,i],echA1B.f6.91.add$annual_Catch[,i])),
#        lwd=3, main=c(bal$Group[i-1], "cccA1B-F_equil"), ylab="Annual Biomass")
#   lines(cccA1B.f6.91.add$annual_Catch[,i], type = 'l', col='red', lwd=2, lty=2)
#   lines(echA1B.f6.91.add$annual_Catch[,i], type = 'l', col='blue', lwd=2, lty=2)
#   lines(mirA1B.f6.91.add$annual_Catch[,i], type = 'l', col='darkgreen', lwd=2, lty=2)
#   lines(meanA1B.f6_CC[,i], col='deepskyblue', lwd=3)
#   lines(cccA1B.f6.91.add$annual_Catch[1:27,i], col="gray50", lwd=3)
#   abline(v=c(27), lwd=2, lty=2)
#   abline(h=mean(cccA1B.f6.91.add$annual_Catch[18:27,i]), col="black")
# }




# ---------------------------------------------------------------------------- #
# ============================================================================ #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ---------------------------------------------------------------------------- #
# ============================================================================ #

# plots for core species
# par(mfrow=c(1,1))

# Pacific cod
# par(mfrow=c(4,2))
# # Status quo
# plot(1991:2099,mean45.f1_BB[,"P.cod_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,"P.cod_Adu"],mir45.f1.91.add$annual_Biomass[,"P.cod_Adu"],ces45.f1.91.add$annual_Biomass[,"P.cod_Adu"])),
#      main="P.cod Status quo")
# lines(1991:2099,mean85.f1_BB[,"P.cod_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_BB[,"P.cod_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_BB[1:27,"P.cod_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f1_CC[,"P.cod_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,"P.cod_Adu"],mir45.f1.91.add$annual_Catch[,"P.cod_Adu"],ces45.f1.91.add$annual_Catch[,"P.cod_Adu"])),
#      main="P.cod Status quo")
# lines(1991:2099,mean85.f1_CC[,"P.cod_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_CC[,"P.cod_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_CC[1:27,"P.cod_Adu"], type = 'l', col="gray50", lwd=3)
# # Gadid
# plot(1991:2099,mean45.f2_BB[,"P.cod_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,"P.cod_Adu"],mir45.f2.91.add$annual_Biomass[,"P.cod_Adu"],ces45.f2.91.add$annual_Biomass[,"P.cod_Adu"])),
#      main="P.cod more gadid")
# lines(1991:2099,mean85.f2_BB[,"P.cod_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_BB[,"P.cod_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_BB[1:27,"P.cod_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f2_CC[,"P.cod_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,"P.cod_Adu"],mir45.f2.91.add$annual_Catch[,"P.cod_Adu"],ces45.f2.91.add$annual_Catch[,"P.cod_Adu"])),
#      main="P.cod more gadid")
# lines(1991:2099,mean85.f2_CC[,"P.cod_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_CC[,"P.cod_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_CC[1:27,"P.cod_Adu"], type = 'l', col="gray50", lwd=3)
# # Flats
# plot(1991:2099,mean45.f3_BB[,"P.cod_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,"P.cod_Adu"],mir45.f3.91.add$annual_Biomass[,"P.cod_Adu"],ces45.f3.91.add$annual_Biomass[,"P.cod_Adu"])),
#      main="P.cod more flats")
# lines(1991:2099,mean85.f3_BB[,"P.cod_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_BB[,"P.cod_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_BB[1:27,"P.cod_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f3_CC[,"P.cod_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,"P.cod_Adu"],mir45.f3.91.add$annual_Catch[,"P.cod_Adu"],ces45.f3.91.add$annual_Catch[,"P.cod_Adu"])),
#      main="P.cod more flats")
# lines(1991:2099,mean85.f3_CC[,"P.cod_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_CC[,"P.cod_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_CC[1:27,"P.cod_Adu"], type = 'l', col="gray50", lwd=3)
# # No OY catch
# plot(1991:2099,mean45.f4_BB[,"P.cod_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,"P.cod_Adu"],mir45.f4.91.add$annual_Biomass[,"P.cod_Adu"],ces45.f4.91.add$annual_Biomass[,"P.cod_Adu"])),
#      main="P.cod no fishing")
# lines(1991:2099,mean85.f4_BB[,"P.cod_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_BB[,"P.cod_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_BB[1:27,"P.cod_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f4_CC[,"P.cod_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,"P.cod_Adu"],mir45.f4.91.add$annual_Catch[,"P.cod_Adu"],ces45.f4.91.add$annual_Catch[,"P.cod_Adu"])),
#      main="P.cod no fishing")
# lines(1991:2099,mean85.f4_CC[,"P.cod_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_CC[,"P.cod_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_CC[1:27,"P.cod_Adu"], type = 'l', col="gray50", lwd=3)
# 
# 
# lines(mean45.f2_BB[,"P.cod_Adu"], type='l', col="red", lwd=3)
# lines(mean45.f3_BB[,"P.cod_Adu"], type='l', col="darkgreen", lwd=3, lty=2)
# lines(mean45.f4_BB[,"P.cod_Adu"], type='l', col="gray50", lwd=3)
# 
# # Walleye pollock
# par(mfrow=c(4,2))
# # Status quo
# plot(1991:2099,mean45.f1_BB[,"W.pollock_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,"W.pollock_Adu"],mir45.f1.91.add$annual_Biomass[,"W.pollock_Adu"],ces45.f1.91.add$annual_Biomass[,"W.pollock_Adu"])),
#      main="W.pollock Status quo")
# lines(1991:2099,mean85.f1_BB[,"W.pollock_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_BB[,"W.pollock_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_BB[1:27,"W.pollock_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f1_CC[,"W.pollock_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,"W.pollock_Adu"],mir45.f1.91.add$annual_Catch[,"W.pollock_Adu"],ces45.f1.91.add$annual_Catch[,"W.pollock_Adu"])),
#      main="W.pollock Status quo")
# lines(1991:2099,mean85.f1_CC[,"W.pollock_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_CC[,"W.pollock_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_CC[1:27,"W.pollock_Adu"], type = 'l', col="gray50", lwd=3)
# # Gadid
# plot(1991:2099,mean45.f2_BB[,"W.pollock_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,"W.pollock_Adu"],mir45.f2.91.add$annual_Biomass[,"W.pollock_Adu"],ces45.f2.91.add$annual_Biomass[,"W.pollock_Adu"])),
#      main="W.pollock more gadid")
# lines(1991:2099,mean85.f2_BB[,"W.pollock_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_BB[,"W.pollock_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_BB[1:27,"W.pollock_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f2_CC[,"W.pollock_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,"W.pollock_Adu"],mir45.f2.91.add$annual_Catch[,"W.pollock_Adu"],ces45.f2.91.add$annual_Catch[,"W.pollock_Adu"])),
#      main="W.pollock more gadid")
# lines(1991:2099,mean85.f2_CC[,"W.pollock_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_CC[,"W.pollock_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_CC[1:27,"W.pollock_Adu"], type = 'l', col="gray50", lwd=3)
# # Flats
# plot(1991:2099,mean45.f3_BB[,"W.pollock_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,"W.pollock_Adu"],mir45.f3.91.add$annual_Biomass[,"W.pollock_Adu"],ces45.f3.91.add$annual_Biomass[,"W.pollock_Adu"])),
#      main="W.pollock more flats")
# lines(1991:2099,mean85.f3_BB[,"W.pollock_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_BB[,"W.pollock_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_BB[1:27,"W.pollock_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f3_CC[,"W.pollock_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,"W.pollock_Adu"],mir45.f3.91.add$annual_Catch[,"W.pollock_Adu"],ces45.f3.91.add$annual_Catch[,"W.pollock_Adu"])),
#      main="W.pollock more flats")
# lines(1991:2099,mean85.f3_CC[,"W.pollock_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_CC[,"W.pollock_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_CC[1:27,"W.pollock_Adu"], type = 'l', col="gray50", lwd=3)
# # No OY catch
# plot(1991:2099,mean45.f4_BB[,"W.pollock_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,"W.pollock_Adu"],mir45.f4.91.add$annual_Biomass[,"W.pollock_Adu"],ces45.f4.91.add$annual_Biomass[,"W.pollock_Adu"])),
#      main="W.pollock no fishing")
# lines(1991:2099,mean85.f4_BB[,"W.pollock_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_BB[,"W.pollock_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_BB[1:27,"W.pollock_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f4_CC[,"W.pollock_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,"W.pollock_Adu"],mir45.f4.91.add$annual_Catch[,"W.pollock_Adu"],ces45.f4.91.add$annual_Catch[,"W.pollock_Adu"])),
#      main="W.pollock no fishing")
# lines(1991:2099,mean85.f4_CC[,"W.pollock_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_CC[,"W.pollock_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_CC[1:27,"W.pollock_Adu"], type = 'l', col="gray50", lwd=3)
# 
# 
# # ATF
# par(mfrow=c(4,2))
# # Status quo
# plot(1991:2099,mean45.f1_BB[,"Arrowtooth_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"],mir45.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"],ces45.f1.91.add$annual_Biomass[,"Arrowtooth_Adu"])),
#      main="Arrowtooth Status quo")
# lines(1991:2099,mean85.f1_BB[,"Arrowtooth_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_BB[,"Arrowtooth_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_BB[1:27,"Arrowtooth_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f1_CC[,"Arrowtooth_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,"Arrowtooth_Adu"],mir45.f1.91.add$annual_Catch[,"Arrowtooth_Adu"],ces45.f1.91.add$annual_Catch[,"Arrowtooth_Adu"])),
#      main="Arrowtooth Status quo")
# lines(1991:2099,mean85.f1_CC[,"Arrowtooth_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_CC[,"Arrowtooth_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_CC[1:27,"Arrowtooth_Adu"], type = 'l', col="gray50", lwd=3)
# # Gadid
# plot(1991:2099,mean45.f2_BB[,"Arrowtooth_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"],mir45.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"],ces45.f2.91.add$annual_Biomass[,"Arrowtooth_Adu"])),
#      main="Arrowtooth more gadid")
# lines(1991:2099,mean85.f2_BB[,"Arrowtooth_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_BB[,"Arrowtooth_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_BB[1:27,"Arrowtooth_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f2_CC[,"Arrowtooth_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,"Arrowtooth_Adu"],mir45.f2.91.add$annual_Catch[,"Arrowtooth_Adu"],ces45.f2.91.add$annual_Catch[,"Arrowtooth_Adu"])),
#      main="Arrowtooth more gadid")
# lines(1991:2099,mean85.f2_CC[,"Arrowtooth_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_CC[,"Arrowtooth_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_CC[1:27,"Arrowtooth_Adu"], type = 'l', col="gray50", lwd=3)
# # Flats
# plot(1991:2099,mean45.f3_BB[,"Arrowtooth_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"],mir45.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"],ces45.f3.91.add$annual_Biomass[,"Arrowtooth_Adu"])),
#      main="Arrowtooth more flats")
# lines(1991:2099,mean85.f3_BB[,"Arrowtooth_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_BB[,"Arrowtooth_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_BB[1:27,"Arrowtooth_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f3_CC[,"Arrowtooth_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,"Arrowtooth_Adu"],mir45.f3.91.add$annual_Catch[,"Arrowtooth_Adu"],ces45.f3.91.add$annual_Catch[,"Arrowtooth_Adu"])),
#      main="Arrowtooth more flats")
# lines(1991:2099,mean85.f3_CC[,"Arrowtooth_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_CC[,"Arrowtooth_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_CC[1:27,"Arrowtooth_Adu"], type = 'l', col="gray50", lwd=3)
# # No OY catch
# plot(1991:2099,mean45.f4_BB[,"Arrowtooth_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"],mir45.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"],ces45.f4.91.add$annual_Biomass[,"Arrowtooth_Adu"])),
#      main="Arrowtooth no fishing")
# lines(1991:2099,mean85.f4_BB[,"Arrowtooth_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_BB[,"Arrowtooth_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_BB[1:27,"Arrowtooth_Adu"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f4_CC[,"Arrowtooth_Adu"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,"Arrowtooth_Adu"],mir45.f4.91.add$annual_Catch[,"Arrowtooth_Adu"],ces45.f4.91.add$annual_Catch[,"Arrowtooth_Adu"])),
#      main="Arrowtooth no fishing")
# lines(1991:2099,mean85.f4_CC[,"Arrowtooth_Adu"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_CC[,"Arrowtooth_Adu"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_CC[1:27,"Arrowtooth_Adu"], type = 'l', col="gray50", lwd=3)
# 
# 
# 
# # NRS
# par(mfrow=c(4,2))
# # Status quo
# plot(1991:2099,mean45.f1_BB[,"N.Rock.sole"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,"N.Rock.sole"],mir45.f1.91.add$annual_Biomass[,"N.Rock.sole"],ces45.f1.91.add$annual_Biomass[,"N.Rock.sole"])),
#      main="NRS Status quo")
# lines(1991:2099,mean85.f1_BB[,"N.Rock.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_BB[,"N.Rock.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_BB[1:27,"N.Rock.sole"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f1_CC[,"N.Rock.sole"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,"N.Rock.sole"],mir45.f1.91.add$annual_Catch[,"N.Rock.sole"],ces45.f1.91.add$annual_Catch[,"N.Rock.sole"])),
#      main="NRS Status quo")
# lines(1991:2099,mean85.f1_CC[,"N.Rock.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_CC[,"N.Rock.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_CC[1:27,"N.Rock.sole"], type = 'l', col="gray50", lwd=3)
# # Gadid
# plot(1991:2099,mean45.f2_BB[,"N.Rock.sole"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,"N.Rock.sole"],mir45.f2.91.add$annual_Biomass[,"N.Rock.sole"],ces45.f2.91.add$annual_Biomass[,"N.Rock.sole"])),
#      main="NRS more gadid")
# lines(1991:2099,mean85.f2_BB[,"N.Rock.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_BB[,"N.Rock.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_BB[1:27,"N.Rock.sole"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f2_CC[,"N.Rock.sole"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,"N.Rock.sole"],mir45.f2.91.add$annual_Catch[,"N.Rock.sole"],ces45.f2.91.add$annual_Catch[,"N.Rock.sole"])),
#      main="NRS more gadid")
# lines(1991:2099,mean85.f2_CC[,"N.Rock.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_CC[,"N.Rock.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_CC[1:27,"N.Rock.sole"], type = 'l', col="gray50", lwd=3)
# # Flats
# plot(1991:2099,mean45.f3_BB[,"N.Rock.sole"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,"N.Rock.sole"],mir45.f3.91.add$annual_Biomass[,"N.Rock.sole"],ces45.f3.91.add$annual_Biomass[,"N.Rock.sole"])),
#      main="NRS more flats")
# lines(1991:2099,mean85.f3_BB[,"N.Rock.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_BB[,"N.Rock.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_BB[1:27,"N.Rock.sole"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f3_CC[,"N.Rock.sole"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,"N.Rock.sole"],mir45.f3.91.add$annual_Catch[,"N.Rock.sole"],ces45.f3.91.add$annual_Catch[,"N.Rock.sole"])),
#      main="NRS more flats")
# lines(1991:2099,mean85.f3_CC[,"N.Rock.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_CC[,"N.Rock.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_CC[1:27,"N.Rock.sole"], type = 'l', col="gray50", lwd=3)
# # No OY catch
# plot(1991:2099,mean45.f4_BB[,"N.Rock.sole"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,"N.Rock.sole"],mir45.f4.91.add$annual_Biomass[,"N.Rock.sole"],ces45.f4.91.add$annual_Biomass[,"N.Rock.sole"])),
#      main="NRS no fishing")
# lines(1991:2099,mean85.f4_BB[,"N.Rock.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_BB[,"N.Rock.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_BB[1:27,"N.Rock.sole"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f4_CC[,"N.Rock.sole"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,"N.Rock.sole"],mir45.f4.91.add$annual_Catch[,"N.Rock.sole"],ces45.f4.91.add$annual_Catch[,"N.Rock.sole"])),
#      main="NRS no fishing")
# lines(1991:2099,mean85.f4_CC[,"N.Rock.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_CC[,"N.Rock.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_CC[1:27,"N.Rock.sole"], type = 'l', col="gray50", lwd=3)
# 
# 
# 
# # YFS
# par(mfrow=c(4,2))
# # Status quo
# plot(1991:2099,mean45.f1_BB[,"YF.sole"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd85.f1.91.add$annual_Biomass[,"YF.sole"],mir85.f1.91.add$annual_Biomass[,"YF.sole"],ces85.f1.91.add$annual_Biomass[,"YF.sole"])),
#      main="YFS Status quo")
# lines(1991:2099,mean85.f1_BB[,"YF.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_BB[,"YF.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_BB[1:27,"YF.sole"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f1_CC[,"YF.sole"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,"YF.sole"],mir45.f1.91.add$annual_Catch[,"YF.sole"],ces45.f1.91.add$annual_Catch[,"YF.sole"])),
#      main="YFS Status quo")
# lines(1991:2099,mean85.f1_CC[,"YF.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_CC[,"YF.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_CC[1:27,"YF.sole"], type = 'l', col="gray50", lwd=3)
# # Gadid
# plot(1991:2099,mean45.f2_BB[,"YF.sole"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd85.f2.91.add$annual_Biomass[,"YF.sole"],mir85.f2.91.add$annual_Biomass[,"YF.sole"],ces85.f2.91.add$annual_Biomass[,"YF.sole"])),
#      main="YFS more gadid")
# lines(1991:2099,mean85.f2_BB[,"YF.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_BB[,"YF.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_BB[1:27,"YF.sole"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f2_CC[,"YF.sole"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,"YF.sole"],mir45.f2.91.add$annual_Catch[,"YF.sole"],ces45.f2.91.add$annual_Catch[,"YF.sole"])),
#      main="YFS more gadid")
# lines(1991:2099,mean85.f2_CC[,"YF.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_CC[,"YF.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_CC[1:27,"YF.sole"], type = 'l', col="gray50", lwd=3)
# # Flats
# plot(1991:2099,mean45.f3_BB[,"YF.sole"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd85.f3.91.add$annual_Biomass[,"YF.sole"],mir85.f3.91.add$annual_Biomass[,"YF.sole"],ces85.f3.91.add$annual_Biomass[,"YF.sole"])),
#      main="YFS more flats")
# lines(1991:2099,mean85.f3_BB[,"YF.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_BB[,"YF.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_BB[1:27,"YF.sole"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f3_CC[,"YF.sole"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,"YF.sole"],mir45.f3.91.add$annual_Catch[,"YF.sole"],ces45.f3.91.add$annual_Catch[,"YF.sole"])),
#      main="YFS more flats")
# lines(1991:2099,mean85.f3_CC[,"YF.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_CC[,"YF.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_CC[1:27,"YF.sole"], type = 'l', col="gray50", lwd=3)
# # No OY catch
# plot(1991:2099,mean45.f4_BB[,"YF.sole"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd85.f4.91.add$annual_Biomass[,"YF.sole"],mir85.f4.91.add$annual_Biomass[,"YF.sole"],ces85.f4.91.add$annual_Biomass[,"YF.sole"])),
#      main="YFS no fishing")
# lines(1991:2099,mean85.f4_BB[,"YF.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_BB[,"YF.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_BB[1:27,"YF.sole"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f4_CC[,"YF.sole"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,"YF.sole"],mir45.f4.91.add$annual_Catch[,"YF.sole"],ces45.f4.91.add$annual_Catch[,"YF.sole"])),
#      main="YFS no fishing")
# lines(1991:2099,mean85.f4_CC[,"YF.sole"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_CC[,"YF.sole"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_CC[1:27,"YF.sole"], type = 'l', col="gray50", lwd=3)
# 
# 
# # Opilio
# par(mfrow=c(4,2))
# # Status quo
# plot(1991:2099,mean45.f1_BB[,"Opilio"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Biomass[,"Opilio"],mir45.f1.91.add$annual_Biomass[,"Opilio"],ces45.f1.91.add$annual_Biomass[,"Opilio"])),
#      main="Opilio Status quo")
# lines(1991:2099,mean85.f1_BB[,"Opilio"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_BB[,"Opilio"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_BB[1:27,"Opilio"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f1_CC[,"Opilio"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f1.91.add$annual_Catch[,"Opilio"],mir45.f1.91.add$annual_Catch[,"Opilio"],ces45.f1.91.add$annual_Catch[,"Opilio"])),
#      main="Opilio Status quo")
# lines(1991:2099,mean85.f1_CC[,"Opilio"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f1_CC[,"Opilio"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f1_CC[1:27,"Opilio"], type = 'l', col="gray50", lwd=3)
# # Gadid
# plot(1991:2099,mean45.f2_BB[,"Opilio"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Biomass[,"Opilio"],mir45.f2.91.add$annual_Biomass[,"Opilio"],ces45.f2.91.add$annual_Biomass[,"Opilio"])),
#      main="Opilio more gadid")
# lines(1991:2099,mean85.f2_BB[,"Opilio"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_BB[,"Opilio"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_BB[1:27,"Opilio"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f2_CC[,"Opilio"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f2.91.add$annual_Catch[,"Opilio"],mir45.f2.91.add$annual_Catch[,"Opilio"],ces45.f2.91.add$annual_Catch[,"Opilio"])),
#      main="Opilio more gadid")
# lines(1991:2099,mean85.f2_CC[,"Opilio"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f2_CC[,"Opilio"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f2_CC[1:27,"Opilio"], type = 'l', col="gray50", lwd=3)
# # Flats
# plot(1991:2099,mean45.f3_BB[,"Opilio"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Biomass[,"Opilio"],mir45.f3.91.add$annual_Biomass[,"Opilio"],ces45.f3.91.add$annual_Biomass[,"Opilio"])),
#      main="Opilio more flats")
# lines(1991:2099,mean85.f3_BB[,"Opilio"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_BB[,"Opilio"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_BB[1:27,"Opilio"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f3_CC[,"Opilio"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f3.91.add$annual_Catch[,"Opilio"],mir45.f3.91.add$annual_Catch[,"Opilio"],ces45.f3.91.add$annual_Catch[,"Opilio"])),
#      main="Opilio more flats")
# lines(1991:2099,mean85.f3_CC[,"Opilio"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f3_CC[,"Opilio"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f3_CC[1:27,"Opilio"], type = 'l', col="gray50", lwd=3)
# # No OY catch
# plot(1991:2099,mean45.f4_BB[,"Opilio"], type='l', col="deepskyblue", lwd=3, ylab="Annual Biomass",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Biomass[,"Opilio"],mir45.f4.91.add$annual_Biomass[,"Opilio"],ces45.f4.91.add$annual_Biomass[,"Opilio"])),
#      main="Opilio no fishing")
# lines(1991:2099,mean85.f4_BB[,"Opilio"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_BB[,"Opilio"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_BB[1:27,"Opilio"], type = 'l', col="gray50", lwd=3)
# plot(1991:2099,mean45.f4_CC[,"Opilio"], type='l', col="deepskyblue", lwd=3, ylab="Catch",
#      ylim=c(0,max(gfd45.f4.91.add$annual_Catch[,"Opilio"],mir45.f4.91.add$annual_Catch[,"Opilio"],ces45.f4.91.add$annual_Catch[,"Opilio"])),
#      main="Opilio no fishing")
# lines(1991:2099,mean85.f4_CC[,"Opilio"], type = 'l', col="red", lwd=3)
# lines(1991:2039,meanA1B.f4_CC[,"Opilio"], type = 'l', col="darkgreen", lwd=3, lty=2)
# lines(1991:2017,meanA1B.f4_CC[1:27,"Opilio"], type = 'l', col="gray50", lwd=3)



