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
table(d$plac_gelstix_6m.factor) # Randomisation
d <- subset(d, !is.na(d$plac_gelstix_6m.factor)) # Notify Eva

# Explore dataset
d$record_id
length(d$record_id) - length(unique(d$record_id)) # 0 denotes no double entries

# Eligibility criteria
sum(d$eligibility.factor == "Yes", na.rm = TRUE) # 1 NA, what happened?
d[is.na(d$eligibility.factor), 8:26] # Seems OK!

# Baseline table, to be stratified!

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

### Outcomes
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


