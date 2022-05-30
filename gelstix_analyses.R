################################################################################
### GELSTIX study, analyses
### Sander van Kuijk
###
### Goal: compute measures of efficacy and safety of GelStix compared to sham
### in patients with chronic discogenic low back pain 
###
### Date created: 17/01/2022
### Date last change: 30/05/2022
###
### 
### sessionInfo()
### R version 4.1.2 (2021-11-01)
### Platform: x86_64-w64-mingw32/x64 (64-bit)
### Running under: Windows 10 x64 (build 19042)
### 
### Matrix products: default
### 
### locale:
### [1] LC_COLLATE=English_Netherlands.1252  LC_CTYPE=English_Netherlands.1252   
### [3] LC_MONETARY=English_Netherlands.1252 LC_NUMERIC=C                        
### [5] LC_TIME=English_Netherlands.1252    
### 
### attached base packages:
###   [1] stats     graphics  grDevices utils     datasets  methods   base     
### 
### loaded via a namespace (and not attached):
###   [1] compiler_4.1.2 tools_4.1.2
################################################################################

rm(list = ls())

### Read in data
setwd("/home/sander/Documents/work/research/gelstix/data")
load("GELSTIX_data_final.Rda")
load("GELSTIX_subset_imp_final.Rda")

### Baseline table
table(d$plac_gelstix_6m.factor)
table(di$plac_gelstix_6m.factor)

# Age
aggregate(d$ttt_sgage_1, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# Sex
table(d$ttt_sgsex_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$ttt_sgsex_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

# Smoking
table(d$ttt_sj_smo_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$ttt_sj_smo_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

# Analysis of primary outcome
