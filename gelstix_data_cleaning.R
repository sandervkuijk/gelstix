################################################################################
### GELSTIX study, data manipulation before analyses
### Sander van Kuijk
###
### Goal: Clean data, compute PROM domain and total scores, and impute data. 
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

### Read in data
setwd("/home/sander/Documents/work/research/gelstix/data")
load("GELSTIX_data.Rda")
table(d$plac_gelstix_6m.factor) # Randomisation
d <- subset(d, !is.na(d$plac_gelstix_6m.factor)) # Notify Eva

# Explore dataset
d$record_id
length(d$record_id) - length(unique(d$record_id)) # 0 denotes no double entries

# Eligibility criteria
sum(d$eligibility.factor == "Yes", na.rm = TRUE) # 1 NA, what happened?
d[is.na(d$eligibility.factor), 8:26] # Seems OK!

### Compute Patient Reported Outcome Measures
# screening follow-up pain diary
d$psc <- rowMeans(data.frame(d$pd_d1_9_1, d$pd_d1_14_1, d$pd_d1_20_1,
                             d$pd_d2_9_1, d$pd_d2_14_1, d$pd_d2_20_1,
                             d$pd_d3_9_1, d$pd_d3_14_1, d$pd_d3_20_1,
                             d$pd_d4_9_1, d$pd_d4_14_1, d$pd_d4_20_1,
                             d$pd_d5_9_1, d$pd_d5_14_1, d$pd_d5_20_1),
                  na.rm = TRUE)

# 1 week follow-up pain diary
d$pw1 <- rowMeans(data.frame(d$pd_d1_9_1w_1, d$pd_d1_14_1w_1, d$pd_d1_20_1w_1,
                             d$pd_d2_9_1w_1, d$pd_d2_14_1w_1, d$pd_d2_20_1w_1,
                             d$pd_d3_9_1w_1, d$pd_d3_14_1w_1, d$pd_d3_20_1w_1,
                             d$pd_d4_9_1w_1, d$pd_d4_14_1w_1, d$pd_d4_20_1w_1,
                             d$pd_d5_9_1w_1, d$pd_d5_14_1w_1, d$pd_d5_20_1w_1),
                  na.rm = TRUE)

# 1 month follow-up pain diary
d$pm1 <- rowMeans(data.frame(d$pd_d1_9_1m_1, d$pd_d1_14_1m_1, d$pd_d1_20_1m_1,
                             d$pd_d2_9_1m_1, d$pd_d2_14_1m_1, d$pd_d2_20_1m_1,
                             d$pd_d3_9_1m_1, d$pd_d3_14_1m_1, d$pd_d3_20_1m_1,
                             d$pd_d4_9_1m_1, d$pd_d4_14_1m_1, d$pd_d4_20_1m_1,
                             d$pd_d5_9_1m_1, d$pd_d5_14_1m_1, d$pd_d5_20_1m_1),
                  na.rm = TRUE)

# 3 month follow-up pain diary
d$pm3 <- rowMeans(data.frame(d$pd_d1_9_3m_1, d$pd_d1_14_3m_1, d$pd_d1_20_3m_1,
                             d$pd_d2_9_3m_1, d$pd_d2_14_3m_1, d$pd_d2_20_3m_1,
                             d$pd_d3_9_3m_1, d$pd_d3_14_3m_1, d$pd_d3_20_3m_1,
                             d$pd_d4_9_3m_1, d$pd_d4_14_3m_1, d$pd_d4_20_3m_1,
                             d$pd_d5_9_3m_1, d$pd_d5_14_3m_1, d$pd_d5_20_3m_1),
                  na.rm = TRUE)

# 6 month follow-up pain diary
d$pm6 <- rowMeans(data.frame(d$pd_d1_9_6m_1, d$pd_d1_14_6m_1, d$pd_d1_20_6m_1,
                             d$pd_d2_9_6m_1, d$pd_d2_14_6m_1, d$pd_d2_20_6m_1,
                             d$pd_d3_9_6m_1, d$pd_d3_14_6m_1, d$pd_d3_20_6m_1,
                             d$pd_d4_9_6m_1, d$pd_d4_14_6m_1, d$pd_d4_20_6m_1,
                             d$pd_d5_9_6m_1, d$pd_d5_14_6m_1, d$pd_d5_20_6m_1),
                  na.rm = TRUE)

# 12 month follow-up pain diary
d$pm12 <- rowMeans(data.frame(d$pd_d1_9_12m_1, d$pd_d1_14_12m_1, d$pd_d1_20_12m_1,
                              d$pd_d2_9_12m_1, d$pd_d2_14_12m_1, d$pd_d2_20_12m_1,
                              d$pd_d3_9_12m_1, d$pd_d3_14_12m_1, d$pd_d3_20_12m_1,
                              d$pd_d4_9_12m_1, d$pd_d4_14_12m_1, d$pd_d4_20_12m_1,
                              d$pd_d5_9_12m_1, d$pd_d5_14_12m_1, d$pd_d5_20_12m_1),
                   na.rm = TRUE)
