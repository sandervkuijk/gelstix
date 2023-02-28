################################################################################
### GELSTIX study, analyses
### Sander van Kuijk
###
### Goal: compute measures of efficacy and safety of GelStix compared to sham
### in patients with chronic discogenic low back pain 
###
### Date created: 17/01/2022
### Date last change: 24/06/2022
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

library(reshape2)
library(ggplot2)

### Read in data
setwd("/home/sander/Documents/work/research/gelstix/data")
load("GELSTIX_data_final.Rda")
# load("GELSTIX_subset_imp_final.Rda")

### Baseline table
table(d$plac_gelstix_6m.factor)

# Age
aggregate(d$ttt_sgage_1, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# Sex
table(d$ttt_sgsex_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$ttt_sgsex_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

# BMI
d$exam_lenght_1[d$exam_lenght_1 == 1.82] <- 182
d$exam_bmi <- d$exam_weight_1/(d$exam_lenght_1/100)^2
aggregate(d$exam_bmi, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# Smoking, never
table(d$ttt_sj_smo_1.factor, d$plac_gelstix_6m.factor) # Take NO  
round(prop.table(table(d$ttt_sj_smo_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1) # Take NO

# Smoking, current, amount, and duration
table(d$ttt_sj_smo_1.factor, d$plac_gelstix_6m.factor)
table(d$ttt_sj_smo_stop_1, d$plac_gelstix_6m.factor) # Subtract 2 from placebo group
2/23 # stopped in placebo
7/23 # ever smoked in pacebo
aggregate(d$ttt_sj_smo_day_1, by = list(d$plac_gelstix_6m.factor), FUN = summary)
aggregate(d$ttt_sj_smo_long_1, by = list(d$plac_gelstix_6m.factor), FUN = summary)

# Employment status
table(d$es_occuptime_6m_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$es_occuptime_6m_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

table(d$es_occuptime_6m_1.factor, d$es_backpain_1)

# table(d$es_legpain_1.factor, d$plac_gelstix_6m.factor)
# round(prop.table(table(d$es_legpain_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)
# 
# table(d$es_backpain_6m_1.factor, d$plac_gelstix_6m.factor)
# round(prop.table(table(d$es_backpain_6m_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)
# 
# table(d$es_sick_6m_1.factor, d$plac_gelstix_6m.factor)
# round(prop.table(table(d$es_sick_6m_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)
# 
# table(d$es_disab_6m_1.factor, d$plac_gelstix_6m.factor)
# round(prop.table(table(d$es_disab_6m_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

# Finger to floor distance
d$exam_finger_dist_1
aggregate(d$exam_finger_dist_1, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# Schober test
table(d$exam_shob_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$exam_shob_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

# Levels
table(d$disco_l1_implant_1.factor)
table(d$disco_l2_implant_1.factor)

table(d$disco_l3_implant_1.factor)

table(d$disco_l4_implant_1.factor)

table(d$disco_l5_implant_1.factor)

d$disco_yn_l5s1.factor

# Easy or not
table(d$gelstix_insertion_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$gelstix_insertion_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

# Analgesics
d$pd_d1_pfacec2_1
d$pd_d1_mgacec1_1
d$pd_d1_pfacec1_1
d$pd_d1_pfami1_1

# Other treatment
table(d$sj_pt_bed_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$sj_pt_bed_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

table(d$sj_pt_bra_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$sj_pt_bra_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

table(d$sj_pt_chiro_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$sj_pt_chiro_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

table(d$sj_pt_physi_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$sj_pt_physi_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

table(d$sj_pt_tens_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$sj_pt_tens_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

table(d$sj_pt_acu_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$sj_pt_acu_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

table(d$sj_pt_epi_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$sj_pt_epi_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

table(d$sj_pt_facet_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$sj_pt_facet_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

table(d$sj_pt_stero_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$sj_pt_stero_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

# ODI
sum(is.na(d$odis))
aggregate(d$odis, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# PCS
sum(is.na(d$pcs))
aggregate(d$pcs, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# SFQ?

# PSEQ
sum(is.na(d$pses))
aggregate(d$pses, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# HADS-A
sum(is.na(d$hads_as))
aggregate(d$hads_as, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# HADS-D
sum(is.na(d$hads_ds))
aggregate(d$hads_ds, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# MRI time interval
d$mri_date_1 <- as.Date(d$mri_date_1)
d$gelstix_date_1 <- as.Date(d$gelstix_date_1)
d$mri_time_int <- difftime(d$gelstix_date_1, d$mri_date_1, units = "days")
d$mri_time_int[d$mri_time_int < 0] <- NA # One negative value

d$mri_time_int <- as.numeric(d$d$mri_time_int)
sum(is.na(d$mri_time_int))
aggregate(d$mri_time_int, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE)),
                          sd = round(sd(x, na.rm = TRUE))))

# Pfirman
d$pfir_tr3 <- ifelse(d$disco_l3_implant_1.factor == "Yes", d$mri_l3_pf_1, NA)
d$pfir_tr4 <- ifelse(d$disco_l4_implant_1.factor == "Yes", d$mri_l4_pf_1, NA)
d$pfir_tr5 <- ifelse(d$disco_l5_implant_1.factor == "Yes", d$mri_l5_pf_1, NA)
pfir <- c(d$pfir_tr3, d$pfir_tr4, d$pfir_tr5)
rand <- rep(d$plac_gelstix_6m.factor, 3)
pf <- data.frame(pfir, rand)

table(pf$pfir, pf$rand)
round(prop.table(table(pf$pfir, pf$rand), 2)*100, 1)

# Pfirman at 12m
d$pfir_tr3_12 <- ifelse(d$disco_l3_implant_1.factor == "Yes", d$mri_l3_pf_12m_1, NA)
d$pfir_tr4_12 <- ifelse(d$disco_l4_implant_1.factor == "Yes", d$mri_l4_pf_12m_1, NA)
d$pfir_tr5_12 <- ifelse(d$disco_l5_implant_1.factor == "Yes", d$mri_l5_pf_12m_1, NA)
pfir12 <- c(d$pfir_tr3_12, d$pfir_tr4_12, d$pfir_tr5_12)
rand <- rep(d$plac_gelstix_6m.factor, 3)
pf12 <- data.frame(pfir12, rand)

table(pf12$pfir, pf12$rand)
round(prop.table(table(pf12$pfir, pf12$rand), 2)*100, 1)
fisher.test(table(pf12$pfir, pf12$rand))

# Disc height
d$height_tr3 <- ifelse(d$disco_l3_implant_1.factor == "Yes", d$mri_l3_heigh_1, NA)
d$height_tr4 <- ifelse(d$disco_l4_implant_1.factor == "Yes", d$mri_l4_heigh_1, NA)
d$height_tr5 <- ifelse(d$disco_l5_implant_1.factor == "Yes", d$mri_l5_heigh_1, NA)
heig <- c(d$height_tr3, d$height_tr4, d$height_tr5)
rand <- rep(d$plac_gelstix_6m.factor, 3)
he <- data.frame(heig, rand)

sum(is.na(he$heig))
aggregate(he$heig, by = list(he$rand), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

# Disc height at 12m
d$height_tr3_12 <- ifelse(d$disco_l3_implant_1.factor == "Yes", d$mri_l3_heigh_12m_1, NA)
d$height_tr4_12 <- ifelse(d$disco_l4_implant_1.factor == "Yes", d$mri_l4_heigh_12m_1, NA)
d$height_tr5_12 <- ifelse(d$disco_l5_implant_1.factor == "Yes", d$mri_l5_heigh_12m_1, NA)
heig12 <- c(d$height_tr3_12, d$height_tr4_12, d$height_tr5_12)
rand <- rep(d$plac_gelstix_6m.factor, 3)
he12 <- data.frame(heig12, rand)

sum(is.na(he12$heig12))
aggregate(he12$heig12, by = list(he12$rand), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

t.test(he12$heig12 ~ he12$rand)

# HIZ
d$hiz_tr3 <- ifelse(d$disco_l3_implant_1.factor == "Yes", d$mri_l3_hiz_1, NA)
d$hiz_tr4 <- ifelse(d$disco_l4_implant_1.factor == "Yes", d$mri_l4_hiz_1, NA)
d$hiz_tr5 <- ifelse(d$disco_l5_implant_1.factor == "Yes", d$mri_l5_hiz_1, NA)
hiz <- c(d$hiz_tr3, d$hiz_tr4, d$hiz_tr5)
rand <- rep(d$plac_gelstix_6m.factor, 3)
hi <- data.frame(hiz, rand)

table(hi$hiz, hi$rand)
round(prop.table(table(hi$hiz, hi$rand), 2)*100, 1)

# Schmorl
d$schmo_tr3 <- ifelse(d$disco_l3_implant_1.factor == "Yes", d$mri_l3_schmorl_1, NA)
d$schmo_tr4 <- ifelse(d$disco_l4_implant_1.factor == "Yes", d$mri_l4_schmorl_1, NA)
d$schmo_tr5 <- ifelse(d$disco_l5_implant_1.factor == "Yes", d$mri_l5_schmorl_1, NA)
schm <- c(d$schmo_tr3, d$schmo_tr4, d$schmo_tr5)
rand <- rep(d$plac_gelstix_6m.factor, 3)
sc <- data.frame(schm, rand)

table(sc$schm, sc$rand)
round(prop.table(table(sc$schm, sc$rand), 2)*100, 1)

d$mri_l3_schmorl_1.factor

# Modic
d$mod_tr3 <- ifelse(d$disco_l3_implant_1.factor == "Yes", d$mri_l3_modic_1.factor, NA)
d$mod_tr4 <- ifelse(d$disco_l4_implant_1.factor == "Yes", d$mri_l4_modic_1.factor, NA)
d$mod_tr5 <- ifelse(d$disco_l5_implant_1.factor == "Yes", d$mri_l5_modic_1.factor, NA)
modi <- c(d$mod_tr3, d$mod_tr4, d$mod_tr5)
rand <- rep(d$plac_gelstix_6m.factor, 3)
mod <- data.frame(modi, rand)

table(mod$modi, mod$rand)
round(prop.table(table(mod$modi, mod$rand), 2)*100, 1)

# Modic at 12m
d$mod_tr3_12 <- ifelse(d$disco_l3_implant_1.factor == "Yes", d$mri_l3_modic_12m_1, NA)
d$mod_tr4_12 <- ifelse(d$disco_l4_implant_1.factor == "Yes", d$mri_l4_modic_12m_1, NA)
d$mod_tr5_12 <- ifelse(d$disco_l5_implant_1.factor == "Yes", d$mri_l5_modic_12m_1, NA)
modi12 <- c(d$mod_tr3_12, d$mod_tr4_12, d$mod_tr5_12)
rand <- rep(d$plac_gelstix_6m.factor, 3)
mod12 <- data.frame(modi12, rand)

table(mod12$modi12, mod12$rand)
round(prop.table(table(mod12$modi12, mod12$rand), 2)*100, 1)
fisher.test(table(mod12$modi12, mod12$rand))

# Analysis of primary outcome
d$pchange_6m <- round(d$psc - d$pm6, 1)
sum(is.na(d$pchange_6m))
aggregate(d$pchange_6m, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

t.test(d$pchange_6m ~ d$plac_gelstix_6m.factor)

t.test(d$pw1 ~ d$plac_gelstix_6m.factor)
t.test(d$pm1 ~ d$plac_gelstix_6m.factor)
t.test(d$pm3 ~ d$plac_gelstix_6m.factor)


# Figure 2
d$pm3[is.nan(d$pm3)] <- NA
gp <- c(mean(d$psc[d$plac_gelstix_6m.factor == "Gelstix"], na.rm = TRUE),
        mean(d$pw1[d$plac_gelstix_6m.factor == "Gelstix"], na.rm = TRUE),
        mean(d$pm1[d$plac_gelstix_6m.factor == "Gelstix"], na.rm = TRUE),
        mean(d$pm3[d$plac_gelstix_6m.factor == "Gelstix"], na.rm = TRUE),
        mean(d$pm6[d$plac_gelstix_6m.factor == "Gelstix"], na.rm = TRUE),
        mean(d$pm12[d$plac_gelstix_6m.factor == "Gelstix"], na.rm = TRUE))
cp <- c(mean(d$psc[d$plac_gelstix_6m.factor == "Placebo"], na.rm = TRUE),
        mean(d$pw1[d$plac_gelstix_6m.factor == "Placebo"], na.rm = TRUE),
        mean(d$pm1[d$plac_gelstix_6m.factor == "Placebo"], na.rm = TRUE),
        mean(d$pm3[d$plac_gelstix_6m.factor == "Placebo"], na.rm = TRUE),
        mean(d$pm6[d$plac_gelstix_6m.factor == "Placebo"], na.rm = TRUE),
        mean(d$pm12[d$plac_gelstix_6m.factor == "Placebo"], na.rm = TRUE))
ti <- c(0, 1, 4.3, 13, 26, 52)

setwd("~/Documents/work/research/gelstix/plots")
jpeg("gelstix_pain.jpg", width = 800, height = 500, quality = 100,  pointsize = 20)
plot(ti, gp, type = "l", ylim = c(0, 10), xlab = "Time (months)",
     ylab = "Mean pain (NRS)", xaxt = "n")
lines(ti, cp, lty = 2)
abline(v = 26, lty = 3)
axis(side = 1, at = ti[c(1, 3, 4, 5, 6)], labels = c("0", "1", "3", "6", "12"))
legend("topright", legend = c("Gelstix", "Sham", "Cross-over moment"),
       lty = c(1:3), cex = 0.8, xjust = 1)
dev.off()

# Secondary outcome measures, odi
d$ochange_6m <- d$odis - d$odi6
sum(is.na(d$ochange_6m))
aggregate(d$ochange_6m, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 1),
                          sd = round(sd(x, na.rm = TRUE), 1)))

t.test(d$ochange_6m ~ d$plac_gelstix_6m.factor)

t.test(d$odi6[d$plac_gelstix_6m.factor == "Gelstix"],
       d$odis[d$plac_gelstix_6m.factor == "Gelstix"], paired = TRUE)
t.test(d$odi6[d$plac_gelstix_6m.factor == "Placebo"],
       d$odis[d$plac_gelstix_6m.factor == "Placebo"], paired = TRUE)
# Secondary outcome measures, eq5d
aggregate(d$eq6, by = list(d$plac_gelstix_6m.factor), FUN =
            function(x) c(mn = round(mean(x, na.rm = TRUE), 2),
                          sd = round(sd(x, na.rm = TRUE), 2)))

t.test(d$eq6 ~ d$plac_gelstix_6m.factor)

t.test(d$eq6[d$plac_gelstix_6m.factor == "Gelstix"],
       d$eqs[d$plac_gelstix_6m.factor == "Gelstix"], paired = TRUE)
t.test(d$eq6[d$plac_gelstix_6m.factor == "Placebo"],
       d$eqs[d$plac_gelstix_6m.factor == "Placebo"], paired = TRUE)

# Secondary outcomes: employment status
table(d$es_occuptime_1.factor, d$es_occuptime_6m_1.factor)
d$occ_change <- ifelse(d$es_occuptime_1.factor == d$es_occuptime_6m_1.factor, 1, 0)
table(d$occ_change, d$plac_gelstix_6m.factor)
round(prop.table(table(d$occ_change, d$plac_gelstix_6m.factor), 2)*100, 1)
chisq.test(table(d$occ_change, d$plac_gelstix_6m.factor))

d$es_occuptime_6m_1.factor <- factor(d$es_occuptime_6m_1.factor)
table(d$es_occuptime_6m_1.factor, d$plac_gelstix_6m.factor)
chisq.test(table(d$es_occuptime_6m_1.factor, d$plac_gelstix_6m.factor))

# Secondary outcomes: PGIC
# Create data

round(prop.table(table(d$pgic_3m_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)
round(prop.table(table(d$pgic_6m_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)

fig <- data.frame(group = c("Gelstix","Sham"),
           value1 = c(4.3, 0),
           value2 = c(13, 8.7),
           value3 = c(21.7, 30.4),
           value4 = c(30.4, 26.1),
           value5 = c(21.7, 21.7),
           value6 = c(4.3, 13),
           value7 = c(4.3, 0),
           value8 = c(18.2, 0),
           value9 = c(9.1, 0),
           value10 = c(27.3, 26.1),
           value11 = c(22.7, 39.1),
           value12 = c(4.5, 13),
           value13 = c(18.2, 17.4),
           value14 = c(0, 4))

# # create color palette:
# library(RColorBrewer)
# coul <- brewer.pal(3, "Pastel2") 

# Kleuren nog aanpassen!
melted <- melt(fig, "group")
melted$mnd <- c(rep("3 months", 14), rep("6 months", 14))
melted$variable[15:28] <- melted$variable[1:14]
melted$variable <- factor(melted$variable)
levels(melted$variable) <- c("Very much improved", "Much improved",
                             "Minimally improved", "No change", "Minimally worse",
                             "Much worse", "Very much worse")
melted$Score <- melted$variable

setwd("~/Documents/work/research/gelstix/plots")
jpeg("gelstix_pgic.jpg", width = 800, height = 500, quality = 100,  pointsize = 20)
ggplot(melted, aes(x = group, y = value, fill = Score)) + 
  geom_bar(stat = 'identity', position = 'stack') + facet_grid(~ mnd) +
  xlab("Group") + ylab("Percent") + scale_fill_brewer(palette = "RdYlGn",
  direction = -1) + theme(text = element_text(size = 20))      
dev.off()

d$success3m <- ifelse(d$pgic_3m_1.factor == "Very much improved" |
                      d$pgic_3m_1.factor == "Much improved", 1, 0)
d$success6m <- ifelse(d$pgic_6m_1.factor == "Very much improved" |
                      d$pgic_6m_1.factor == "Much improved", 1, 0)

table(d$success3m, d$plac_gelstix_6m.factor)
round(prop.table(table(d$success3m, d$plac_gelstix_6m.factor), 2)*100, 1)
fisher.test(table(d$success3m, d$plac_gelstix_6m.factor))

table(d$success6m, d$plac_gelstix_6m.factor)
round(prop.table(table(d$success6m, d$plac_gelstix_6m.factor), 2)*100, 1)
fisher.test(table(d$success6m, d$plac_gelstix_6m.factor))

# Sick leave
round(sum(is.na(d$es_sick_1.factor))/length(d$record_id)*100)
round(sum(is.na(d$es_sick_6m_1.factor))/length(d$record_id)*100)

# Table MRI

# (S)AE's
table(d$gelstix_3m_advev1_sae_1)
table(d$gelstix_3m_advev2_sae_1)
table(d$gelstix_3m_advev3_sae_1)

table(d$gelstix_6m_advev1_sae_1)
table(d$gelstix_6m_advev2_sae_1)
table(d$gelstix_6m_advev3_sae_1)

table(d$gelstix_12m_advev1_sae_1)
table(d$gelstix_12m_advev2_sae_1)
table(d$gelstix_12m_advev3_sae_1)

# Blinding
table(d$quest_cecit_med_6m_1.factor, d$plac_gelstix_6m.factor)
round(prop.table(table(d$quest_cecit_med_6m_1.factor, d$plac_gelstix_6m.factor), 2)*100, 1)
fisher.test(table(d$quest_cecit_med_6m_1.factor, d$plac_gelstix_6m.factor))
