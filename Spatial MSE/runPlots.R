## Run the MSE plots 

source('plotMSE.R')

# Plot CLIMATE STUFF
results <- 'results/Climate/'
plotnames <- c('base scenario','medium increase','high increase')
#plotnames <-  factor(plotnames, levels = c('No change','Medium increase', 'High increase'))

#plotnames <- c('1','2','3')
plotMSE(results,plotnames = plotnames, plotexp = TRUE)

# Plot HCR stuff
results <- 'results/HCR/'
plotMSE(results, plotexp = TRUE, plotnames = c('Floor 50','HCR','Historical TAC','Realized'), pidx = c(2,3,4,1))

results <- 'results/survey/'
plotnames=c('Floor1','Floor2','Floor3','Hist1','Hist2','Hist3',
            'Cat1','Cat2','Cat3','HCR1','HCR2','HCR3')
pord=c(10,11,12,4,5,6,7,8,9,1,2,3)    
plotMSE(results, plotexp = TRUE, plotnames = plotnames, pidx =pord)

results <- 'results/survey/JTC/'
plotMSE(results, plotexp = TRUE, plotnames = c('Annual','Biennial.base','Triennial'), pidx = c(2,1,3))

results <- 'results/survey/Realized/'
plotMSE(results, plotexp = FALSE, plotnames = c('survey1','base scenario','survey3'), pidx = c(2,1,3))


# Plot the bias adjustment (no fishing) runs
source('plotMSE_biasadjustment.R')
results <- 'results/bias adjustment/'
plotMSE_biasadjustment(results, plotnames = c('0.87','0.5','0'), plotexp = TRUE)

# Plot HCR stuff
results <- 'results/Selectivity/'
plotnames <-  c('base scenario','US small \nselectivity','2018 selectivity')
#plotnames <- c('1','2','3')
plotMSE(results,plotnames = plotnames, plotexp = TRUE)