d$pm12[is.nan(d$pm12)] <- NA

# screening pain catastrophizing
d$pcs <- rowSums(data.frame(d$pc1_1, d$pc2_1, d$pc3_1, d$pc4_1, d$pc5_1,
                            d$pc6_1, d$pc7_1, d$pc8_1, d$pc9_1, d$pc10_1,
                            d$pc11_1, d$pc12_1, d$pc13_1), na.rm = FALSE)

# screening pain self efficacy questionnaire
d$pses <- rowSums(data.frame(d$pse1_1, d$pse2_1, d$pse3_1, d$pse4_1, d$pse5_1,
                             d$pse6_1, d$pse7_1, d$pse8_1, d$pse9_1, d$pse10_1),
                  na.rm = FALSE)

# screening HADS: as = anxiety screening, ds = depression screening
d$hads_as <- rowSums(data.frame(d$h1_1, d$h3_1, d$h5_1, d$h7_1, d$h9_1,
                                d$h11_1, d$h13_1), na.rm = FALSE)
d$hads_ds <- rowSums(data.frame(d$h2_1, d$h4_1, d$h6_1, d$h8_1, d$h10_1,
                                d$h12_1, d$h14_1), na.rm = FALSE)

# screening ODI
d$odis <- rowSums(data.frame(d$o1_1, d$o2_1, d$o3_1, d$o4_1, d$o5_1, d$o6_1,
                             d$o7_1, d$o8_1, d$o9_1, d$o10_1),
                  na.rm = FALSE)/50*100

# 6 month ODI
d$odi6 <- rowSums(data.frame(d$o1_6m_1, d$o2_6m_1, d$o3_6m_1, d$o4_6m_1,
                             d$o5_6m_1, d$o6_6m_1, d$o7_6m_1, d$o9_6m_1,
                             d$o9_6m_1, d$o10_6m_1), na.rm = FALSE)/50*100

# 12 month ODI # 11th patient has only one missing, divided by 45 instead of 50
d$odi12 <- rowSums(data.frame(d$o1_12m_1, d$o2_12m_1, d$o3_12m_1, d$o4_12m_1,
                              d$o5_12m_1, d$o6_12m_1, d$o7_12m_1, d$o8_12m_1,
                              d$o9_12m_1, d$o10_12m_1),
                   na.rm = TRUE)/c(rep(50, 10), 45, rep(50, 28))*100

# screening EQ-5D-5L. Note that these are sumscores, not utilities!
d$eqs <- rowSums(data.frame(d$eq1_1, d$eq2_1, d$eq3_1, d$eq4_1, d$eq5_1),
                 na.rm = FALSE)

# 3 month EQ-5D-5L
d$eq3 <- rowSums(data.frame(d$eq1_3m_1, d$eq2_3m_1, d$eq3_3m_1, d$eq4_3m_1,
                            d$eq5_3m_1), na.rm = FALSE)

# 6 month EQ-5D-5L
d$eq6 <- rowSums(data.frame(d$eq1_6m_1, d$eq2_6m_1, d$eq3_6m_1, d$eq4_6m_1,
                            d$eq5_6m_1), na.rm = FALSE)

# 12 month EQ-5D-5L
d$eq12 <- rowSums(data.frame(d$eq1_12m_1, d$eq2_12m_1, d$eq3_12m_1,
                             d$eq4_12m_1, d$eq5_12m_1), na.rm = FALSE)

## Create dataset for imputation containing baseline, randomisation, and PROMS
keep <- c("ttt_sgage_1", "ttt_sgsex_1", "ttt_sj_smo_1", "psc", "pw1", "pm1",
          "pm3", "pm6", "pm12", "pcs", "pses", "hads_as", "hads_ds", "odis",
          "odi3", "odi6", "odi12", "eqs", "eq3", "eq6", "eq12", "pgic_3m_1",
          "pgic_6m_1", "pgic_12_1", "plac_gelstix_6m.factor")
di <- d[,(names(d) %in% keep)]

## Check missing data
library(mice)

pMiss <- function(x){sum(is.na(x))/length(x)*100}
apply(di, 2, pMiss)
apply(di, 1, pMiss)

# Percentage incomplete patients with respect to these variabeles
m <- round(sum(complete.cases(di) == FALSE)/nrow(di)*100)

# Pattern for visual inspectation
md.pattern(di, rotate.names = TRUE)

# Make an efficient predictor matrix
pred <- quickpred(di, mincor = 0.2)
pred["eq3", "plac_gelstix_6m.factor"] <- 1 # To make sure allocation is used

# Impute small subset of data for analyses on PGIC 6, EQ 3 and 12 months
di_imp <- mice(di, m = m, method = "pmm", predictorMatrix = pred, seed = 7181,
               maxit = 20)

# Save the final data files, ready for analyses
save(d, file = "GELSTIX_data_final.Rda")
save(di, file = "GELSTIX_subset_imp_final.Rda")
rm(d, di)

### End of file.