################################################################################
### GELSTIX study, analyses
### Sander van Kuijk
###
### Goal: compute measures of efficacy and safety of GelStix compared to sham
### in patients with chronic discogenic low back pain 
###
### Date created: 17/01/2022
### Date last change: 23/05/2022
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

# Read in data
setwd("/home/sander/Documents/work/research/gelstix/data")
load("GELSTIX_data.Rda")
rand <- read.csv("Gelstics_randomization_extraction_20220202_0958.csv")

# Explore dataset
d$record_id
length(d$record_id) - length(unique(d$record_id)) # 0 denotes no double entries
d$id_patient # Incomplete
d$id_patient_1 # Incomplete

# Eligibility criteria
sum(d$eligibility.factor == "Yes", na.rm = TRUE) # 1 NA, what happened?
d[is.na(d$eligibility.factor), 8:26] # Seems OK!

# Baseline table, to be stratified!

d$ttt_sgage_1
table(d$ttt_sgsex_1.factor)
table(d$ttt_sj_smo_1.factor)

