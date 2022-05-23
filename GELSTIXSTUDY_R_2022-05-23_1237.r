#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('GELSTIXSTUDY_DATA_2022-05-23_1237.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$id_patient_1)="ID PATIENT"
label(data$my_first_instrument_complete)="Complete?"
label(data$id_screen)="ID Screening "
label(data$id_patient)="ID Patient"
label(data$screening_ec1_1)="Date of final eligibility check"
label(data$i1)="Age between 18-66 years"
label(data$i2)="Discogenic pain confirmed by positive discography of one or (maximum) two lumbar disc levels"
label(data$i3)="baseline level scores evaluated by NRS of at least 5/10."
label(data$i4)="Failure to have symptoms resolved or reduced following at leeast 12 weeks conservative care (pain medication and/or physical therapy)"
label(data$i5)="Negative facet block results"
label(data$i6)="Lumbar DDD on magnetic resonance imaging (MRI) scan with Pfirrmann grade 2, 3 or 4"
label(data$i7)="Anulus must be competent as determined by lumbar discography"
label(data$e1)="BMI (kg/m2)≥ 35"
label(data$e2)="Radiculopathy caused by nerve root compression?"
label(data$e3)="Frank herniations, extruded or sequestered fragments, bulge/protrusions in contact with any nerve root or >5mm on the symptomatic level"
label(data$e4)="Greater than grade 4 annular tear (Modified Dallas Grading) at any lumbar disc level?"
label(data$e5)="Disc height less than 3mm at the symptomatic level"
label(data$e6)="Severe symptomatic central, foraminal or lateral recess stenosis, spondylolisthesis, acute fractures, or ankylosing spondylitis at any lumbar disc level?"
label(data$e7)="Coagulopathy or oral anticoagulant therapy (except low-dose acetylsalicylic acid) in conditions that do not allow for a temporary discontinuation."
label(data$e8)="Active infection, systemic or localized; any disease process or condition that may make the effect of the treatment difficult to evaluate (e.g. cancer, substance abuse, etc.)"
label(data$e9)="Prior lumbar spine surgery?"
label(data$e10)="Females of childbearing age that are known to be pregnant or wishing to be pregnant during the study?"
label(data$e11)="Psychological disorders or factors that may impact upon treatment outcomes o compliance (e.g. severe depressions) "
label(data$e12)="Failure to understand informed consent or participation in any other clinical study?"
label(data$eligibility)="Is the patient eligible?"
label(data$eligibility_reason)="If no, reason"
label(data$study_in)="Will the patient enter in the study"
label(data$study_in_reason)="If no, reason"
label(data$eligibility_criteria_complete)="Complete?"
label(data$ttt_sgage_1)="AGE"
label(data$ttt_sgsex_1)="SUBJECT GENDER"
label(data$ttt_sj_smo_1)="DID THE SUBJECT EVER SMOKE?"
label(data$ttt_sj_smo_day_1)="IF THE SUBJECT IS STILL SMOKING, PLEASE ANSWER QUESTIONS: HOW MANY CIGARETTES/CIGARS/PIPES DOES THE SUBJECT SMOKE A DAY?"
label(data$ttt_sj_smo_long_1)="IF THE SUBJECT IS STILL SMOKING, PLEASE ANSWER QUESTIONS: HOW LONG HAS/HAD THE SUBJECT BEEN SMOKING (year)?"
label(data$ttt_sj_smo_slong_1)="IF THE SUBJECT HAS STOPPED SMOKING, PLEASE ANSWER QUESTION: HOW LONG HAS/HAD THE SUBJECT BEEN SMOKING (year)?"
label(data$ttt_sj_smo_stop_1)="IF THE SUBJECT HAS STOPPED SMOKING, PLEASE ANSWER QUESTION: WHEN DID THE SUBJECT STOP SMOKING?"
label(data$sj_pt_bed_1)="BED REST "
label(data$sj_pt_bed_start_1)="BED REST START"
label(data$sj_pt_bed_stop_1)="BED REST STOP"
label(data$sj_pt_bra_1)="BRACING"
label(data$sj_pt_bra_start_1)="BRACING START"
label(data$sj_pt_bra_stop_1)="BRACING STOP"
label(data$sj_pt_chiro_1)="CHIROPRACTIC CARE"
label(data$sj_pt_chiro_start_1)="CHIROPRACTIC CARE START"
label(data$sj_pt_chiro_stop_1)="CHIROPRACTIC CARE STOP"
label(data$sj_pt_physi_1)="PHYSICAL THERAPY"
label(data$sj_pt_physi_start_1)="PHYSICAL THERAPY START"
label(data$sj_pt_physi_stop_1)="PHYSICAL THERAPY STOP"
label(data$sj_pt_tens_1)="TENS"
label(data$sj_pt_tens_start_1)="TENS START"
label(data$sj_pt_tens_stop_1)="TENS STOP"
label(data$sj_pt_acu_1)="ACUPUNCTURE"
label(data$sj_pt_acu_start_1)="ACUPUNCTURE START"
label(data$sj_pt_acu_stop_1)="ACUPUNCTURE STOP"
label(data$sj_pt_epi_1)="EPIDURAL BLOCK"
label(data$sj_pt_epi_start_1)="EPIDURAL BLOCK START"
label(data$sj_pt_epi_stop_1)="EPIDURAL BLOCK STOP"
label(data$sj_pt_facet_1)="FACET BLOCK"
label(data$sj_pt_facet_start_1)="FACET BLOCK START"
label(data$sj_pt_facet_stop_1)="FACET BLOCK STOP"
label(data$sj_pt_stero_1)="STEROID INJECTION"
label(data$sj_pt_stero_start_1)="STEROID INJECTION START"
label(data$sj_pt_stero_stop_1)="STEROID INJECTION STOP"
label(data$sj_pt_other_1)="OTHER"
label(data$sj_pt_other_start_1)="OTHER START"
label(data$sj_pt_other_stop_1)="OTHER STOP"
label(data$es_date_1)="DATE OF VERIFICATION EMPLOYMENT STATUS"
label(data$es_occup_1)="OCCUPATION (if applicable):"
label(data$es_occuptime_1)="OCCUPATION TIME"
label(data$es_parttime_1)="If PART TIME as a percentage:"
label(data$es_backpain_1)="BACK PAIN"
label(data$es_legpain_1)="LEG PAIN"
label(data$es_disab_1)="DISABILITY"
label(data$es_sick_1)="SICK LEAVE"
label(data$es_other_1)="OTHER PROBLEMS"
label(data$es_otheryes_1)="OTHER PROBLEMS IF YES, SPECIFY"
label(data$es_datestopwor_1)="DATE STOPPED WORKING"
label(data$history_complete)="Complete?"
label(data$screening_complete)="Complete?"
label(data$mri_date_1)="MRI date"
label(data$mri_l1_pf_1)="PFIRRMANN"
label(data$mri_l1_heigh_1)="DISC HEIGH (mm)"
label(data$mri_l1_hiz_1)="HIZ"
label(data$mri_l1_modic_1)="MODIC SIGNS"
label(data$mri_l1_schmorl_1)="SCHMORL HERNIA"
label(data$mri_l2_pf_1)="PFIRRMANN"
label(data$mri_l2_heigh_1)="DISC HEIGH (mm)"
label(data$mri_l2_hiz_1)="HIZ"
label(data$mri_l2_modic_1)="MODIC SIGNS"
label(data$mri_l2_schmorl_1)="SCHMORL HERNIA"
label(data$mri_l3_pf_1)="PFIRRMANN"
label(data$mri_l3_heigh_1)="DISC HEIGH (mm)"
label(data$mri_l3_hiz_1)="HIZ"
label(data$mri_l3_modic_1)="MODIC SIGNS"
label(data$mri_l3_schmorl_1)="SCHMORL HERNIA"
label(data$mri_l4_pf_1)="PFIRRMANN"
label(data$mri_l4_heigh_1)="DISC HEIGH (mm)"
label(data$mri_l4_hiz_1)="HIZ"
label(data$mri_l4_modic_1)="MODIC SIGNS"
label(data$mri_l4_schmorl_1)="SCHMORL HERNIA"
label(data$mri_l5_pf_1)="PFIRRMANN"
label(data$mri_l5_heigh_1)="DISC HEIGH (mm)"
label(data$mri_l5_hiz_1)="HIZ"
label(data$mri_l5_modic_1)="MODIC SIGNS"
label(data$mri_l5_schmorl_1)="SCHMORL HERNIA"
label(data$screening_mri_complete)="Complete?"
label(data$pd_date_1)="SCREENING PAIN DIARY START DATE"
label(data$pd_d1_9_1)="HOURS 09.00"
label(data$pd_d1_14_1)="HOURS 14.00"
label(data$pd_d1_20_1)="HOURS 20.00"
label(data$pd_d1_mgacec1_1)="MG"
label(data$pd_d1_pfacec1_1)="Frequency "
label(data$pd_d1_mgacec2_1)="MG"
label(data$pd_d1_pfacec2_1)="Frequency "
label(data$pd_d1_mgacec3_1)="MG"
label(data$pd_d1_pfacec3_1)="Frequency "
label(data$pd_d1_mgacem1_1)="MG"
label(data$pd_d1_pfacem1_1)="Frequency "
label(data$pd_d1_mgacem2_1)="MG"
label(data$pd_d1_pfacem2_1)="Frequency "
label(data$pd_d1_mgacem3_1)="MG"
label(data$pd_d1_pfacem3_1)="Frequency "
label(data$pd_d1_mgami1_1)="MG"
label(data$pd_d1_pfami1_1)="Frequency "
label(data$pd_d1_mgami2_1)="MG"
label(data$pd_d1_pfami2_1)="Frequency "
label(data$pd_d1_mgami3_1)="MG"
label(data$pd_d1_pfami3_1)="Frequency "
label(data$pd_d1_mcg_hbup1_1)="MCG/H"
label(data$pd_d1_pfbup1_1)="Frequency "
label(data$pd_d1_mcg_hbup2_1)="MCG/H"
label(data$pd_d1_pfbup2_1)="Frequency "
label(data$pd_d1_mcg_hbup3_1)="MCG/H"
label(data$pd_d1_pfbup3_1)="Frequency "
label(data$pd_d1_mgdex1_1)="MG"
label(data$pd_d1_pfdex1_1)="Frequency "
label(data$pd_d1_mgdex2_1)="MG"
label(data$pd_d1_pfdex2_1)="Frequency "
label(data$pd_d1_mgdex3_1)="MG"
label(data$pd_d1_pfdex3_1)="Frequency "
label(data$pd_d1_mgdiclo1_1)="MG"
label(data$pd_d1_pfdiclo1_1)="Frequency "
label(data$pd_d1_mgdiclo2_1)="MG"
label(data$pd_d1_pfdiclo2_1)="Frequency "
label(data$pd_d1_mgdiclo3_1)="MG"
label(data$pd_d1_pfdiclo3_1)="Frequency "
label(data$pd_d1_mgdul1_1)="MG"
label(data$pd_d1_pfdul1_1)="Frequency "
label(data$pd_d1_mgdul2_1)="MG"
label(data$pd_d1_pfdul2_1)="Frequency "
label(data$pd_d1_mgdul3_1)="MG"
label(data$pd_d1_pfdul3_1)="Frequency "
label(data$pd_d1_mcg_hfen1_1)="MCG/H"
label(data$pd_d1_pffen1_1)="Frequency "
label(data$pd_d1_mcg_hfen2_1)="MCG/H"
label(data$pd_d1_pffen2_1)="Frequency "
label(data$pd_d1_mcg_hfen3_1)="MCG/H"
label(data$pd_d1_pffen3_1)="Frequency "
label(data$pd_d1_mggab1_1)="MG"
label(data$pd_d1_pfgab1_1)="Frequency "
label(data$pd_d1_mggab2_1)="MG"
label(data$pd_d1_pfgab2_1)="Frequency "
label(data$pd_d1_mggab3_1)="MG"
label(data$pd_d1_pfgab3_1)="Frequency "
label(data$pd_d1_mghyd1_1)="MG"
label(data$pd_d1_pfhyd1_1)="Frequency "
label(data$pd_d1_mghyd2_1)="MG"
label(data$pd_d1_pfhyd2_1)="Frequency "
label(data$pd_d1_mghyd3_1)="MG"
label(data$pd_d1_pfhyd3_1)="Frequency "
label(data$pd_d1_mgibu1_1)="MG"
label(data$pd_d1_pfibu1_1)="Frequency "
label(data$pd_d1_mgibu2_1)="MG"
label(data$pd_d1_pfibu2_1)="Frequency "
label(data$pd_d1_mgibu3_1)="MG"
label(data$pd_d1_pfibu3_1)="Frequency "
label(data$pd_d1_mgind1_1)="MG"
label(data$pd_d1_pfind1_1)="Frequency "
label(data$pd_d1_mgind2_1)="MG"
label(data$pd_d1_pfind2_1)="Frequency "
label(data$pd_d1_mgind3_1)="MG"
label(data$pd_d1_pfind3_1)="Frequency "
label(data$pd_d1_mgket1_1)="MG"
label(data$pd_d1_pfket1_1)="Frequency "
label(data$pd_d1_mgket2_1)="MG"
label(data$pd_d1_pfket2_1)="Frequency "
label(data$pd_d1_mgket3_1)="MG"
label(data$pd_d1_pfket3_1)="Frequency "
label(data$pd_d1_mgmel1_1)="MG"
label(data$pd_d1_pfmel1_1)="Frequency "
label(data$pd_d1_mgmel2_1)="MG"
label(data$pd_d1_pfmel2_1)="Frequency "
label(data$pd_d1_mgmel3_1)="MG"
label(data$pd_d1_pfmel3_1)="Frequency "
label(data$pd_d1_mgmeta1_1)="MG"
label(data$pd_d1_pfmeta1_1)="Frequency "
label(data$pd_d1_mgmeta2_1)="MG"
label(data$pd_d1_pfmeta2_1)="Frequency "
label(data$pd_d1_mgmeta3_1)="MG"
label(data$pd_d1_pfmeta3_1)="Frequency "
label(data$pd_d1_mgmet1_1)="MG"
label(data$pd_d1_pfmet1_1)="Frequency "
label(data$pd_d1_mgmet2_1)="MG"
label(data$pd_d1_pfmet2_1)="Frequency "
label(data$pd_d1_mgmet3_1)="MG"
label(data$pd_d1_pfmet3_1)="Frequency "
label(data$pd_d1_mgmor1_1)="MG"
label(data$pd_d1_pfmor1_1)="Frequency "
label(data$pd_d1_mgmor2_1)="MG"
label(data$pd_d1_pfmor2_1)="Frequency "
label(data$pd_d1_mgmor3_1)="MG"
label(data$pd_d1_pfmor3_1)="Frequency "
label(data$pd_d1_mgnap1_1)="MG"
label(data$pd_d1_pfnap1_1)="Frequency "
label(data$pd_d1_mgnap2_1)="MG"
label(data$pd_d1_pfnap2_1)="Frequency "
label(data$pd_d1_mgnap3_1)="MG"
label(data$pd_d1_pfnap3_1)="Frequency "
label(data$pd_d1_mgnor1_1)="MG"
label(data$pd_d1_pfnor1_1)="Frequency "
label(data$pd_d1_mgnor2_1)="MG"
label(data$pd_d1_pfnor2_1)="Frequency "
label(data$pd_d1_mgnor3_1)="MG"
label(data$pd_d1_pfnor3_1)="Frequency "
label(data$pd_d1_mgoxy1_1)="MG"
label(data$pd_d1_pfoxy1_1)="Frequency "
label(data$pd_d1_mgoxy2_1)="MG"
label(data$pd_d1_pfoxy2_1)="Frequency "
label(data$pd_d1_mgoxy3_1)="MG"
label(data$pd_d1_pfoxy3_1)="Frequency "
label(data$pd_d1_mgparac1_1)="MG"
label(data$pd_d1_pfparac1_1)="Frequency "
label(data$pd_d1_mgparac2_1)="MG"
label(data$pd_d1_pfparac2_1)="Frequency "
label(data$pd_d1_mgparac3_1)="MG"
label(data$pd_d1_pfparac3_1)="Frequency "
label(data$pd_d1_mgphe1_1)="MG"
label(data$pd_d1_pfphe1_1)="Frequency "
label(data$pd_d1_mgphe2_1)="MG"
label(data$pd_d1_pfphe2_1)="Frequency "
label(data$pd_d1_mgphe3_1)="MG"
label(data$pd_d1_pfphe3_1)="Frequency "
label(data$pd_d1_mgpreg1_1)="MG"
label(data$pd_d1_pfpreg1_1)="Frequency "
label(data$pd_d1_mgpreg2_1)="MG"
label(data$pd_d1_pfpreg2_1)="Frequency "
label(data$pd_d1_mgpreg3_1)="MG"
label(data$pd_d1_pfpreg3_1)="Frequency "
label(data$pd_d1_mgpir1_1)="MG"
label(data$pd_d1_pfpir1_1)="Frequency "
label(data$pd_d1_mgpir2_1)="MG"
label(data$pd_d1_pfpir2_1)="Frequency "
label(data$pd_d1_mgpir3_1)="MG"
label(data$pd_d1_pfpir3_1)="Frequency "
label(data$pd_d1_mgtap1_1)="MG"
label(data$pd_d1_pftap1_1)="Frequency "
label(data$pd_d1_mgtap2_1)="MG"
label(data$pd_d1_pftap2_1)="Frequency "
label(data$pd_d1_mgtap3_1)="MG"
label(data$pd_d1_pftap3_1)="Frequency "
label(data$pd_d1_mgtra1_1)="MG"
label(data$pd_d1_pftra1_1)="Frequency "
label(data$pd_d1_mgtra2_1)="MG"
label(data$pd_d1_pftra2_1)="Frequency "
label(data$pd_d1_mgtra3_1)="MG"
label(data$pd_d1_pftra3_1)="Frequency "
label(data$pd_d1_nameoth1_1)="Name"
label(data$pd_d1_mgoth1_1)="MG"
label(data$pd_d1_pfoth1_1)="Frequency"
label(data$pd_d1_nameoth2_1)="Name"
label(data$pd_d1_mgoth2_1)="MG"
label(data$pd_d1_pfoth2_1)="Frequency"
label(data$pd_d1_nameoth3_1)="Name"
label(data$pd_d1_mgoth3_1)="MG"
label(data$pd_d1_pfoth3_1)="Frequency"
label(data$pd_d2_9_1)="HOURS 09.00"
label(data$pd_d2_14_1)="HOURS 14.00"
label(data$pd_d2_20_1)="HOURS 20.00"
label(data$pd_d2_mgacec1_1)="MG"
label(data$pd_d2_pfacec1_1)="Frequency "
label(data$pd_d2_mgacec2_1)="MG"
label(data$pd_d2_pfacec2_1)="Frequency "
label(data$pd_d2_mgacec3_1)="MG"
label(data$pd_d2_pfacec3_1)="Frequency "
label(data$pd_d2_mgacem1_1)="MG"
label(data$pd_d2_pfacem1_1)="Frequency "
label(data$pd_d2_mgacem2_1)="MG"
label(data$pd_d2_pfacem2_1)="Frequency "
label(data$pd_d2_mgacem3_1)="MG"
label(data$pd_d2_pfacem3_1)="Frequency "
label(data$pd_d2_mgami1_1)="MG"
label(data$pd_d2_pfami1_1)="Frequency "
label(data$pd_d2_mgami2_1)="MG"
label(data$pd_d2_pfami2_1)="Frequency "
label(data$pd_d2_mgami3_1)="MG"
label(data$pd_d2_pfami3_1)="Frequency "
label(data$pd_d2_mcg_hbup1_1)="MCG/H"
label(data$pd_d2_pfbup1_1)="Frequency "
label(data$pd_d2_mcg_hbup2_1)="MCG/H"
label(data$pd_d2_pfbup2_1)="Frequency "
label(data$pd_d2_mcg_hbup3_1)="MCG/H"
label(data$pd_d2_pfbup3_1)="Frequency "
label(data$pd_d2_mgdex1_1)="MG"
label(data$pd_d2_pfdex1_1)="Frequency "
label(data$pd_d2_mgdex2_1)="MG"
label(data$pd_d2_pfdex2_1)="Frequency "
label(data$pd_d2_mgdex3_1)="MG"
label(data$pd_d2_pfdex3_1)="Frequency "
label(data$pd_d2_mgdiclo1_1)="MG"
label(data$pd_d2_pfdiclo1_1)="Frequency "
label(data$pd_d2_mgdiclo2_1)="MG"
label(data$pd_d2_pfdiclo2_1)="Frequency "
label(data$pd_d2_mgdiclo3_1)="MG"
label(data$pd_d2_pfdiclo3_1)="Frequency "
label(data$pd_d2_mgdul1_1)="MG"
label(data$pd_d2_pfdul1_1)="Frequency "
label(data$pd_d2_mgdul2_1)="MG"
label(data$pd_d2_pfdul2_1)="Frequency "
label(data$pd_d2_mgdul3_1)="MG"
label(data$pd_d2_pfdul3_1)="Frequency "
label(data$pd_d2_mcg_hfen1_1)="MCG/H"
label(data$pd_d2_pffen1_1)="Frequency "
label(data$pd_d2_mcg_hfen2_1)="MCG/H"
label(data$pd_d2_pffen2_1)="Frequency "
label(data$pd_d2_mcg_hfen3_1)="MCG/H"
label(data$pd_d2_pffen3_1)="Frequency "
label(data$pd_d2_mggab1_1)="MG"
label(data$pd_d2_pfgab1_1)="Frequency "
label(data$pd_d2_mggab2_1)="MG"
label(data$pd_d2_pfgab2_1)="Frequency "
label(data$pd_d2_mggab3_1)="MG"
label(data$pd_d2_pfgab3_1)="Frequency "
label(data$pd_d2_mghyd1_1)="MG"
label(data$pd_d2_pfhyd1_1)="Frequency "
label(data$pd_d2_mghyd2_1)="MG"
label(data$pd_d2_pfhyd2_1)="Frequency "
label(data$pd_d2_mghyd3_1)="MG"
label(data$pd_d2_pfhyd3_1)="Frequency "
label(data$pd_d2_mgibu1_1)="MG"
label(data$pd_d2_pfibu1_1)="Frequency "
label(data$pd_d2_mgibu2_1)="MG"
label(data$pd_d2_pfibu2_1)="Frequency "
label(data$pd_d2_mgibu3_1)="MG"
label(data$pd_d2_pfibu3_1)="Frequency "
label(data$pd_d2_mgind1_1)="MG"
label(data$pd_d2_pfind1_1)="Frequency "
label(data$pd_d2_mgind2_1)="MG"
label(data$pd_d2_pfind2_1)="Frequency "
label(data$pd_d2_mgind3_1)="MG"
label(data$pd_d2_pfind3_1)="Frequency "
label(data$pd_d2_mgket1_1)="MG"
label(data$pd_d2_pfket1_1)="Frequency "
label(data$pd_d2_mgket2_1)="MG"
label(data$pd_d2_pfket2_1)="Frequency "
label(data$pd_d2_mgket3_1)="MG"
label(data$pd_d2_pfket3_1)="Frequency "
label(data$pd_d2_mgmel1_1)="MG"
label(data$pd_d2_pfmel1_1)="Frequency "
label(data$pd_d2_mgmel2_1)="MG"
label(data$pd_d2_pfmel2_1)="Frequency "
label(data$pd_d2_mgmel3_1)="MG"
label(data$pd_d2_pfmel3_1)="Frequency "
label(data$pd_d2_mgmeta1_1)="MG"
label(data$pd_d2_pfmeta1_1)="Frequency "
label(data$pd_d2_mgmeta2_1)="MG"
label(data$pd_d2_pfmeta2_1)="Frequency "
label(data$pd_d2_mgmeta3_1)="MG"
label(data$pd_d2_pfmeta3_1)="Frequency "
label(data$pd_d2_mgmet1_1)="MG"
label(data$pd_d2_pfmet1_1)="Frequency "
label(data$pd_d2_mgmet2_1)="MG"
label(data$pd_d2_pfmet2_1)="Frequency "
label(data$pd_d2_mgmet3_1)="MG"
label(data$pd_d2_pfmet3_1)="Frequency "
label(data$pd_d2_mgmor1_1)="MG"
label(data$pd_d2_pfmor1_1)="Frequency "
label(data$pd_d2_mgmor2_1)="MG"
label(data$pd_d2_pfmor2_1)="Frequency "
label(data$pd_d2_mgmor3_1)="MG"
label(data$pd_d2_pfmor3_1)="Frequency "
label(data$pd_d2_mgnap1_1)="MG"
label(data$pd_d2_pfnap1_1)="Frequency "
label(data$pd_d2_mgnap2_1)="MG"
label(data$pd_d2_pfnap2_1)="Frequency "
label(data$pd_d2_mgnap3_1)="MG"
label(data$pd_d2_pfnap3_1)="Frequency "
label(data$pd_d2_mgnor1_1)="MG"
label(data$pd_d2_pfnor1_1)="Frequency "
label(data$pd_d2_mgnor2_1)="MG"
label(data$pd_d2_pfnor2_1)="Frequency "
label(data$pd_d2_mgnor3_1)="MG"
label(data$pd_d2_pfnor3_1)="Frequency "
label(data$pd_d2_mgoxy1_1)="MG"
label(data$pd_d2_pfoxy1_1)="Frequency "
label(data$pd_d2_mgoxy2_1)="MG"
label(data$pd_d2_pfoxy2_1)="Frequency "
label(data$pd_d2_mgoxy3_1)="MG"
label(data$pd_d2_pfoxy3_1)="Frequency "
label(data$pd_d2_mgparac1_1)="MG"
label(data$pd_d2_pfparac1_1)="Frequency "
label(data$pd_d2_mgparac2_1)="MG"
label(data$pd_d2_pfparac2_1)="Frequency "
label(data$pd_d2_mgparac3_1)="MG"
label(data$pd_d2_pfparac3_1)="Frequency "
label(data$pd_d2_mgphe1_1)="MG"
label(data$pd_d2_pfphe1_1)="Frequency "
label(data$pd_d2_mgphe2_1)="MG"
label(data$pd_d2_pfphe2_1)="Frequency "
label(data$pd_d2_mgphe3_1)="MG"
label(data$pd_d2_pfphe3_1)="Frequency "
label(data$pd_d2_mgpreg1_1)="MG"
label(data$pd_d2_pfpreg1_1)="Frequency "
label(data$pd_d2_mgpreg2_1)="MG"
label(data$pd_d2_pfpreg2_1)="Frequency "
label(data$pd_d2_mgpreg3_1)="MG"
label(data$pd_d2_pfpreg3_1)="Frequency "
label(data$pd_d2_mgpir1_1)="MG"
label(data$pd_d2_pfpir1_1)="Frequency "
label(data$pd_d2_mgpir2_1)="MG"
label(data$pd_d2_pfpir2_1)="Frequency "
label(data$pd_d2_mgpir3_1)="MG"
label(data$pd_d2_pfpir3_1)="Frequency "
label(data$pd_d2_mgtap1_1)="MG"
label(data$pd_d2_pftap1_1)="Frequency "
label(data$pd_d2_mgtap2_1)="MG"
label(data$pd_d2_pftap2_1)="Frequency "
label(data$pd_d2_mgtap3_1)="MG"
label(data$pd_d2_pftap3_1)="Frequency "
label(data$pd_d2_mgtra1_1)="MG"
label(data$pd_d2_pftra1_1)="Frequency "
label(data$pd_d2_mgtra2_1)="MG"
label(data$pd_d2_pftra2_1)="Frequency "
label(data$pd_d2_mgtra3_1)="MG"
label(data$pd_d2_pftra3_1)="Frequency "
label(data$pd_d2_nameoth1_1)="Name"
label(data$pd_d2_mgoth1_1)="MG"
label(data$pd_d2_pfoth1_1)="Frequency"
label(data$pd_d2_nameoth2_1)="Name"
label(data$pd_d2_mgoth2_1)="MG"
label(data$pd_d2_pfoth2_1)="Frequency"
label(data$pd_d2_nameoth3_1)="Name"
label(data$pd_d2_mgoth3_1)="MG"
label(data$pd_d2_pfoth3_1)="Frequency"
label(data$pd_d3_9_1)="HOURS 09.00"
label(data$pd_d3_14_1)="HOURS 14.00"
label(data$pd_d3_20_1)="HOURS 20.00"
label(data$pd_d3_mgacec1_1)="MG"
label(data$pd_d3_pfacec1_1)="Frequency "
label(data$pd_d3_mgacec2_1)="MG"
label(data$pd_d3_pfacec2_1)="Frequency "
label(data$pd_d3_mgacec3_1)="MG"
label(data$pd_d3_pfacec3_1)="Frequency "
label(data$pd_d3_mgacem1_1)="MG"
label(data$pd_d3_pfacem1_1)="Frequency "
label(data$pd_d3_mgacem2_1)="MG"
label(data$pd_d3_pfacem2_1)="Frequency "
label(data$pd_d3_mgacem3_1)="MG"
label(data$pd_d3_pfacem3_1)="Frequency "
label(data$pd_d3_mgami1_1)="MG"
label(data$pd_d3_pfami1_1)="Frequency "
label(data$pd_d3_mgami2_1)="MG"
label(data$pd_d3_pfami2_1)="Frequency "
label(data$pd_d3_mgami3_1)="MG"
label(data$pd_d3_pfami3_1)="Frequency "
label(data$pd_d3_mcg_hbup1_1)="MCG/H"
label(data$pd_d3_pfbup1_1)="Frequency "
label(data$pd_d3_mcg_hbup2_1)="MCG/H"
label(data$pd_d3_pfbup2_1)="Frequency "
label(data$pd_d3_mcg_hbup3_1)="MCG/H"
label(data$pd_d3_pfbup3_1)="Frequency "
label(data$pd_d3_mgdex1_1)="MG"
label(data$pd_d3_pfdex1_1)="Frequency "
label(data$pd_d3_mgdex2_1)="MG"
label(data$pd_d3_pfdex2_1)="Frequency "
label(data$pd_d3_mgdex3_1)="MG"
label(data$pd_d3_pfdex3_1)="Frequency "
label(data$pd_d3_mgdiclo1_1)="MG"
label(data$pd_d3_pfdiclo1_1)="Frequency "
label(data$pd_d3_mgdiclo2_1)="MG"
label(data$pd_d3_pfdiclo2_1)="Frequency "
label(data$pd_d3_mgdiclo3_1)="MG"
label(data$pd_d3_pfdiclo3_1)="Frequency "
label(data$pd_d3_mgdul1_1)="MG"
label(data$pd_d3_pfdul1_1)="Frequency "
label(data$pd_d3_mgdul2_1)="MG"
label(data$pd_d3_pfdul2_1)="Frequency "
label(data$pd_d3_mgdul3_1)="MG"
label(data$pd_d3_pfdul3_1)="Frequency "
label(data$pd_d3_mcg_hfen1_1)="MCG/H"
label(data$pd_d3_pffen1_1)="Frequency "
label(data$pd_d3_mcg_hfen2_1)="MCG/H"
label(data$pd_d3_pffen2_1)="Frequency "
label(data$pd_d3_mcg_hfen3_1)="MCG/H"
label(data$pd_d3_pffen3_1)="Frequency "
label(data$pd_d3_mggab1_1)="MG"
label(data$pd_d3_pfgab1_1)="Frequency "
label(data$pd_d3_mggab2_1)="MG"
label(data$pd_d3_pfgab2_1)="Frequency "
label(data$pd_d3_mggab3_1)="MG"
label(data$pd_d3_pfgab3_1)="Frequency "
label(data$pd_d3_mghyd1_1)="MG"
label(data$pd_d3_pfhyd1_1)="Frequency "
label(data$pd_d3_mghyd2_1)="MG"
label(data$pd_d3_pfhyd2_1)="Frequency "
label(data$pd_d3_mghyd3_1)="MG"
label(data$pd_d3_pfhyd3_1)="Frequency "
label(data$pd_d3_mgibu1_1)="MG"
label(data$pd_d3_pfibu1_1)="Frequency "
label(data$pd_d3_mgibu2_1)="MG"
label(data$pd_d3_pfibu2_1)="Frequency "
label(data$pd_d3_mgibu3_1)="MG"
label(data$pd_d3_pfibu3_1)="Frequency "
label(data$pd_d3_mgind1_1)="MG"
label(data$pd_d3_pfind1_1)="Frequency "
label(data$pd_d3_mgind2_1)="MG"
label(data$pd_d3_pfind2_1)="Frequency "
label(data$pd_d3_mgind3_1)="MG"
label(data$pd_d3_pfind3_1)="Frequency "
label(data$pd_d3_mgket1_1)="MG"
label(data$pd_d3_pfket1_1)="Frequency "
label(data$pd_d3_mgket2_1)="MG"
label(data$pd_d3_pfket2_1)="Frequency "
label(data$pd_d3_mgket3_1)="MG"
label(data$pd_d3_pfket3_1)="Frequency "
label(data$pd_d3_mgmel1_1)="MG"
label(data$pd_d3_pfmel1_1)="Frequency "
label(data$pd_d3_mgmel2_1)="MG"
label(data$pd_d3_pfmel2_1)="Frequency "
label(data$pd_d3_mgmel3_1)="MG"
label(data$pd_d3_pfmel3_1)="Frequency "
label(data$pd_d3_mgmetam1_1)="MG"
label(data$pd_d3_pfmetam1_1)="Frequency "
label(data$pd_d3_mgmetam2_1)="MG"
label(data$pd_d3_pfmetam2_1)="Frequency "
label(data$pd_d3_mgmetam3_1)="MG"
label(data$pd_d3_pfmetam3_1)="Frequency "
label(data$pd_d3_mgmet1_1)="MG"
label(data$pd_d3_pfmet1_1)="Frequency "
label(data$pd_d3_mgmet2_1)="MG"
label(data$pd_d3_pfmet2_1)="Frequency "
label(data$pd_d3_mgmet3_1)="MG"
label(data$pd_d3_pfmet3_1)="Frequency "
label(data$pd_d3_mgmor1_1)="MG"
label(data$pd_d3_pfmor1_1)="Frequency "
label(data$pd_d3_mgmor2_1)="MG"
label(data$pd_d3_pfmor2_1)="Frequency "
label(data$pd_d3_mgmor3_1)="MG"
label(data$pd_d3_pfmor3_1)="Frequency "
label(data$pd_d3_mgnap1_1)="MG"
label(data$pd_d3_pfnap1_1)="Frequency "
label(data$pd_d3_mgnap2_1)="MG"
label(data$pd_d3_pfnap2_1)="Frequency "
label(data$pd_d3_mgnap3_1)="MG"
label(data$pd_d3_pfnap3_1)="Frequency "
label(data$pd_d3_mgnor1_1)="MG"
label(data$pd_d3_pfnor1_1)="Frequency "
label(data$pd_d3_mgnor2_1)="MG"
label(data$pd_d3_pfnor2_1)="Frequency "
label(data$pd_d3_mgnor3_1)="MG"
label(data$pd_d3_pfnor3_1)="Frequency "
label(data$pd_d3_mgoxy1_1)="MG"
label(data$pd_d3_pfoxy1_1)="Frequency "
label(data$pd_d3_mgoxy2_1)="MG"
label(data$pd_d3_pfoxy2_1)="Frequency "
label(data$pd_d3_mgoxy3_1)="MG"
label(data$pd_d3_pfoxy3_1)="Frequency "
label(data$pd_d3_mgparac1_1)="MG"
label(data$pd_d3_pfparac1_1)="Frequency "
label(data$pd_d3_mgparac2_1)="MG"
label(data$pd_d3_pfparac2_1)="Frequency "
label(data$pd_d3_mgparac3_1)="MG"
label(data$pd_d3_pfparac3_1)="Frequency "
label(data$pd_d3_mgphe1_1)="MG"
label(data$pd_d3_pfphe1_1)="Frequency "
label(data$pd_d3_mgphe2_1)="MG"
label(data$pd_d3_pfphe2_1)="Frequency "
label(data$pd_d3_mgphe3_1)="MG"
label(data$pd_d3_pfphe3_1)="Frequency "
label(data$pd_d3_mgpreg1_1)="MG"
label(data$pd_d3_pfpreg1_1)="Frequency "
label(data$pd_d3_mgpreg2_1)="MG"
label(data$pd_d3_pfpreg2_1)="Frequency "
label(data$pd_d3_mgpreg3_1)="MG"
label(data$pd_d3_pfpreg3_1)="Frequency "
label(data$pd_d3_mgpir1_1)="MG"
label(data$pd_d3_pfpir1_1)="Frequency "
label(data$pd_d3_mgpir2_1)="MG"
label(data$pd_d3_pfpir2_1)="Frequency "
label(data$pd_d3_mgpir3_1)="MG"
label(data$pd_d3_pfpir3_1)="Frequency "
label(data$pd_d3_mgtap1_1)="MG"
label(data$pd_d3_pftap1_1)="Frequency "
label(data$pd_d3_mgtap2_1)="MG"
label(data$pd_d3_pftap2_1)="Frequency "
label(data$pd_d3_mgtap3_1)="MG"
label(data$pd_d3_pftap3_1)="Frequency "
label(data$pd_d3_mgtra1_1)="MG"
label(data$pd_d3_pftra1_1)="Frequency "
label(data$pd_d3_mgtra2_1)="MG"
label(data$pd_d3_pftra2_1)="Frequency "
label(data$pd_d3_mgtra3_1)="MG"
label(data$pd_d3_pftra3_1)="Frequency "
label(data$pd_d3_nameoth1_1)="Name"
label(data$pd_d3_mgoth1_1)="MG"
label(data$pd_d3_pfoth1_1)="Frequency"
label(data$pd_d3_nameoth2_1)="Name"
label(data$pd_d3_mgoth2_1)="MG"
label(data$pd_d3_pfoth2_1)="Frequency"
label(data$pd_d3_nameoth3_1)="Name"
label(data$pd_d3_mgoth3_1)="MG"
label(data$pd_d3_pfoth3_1)="Frequency"
label(data$pd_d4_9_1)="HOURS 09.00"
label(data$pd_d4_14_1)="HOURS 14.00"
label(data$pd_d4_20_1)="HOURS 20.00"
label(data$pd_d4_mgacec1_1)="MG"
label(data$pd_d4_pfacec1_1)="Frequency "
label(data$pd_d4_mgacec2_1)="MG"
label(data$pd_d4_pfacec2_1)="Frequency "
label(data$pd_d4_mgacec3_1)="MG"
label(data$pd_d4_pfacec3_1)="Frequency "
label(data$pd_d4_mgacem1_1)="MG"
label(data$pd_d4_pfacem1_1)="Frequency "
label(data$pd_d4_mgacem2_1)="MG"
label(data$pd_d4_pfacem2_1)="Frequency "
label(data$pd_d4_mgacem3_1)="MG"
label(data$pd_d4_pfacem3_1)="Frequency "
label(data$pd_d4_mgami1_1)="MG"
label(data$pd_d4_pfami1_1)="Frequency "
label(data$pd_d4_mgami2_1)="MG"
label(data$pd_d4_pfami2_1)="Frequency "
label(data$pd_d4_mgami3_1)="MG"
label(data$pd_d4_pfami3_1)="Frequency "
label(data$pd_d4_mcg_hbup1_1)="MCG/H"
label(data$pd_d4_pfbup1_1)="Frequency "
label(data$pd_d4_mcg_hbup2_1)="MCG/H"
label(data$pd_d4_pfbup2_1)="Frequency "
label(data$pd_d4_mcg_hbup3_1)="MCG/H"
label(data$pd_d4_pfbup3_1)="Frequency "
label(data$pd_d4_mgdex1_1)="MG"
label(data$pd_d4_pfdex1_1)="Frequency "
label(data$pd_d4_mgdex2_1)="MG"
label(data$pd_d4_pfdex2_1)="Frequency "
label(data$pd_d4_mgdex3_1)="MG"
label(data$pd_d4_pfdex3_1)="Frequency "
label(data$pd_d4_mgdiclo1_1)="MG"
label(data$pd_d4_pfdiclo1_1)="Frequency "
label(data$pd_d4_mgdiclo2_1)="MG"
label(data$pd_d4_pfdiclo2_1)="Frequency "
label(data$pd_d4_mgdiclo3_1)="MG"
label(data$pd_d4_pfdiclo3_1)="Frequency "
label(data$pd_d4_mgdul1_1)="MG"
label(data$pd_d4_pfdul1_1)="Frequency "
label(data$pd_d4_mgdul2_1)="MG"
label(data$pd_d4_pfdul2_1)="Frequency "
label(data$pd_d4_mgdul3_1)="MG"
label(data$pd_d4_pfdul3_1)="Frequency "
label(data$pd_d4_mcg_hfen1_1)="MCG/H"
label(data$pd_d4_pffen1_1)="Frequency "
label(data$pd_d4_mcg_hfen2_1)="MCG/H"
label(data$pd_d4_pffen2_1)="Frequency "
label(data$pd_d4_mcg_hfen3_1)="MCG/H"
label(data$pd_d4_pffen3_1)="Frequency "
label(data$pd_d4_mggab1_1)="MG"
label(data$pd_d4_pfgab1_1)="Frequency "
label(data$pd_d4_mggab2_1)="MG"
label(data$pd_d4_pfgab2_1)="Frequency "
label(data$pd_d4_mggab3_1)="MG"
label(data$pd_d4_pfgab3_1)="Frequency "
label(data$pd_d4_mghyd1_1)="MG"
label(data$pd_d4_pfhyd1_1)="Frequency "
label(data$pd_d4_mghyd2_1)="MG"
label(data$pd_d4_pfhyd2_1)="Frequency "
label(data$pd_d4_mghyd3_1)="MG"
label(data$pd_d4_pfhyd3_1)="Frequency "
label(data$pd_d4_mgibu1_1)="MG"
label(data$pd_d4_pfibu1_1)="Frequency "
label(data$pd_d4_mgibu2_1)="MG"
label(data$pd_d4_pfibu2_1)="Frequency "
label(data$pd_d4_mgibu3_1)="MG"
label(data$pd_d4_pfibu3_1)="Frequency "
label(data$pd_d4_mgind1_1)="MG"
label(data$pd_d4_pfind1_1)="Frequency "
label(data$pd_d4_mgind2_1)="MG"
label(data$pd_d4_pfind2_1)="Frequency "
label(data$pd_d4_mgind3_1)="MG"
label(data$pd_d4_pfind3_1)="Frequency "
label(data$pd_d4_mgket1_1)="MG"
label(data$pd_d4_pfket1_1)="Frequency "
label(data$pd_d4_mgket2_1)="MG"
label(data$pd_d4_pfket2_1)="Frequency "
label(data$pd_d4_mgket3_1)="MG"
label(data$pd_d4_pfket3_1)="Frequency "
label(data$pd_d4_mgmel1_1)="MG"
label(data$pd_d4_pfmel1_1)="Frequency "
label(data$pd_d4_mgmel2_1)="MG"
label(data$pd_d4_pfmel2_1)="Frequency "
label(data$pd_d4_mgmel3_1)="MG"
label(data$pd_d4_pfmel3_1)="Frequency "
label(data$pd_d4_mgmetam1_1)="MG"
label(data$pd_d4_pfmetam1_1)="Frequency "
label(data$pd_d4_mgmetam2_1)="MG"
label(data$pd_d4_pfmetam2_1)="Frequency "
label(data$pd_d4_mgmetam3_1)="MG"
label(data$pd_d4_pfmetam3_1)="Frequency "
label(data$pd_d4_mgmet1_1)="MG"
label(data$pd_d4_pfmet1_1)="Frequency "
label(data$pd_d4_mgmet2_1)="MG"
label(data$pd_d4_pfmet2_1)="Frequency "
label(data$pd_d4_mgmet3_1)="MG"
label(data$pd_d4_pfmet3_1)="Frequency "
label(data$pd_d4_mgmor1_1)="MG"
label(data$pd_d4_pfmor1_1)="Frequency "
label(data$pd_d4_mgmor2_1)="MG"
label(data$pd_d4_pfmor2_1)="Frequency "
label(data$pd_d4_mgmor3_1)="MG"
label(data$pd_d4_pfmor3_1)="Frequency "
label(data$pd_d4_mgnap1_1)="MG"
label(data$pd_d4_pfnap1_1)="Frequency "
label(data$pd_d4_mgnap2_1)="MG"
label(data$pd_d4_pfnap2_1)="Frequency "
label(data$pd_d4_mgnap3_1)="MG"
label(data$pd_d4_pfnap3_1)="Frequency "
label(data$pd_d4_mgnor1_1)="MG"
label(data$pd_d4_pfnor1_1)="Frequency "
label(data$pd_d4_mgnor2_1)="MG"
label(data$pd_d4_pfnor2_1)="Frequency "
label(data$pd_d4_mgnor3_1)="MG"
label(data$pd_d4_pfnor3_1)="Frequency "
label(data$pd_d4_mgoxy1_1)="MG"
label(data$pd_d4_pfoxy1_1)="Frequency "
label(data$pd_d4_mgoxy2_1)="MG"
label(data$pd_d4_pfoxy2_1)="Frequency "
label(data$pd_d4_mgoxy3_1)="MG"
label(data$pd_d4_pfoxy3_1)="Frequency "
label(data$pd_d4_mgparac1_1)="MG"
label(data$pd_d4_pfparac1_1)="Frequency "
label(data$pd_d4_mgparac2_1)="MG"
label(data$pd_d4_pfparac2_1)="Frequency "
label(data$pd_d4_mgparac3_1)="MG"
label(data$pd_d4_pfparac3_1)="Frequency "
label(data$pd_d4_mgphe1_1)="MG"
label(data$pd_d4_pfphe1_1)="Frequency "
label(data$pd_d4_mgphe2_1)="MG"
label(data$pd_d4_pfphe2_1)="Frequency "
label(data$pd_d4_mgphe3_1)="MG"
label(data$pd_d4_pfphe3_1)="Frequency "
label(data$pd_d4_mgpreg1_1)="MG"
label(data$pd_d4_pfpreg1_1)="Frequency "
label(data$pd_d4_mgpreg2_1)="MG"
label(data$pd_d4_pfpreg2_1)="Frequency "
label(data$pd_d4_mgpreg3_1)="MG"
label(data$pd_d4_pfpreg3_1)="Frequency "
label(data$pd_d4_mgpir1_1)="MG"
label(data$pd_d4_pfpir1_1)="Frequency "
label(data$pd_d4_mgpir2_1)="MG"
label(data$pd_d4_pfpir2_1)="Frequency "
label(data$pd_d4_mgpir3_1)="MG"
label(data$pd_d4_pfpir3_1)="Frequency "
label(data$pd_d4_mgtap1_1)="MG"
label(data$pd_d4_pftap1_1)="Frequency "
label(data$pd_d4_mgtap2_1)="MG"
label(data$pd_d4_pftap2_1)="Frequency "
label(data$pd_d4_mgtap3_1)="MG"
label(data$pd_d4_pftap3_1)="Frequency "
label(data$pd_d4_mgtra1_1)="MG"
label(data$pd_d4_pftra1_1)="Frequency "
label(data$pd_d4_mgtra2_1)="MG"
label(data$pd_d4_pftra2_1)="Frequency "
label(data$pd_d4_mgtra3_1)="MG"
label(data$pd_d4_pftra3_1)="Frequency "
label(data$pd_d4_nameoth1_1)="Name"
label(data$pd_d4_mgoth1_1)="MG"
label(data$pd_d4_pfoth1_1)="Frequency"
label(data$pd_d4_nameoth2_1)="Name"
label(data$pd_d4_mgoth2_1)="MG"
label(data$pd_d4_pfoth2_1)="Frequency"
label(data$pd_d4_nameoth3_1)="Name"
label(data$pd_d4_mgoth3_1)="MG"
label(data$pd_d4_pfoth3_1)="Frequency"
label(data$pd_d5_9_1)="HOURS 09.00"
label(data$pd_d5_14_1)="HOURS 14.00"
label(data$pd_d5_20_1)="HOURS 20.00"
label(data$pd_d5_mgacec1_1)="MG"
label(data$pd_d5_pfacec1_1)="Frequency "
label(data$pd_d5_mgacec2_1)="MG"
label(data$pd_d5_pfacec2_1)="Frequency "
label(data$pd_d5_mgacec3_1)="MG"
label(data$pd_d5_pfacec3_1)="Frequency "
label(data$pd_d5_mgacem1_1)="MG"
label(data$pd_d5_pfacem1_1)="Frequency "
label(data$pd_d5_mgacem2_1)="MG"
label(data$pd_d5_pfacem2_1)="Frequency "
label(data$pd_d5_mgacem3_1)="MG"
label(data$pd_d5_pfacem3_1)="Frequency "
label(data$pd_d5_mgami1_1)="MG"
label(data$pd_d5_pfami1_1)="Frequency "
label(data$pd_d5_mgami2_1)="MG"
label(data$pd_d5_pfami2_1)="Frequency "
label(data$pd_d5_mgami3_1)="MG"
label(data$pd_d5_pfami3_1)="Frequency "
label(data$pd_d5_mcg_hbup1_1)="MCG/H"
label(data$pd_d5_pfbup1_1)="Frequency "
label(data$pd_d5_mcg_hbup2_1)="MCG/H"
label(data$pd_d5_pfbup2_1)="Frequency "
label(data$pd_d5_mcg_hbup3_1)="MCG/H"
label(data$pd_d5_pfbup3_1)="Frequency "
label(data$pd_d5_mgdex1_1)="MG"
label(data$pd_d5_pfdex1_1)="Frequency "
label(data$pd_d5_mgdex2_1)="MG"
label(data$pd_d5_pfdex2_1)="Frequency "
label(data$pd_d5_mgdex3_1)="MG"
label(data$pd_d5_pfdex3_1)="Frequency "
label(data$pd_d5_mgdiclo1_1)="MG"
label(data$pd_d5_pfdiclo1_1)="Frequency "
label(data$pd_d5_mgdiclo2_1)="MG"
label(data$pd_d5_pfdiclo2_1)="Frequency "
label(data$pd_d5_mgdiclo3_1)="MG"
label(data$pd_d5_pfdiclo3_1)="Frequency "
label(data$pd_d5_mgdul1_1)="MG"
label(data$pd_d5_pfdul1_1)="Frequency "
label(data$pd_d5_mgdul2_1)="MG"
label(data$pd_d5_pfdul2_1)="Frequency "
label(data$pd_d5_mgdul3_1)="MG"
label(data$pd_d5_pfdul3_1)="Frequency "
label(data$pd_d5_mcg_hfen1_1)="MCG/H"
label(data$pd_d5_pffen1_1)="Frequency "
label(data$pd_d5_mcg_hfen2_1)="MCG/H"
label(data$pd_d5_pffen2_1)="Frequency "
label(data$pd_d5_mcg_hfen3_1)="MCG/H"
label(data$pd_d5_pffen3_1)="Frequency "
label(data$pd_d5_mggab1_1)="MG"
label(data$pd_d5_pfgab1_1)="Frequency "
label(data$pd_d5_mggab2_1)="MG"
label(data$pd_d5_pfgab2_1)="Frequency "
label(data$pd_d5_mggab3_1)="MG"
label(data$pd_d5_pfgab3_1)="Frequency "
label(data$pd_d5_mghyd1_1)="MG"
label(data$pd_d5_pfhyd1_1)="Frequency "
label(data$pd_d5_mghyd2_1)="MG"
label(data$pd_d5_pfhyd2_1)="Frequency "
label(data$pd_d5_mghyd3_1)="MG"
label(data$pd_d5_pfhyd3_1)="Frequency "
label(data$pd_d5_mgibu1_1)="MG"
label(data$pd_d5_pfibu1_1)="Frequency "
label(data$pd_d5_mgibu2_1)="MG"
label(data$pd_d5_pfibu2_1)="Frequency "
label(data$pd_d5_mgibu3_1)="MG"
label(data$pd_d5_pfibu3_1)="Frequency "
label(data$pd_d5_mgind1_1)="MG"
label(data$pd_d5_pfind1_1)="Frequency "
label(data$pd_d5_mgind2_1)="MG"
label(data$pd_d5_pfind2_1)="Frequency "
label(data$pd_d5_mgind3_1)="MG"
label(data$pd_d5_pfind3_1)="Frequency "
label(data$pd_d5_mgket1_1)="MG"
label(data$pd_d5_pfket1_1)="Frequency "
label(data$pd_d5_mgket2_1)="MG"
label(data$pd_d5_pfket2_1)="Frequency "
label(data$pd_d5_mgket3_1)="MG"
label(data$pd_d5_pfket3_1)="Frequency "
label(data$pd_d5_mgmel1_1)="MG"
label(data$pd_d5_pfmel1_1)="Frequency "
label(data$pd_d5_mgmel2_1)="MG"
label(data$pd_d5_pfmel2_1)="Frequency "
label(data$pd_d5_mgmel3_1)="MG"
label(data$pd_d5_pfmel3_1)="Frequency "
label(data$pd_d5_mgmetam1_1)="MG"
label(data$pd_d5_pfmetam1_1)="Frequency "
label(data$pd_d5_mgmetam2_1)="MG"
label(data$pd_d5_pfmetam2_1)="Frequency "
label(data$pd_d5_mgmetam3_1)="MG"
label(data$pd_d5_pfmetam3_1)="Frequency "
label(data$pd_d5_mgmet1_1)="MG"
label(data$pd_d5_pfmet1_1)="Frequency "
label(data$pd_d5_mgmet2_1)="MG"
label(data$pd_d5_pfmet2_1)="Frequency "
label(data$pd_d5_mgmet3_1)="MG"
label(data$pd_d5_pfmet3_1)="Frequency "
label(data$pd_d5_mgmor1_1)="MG"
label(data$pd_d5_pfmor1_1)="Frequency "
label(data$pd_d5_mgmor2_1)="MG"
label(data$pd_d5_pfmor2_1)="Frequency "
label(data$pd_d5_mgmor3_1)="MG"
label(data$pd_d5_pfmor3_1)="Frequency "
label(data$pd_d5_mgnap1_1)="MG"
label(data$pd_d5_pfnap1_1)="Frequency "
label(data$pd_d5_mgnap2_1)="MG"
label(data$pd_d5_pfnap2_1)="Frequency "
label(data$pd_d5_mgnap3_1)="MG"
label(data$pd_d5_pfnap3_1)="Frequency "
label(data$pd_d5_mgnor1_1)="MG"
label(data$pd_d5_pfnor1_1)="Frequency "
label(data$pd_d5_mgnor2_1)="MG"
label(data$pd_d5_pfnor2_1)="Frequency "
label(data$pd_d5_mgnor3_1)="MG"
label(data$pd_d5_pfnor3_1)="Frequency "
label(data$pd_d5_mgoxy1_1)="MG"
label(data$pd_d5_pfoxy1_1)="Frequency "
label(data$pd_d5_mgoxy2_1)="MG"
label(data$pd_d5_pfoxy2_1)="Frequency "
label(data$pd_d5_mgoxy3_1)="MG"
label(data$pd_d5_pfoxy3_1)="Frequency "
label(data$pd_d5_mgparac1_1)="MG"
label(data$pd_d5_pfparac1_1)="Frequency "
label(data$pd_d5_mgparac2_1)="MG"
label(data$pd_d5_pfparac2_1)="Frequency "
label(data$pd_d5_mgparac3_1)="MG"
label(data$pd_d5_pfparac3_1)="Frequency "
label(data$pd_d5_mgphe1_1)="MG"
label(data$pd_d5_pfphe1_1)="Frequency "
label(data$pd_d5_mgphe2_1)="MG"
label(data$pd_d5_pfphe2_1)="Frequency "
label(data$pd_d5_mgphe3_1)="MG"
label(data$pd_d5_pfphe3_1)="Frequency "
label(data$pd_d5_mgpreg1_1)="MG"
label(data$pd_d5_pfpreg1_1)="Frequency "
label(data$pd_d5_mgpreg2_1)="MG"
label(data$pd_d5_pfpreg2_1)="Frequency "
label(data$pd_d5_mgpreg3_1)="MG"
label(data$pd_d5_pfpreg3_1)="Frequency "
label(data$pd_d5_mgpir1_1)="MG"
label(data$pd_d5_pfpir1_1)="Frequency "
label(data$pd_d5_mgpir2_1)="MG"
label(data$pd_d5_pfpir2_1)="Frequency "
label(data$pd_d5_mgpir3_1)="MG"
label(data$pd_d5_pfpir3_1)="Frequency "
label(data$pd_d5_mgtap1_1)="MG"
label(data$pd_d5_pftap1_1)="Frequency "
label(data$pd_d5_mgtap2_1)="MG"
label(data$pd_d5_pftap2_1)="Frequency "
label(data$pd_d5_mgtap3_1)="MG"
label(data$pd_d5_pftap3_1)="Frequency "
label(data$pd_d5_mgtra1_1)="MG"
label(data$pd_d5_pftra1_1)="Frequency "
label(data$pd_d5_mgtra2_1)="MG"
label(data$pd_d5_pftra2_1)="Frequency "
label(data$pd_d5_mgtra3_1)="MG"
label(data$pd_d5_pftra3_1)="Frequency "
label(data$pd_d5_nameoth1_1)="Name"
label(data$pd_d5_mgoth1_1)="MG"
label(data$pd_d5_pfoth1_1)="Frequency"
label(data$pd_d5_nameoth2_1)="Name"
label(data$pd_d5_mgoth2_1)="MG"
label(data$pd_d5_pfoth2_1)="Frequency"
label(data$pd_d5_nameoth3_1)="Name"
label(data$pd_d5_mgoth3_1)="MG"
label(data$pd_d5_pfoth3_1)="Frequency"
label(data$screening_pain_diary_complete)="Complete?"
label(data$pc1_1)="I worry all the time about whether the pain will end. "
label(data$pc2_1)="I feel I cant go on. "
label(data$pc3_1)="Its terrible and I think its never going to get any better."
label(data$pc4_1)="Its awful and I feel that it overwhelms me. "
label(data$pc5_1)="I feel I cant stand it anymore."
label(data$pc6_1)="I become afraid that the pain will get worse. "
label(data$pc7_1)="I keep thinking of other painful events."
label(data$pc8_1)="I anxiously want the pain to go away. "
label(data$pc9_1)="I cant seem to keep it out of my mind. "
label(data$pc10_1)="I keep thinking about how much it hurts."
label(data$pc11_1)="I keep thinking about how badly I want the pain to stop."
label(data$pc12_1)="Theres nothing I can do to reduce the intensity of the pain.  "
label(data$pc13_1)="I wonder whether something serious may happen. "
label(data$pse1_1)="I can enjoy things, despite the pain."
label(data$pse2_1)="I can do most of the household chores (e.g. tidying-up, washing dishes, etc.), despite the pain."
label(data$pse3_1)="I can socialise with my friends or family members as often as I used to do, despite the pain. "
label(data$pse4_1)="I can cope with my pain in most situations. "
label(data$pse5_1)="I can do some form of work, despite the pain. (work includes housework, paid and unpaid work)."
label(data$pse6_1)="I can still do many of the things I enjoy doing, such as hobbies or leisure activity, despite pain."
label(data$pse7_1)="I can cope with my pain without medication."
label(data$pse8_1)="I can still accomplish most of my goals in life, despite the pain."
label(data$pse9_1)="I can live a normal lifestyle, despite the pain."
label(data$pse10_1)="I can gradually become more active, despite the pain."
label(data$h1_1)="I feel tense or wound up:"
label(data$h2_1)="I still enjoy the things I used to enjoy:"
label(data$h3_1)="I get a sort of frightened feeling as if something awful is about to happen:"
label(data$h4_1)="I can laugh and see the funny side of things:"
label(data$h5_1)="Worrying thoughts go through my mind:"
label(data$h6_1)="I feel cheerful:"
label(data$h7_1)="I can sit at ease and feel relaxed:"
label(data$h8_1)="I feel as if I am slowed down:"
label(data$h9_1)="I get a sort of frightened feeling like butterflies in the stomach:"
label(data$h10_1)="I have lost interest in my appearance:"
label(data$h11_1)="I feel restless as I have to be on the move:"
label(data$h12_1)="I look forward with enjoyment to things:"
label(data$h13_1)="I get sudden feelings of panic:"
label(data$h14_1)="I can enjoy a good book or radio or TV program:"
label(data$o1_1)="Pain intensity"
label(data$o2_1)="Personal care (washing, dressing etc)"
label(data$o3_1)="Lifting"
label(data$o4_1)="Walking"
label(data$o5_1)="Sitting"
label(data$o6_1)="Standing"
label(data$o7_1)="Sleeping"
label(data$o8_1)="Sex life (if applicable)"
label(data$o9_1)="Social life"
label(data$o10_1)="Travelling"
label(data$eq1_1)="MOBILITY"
label(data$eq2_1)="SELF-CARE"
label(data$eq3_1)="USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"
label(data$eq4_1)="PAIN / DISCOMFORT"
label(data$eq5_1)="ANXIETY / DEPRESSION"
label(data$eq6_1)="We would like to know how good or bad your health is TODAY."
label(data$feari1_1)="I am afraid of the operation "
label(data$feari2_1)="I am afraid of the anaesthesia"
label(data$feari3_1)="I am afraid of the pain after the operation"
label(data$feari4_1)="I am afraid of the unpleasant side effects (like nausea) after the operation"
label(data$feari5_1)="I am afraid my health will deteriorate because of the operation"
label(data$feari6_1)="I am afraid the operation will fail"
label(data$feari7_1)="I am afraid that I wont recover completely from the operation"
label(data$feari8_1)="I am afraid of the long duration of the rehabilitation after the operation"
label(data$re_feari1_1)="I am afraid of the operation "
label(data$re_feari2_1)="I am afraid of the anaesthesia"
label(data$re_feari3_1)="I am afraid of the pain after the operation"
label(data$re_feari4_1)="I am afraid of the unpleasant side effects (like nausea) after the operation"
label(data$re_feari5_1)="I am afraid my health will deteriorate because of the operation"
label(data$re_feari6_1)="I am afraid the operation will fail"
label(data$re_feari7_1)="am afraid that I wont recover completely from the operation"
label(data$re_feari8_1)="I am afraid of the long duration of the rehabilitation after the operation"
label(data$re_feari9_1)="Compared to the first time you compiled this questionnaire, how much fear does you have for the operation?  "
label(data$screening_questionnaires_c5b270_complete)="Complete?"
label(data$ppd_date_1)="DISCOGRAPHY DATE"
label(data$disco_yn_l12)="DISCOGRAPHY"
label(data$disco_posneg_l12)="DISCOGRAPHY"
label(data$ppd_l1_adams_1)="ADAMS SCALE"
label(data$ppd_l1_nrs_1)="PAIN SCORE NRS"
label(data$ppd_l1_openingpsi_1)="OPENING PRESSURE (psi)"
label(data$ppd_l1_painppsi_1)="PAIN PRESSURE (psi)"
label(data$ppd_l1_peakpsi_1)="PEAK PRESSURE (psi)"
label(data$ppd_l1_vol_1)="VOLUME (ml)"
label(data$disco_yn_l23)="DISCOGRAPHY"
label(data$disco_posneg_l23)="DISCOGRAPHY"
label(data$ppd_l2_adams_1)="ADAMS SCALE"
label(data$ppd_l2_nrs_1)="PAIN SCORE NRS"
label(data$ppd_l2_openingpsi_1)="OPENING PRESSURE (psi)"
label(data$ppd_l2_painppsi_1)="PAIN PRESSURE (psi)"
label(data$ppd_l2_peakpsi_1)="PEAK PRESSURE (psi)"
label(data$ppd_l2_vol_1)="VOLUME (ml)"
label(data$disco_yn_l34)="DISCOGRAPHY"
label(data$disco_posneg_l34)="DISCOGRAPHY"
label(data$ppd_l3_adams_1)="ADAMS SCALE"
label(data$ppd_l3_nrs_1)="PAIN SCORE NRS"
label(data$ppd_l3_openingpsi_1)="OPENING PRESSURE (psi)"
label(data$ppd_l3_painppsi_1)="PAIN PRESSURE (psi)"
label(data$ppd_l3_peakpsi_1)="PEAK PRESSURE (psi)"
label(data$ppd_l3_vol_1)="VOLUME (ml)"
label(data$disco_yn_l45)="DISCOGRAPHY"
label(data$disco_posneg_l45)="DISCOGRAPHY"
label(data$ppd_l4_adams_1)="ADAMS SCALE"
label(data$ppd_l4_nrs_1)="PAIN SCORE NRS"
label(data$ppd_l4_openingpsi_1)="OPENING PRESSURE (psi)"
label(data$ppd_l4_painppsi_1)="PAIN PRESSURE (psi)"
label(data$ppd_l4_peakpsi_1)="PEAK PRESSURE (psi)"
label(data$ppd_l4_vol_1)="VOLUME (ml)"
label(data$disco_yn_l5s1)="DISCOGRAPHY"
label(data$disco_posneg_l5s1)="DISCOGRAPHY"
label(data$ppd_l5_adams_1)="ADAMS SCALE"
label(data$ppd_l5_nrs_1)="PAIN SCORE NRS"
label(data$ppd_l5_openingpsi_1)="OPENING PRESSURE (psi)"
label(data$ppd_l5_painppsi_1)="PAIN PRESSURE (psi)"
label(data$ppd_l5_peakpsi_1)="PEAK PRESSURE (psi)"
label(data$ppd_l5_vol_1)="VOLUME (ml)"
label(data$pressure_regulated_provocative_discography_complete)="Complete?"
label(data$exam_lenght_1)="LENGHT CM"
label(data$exam_weight_1)="WEIGHT KG"
label(data$exam_lquad_grade_1)="LEFT QUADRICEPS "
label(data$exam_lankle_dor_grade_1)="LEFT ANKLE DORSIFLEXION"
label(data$exam_lankle_pla_grade_1)="LEFT ANKLE PLANTAR FLEXION"
label(data$exam_lexten_hall_grade_1)="LEFT EXTENSOR HALLUCIS LONGUS"
label(data$exam_rquad_grade_1)="RIGHT QUADRICEPS "
label(data$exam_rankle_dor_grade_1)="RIGHT ANKLE DORSIFLEXION"
label(data$exam_rankle_pla_grade_1)="RIGHT ANKLE PLANTAR FLEXION"
label(data$exam_rexten_hall_grade_1)="RIGHT EXTENSOR HALLUCIS LONGUS"
label(data$exam_lpat_grade_1)="LEFT PATELLAR"
label(data$exam_lach_grade_1)="LEFT ACHILLES"
label(data$exam_llas_grade_1)="LEFT STRAIGHT LEG RAISING (LASÈGUE)"
label(data$exam_llas_pos_grade_1)="IF POSITIVE, GRADES"
label(data$exam_rpat_grade_1)="RIGHT PATELLAR"
label(data$exam_rach_grade_1)="RIGHT ACHILLES"
label(data$exam_rlas_grade_1)="RIGHT STRAIGHT LEG RAISING (LASÈGUE)"
label(data$exam_rlas_pos_grade_1)="IF POSITIVE, GRADES"
label(data$exam_lbrag_1)="BRAGARD LEFT"
label(data$exam_rbrag_1)="BRAGARD RIGHT"
label(data$exam_shob_1)="SCHOBER"
label(data$exam_schober_yes_1)="SCHOBER RESTRICTED CM"
label(data$exam_finger_dist_1)="FINGER TO FLOOR DISTANCE CM"
label(data$exam_pain_posit_1)="PAIN FROM SITTING TO STANDING POSITION"
label(data$exam_sensation_1)="SENSATION"
label(data$esam_axial_pain_1)="AXIAL PAIN"
label(data$exam_radpain_1)="RADIATING PAIN"
label(data$gelstix_date_1)="DATE"
label(data$gelstix_start_time_1)="START TIME INCISION"
label(data$gelstix_end_time_1)="END TIME INCISION"
label(data$disco_l1_implant_1)="IMPLANT LEVEL(S)"
label(data$gelstix_l1_nr_1)="NUMBER OF GELSTIX FOR LEVEL"
label(data$disco_l2_implant_1)="IMPLANT LEVEL(S)"
label(data$gelstix_l2_nr_1)="NUMBER OF GELSTIX FOR LEVEL"
label(data$disco_l3_implant_1)="IMPLANT LEVEL(S)"
label(data$gelstix_l3_nr_1)="NUMBER OF GELSTIX FOR LEVEL"
label(data$disco_l4_implant_1)="IMPLANT LEVEL(S)"
label(data$gelstix_l4_nr_1)="NUMBER OF GELSTIX FOR LEVEL"
label(data$disco_l5_implant_1)="IMPLANT LEVEL(S)"
label(data$gelstix_l5_nr_1)="NUMBER OF GELSTIX FOR LEVEL"
label(data$gelstix_insertion_1)="EASE OF INSERTION"
label(data$gelstix_difficult_inser_1)="EASE OF INSERTION DIFFICULT (explain):"
label(data$gelstix_catolog_nr1_1)="CATALOG NUMBER"
label(data$gelstix_lot_nr1_1)="LOT NUMBER"
label(data$gelstix_catolog_nr2_1)="CATALOG NUMBER"
label(data$gelstix_lot_nr2_1)="LOT NUMBER"
label(data$gelstix_catolog_nr3_1)="CATALOG NUMBER"
label(data$gelstix_lot_nr3_1)="LOT NUMBER"
label(data$gelstix_other_notes_1)="OTHER NOTES"
label(data$study_gelstix_complete)="Complete?"
label(data$pd_notdone_pd_1w_1)="NOT DONE"
label(data$pd_date_1w_1)="SCREENING PAIN DIARY START DATE"
label(data$pd_d1_9_1w_1)="HOURS 09.00"
label(data$pd_d1_14_1w_1)="HOURS 14.00"
label(data$pd_d1_20_1w_1)="HOURS 20.00"
label(data$pd_d1_mgacec1_1w_1)="MG"
label(data$pd_d1_pfacec1_1w_1)="Frequency "
label(data$pd_d1_mgacec2_1w_1)="MG"
label(data$pd_d1_pfacec2_1w_1)="Frequency "
label(data$pd_d1_mgacec3_1w_1)="MG"
label(data$pd_d1_pfacec3_1w_1)="Frequency "
label(data$pd_d1_mgacem1_1w_1)="MG"
label(data$pd_d1_pfacem1_1w_1)="Frequency "
label(data$pd_d1_mgacem2_1w_1)="MG"
label(data$pd_d1_pfacem2_1w_1)="Frequency "
label(data$pd_d1_mgacem3_1w_1)="MG"
label(data$pd_d1_pfacem3_1w_1)="Frequency "
label(data$pd_d1_mgami1_1w_1)="MG"
label(data$pd_d1_pfami1_1w_1)="Frequency "
label(data$pd_d1_pfami2_1w_1)="Frequency "
label(data$pd_d1_mgami2_1w_1)="MG"
label(data$pd_d1_pfami3_1w_1)="Frequency "
label(data$pd_d1_mgami3_1w_1)="MG"
label(data$pd_d1_mcg_hbup1_1w_1)="MCG/H"
label(data$pd_d1_pfbup1_1w_1)="Frequency "
label(data$pd_d1_mcg_hbup2_1w_1)="MCG/H"
label(data$pd_d1_pfbup2_1w_1)="Frequency "
label(data$pd_d1_mcg_hbup3_1w_1)="MCG/H"
label(data$pd_d1_pfbup3_1w_1)="Frequency "
label(data$pd_d1_mgdex1_1w_1)="MG"
label(data$pd_d1_pfdex1_1w_1)="Frequency "
label(data$pd_d1_mgdex2_1w_1)="MG"
label(data$pd_d1_pfdex2_1w_1)="Frequency "
label(data$pd_d1_mgdex3_1w_1)="MG"
label(data$pd_d1_pfdex3_1w_1)="Frequency "
label(data$pd_d1_mgdiclo1_1w_1)="MG"
label(data$pd_d1_pfdiclo1_1w_1)="Frequency "
label(data$pd_d1_mgdiclo2_1w_1)="MG"
label(data$pd_d1_pfdiclo2_1w_1)="Frequency "
label(data$pd_d1_mgdiclo3_1w_1)="MG"
label(data$pd_d1_pfdiclo3_1w_1)="Frequency "
label(data$pd_d1_mgdul1_1w_1)="MG"
label(data$pd_d1_pfdul1_1w_1)="Frequency "
label(data$pd_d1_mgdul2_1w_1)="MG"
label(data$pd_d1_pfdul2_1w_1)="Frequency "
label(data$pd_d1_mgdul3_1w_1)="MG"
label(data$pd_d1_pfdul3_1w_1)="Frequency "
label(data$pd_d1_mcg_hfen1_1w_1)="MCG/H"
label(data$pd_d1_pffen1_1w_1)="Frequency "
label(data$pd_d1_mcg_hfen2_1w_1)="MCG/H"
label(data$pd_d1_pffen2_1w_1)="Frequency "
label(data$pd_d1_mcg_hfen3_1w_1)="MCG/H"
label(data$pd_d1_pffen3_1w_1)="Frequency "
label(data$pd_d1_mggab1_1w_1)="MG"
label(data$pd_d1_pfgab1_1w_1)="Frequency "
label(data$pd_d1_mggab2_1w_1)="MG"
label(data$pd_d1_pfgab2_1w_1)="Frequency "
label(data$pd_d1_mggab3_1w_1)="MG"
label(data$pd_d1_pfgab3_1w_1)="Frequency "
label(data$pd_d1_mghyd1_1w_1)="MG"
label(data$pd_d1_pfhyd1_1w_1)="Frequency "
label(data$pd_d1_mghyd2_1w_1)="MG"
label(data$pd_d1_pfhyd2_1w_1)="Frequency "
label(data$pd_d1_mghyd3_1w_1)="MG"
label(data$pd_d1_pfhyd3_1w_1)="Frequency "
label(data$pd_d1_mgibu1_1w_1)="MG"
label(data$pd_d1_pfibu1_1w_1)="Frequency "
label(data$pd_d1_mgibu2_1w_1)="MG"
label(data$pd_d1_pfibu2_1w_1)="Frequency "
label(data$pd_d1_mgibu3_1w_1)="MG"
label(data$pd_d1_pfibu3_1w_1)="Frequency "
label(data$pd_d1_mgind1_1w_1)="MG"
label(data$pd_d1_pfind1_1w_1)="Frequency "
label(data$pd_d1_mgind2_1w_1)="MG"
label(data$pd_d1_pfind2_1w_1)="Frequency "
label(data$pd_d1_mgind3_1w_1)="MG"
label(data$pd_d1_pfind3_1w_1)="Frequency "
label(data$pd_d1_mgket1_1w_1)="MG"
label(data$pd_d1_pfket1_1w_1)="Frequency "
label(data$pd_d1_mgket2_1w_1)="MG"
label(data$pd_d1_pfket2_1w_1)="Frequency "
label(data$pd_d1_mgket3_1w_1)="MG"
label(data$pd_d1_pfket3_1w_1)="Frequency "
label(data$pd_d1_mgmel1_1w_1)="MG"
label(data$pd_d1_pfmel1_1w_1)="Frequency "
label(data$pd_d1_mgmel2_1w_1)="MG"
label(data$pd_d1_pfmel2_1w_1)="Frequency "
label(data$pd_d1_mgmel3_1w_1)="MG"
label(data$pd_d1_pfmel3_1w_1)="Frequency "
label(data$pd_d1_mgmeta1_1w_1)="MG"
label(data$pd_d1_pfmeta1_1w_1)="Frequency "
label(data$pd_d1_mgmeta2_1w_1)="MG"
label(data$pd_d1_pfmeta2_1w_1)="Frequency "
label(data$pd_d1_mgmeta3_1w_1)="MG"
label(data$pd_d1_pfmeta3_1w_1)="Frequency "
label(data$pd_d1_mgmet1_1w_1)="MG"
label(data$pd_d1_pfmet1_1w_1)="Frequency "
label(data$pd_d1_mgmet2_1w_1)="MG"
label(data$pd_d1_pfmet2_1w_1)="Frequency "
label(data$pd_d1_mgmet3_1w_1)="MG"
label(data$pd_d1_pfmet3_1w_1)="Frequency "
label(data$pd_d1_mgmor1_1w_1)="MG"
label(data$pd_d1_pfmor1_1w_1)="Frequency "
label(data$pd_d1_mgmor2_1w_1)="MG"
label(data$pd_d1_pfmor2_1w_1)="Frequency "
label(data$pd_d1_mgmor3_1w_1)="MG"
label(data$pd_d1_pfmor3_1w_1)="Frequency "
label(data$pd_d1_mgnap1_1w_1)="MG"
label(data$pd_d1_pfnap1_1w_1)="Frequency "
label(data$pd_d1_mgnap2_1w_1)="MG"
label(data$pd_d1_pfnap2_1w_1)="Frequency "
label(data$pd_d1_mgnap3_1w_1)="MG"
label(data$pd_d1_pfnap3_1w_1)="Frequency "
label(data$pd_d1_mgnor1_1w_1)="MG"
label(data$pd_d1_pfnor1_1w_1)="Frequency "
label(data$pd_d1_mgnor2_1w_1)="MG"
label(data$pd_d1_pfnor2_1w_1)="Frequency "
label(data$pd_d1_mgnor3_1w_1)="MG"
label(data$pd_d1_pfnor3_1w_1)="Frequency "
label(data$pd_d1_mgoxy1_1w_1)="MG"
label(data$pd_d1_pfoxy1_1w_1)="Frequency "
label(data$pd_d1_mgoxy2_1w_1)="MG"
label(data$pd_d1_pfoxy2_1w_1)="Frequency "
label(data$pd_d1_mgoxy3_1w_1)="MG"
label(data$pd_d1_pfoxy3_1w_1)="Frequency "
label(data$pd_d1_mgparac1_1w_1)="MG"
label(data$pd_d1_pfparac1_1w_1)="Frequency "
label(data$pd_d1_mgparac2_1w_1)="MG"
label(data$pd_d1_pfparac2_1w_1)="Frequency "
label(data$pd_d1_mgparac3_1w_1)="MG"
label(data$pd_d1_pfparac3_1w_1)="Frequency "
label(data$pd_d1_mgphe1_1w_1)="MG"
label(data$pd_d1_pfphe1_1w_1)="Frequency "
label(data$pd_d1_mgphe2_1w_1)="MG"
label(data$pd_d1_pfphe2_1w_1)="Frequency "
label(data$pd_d1_mgphe3_1w_1)="MG"
label(data$pd_d1_pfphe3_1w_1)="Frequency "
label(data$pd_d1_mgpreg1_1w_1)="MG"
label(data$pd_d1_pfpreg1_1w_1)="Frequency "
label(data$pd_d1_mgpreg2_1w_1)="MG"
label(data$pd_d1_pfpreg2_1w_1)="Frequency "
label(data$pd_d1_mgpreg3_1w_1)="MG"
label(data$pd_d1_pfpreg3_1w_1)="Frequency "
label(data$pd_d1_mgpir1_1w_1)="MG"
label(data$pd_d1_pfpir1_1w_1)="Frequency "
label(data$pd_d1_mgpir2_1w_1)="MG"
label(data$pd_d1_pfpir2_1w_1)="Frequency "
label(data$pd_d1_mgpir3_1w_1)="MG"
label(data$pd_d1_pfpir3_1w_1)="Frequency "
label(data$pd_d1_mgtap1_1w_1)="MG"
label(data$pd_d1_pftap1_1w_1)="Frequency "
label(data$pd_d1_mgtap2_1w_1)="MG"
label(data$pd_d1_pftap2_1w_1)="Frequency "
label(data$pd_d1_mgtap3_1w)="MG"
label(data$pd_d1_pftap3_1w_1)="Frequency "
label(data$pd_d1_mgtra1_1w_1)="MG"
label(data$pd_d1_pftra1_1w_1)="Frequency "
label(data$pd_d1_mgtra2_1w_1)="MG"
label(data$pd_d1_pftra2_1w_1)="Frequency "
label(data$pd_d1_mgtra3_1w_1)="MG"
label(data$pd_d1_pftra3_1w_1)="Frequency "
label(data$pd_d1_nameoth1_1w_1)="Name"
label(data$pd_d1_mgoth1_1w_1)="MG"
label(data$pd_d1_pfoth1_1w_1)="Frequency"
label(data$pd_d1_nameoth2_1w_1)="Name"
label(data$pd_d1_mgoth2_1w_1)="MG"
label(data$pd_d1_pfoth2_1w_1)="Frequency"
label(data$pd_d1_nameoth3_1w_1)="Name"
label(data$pd_d1_mgoth3_1w_1)="MG"
label(data$pd_d1_pfoth3_1w_1)="Frequency"
label(data$pd_d2_9_1w_1)="HOURS 09.00"
label(data$pd_d2_14_1w_1)="HOURS 14.00"
label(data$pd_d2_20_1w_1)="HOURS 20.00"
label(data$pd_d2_mgacec1_1w_1)="MG"
label(data$pd_d2_pfacec1_1w_1)="Frequency "
label(data$pd_d2_mgacec2_1w_1)="MG"
label(data$pd_d2_pfacec2_1w_1)="Frequency "
label(data$pd_d2_mgacec3_1w_1)="MG"
label(data$pd_d2_pfacec3_1w_1)="Frequency "
label(data$pd_d2_mgacem1_1w_1)="MG"
label(data$pd_d2_pfacem1_1w_1)="Frequency "
label(data$pd_d2_mgacem2_1w_1)="MG"
label(data$pd_d2_pfacem2_1w_1)="Frequency "
label(data$pd_d2_mgacem3_1w_1)="MG"
label(data$pd_d2_pfacem3_1w_1)="Frequency "
label(data$pd_d2_mgami1_1w_1)="MG"
label(data$pd_d2_pfami1_1w_1)="Frequency "
label(data$pd_d2_mgami2_1w_1)="MG"
label(data$pd_d2_pfami2_1w_1)="Frequency "
label(data$pd_d2_mgami3_1w_1)="MG"
label(data$pd_d2_pfami3_1w_1)="Frequency "
label(data$pd_d2_mcg_hbup1_1w_1)="MCG/H"
label(data$pd_d2_pfbup1_1w_1)="Frequency "
label(data$pd_d2_mcg_hbup2_1w_1)="MCG/H"
label(data$pd_d2_pfbup2_1w_1)="Frequency "
label(data$pd_d2_mcg_hbup3_1w_1)="MCG/H"
label(data$pd_d2_pfbup3_1w_1)="Frequency "
label(data$pd_d2_mgdex1_1w_1)="MG"
label(data$pd_d2_pfdex1_1w_1)="Frequency "
label(data$pd_d2_mgdex2_1w_1)="MG"
label(data$pd_d2_pfdex2_1w_1)="Frequency "
label(data$pd_d2_mgdex3_1w_1)="MG"
label(data$pd_d2_pfdex3_1w_1)="Frequency "
label(data$pd_d2_mgdiclo1_1w_1)="MG"
label(data$pd_d2_pfdiclo1_1w_1)="Frequency "
label(data$pd_d2_mgdiclo2_1w_1)="MG"
label(data$pd_d2_pfdiclo2_1w_1)="Frequency "
label(data$pd_d2_mgdiclo3_1w_1)="MG"
label(data$pd_d2_pfdiclo3_1w_1)="Frequency "
label(data$pd_d2_mgdul1_1w_1)="MG"
label(data$pd_d2_pfdul1_1w_1)="Frequency "
label(data$pd_d2_mgdul2_1w_1)="MG"
label(data$pd_d2_pfdul2_1w_1)="Frequency "
label(data$pd_d2_mgdul3_1w_1)="MG"
label(data$pd_d2_pfdul3_1w_1)="Frequency "
label(data$pd_d2_mcg_hfen1_1w_1)="MCG/H"
label(data$pd_d2_pffen1_1w_1)="Frequency "
label(data$pd_d2_mcg_hfen2_1w_1)="MCG/H"
label(data$pd_d2_pffen2_1w_1)="Frequency "
label(data$pd_d2_mcg_hfen3_1w_1)="MCG/H"
label(data$pd_d2_pffen3_1w_1)="Frequency "
label(data$pd_d2_mggab1_1w_1)="MG"
label(data$pd_d2_pfgab1_1w_1)="Frequency "
label(data$pd_d2_mggab2_1w_1)="MG"
label(data$pd_d2_pfgab2_1w_1)="Frequency "
label(data$pd_d2_mggab3_1w_1)="MG"
label(data$pd_d2_pfgab3_1w_1)="Frequency "
label(data$pd_d2_mghyd1_1w_1)="MG"
label(data$pd_d2_pfhyd1_1w_1)="Frequency "
label(data$pd_d2_mghyd2_1w_1)="MG"
label(data$pd_d2_pfhyd2_1w_1)="Frequency "
label(data$pd_d2_mghyd3_1w_1)="MG"
label(data$pd_d2_pfhyd3_1w_1)="Frequency "
label(data$pd_d2_mgibu1_1w_1)="MG"
label(data$pd_d2_pfibu1_1w_1)="Frequency "
label(data$pd_d2_mgibu2_1w_1)="MG"
label(data$pd_d2_pfibu2_1w_1)="Frequency "
label(data$pd_d2_mgibu3_1w_1)="MG"
label(data$pd_d2_pfibu3_1w_1)="Frequency "
label(data$pd_d2_mgind1_1w_1)="MG"
label(data$pd_d2_pfind1_1w_1)="Frequency "
label(data$pd_d2_mgind2_1w_1)="MG"
label(data$pd_d2_pfind2_1w_1)="Frequency "
label(data$pd_d2_mgind3_1w_1)="MG"
label(data$pd_d2_pfind3_1w_1)="Frequency "
label(data$pd_d2_mgket1_1w_1)="MG"
label(data$pd_d2_pfket1_1w_1)="Frequency "
label(data$pd_d2_mgket2_1w_1)="MG"
label(data$pd_d2_pfket2_1w_1)="Frequency "
label(data$pd_d2_mgket3_1w_1)="MG"
label(data$pd_d2_pfket3_1w_1)="Frequency "
label(data$pd_d2_mgmel1_1w_1)="MG"
label(data$pd_d2_pfmel1_1w_1)="Frequency "
label(data$pd_d2_mgmel2_1w_1)="MG"
label(data$pd_d2_pfmel2_1w_1)="Frequency "
label(data$pd_d2_mgmel3_1w_1)="MG"
label(data$pd_d2_pfmel3_1w_1)="Frequency "
label(data$pd_d2_mgmeta1_1w_1)="MG"
label(data$pd_d2_pfmeta1_1w_1)="Frequency "
label(data$pd_d2_mgmeta2_1w_1)="MG"
label(data$pd_d2_pfmeta2_1w_1)="Frequency "
label(data$pd_d2_mgmeta3_1w_1)="MG"
label(data$pd_d2_pfmeta3_1w_1)="Frequency "
label(data$pd_d2_mgmet1_1w_1)="MG"
label(data$pd_d2_pfmet1_1w_1)="Frequency "
label(data$pd_d2_mgmet2_1w_1)="MG"
label(data$pd_d2_pfmet2_1w_1)="Frequency "
label(data$pd_d2_mgmet3_1w_1)="MG"
label(data$pd_d2_pfmet3_1w_1)="Frequency "
label(data$pd_d2_mgmor1_1w_1)="MG"
label(data$pd_d2_pfmor1_1w_1)="Frequency "
label(data$pd_d2_mgmor2_1w_1)="MG"
label(data$pd_d2_pfmor2_1w_1)="Frequency "
label(data$pd_d2_mgmor3_1w_1)="MG"
label(data$pd_d2_pfmor3_1w_1)="Frequency "
label(data$pd_d2_mgnap1_1w_1)="MG"
label(data$pd_d2_pfnap1_1w_1)="Frequency "
label(data$pd_d2_mgnap2_1w_1)="MG"
label(data$pd_d2_pfnap2_1w_1)="Frequency "
label(data$pd_d2_mgnap3_1w_1)="MG"
label(data$pd_d2_pfnap3_1w_1)="Frequency "
label(data$pd_d2_mgnor1_1w_1)="MG"
label(data$pd_d2_pfnor1_1w_1)="Frequency "
label(data$pd_d2_mgnor2_1w_1)="MG"
label(data$pd_d2_pfnor2_1w_1)="Frequency "
label(data$pd_d2_mgnor3_1w_1)="MG"
label(data$pd_d2_pfnor3_1w_1)="Frequency "
label(data$pd_d2_mgoxy1_1w_1)="MG"
label(data$pd_d2_pfoxy1_1w_1)="Frequency "
label(data$pd_d2_mgoxy2_1w_1)="MG"
label(data$pd_d2_pfoxy2_1w_1)="Frequency "
label(data$pd_d2_mgoxy3_1w_1)="MG"
label(data$pd_d2_pfoxy3_1w_1)="Frequency "
label(data$pd_d2_mgparac1_1w_1)="MG"
label(data$pd_d2_pfparac1_1w_1)="Frequency "
label(data$pd_d2_mgparac2_1w_1)="MG"
label(data$pd_d2_pfparac2_1w_1)="Frequency "
label(data$pd_d2_mgparac3_1w_1)="MG"
label(data$pd_d2_pfparac3_1w_1)="Frequency "
label(data$pd_d2_mgphe1_1w_1)="MG"
label(data$pd_d2_pfphe1_1w_1)="Frequency "
label(data$pd_d2_mgphe2_1w_1)="MG"
label(data$pd_d2_pfphe2_1w_1)="Frequency "
label(data$pd_d2_mgphe3_1w_1)="MG"
label(data$pd_d2_pfphe3_1w_1)="Frequency "
label(data$pd_d2_mgpreg1_1w_1)="MG"
label(data$pd_d2_pfpreg1_1w_1)="Frequency "
label(data$pd_d2_mgpreg2_1w_1)="MG"
label(data$pd_d2_pfpreg2_1w_1)="Frequency "
label(data$pd_d2_mgpreg3_1w_1)="MG"
label(data$pd_d2_pfpreg3_1w_1)="Frequency "
label(data$pd_d2_mgpir1_1w_1)="MG"
label(data$pd_d2_pfpir1_1w_1)="Frequency "
label(data$pd_d2_mgpir2_1w_1)="MG"
label(data$pd_d2_pfpir2_1w_1)="Frequency "
label(data$pd_d2_mgpir3_1w_1)="MG"
label(data$pd_d2_pfpir3_1w_1)="Frequency "
label(data$pd_d2_mgtap1_1w_1)="MG"
label(data$pd_d2_pftap1_1w_1)="Frequency "
label(data$pd_d2_mgtap2_1w_1)="MG"
label(data$pd_d2_pftap2_1w_1)="Frequency "
label(data$pd_d2_mgtap3_1w_1)="MG"
label(data$pd_d2_pftap3_1w_1)="Frequency "
label(data$pd_d2_mgtra1_1w_1)="MG"
label(data$pd_d2_pftra1_1w_1)="Frequency "
label(data$pd_d2_mgtra2_1w_1)="MG"
label(data$pd_d2_pftra2_1w_1)="Frequency "
label(data$pd_d2_mgtra3_1w_1)="MG"
label(data$pd_d2_pftra3_1w_1)="Frequency "
label(data$pd_d2_nameoth1_1w_1)="Name"
label(data$pd_d2_mgoth1_1w_1)="MG"
label(data$pd_d2_pfoth1_1w_1)="Frequency"
label(data$pd_d2_nameoth2_1w_1)="Name"
label(data$pd_d2_mgoth2_1w_1)="MG"
label(data$pd_d2_pfoth2_1w_1)="Frequency"
label(data$pd_d2_nameoth3_1w_1)="Name"
label(data$pd_d2_mgoth3_1w_1)="MG"
label(data$pd_d2_pfoth3_1w_1)="Frequency"
label(data$pd_d3_9_1w_1)="HOURS 09.00"
label(data$pd_d3_14_1w_1)="HOURS 14.00"
label(data$pd_d3_20_1w_1)="HOURS 20.00"
label(data$pd_d3_mgacec1_1w_1)="MG"
label(data$pd_d3_pfacec1_1w_1)="Frequency "
label(data$pd_d3_mgacec2_1w_1)="MG"
label(data$pd_d3_pfacec2_1w_1)="Frequency "
label(data$pd_d3_mgacec3_1w_1)="MG"
label(data$pd_d3_pfacec3_1w_1)="Frequency "
label(data$pd_d3_mgacem1_1w_1)="MG"
label(data$pd_d3_pfacem1_1w_1)="Frequency "
label(data$pd_d3_mgacem2_1w_1)="MG"
label(data$pd_d3_pfacem2_1w_1)="Frequency "
label(data$pd_d3_mgacem3_1w_1)="MG"
label(data$pd_d3_pfacem3_1w_1)="Frequency "
label(data$pd_d3_mgami1_1w_1)="MG"
label(data$pd_d3_pfami1_1w_1)="Frequency "
label(data$pd_d3_mgami2_1w_1)="MG"
label(data$pd_d3_pfami2_1w_1)="Frequency "
label(data$pd_d3_mgami3_1w_1)="MG"
label(data$pd_d3_pfami3_1w_1)="Frequency "
label(data$pd_d3_mcg_hbup1_1w_1)="MCG/H"
label(data$pd_d3_pfbup1_1w_1)="Frequency "
label(data$pd_d3_mcg_hbup2_1w_1)="MCG/H"
label(data$pd_d3_pfbup2_1w_1)="Frequency "
label(data$pd_d3_mcg_hbup3_1w_1)="MCG/H"
label(data$pd_d3_pfbup3_1w_1)="Frequency "
label(data$pd_d3_mgdex1_1w_1)="MG"
label(data$pd_d3_pfdex1_1w_1)="Frequency "
label(data$pd_d3_mgdex2_1w_1)="MG"
label(data$pd_d3_pfdex2_1w_1)="Frequency "
label(data$pd_d3_mgdex3_1w_1)="MG"
label(data$pd_d3_pfdex3_1w_1)="Frequency "
label(data$pd_d3_mgdiclo1_1w_1)="MG"
label(data$pd_d3_pfdiclo1_1w_1)="Frequency "
label(data$pd_d3_mgdiclo2_1w_1)="MG"
label(data$pd_d3_pfdiclo2_1w_1)="Frequency "
label(data$pd_d3_mgdiclo3_1w_1)="MG"
label(data$pd_d3_pfdiclo3_1w_1)="Frequency "
label(data$pd_d3_mgdul1_1w_1)="MG"
label(data$pd_d3_pfdul1_1w_1)="Frequency "
label(data$pd_d3_mgdul2_1w_1)="MG"
label(data$pd_d3_pfdul2_1w_1)="Frequency "
label(data$pd_d3_mgdul3_1w_1)="MG"
label(data$pd_d3_pfdul3_1w_1)="Frequency "
label(data$pd_d3_mcg_hfen1_1w_1)="MCG/H"
label(data$pd_d3_pffen1_1w_1)="Frequency "
label(data$pd_d3_mcg_hfen2_1w_1)="MCG/H"
label(data$pd_d3_pffen2_1w_1)="Frequency "
label(data$pd_d3_mcg_hfen3_1w_1)="MCG/H"
label(data$pd_d3_pffen3_1w_1)="Frequency "
label(data$pd_d3_mggab1_1w_1)="MG"
label(data$pd_d3_pfgab1_1w_1)="Frequency "
label(data$pd_d3_mggab2_1w_1)="MG"
label(data$pd_d3_pfgab2_1w_1)="Frequency "
label(data$pd_d3_mggab3_1w_1)="MG"
label(data$pd_d3_pfgab3_1w_1)="Frequency "
label(data$pd_d3_mghyd1_1w_1)="MG"
label(data$pd_d3_pfhyd1_1w_1)="Frequency "
label(data$pd_d3_mghyd2_1w_1)="MG"
label(data$pd_d3_pfhyd2_1w_1)="Frequency "
label(data$pd_d3_mghyd3_1w_1)="MG"
label(data$pd_d3_pfhyd3_1w_1)="Frequency "
label(data$pd_d3_mgibu1_1w_1)="MG"
label(data$pd_d3_pfibu1_1w_1)="Frequency "
label(data$pd_d3_mgibu2_1w_1)="MG"
label(data$pd_d3_pfibu2_1w_1)="Frequency "
label(data$pd_d3_mgibu3_1w_1)="MG"
label(data$pd_d3_pfibu3_1w_1)="Frequency "
label(data$pd_d3_mgind1_1w_1)="MG"
label(data$pd_d3_pfind1_1w_1)="Frequency "
label(data$pd_d3_mgind2_1w_1)="MG"
label(data$pd_d3_pfind2_1w_1)="Frequency "
label(data$pd_d3_mgind3_1w_1)="MG"
label(data$pd_d3_pfind3_1w_1)="Frequency "
label(data$pd_d3_mgket1_1w_1)="MG"
label(data$pd_d3_pfket1_1w_1)="Frequency "
label(data$pd_d3_mgket2_1w_1)="MG"
label(data$pd_d3_pfket2_1w_1)="Frequency "
label(data$pd_d3_mgket3_1w_1)="MG"
label(data$pd_d3_pfket3_1w_1)="Frequency "
label(data$pd_d3_mgmel1_1w_1)="MG"
label(data$pd_d3_pfmel1_1w_1)="Frequency "
label(data$pd_d3_mgmel2_1w_1)="MG"
label(data$pd_d3_pfmel2_1w_1)="Frequency "
label(data$pd_d3_mgmel3_1w_1)="MG"
label(data$pd_d3_pfmel3_1w_1)="Frequency "
label(data$pd_d3_mgmeta1_1w_1)="MG"
label(data$pd_d3_pfmeta1_1w_1)="Frequency "
label(data$pd_d3_mgmeta2_1w_1)="MG"
label(data$pd_d3_pfmeta2_1w_1)="Frequency "
label(data$pd_d3_mgmeta3_1w_1)="MG"
label(data$pd_d3_pfmeta3_1w_1)="Frequency "
label(data$pd_d3_mgmet1_1w_1)="MG"
label(data$pd_d3_pfmet1_1w_1)="Frequency "
label(data$pd_d3_mgmet2_1w_1)="MG"
label(data$pd_d3_pfmet2_1w_1)="Frequency "
label(data$pd_d3_mgmet3_1w_1)="MG"
label(data$pd_d3_pfmet3_1w_1)="Frequency "
label(data$pd_d3_mgmor1_1w_1)="MG"
label(data$pd_d3_pfmor1_1w_1)="Frequency "
label(data$pd_d3_mgmor2_1w_1)="MG"
label(data$pd_d3_pfmor2_1w_1)="Frequency "
label(data$pd_d3_mgmor3_1w_1)="MG"
label(data$pd_d3_pfmor3_1w_1)="Frequency "
label(data$pd_d3_mgnap1_1w_1)="MG"
label(data$pd_d3_pfnap1_1w_1)="Frequency "
label(data$pd_d3_mgnap2_1w_1)="MG"
label(data$pd_d3_pfnap2_1w_1)="Frequency "
label(data$pd_d3_mgnap3_1w_1)="MG"
label(data$pd_d3_pfnap3_1w_1)="Frequency "
label(data$pd_d3_mgnor1_1w_1)="MG"
label(data$pd_d3_pfnor1_1w_1)="Frequency "
label(data$pd_d3_mgnor2_1w_1)="MG"
label(data$pd_d3_pfnor2_1w_1)="Frequency "
label(data$pd_d3_mgnor3_1w_1)="MG"
label(data$pd_d3_pfnor3_1w_1)="Frequency "
label(data$pd_d3_mgoxy1_1w_1)="MG"
label(data$pd_d3_pfoxy1_1w_1)="Frequency "
label(data$pd_d3_mgoxy2_1w_1)="MG"
label(data$pd_d3_pfoxy2_1w_1)="Frequency "
label(data$pd_d3_mgoxy3_1w_1)="MG"
label(data$pd_d3_pfoxy3_1w_1)="Frequency "
label(data$pd_d3_mgparac1_1w_1)="MG"
label(data$pd_d3_pfparac1_1w_1)="Frequency "
label(data$pd_d3_mgparac2_1w_1)="MG"
label(data$pd_d3_pfparac2_1w_1)="Frequency "
label(data$pd_d3_mgparac3_1w_1)="MG"
label(data$pd_d3_pfparac3_1w_1)="Frequency "
label(data$pd_d3_mgphe1_1w_1)="MG"
label(data$pd_d3_pfphe1_1w_1)="Frequency "
label(data$pd_d3_mgphe2_1w_1)="MG"
label(data$pd_d3_pfphe2_1w_1)="Frequency "
label(data$pd_d3_mgphe3_1w_1)="MG"
label(data$pd_d3_pfphe3_1w_1)="Frequency "
label(data$pd_d3_mgpreg1_1w_1)="MG"
label(data$pd_d3_pfpreg1_1w_1)="Frequency "
label(data$pd_d3_mgpreg2_1w_1)="MG"
label(data$pd_d3_pfpreg2_1w_1)="Frequency "
label(data$pd_d3_mgpreg3_1w_1)="MG"
label(data$pd_d3_pfpreg3_1w_1)="Frequency "
label(data$pd_d3_mgpir1_1w_1)="MG"
label(data$pd_d3_pfpir1_1w_1)="Frequency "
label(data$pd_d3_mgpir2_1w_1)="MG"
label(data$pd_d3_pfpir2_1w_1)="Frequency "
label(data$pd_d3_mgpir3_1w_1)="MG"
label(data$pd_d3_pfpir3_1w_1)="Frequency "
label(data$pd_d3_mgtap1_1w_1)="MG"
label(data$pd_d3_pftap1_1w_1)="Frequency "
label(data$pd_d3_mgtap2_1w_1)="MG"
label(data$pd_d3_pftap2_1w_1)="Frequency "
label(data$pd_d3_mgtap3_1w_1)="MG"
label(data$pd_d3_pftap3_1w_1)="Frequency "
label(data$pd_d3_mgtra1_1w_1)="MG"
label(data$pd_d3_pftra1_1w_1)="Frequency "
label(data$pd_d3_mgtra2_1w_1)="MG"
label(data$pd_d3_pftra2_1w_1)="Frequency "
label(data$pd_d3_mgtra3_1w_1)="MG"
label(data$pd_d3_pftra3_1w_1)="Frequency "
label(data$pd_d3_nameoth1_1w_1)="Name"
label(data$pd_d3_mgoth1_1w_1)="MG"
label(data$pd_d3_pfoth1_1w_1)="Frequency"
label(data$pd_d3_nameoth2_1w_1)="Name"
label(data$pd_d3_mgoth2_1w_1)="MG"
label(data$pd_d3_pfoth2_1w_1)="Frequency"
label(data$pd_d3_nameoth3_1w_1)="Name"
label(data$pd_d3_mgoth3_1w_1)="MG"
label(data$pd_d3_pfoth3_1w_1)="Frequency"
label(data$pd_d4_9_1w_1)="HOURS 09.00"
label(data$pd_d4_14_1w_1)="HOURS 14.00"
label(data$pd_d4_20_1w_1)="HOURS 20.00"
label(data$pd_d4_mgacec1_1w_1)="MG"
label(data$pd_d4_pfacec1_1w_1)="Frequency "
label(data$pd_d4_mgacec2_1w_1)="MG"
label(data$pd_d4_pfacec2_1w_1)="Frequency "
label(data$pd_d4_mgacec3_1w_1)="MG"
label(data$pd_d4_pfacec3_1w_1)="Frequency "
label(data$pd_d4_mgacem1_1w_1)="MG"
label(data$pd_d4_pfacem1_1w_1)="Frequency "
label(data$pd_d4_mgacem2_1w_1)="MG"
label(data$pd_d4_pfacem2_1w_1)="Frequency "
label(data$pd_d4_mgacem3_1w_1)="MG"
label(data$pd_d4_pfacem3_1w_1)="Frequency "
label(data$pd_d4_mgami1_1w_1)="MG"
label(data$pd_d4_pfami1_1w_1)="Frequency "
label(data$pd_d4_mgami2_1w_1)="MG"
label(data$pd_d4_pfami2_1w_1)="Frequency "
label(data$pd_d4_mgami3_1w_1)="MG"
label(data$pd_d4_pfami3_1w_1)="Frequency "
label(data$pd_d4_mcg_hbup1_1w_1)="MCG/H"
label(data$pd_d4_pfbup1_1w_1)="Frequency "
label(data$pd_d4_mcg_hbup2_1w_1)="MCG/H"
label(data$pd_d4_pfbup2_1w_1)="Frequency "
label(data$pd_d4_mcg_hbup3_1w_1)="MCG/H"
label(data$pd_d4_pfbup3_1w_1)="Frequency "
label(data$pd_d4_mgdex1_1w_1)="MG"
label(data$pd_d4_pfdex1_1w_1)="Frequency "
label(data$pd_d4_mgdex2_1w_1)="MG"
label(data$pd_d4_pfdex2_1w_1)="Frequency "
label(data$pd_d4_mgdex3_1w_1)="MG"
label(data$pd_d4_pfdex3_1w_1)="Frequency "
label(data$pd_d4_mgdiclo1_1w_1)="MG"
label(data$pd_d4_pfdiclo1_1w_1)="Frequency "
label(data$pd_d4_mgdiclo2_1w_1)="MG"
label(data$pd_d4_pfdiclo2_1w_1)="Frequency "
label(data$pd_d4_mgdiclo3_1w_1)="MG"
label(data$pd_d4_pfdiclo3_1w_1)="Frequency "
label(data$pd_d4_mgdul1_1w_1)="MG"
label(data$pd_d4_pfdul1_1w_1)="Frequency "
label(data$pd_d4_mgdul2_1w_1)="MG"
label(data$pd_d4_pfdul2_1w_1)="Frequency "
label(data$pd_d4_mgdul3_1w_1)="MG"
label(data$pd_d4_pfdul3_1w_1)="Frequency "
label(data$pd_d4_mcg_hfen1_1w_1)="MCG/H"
label(data$pd_d4_pffen1_1w_1)="Frequency "
label(data$pd_d4_mcg_hfen2_1w_1)="MCG/H"
label(data$pd_d4_pffen2_1w_1)="Frequency "
label(data$pd_d4_mcg_hfen3_1w_1)="MCG/H"
label(data$pd_d4_pffen3_1w_1)="Frequency "
label(data$pd_d4_mggab1_1w_1)="MG"
label(data$pd_d4_pfgab1_1w_1)="Frequency "
label(data$pd_d4_mggab2_1w_1)="MG"
label(data$pd_d4_pfgab2_1w_1)="Frequency "
label(data$pd_d4_mggab3_1w_1)="MG"
label(data$pd_d4_pfgab3_1w_1)="Frequency "
label(data$pd_d4_mghyd1_1w_1)="MG"
label(data$pd_d4_pfhyd1_1w_1)="Frequency "
label(data$pd_d4_mghyd2_1w_1)="MG"
label(data$pd_d4_pfhyd2_1w_1)="Frequency "
label(data$pd_d4_mghyd3_1w_1)="MG"
label(data$pd_d4_pfhyd3_1w_1)="Frequency "
label(data$pd_d4_mgibu1_1w_1)="MG"
label(data$pd_d4_pfibu1_1w_1)="Frequency "
label(data$pd_d4_mgibu2_1w_1)="MG"
label(data$pd_d4_pfibu2_1w_1)="Frequency "
label(data$pd_d4_mgibu3_1w_1)="MG"
label(data$pd_d4_pfibu3_1w_1)="Frequency "
label(data$pd_d4_mgind1_1w_1)="MG"
label(data$pd_d4_pfind1_1w_1)="Frequency "
label(data$pd_d4_mgind2_1w_1)="MG"
label(data$pd_d4_pfind2_1w_1)="Frequency "
label(data$pd_d4_mgind3_1w_1)="MG"
label(data$pd_d4_pfind3_1w_1)="Frequency "
label(data$pd_d4_mgket1_1w_1)="MG"
label(data$pd_d4_pfket1_1w_1)="Frequency "
label(data$pd_d4_mgket2_1w_1)="MG"
label(data$pd_d4_pfket2_1w_1)="Frequency "
label(data$pd_d4_mgket3_1w_1)="MG"
label(data$pd_d4_pfket3_1w_1)="Frequency "
label(data$pd_d4_mgmel1_1w_1)="MG"
label(data$pd_d4_pfmel1_1w_1)="Frequency "
label(data$pd_d4_mgmel2_1w_1)="MG"
label(data$pd_d4_pfmel2_1w_1)="Frequency "
label(data$pd_d4_mgmel3_1w_1)="MG"
label(data$pd_d4_pfmel3_1w_1)="Frequency "
label(data$pd_d4_mgmeta1_1w_1)="MG"
label(data$pd_d4_pfmeta1_1w_1)="Frequency "
label(data$pd_d4_mgmeta2_1w_1)="MG"
label(data$pd_d4_pfmeta2_1w_1)="Frequency "
label(data$pd_d4_mgmeta3_1w_1)="MG"
label(data$pd_d4_pfmeta3_1w_1)="Frequency "
label(data$pd_d4_mgmet1_1w_1)="MG"
label(data$pd_d4_pfmet1_1w_1)="Frequency "
label(data$pd_d4_mgmet2_1w_1)="MG"
label(data$pd_d4_pfmet2_1w_1)="Frequency "
label(data$pd_d4_mgmet3_1w_1)="MG"
label(data$pd_d4_pfmet3_1w_1)="Frequency "
label(data$pd_d4_mgmor1_1w_1)="MG"
label(data$pd_d4_pfmor1_1w_1)="Frequency "
label(data$pd_d4_mgmor2_1w_1)="MG"
label(data$pd_d4_pfmor2_1w_1)="Frequency "
label(data$pd_d4_mgmor3_1w_1)="MG"
label(data$pd_d4_pfmor3_1w_1)="Frequency "
label(data$pd_d4_mgnap1_1w_1)="MG"
label(data$pd_d4_pfnap1_1w_1)="Frequency "
label(data$pd_d4_mgnap2_1w_1)="MG"
label(data$pd_d4_pfnap2_1w_1)="Frequency "
label(data$pd_d4_mgnap3_1w_1)="MG"
label(data$pd_d4_pfnap3_1w_1)="Frequency "
label(data$pd_d4_mgnor1_1w_1)="MG"
label(data$pd_d4_pfnor1_1w_1)="Frequency "
label(data$pd_d4_mgnor2_1w_1)="MG"
label(data$pd_d4_pfnor2_1w_1)="Frequency "
label(data$pd_d4_mgnor3_1w_1)="MG"
label(data$pd_d4_pfnor3_1w_1)="Frequency "
label(data$pd_d4_mgoxy1_1w_1)="MG"
label(data$pd_d4_pfoxy1_1w_1)="Frequency "
label(data$pd_d4_mgoxy2_1w_1)="MG"
label(data$pd_d4_pfoxy2_1w_1)="Frequency "
label(data$pd_d4_mgoxy3_1w_1)="MG"
label(data$pd_d4_pfoxy3_1w_1)="Frequency "
label(data$pd_d4_mgparac1_1w_1)="MG"
label(data$pd_d4_pfparac1_1w_1)="Frequency "
label(data$pd_d4_mgparac2_1w_1)="MG"
label(data$pd_d4_pfparac2_1w_1)="Frequency "
label(data$pd_d4_mgparac3_1w_1)="MG"
label(data$pd_d4_pfparac3_1w_1)="Frequency "
label(data$pd_d4_mgphe1_1w_1)="MG"
label(data$pd_d4_pfphe1_1w_1)="Frequency "
label(data$pd_d4_mgphe2_1w_1)="MG"
label(data$pd_d4_pfphe2_1w_1)="Frequency "
label(data$pd_d4_mgphe3_1w_1)="MG"
label(data$pd_d4_pfphe3_1w_1)="Frequency "
label(data$pd_d4_mgpreg1_1w_1)="MG"
label(data$pd_d4_pfpreg1_1w_1)="Frequency "
label(data$pd_d4_mgpreg2_1w_1)="MG"
label(data$pd_d4_pfpreg2_1w_1)="Frequency "
label(data$pd_d4_mgpreg3_1w_1)="MG"
label(data$pd_d4_pfpreg3_1w_1)="Frequency "
label(data$pd_d4_mgpir1_1w_1)="MG"
label(data$pd_d4_pfpir1_1w_1)="Frequency "
label(data$pd_d4_mgpir2_1w_1)="MG"
label(data$pd_d4_pfpir2_1w_1)="Frequency "
label(data$pd_d4_mgpir3_1w_1)="MG"
label(data$pd_d4_pfpir3_1w_1)="Frequency "
label(data$pd_d4_mgtap1_1w_1)="MG"
label(data$pd_d4_pftap1_1w_1)="Frequency "
label(data$pd_d4_mgtap2_1w_1)="MG"
label(data$pd_d4_pftap2_1w_1)="Frequency "
label(data$pd_d4_mgtap3_1w_1)="MG"
label(data$pd_d4_pftap3_1w_1)="Frequency "
label(data$pd_d4_mgtra1_1w_1)="MG"
label(data$pd_d4_pftra1_1w_1)="Frequency "
label(data$pd_d4_mgtra2_1w_1)="MG"
label(data$pd_d4_pftra2_1w_1)="Frequency "
label(data$pd_d4_mgtra3_1w_1)="MG"
label(data$pd_d4_pftra3_1w_1)="Frequency "
label(data$pd_d4_nameoth1_1w_1)="Name"
label(data$pd_d4_mgoth1_1w_1)="MG"
label(data$pd_d4_pfoth1_1w_1)="Frequency"
label(data$pd_d4_nameoth2_1w_1)="Name"
label(data$pd_d4_mgoth2_1w_1)="MG"
label(data$pd_d4_pfoth2_1w_1)="Frequency"
label(data$pd_d4_nameoth3_1w_1)="Name"
label(data$pd_d4_mgoth3_1w_1)="MG"
label(data$pd_d4_pfoth3_1w_1)="Frequency"
label(data$pd_d5_9_1w_1)="HOURS 09.00"
label(data$pd_d5_14_1w_1)="HOURS 14.00"
label(data$pd_d5_20_1w_1)="HOURS 20.00"
label(data$pd_d5_mgacec1_1w_1)="MG"
label(data$pd_d5_pfacec1_1w_1)="Frequency "
label(data$pd_d5_mgacec2_1w_1)="MG"
label(data$pd_d5_pfacec2_1w_1)="Frequency "
label(data$pd_d5_mgacec3_1w_1)="MG"
label(data$pd_d5_pfacec3_1w_1)="Frequency "
label(data$pd_d5_mgacem1_1w_1)="MG"
label(data$pd_d5_pfacem1_1w_1)="Frequency "
label(data$pd_d5_mgacem2_1w_1)="MG"
label(data$pd_d5_pfacem2_1w_1)="Frequency "
label(data$pd_d5_mgacem3_1w_1)="MG"
label(data$pd_d5_pfacem3_1w_1)="Frequency "
label(data$pd_d5_mgami1_1w_1)="MG"
label(data$pd_d5_pfami1_1w_1)="Frequency "
label(data$pd_d5_mgami2_1w_1)="MG"
label(data$pd_d5_pfami2_1w_1)="Frequency "
label(data$pd_d5_mgami3_1w_1)="MG"
label(data$pd_d5_pfami3_1w_1)="Frequency "
label(data$pd_d5_mcg_hbup1_1w_1)="MCG/H"
label(data$pd_d5_pfbup1_1w_1)="Frequency "
label(data$pd_d5_mcg_hbup2_1w_1)="MCG/H"
label(data$pd_d5_pfbup2_1w_1)="Frequency "
label(data$pd_d5_mcg_hbup3_1w_1)="MCG/H"
label(data$pd_d5_pfbup3_1w_1)="Frequency "
label(data$pd_d5_mgdex1_1w_1)="MG"
label(data$pd_d5_pfdex1_1w_1)="Frequency "
label(data$pd_d5_mgdex2_1w_1)="MG"
label(data$pd_d5_pfdex2_1w_1)="Frequency "
label(data$pd_d5_mgdex3_1w_1)="MG"
label(data$pd_d5_pfdex3_1w_1)="Frequency "
label(data$pd_d5_mgdiclo1_1w_1)="MG"
label(data$pd_d5_pfdiclo1_1w_1)="Frequency "
label(data$pd_d5_mgdiclo2_1w_1)="MG"
label(data$pd_d5_pfdiclo2_1w_1)="Frequency "
label(data$pd_d5_mgdiclo3_1w_1)="MG"
label(data$pd_d5_pfdiclo3_1w_1)="Frequency "
label(data$pd_d5_mgdul1_1w_1)="MG"
label(data$pd_d5_pfdul1_1w_1)="Frequency "
label(data$pd_d5_mgdul2_1w_1)="MG"
label(data$pd_d5_pfdul2_1w_1)="Frequency "
label(data$pd_d5_mgdul3_1w_1)="MG"
label(data$pd_d5_pfdul3_1w_1)="Frequency "
label(data$pd_d5_mcg_hfen1_1w_1)="MCG/H"
label(data$pd_d5_pffen1_1w_1)="Frequency "
label(data$pd_d5_mcg_hfen2_1w_1)="MCG/H"
label(data$pd_d5_pffen2_1w_1)="Frequency "
label(data$pd_d5_mcg_hfen3_1w_1)="MCG/H"
label(data$pd_d5_pffen3_1w_1)="Frequency "
label(data$pd_d5_mggab1_1w_1)="MG"
label(data$pd_d5_pfgab1_1w_1)="Frequency "
label(data$pd_d5_mggab2_1w_1)="MG"
label(data$pd_d5_pfgab2_1w_1)="Frequency "
label(data$pd_d5_mggab3_1w_1)="MG"
label(data$pd_d5_pfgab3_1w_1)="Frequency "
label(data$pd_d5_mghyd1_1w_1)="MG"
label(data$pd_d5_pfhyd1_1w_1)="Frequency "
label(data$pd_d5_mghyd2_1w_1)="MG"
label(data$pd_d5_pfhyd2_1w_1)="Frequency "
label(data$pd_d5_mghyd3_1w_1)="MG"
label(data$pd_d5_pfhyd3_1w_1)="Frequency "
label(data$pd_d5_mgibu1_1w_1)="MG"
label(data$pd_d5_pfibu1_1w_1)="Frequency "
label(data$pd_d5_mgibu2_1w_1)="MG"
label(data$pd_d5_pfibu2_1w_1)="Frequency "
label(data$pd_d5_mgibu3_1w_1)="MG"
label(data$pd_d5_pfibu3_1w_1)="Frequency "
label(data$pd_d5_mgind1_1w_1)="MG"
label(data$pd_d5_pfind1_1w_1)="Frequency "
label(data$pd_d5_mgind2_1w_1)="MG"
label(data$pd_d5_pfind2_1w_1)="Frequency "
label(data$pd_d5_mgind3_1w_1)="MG"
label(data$pd_d5_pfind3_1w_1)="Frequency "
label(data$pd_d5_mgket1_1w_1)="MG"
label(data$pd_d5_pfket1_1w_1)="Frequency "
label(data$pd_d5_mgket2_1w_1)="MG"
label(data$pd_d5_pfket2_1w_1)="Frequency "
label(data$pd_d5_mgket3_1w_1)="MG"
label(data$pd_d5_pfket3_1w_1)="Frequency "
label(data$pd_d5_mgmel1_1w_1)="MG"
label(data$pd_d5_pfmel1_1w_1)="Frequency "
label(data$pd_d5_mgmel2_1w_1)="MG"
label(data$pd_d5_pfmel2_1w_1)="Frequency "
label(data$pd_d5_mgmel3_1w_1)="MG"
label(data$pd_d5_pfmel3_1w_1)="Frequency "
label(data$pd_d5_mgmeta1_1w_1)="MG"
label(data$pd_d5_pfmeta1_1w_1)="Frequency "
label(data$pd_d5_mgmeta2_1w_1)="MG"
label(data$pd_d5_pfmeta2_1w_1)="Frequency "
label(data$pd_d5_mgmeta3_1w_1)="MG"
label(data$pd_d5_pfmeta3_1w_1)="Frequency "
label(data$pd_d5_mgmet1_1w_1)="MG"
label(data$pd_d5_pfmet1_1w_1)="Frequency "
label(data$pd_d5_mgmet2_1w_1)="MG"
label(data$pd_d5_pfmet2_1w_1)="Frequency "
label(data$pd_d5_mgmet3_1w_1)="MG"
label(data$pd_d5_pfmet3_1w_1)="Frequency "
label(data$pd_d5_mgmor1_1w_1)="MG"
label(data$pd_d5_pfmor1_1w_1)="Frequency "
label(data$pd_d5_mgmor2_1w_1)="MG"
label(data$pd_d5_pfmor2_1w_1)="Frequency "
label(data$pd_d5_mgmor3_1w_1)="MG"
label(data$pd_d5_pfmor3_1w_1)="Frequency "
label(data$pd_d5_mgnap1_1w_1)="MG"
label(data$pd_d5_pfnap1_1w_1)="Frequency "
label(data$pd_d5_mgnap2_1w_1)="MG"
label(data$pd_d5_pfnap2_1w_1)="Frequency "
label(data$pd_d5_mgnap3_1w_1)="MG"
label(data$pd_d5_pfnap3_1w_1)="Frequency "
label(data$pd_d5_mgnor1_1w_1)="MG"
label(data$pd_d5_pfnor1_1w_1)="Frequency "
label(data$pd_d5_mgnor2_1w_1)="MG"
label(data$pd_d5_pfnor2_1w_1)="Frequency "
label(data$pd_d5_mgnor3_1w_1)="MG"
label(data$pd_d5_pfnor3_1w_1)="Frequency "
label(data$pd_d5_mgoxy1_1w_1)="MG"
label(data$pd_d5_pfoxy1_1w_1)="Frequency "
label(data$pd_d5_mgoxy2_1w_1)="MG"
label(data$pd_d5_pfoxy2_1w_1)="Frequency "
label(data$pd_d5_mgoxy3_1w_1)="MG"
label(data$pd_d5_pfoxy3_1w_1)="Frequency "
label(data$pd_d5_mgparac1_1w_1)="MG"
label(data$pd_d5_pfparac1_1w_1)="Frequency "
label(data$pd_d5_mgparac2_1w_1)="MG"
label(data$pd_d5_pfparac2_1w_1)="Frequency "
label(data$pd_d5_mgparac3_1w_1)="MG"
label(data$pd_d5_pfparac3_1w_1)="Frequency "
label(data$pd_d5_mgphe1_1w_1)="MG"
label(data$pd_d5_pfphe1_1w_1)="Frequency "
label(data$pd_d5_mgphe2_1w_1)="MG"
label(data$pd_d5_pfphe2_1w_1)="Frequency "
label(data$pd_d5_mgphe3_1w_1)="MG"
label(data$pd_d5_pfphe3_1w_1)="Frequency "
label(data$pd_d5_mgpreg1_1w_1)="MG"
label(data$pd_d5_pfpreg1_1w_1)="Frequency "
label(data$pd_d5_mgpreg2_1w_1)="MG"
label(data$pd_d5_pfpreg2_1w_1)="Frequency "
label(data$pd_d5_mgpreg3_1w_1)="MG"
label(data$pd_d5_pfpreg3_1w_1)="Frequency "
label(data$pd_d5_mgpir1_1w_1)="MG"
label(data$pd_d5_pfpir1_1w_1)="Frequency "
label(data$pd_d5_mgpir2_1w_1)="MG"
label(data$pd_d5_pfpir2_1w_1)="Frequency "
label(data$pd_d5_mgpir3_1w_1)="MG"
label(data$pd_d5_pfpir3_1w_1)="Frequency "
label(data$pd_d5_mgtap1_1w_1)="MG"
label(data$pd_d5_pftap1_1w_1)="Frequency "
label(data$pd_d5_mgtap2_1w_1)="MG"
label(data$pd_d5_pftap2_1w_1)="Frequency "
label(data$pd_d5_mgtap3_1w_1)="MG"
label(data$pd_d5_pftap3_1w_1)="Frequency "
label(data$pd_d5_mgtra1_1w_1)="MG"
label(data$pd_d5_pftra1_1w_1)="Frequency "
label(data$pd_d5_mgtra2_1w_1)="MG"
label(data$pd_d5_pftra2_1w_1)="Frequency "
label(data$pd_d5_mgtra3_1w_1)="MG"
label(data$pd_d5_pftra3_1w_1)="Frequency "
label(data$pd_d5_nameoth1_1w_1)="Name"
label(data$pd_d5_mgoth1_1w_1)="MG"
label(data$pd_d5_pfoth1_1w_1)="Frequency"
label(data$pd_d5_nameoth2_1w_1)="Name"
label(data$pd_d5_mgoth2_1w_1)="MG"
label(data$pd_d5_pfoth2_1w_1)="Frequency"
label(data$pd_d5_nameoth3_1w_1)="Name"
label(data$pd_d5_mgoth3_1w_1)="MG"
label(data$pd_d5_pfoth3_1w_1)="Frequency"
label(data$week_follow_up_pain_diary_complete)="Complete?"
label(data$pd_notdone_pd_1m_1)="NOT DONE"
label(data$pd_date_1m_1)="SCREENING PAIN DIARY START DATE"
label(data$pd_d1_9_1m_1)="HOURS 09.00"
label(data$pd_d1_14_1m_1)="HOURS 14.00"
label(data$pd_d1_20_1m_1)="HOURS 20.00"
label(data$pd_d1_mgacec1_1m_1)="MG"
label(data$pd_d1_pfacec1_1m_1)="Frequency "
label(data$pd_d1_mgacec2_1m_1)="MG"
label(data$pd_d1_pfacec2_1m_1)="Frequency "
label(data$pd_d1_mgacec3_1m_1)="MG"
label(data$pd_d1_pfacec3_1m_1)="Frequency "
label(data$pd_d1_mgacem1_1m_1)="MG"
label(data$pd_d1_pfacem1_1m_1)="Frequency "
label(data$pd_d1_mgacem2_1m_1)="MG"
label(data$pd_d1_pfacem2_1m_1)="Frequency "
label(data$pd_d1_mgacem3_1m_1)="MG"
label(data$pd_d1_pfacem3_1m_1)="Frequency "
label(data$pd_d1_mgami1_1m_1)="MG"
label(data$pd_d1_pfami1_1m_1)="Frequency "
label(data$pd_d1_mgami2_1m_1)="MG"
label(data$pd_d1_pfami2_1m_1)="Frequency "
label(data$pd_d1_mgami3_1m_1)="MG"
label(data$pd_d1_pfami3_1m_1)="Frequency "
label(data$pd_d1_mcg_hbup1_1m_1)="MCG/H"
label(data$pd_d1_pfbup1_1m_1)="Frequency "
label(data$pd_d1_mcg_hbup2_1m_1)="MCG/H"
label(data$pd_d1_pfbup2_1m_1)="Frequency "
label(data$pd_d1_mcg_hbup3_1m_1)="MCG/H"
label(data$pd_d1_pfbup3_1m_1)="Frequency "
label(data$pd_d1_mgdex1_1m_1)="MG"
label(data$pd_d1_pfdex1_1m_1)="Frequency "
label(data$pd_d1_mgdex2_1m_1)="MG"
label(data$pd_d1_pfdex2_1m_1)="Frequency "
label(data$pd_d1_mgdex3_1m_1)="MG"
label(data$pd_d1_pfdex3_1m_1)="Frequency "
label(data$pd_d1_mgdiclo1_1m_1)="MG"
label(data$pd_d1_pfdiclo1_1m_1)="Frequency "
label(data$pd_d1_mgdiclo2_1m_1)="MG"
label(data$pd_d1_pfdiclo2_1m_1)="Frequency "
label(data$pd_d1_mgdiclo3_1m_1)="MG"
label(data$pd_d1_pfdiclo3_1m_1)="Frequency "
label(data$pd_d1_mgdul1_1m_1)="MG"
label(data$pd_d1_pfdul1_1m_1)="Frequency "
label(data$pd_d1_mgdul2_1m_1)="MG"
label(data$pd_d1_pfdul2_1m_1)="Frequency "
label(data$pd_d1_mgdul3_1m_1)="MG"
label(data$pd_d1_pfdul3_1m_1)="Frequency "
label(data$pd_d1_mcg_hfen1_1m_1)="MCG/H"
label(data$pd_d1_pffen1_1m_1)="Frequency "
label(data$pd_d1_mcg_hfen2_1m_1)="MCG/H"
label(data$pd_d1_pffen2_1m_1)="Frequency "
label(data$pd_d1_mcg_hfen3_1m_1)="MCG/H"
label(data$pd_d1_pffen3_1m_1)="Frequency "
label(data$pd_d1_mggab1_1m_1)="MG"
label(data$pd_d1_pfgab1_1m_1)="Frequency "
label(data$pd_d1_mggab2_1m_1)="MG"
label(data$pd_d1_pfgab2_1m_1)="Frequency "
label(data$pd_d1_mggab3_1m_1)="MG"
label(data$pd_d1_pfgab3_1m_1)="Frequency "
label(data$pd_d1_mghyd1_1m_1)="MG"
label(data$pd_d1_pfhyd1_1m_1)="Frequency "
label(data$pd_d1_mghyd2_1m_1)="MG"
label(data$pd_d1_pfhyd2_1m_1)="Frequency "
label(data$pd_d1_mghyd3_1m_1)="MG"
label(data$pd_d1_pfhyd3_1m_1)="Frequency "
label(data$pd_d1_mgibu1_1m_1)="MG"
label(data$pd_d1_pfibu1_1m_1)="Frequency "
label(data$pd_d1_mgibu2_1m_1)="MG"
label(data$pd_d1_pfibu2_1m_1)="Frequency "
label(data$pd_d1_mgibu3_1m_1)="MG"
label(data$pd_d1_pfibu3_1m_1)="Frequency "
label(data$pd_d1_mgind1_1m_1)="MG"
label(data$pd_d1_pfind1_1m_1)="Frequency "
label(data$pd_d1_mgind2_1m_1)="MG"
label(data$pd_d1_pfind2_1m_1)="Frequency "
label(data$pd_d1_mgind3_1m_1)="MG"
label(data$pd_d1_pfind3_1m_1)="Frequency "
label(data$pd_d1_mgket1_1m_1)="MG"
label(data$pd_d1_pfket1_1m_1)="Frequency "
label(data$pd_d1_mgket2_1m_1)="MG"
label(data$pd_d1_pfket2_1m_1)="Frequency "
label(data$pd_d1_mgket3_1m_1)="MG"
label(data$pd_d1_pfket3_1m_1)="Frequency "
label(data$pd_d1_mgmel1_1m_1)="MG"
label(data$pd_d1_pfmel1_1m_1)="Frequency "
label(data$pd_d1_mgmel2_1m_1)="MG"
label(data$pd_d1_pfmel2_1m_1)="Frequency "
label(data$pd_d1_mgmel3_1m_1)="MG"
label(data$pd_d1_pfmel3_1m_1)="Frequency "
label(data$pd_d1_mgmeta1_1m_1)="MG"
label(data$pd_d1_pfmeta1_1m_1)="Frequency "
label(data$pd_d1_mgmeta2_1m_1)="MG"
label(data$pd_d1_pfmeta2_1m_1)="Frequency "
label(data$pd_d1_mgmeta3_1m_1)="MG"
label(data$pd_d1_pfmeta3_1m_1)="Frequency "
label(data$pd_d1_mgmet1_1m_1)="MG"
label(data$pd_d1_pfmet1_1m_1)="Frequency "
label(data$pd_d1_mgmet2_1m_1)="MG"
label(data$pd_d1_pfmet2_1m_1)="Frequency "
label(data$pd_d1_mgmet3_1m_1)="MG"
label(data$pd_d1_pfmet3_1m_1)="Frequency "
label(data$pd_d1_mgmor1_1m_1)="MG"
label(data$pd_d1_pfmor1_1m_1)="Frequency "
label(data$pd_d1_mgmor2_1m_1)="MG"
label(data$pd_d1_pfmor2_1m_1)="Frequency "
label(data$pd_d1_mgmor3_1m_1)="MG"
label(data$pd_d1_pfmor3_1m_1)="Frequency "
label(data$pd_d1_mgnap1_1m_1)="MG"
label(data$pd_d1_pfnap1_1m_1)="Frequency "
label(data$pd_d1_mgnap2_1m_1)="MG"
label(data$pd_d1_pfnap2_1m_1)="Frequency "
label(data$pd_d1_mgnap3_1m_1)="MG"
label(data$pd_d1_pfnap3_1m_1)="Frequency "
label(data$pd_d1_mgnor1_1m_1)="MG"
label(data$pd_d1_pfnor1_1m_1)="Frequency "
label(data$pd_d1_mgnor2_1m_1)="MG"
label(data$pd_d1_pfnor2_1m_1)="Frequency "
label(data$pd_d1_mgnor3_1m_1)="MG"
label(data$pd_d1_pfnor3_1m_1)="Frequency "
label(data$pd_d1_mgoxy1_1m_1)="MG"
label(data$pd_d1_pfoxy1_1m_1)="Frequency "
label(data$pd_d1_mgoxy2_1m_1)="MG"
label(data$pd_d1_pfoxy2_1m_1)="Frequency "
label(data$pd_d1_mgoxy3_1m_1)="MG"
label(data$pd_d1_pfoxy3_1m_1)="Frequency "
label(data$pd_d1_mgparac1_1m_1)="MG"
label(data$pd_d1_pfparac1_1m_1)="Frequency "
label(data$pd_d1_mgparac2_1m_1)="MG"
label(data$pd_d1_pfparac2_1m_1)="Frequency "
label(data$pd_d1_mgparac3_1m_1)="MG"
label(data$pd_d1_pfparac3_1m_1)="Frequency "
label(data$pd_d1_mgphe1_1m_1)="MG"
label(data$pd_d1_pfphe1_1m_1)="Frequency "
label(data$pd_d1_mgphe2_1m_1)="MG"
label(data$pd_d1_pfphe2_1m_1)="Frequency "
label(data$pd_d1_mgphe3_1m_1)="MG"
label(data$pd_d1_pfphe3_1m_1)="Frequency "
label(data$pd_d1_mgpreg1_1m_1)="MG"
label(data$pd_d1_pfpreg1_1m_1)="Frequency "
label(data$pd_d1_mgpreg2_1m_1)="MG"
label(data$pd_d1_pfpreg2_1m_1)="Frequency "
label(data$pd_d1_mgpreg3_1m_1)="MG"
label(data$pd_d1_pfpreg3_1m_1)="Frequency "
label(data$pd_d1_mgpir1_1m_1)="MG"
label(data$pd_d1_pfpir1_1m_1)="Frequency "
label(data$pd_d1_mgpir2_1m_1)="MG"
label(data$pd_d1_pfpir2_1m_1)="Frequency "
label(data$pd_d1_mgpir3_1m_1)="MG"
label(data$pd_d1_pfpir3_1m_1)="Frequency "
label(data$pd_d1_mgtap1_1m_1)="MG"
label(data$pd_d1_pftap1_1m_1)="Frequency "
label(data$pd_d1_mgtap2_1m_1)="MG"
label(data$pd_d1_pftap2_1m_1)="Frequency "
label(data$pd_d1_mgtap3_1m_1)="MG"
label(data$pd_d1_pftap3_1m_1)="Frequency "
label(data$pd_d1_mgtra1_1m_1)="MG"
label(data$pd_d1_pftra1_1m_1)="Frequency "
label(data$pd_d1_mgtra2_1m_1)="MG"
label(data$pd_d1_pftra2_1m_1)="Frequency "
label(data$pd_d1_mgtra3_1m_1)="MG"
label(data$pd_d1_pftra3_1m_1)="Frequency "
label(data$pd_d1_nameoth1_1m_1)="Name"
label(data$pd_d1_mgoth1_1m_1)="MG"
label(data$pd_d1_pfoth1_1m_1)="Frequency"
label(data$pd_d1_nameoth2_1m_1)="Name"
label(data$pd_d1_mgoth2_1m_1)="MG"
label(data$pd_d1_pfoth2_1m_1)="Frequency"
label(data$pd_d1_nameoth3_1m_1)="Name"
label(data$pd_d1_mgoth3_1m_1)="MG"
label(data$pd_d1_pfoth3_1m_1)="Frequency"
label(data$pd_d2_9_1m_1)="HOURS 09.00"
label(data$pd_d2_14_1m_1)="HOURS 14.00"
label(data$pd_d2_20_1m_1)="HOURS 20.00"
label(data$pd_d2_mgacec1_1m_1)="MG"
label(data$pd_d2_pfacec1_1m_1)="Frequency "
label(data$pd_d2_mgacec2_1m_1)="MG"
label(data$pd_d2_pfacec2_1m_1)="Frequency "
label(data$pd_d2_mgacec3_1m_1)="MG"
label(data$pd_d2_pfacec3_1m_1)="Frequency "
label(data$pd_d2_mgacem1_1m_1)="MG"
label(data$pd_d2_pfacem1_1m_1)="Frequency "
label(data$pd_d2_mgacem2_1m_1)="MG"
label(data$pd_d2_pfacem2_1m_1)="Frequency "
label(data$pd_d2_mgacem3_1m_1)="MG"
label(data$pd_d2_pfacem3_1m_1)="Frequency "
label(data$pd_d2_mgami1_1m_1)="MG"
label(data$pd_d2_pfami1_1m_1)="Frequency "
label(data$pd_d2_mgami2_1m_1)="MG"
label(data$pd_d2_pfami2_1m_1)="Frequency "
label(data$pd_d2_mgami3_1m_1)="MG"
label(data$pd_d2_pfami3_1m_1)="Frequency "
label(data$pd_d2_mcg_hbup1_1m_1)="MCG/H"
label(data$pd_d2_pfbup1_1m_1)="Frequency "
label(data$pd_d2_mcg_hbup2_1m_1)="MCG/H"
label(data$pd_d2_pfbup2_1m_1)="Frequency "
label(data$pd_d2_mcg_hbup3_1m_1)="MCG/H"
label(data$pd_d2_pfbup3_1m_1)="Frequency "
label(data$pd_d2_mgdex1_1m_1)="MG"
label(data$pd_d2_pfdex1_1m_1)="Frequency "
label(data$pd_d2_mgdex2_1m_1)="MG"
label(data$pd_d2_pfdex2_1m_1)="Frequency "
label(data$pd_d2_mgdex3_1m_1)="MG"
label(data$pd_d2_pfdex3_1m_1)="Frequency "
label(data$pd_d2_mgdiclo1_1m_1)="MG"
label(data$pd_d2_pfdiclo1_1m_1)="Frequency "
label(data$pd_d2_mgdiclo2_1m_1)="MG"
label(data$pd_d2_pfdiclo2_1m_1)="Frequency "
label(data$pd_d2_mgdiclo3_1m_1)="MG"
label(data$pd_d2_pfdiclo3_1m_1)="Frequency "
label(data$pd_d2_mgdul1_1m_1)="MG"
label(data$pd_d2_pfdul1_1m_1)="Frequency "
label(data$pd_d2_mgdul2_1m_1)="MG"
label(data$pd_d2_pfdul2_1m_1)="Frequency "
label(data$pd_d2_mgdul3_1m_1)="MG"
label(data$pd_d2_pfdul3_1m_1)="Frequency "
label(data$pd_d2_mcg_hfen1_1m_1)="MCG/H"
label(data$pd_d2_pffen1_1m_1)="Frequency "
label(data$pd_d2_mcg_hfen2_1m_1)="MCG/H"
label(data$pd_d2_pffen2_1m_1)="Frequency "
label(data$pd_d2_mcg_hfen3_1m_1)="MCG/H"
label(data$pd_d2_pffen3_1m_1)="Frequency "
label(data$pd_d2_mggab1_1m_1)="MG"
label(data$pd_d2_pfgab1_1m_1)="Frequency "
label(data$pd_d2_mggab2_1m_1)="MG"
label(data$pd_d2_pfgab2_1m_1)="Frequency "
label(data$pd_d2_mggab3_1m_1)="MG"
label(data$pd_d2_pfgab3_1m_1)="Frequency "
label(data$pd_d2_mghyd1_1m_1)="MG"
label(data$pd_d2_pfhyd1_1m_1)="Frequency "
label(data$pd_d2_mghyd2_1m_1)="MG"
label(data$pd_d2_pfhyd2_1m_1)="Frequency "
label(data$pd_d2_mghyd3_1m_1)="MG"
label(data$pd_d2_pfhyd3_1m_1)="Frequency "
label(data$pd_d2_mgibu1_1m_1)="MG"
label(data$pd_d2_pfibu1_1m_1)="Frequency "
label(data$pd_d2_mgibu2_1m_1)="MG"
label(data$pd_d2_pfibu2_1m_1)="Frequency "
label(data$pd_d2_mgibu3_1m_1)="MG"
label(data$pd_d2_pfibu3_1m_1)="Frequency "
label(data$pd_d2_mgind1_1m_1)="MG"
label(data$pd_d2_pfind1_1m_1)="Frequency "
label(data$pd_d2_mgind2_1m_1)="MG"
label(data$pd_d2_pfind2_1m_1)="Frequency "
label(data$pd_d2_mgind3_1m_1)="MG"
label(data$pd_d2_pfind3_1m_1)="Frequency "
label(data$pd_d2_mgket1_1m_1)="MG"
label(data$pd_d2_pfket1_1m_1)="Frequency "
label(data$pd_d2_mgket2_1m_1)="MG"
label(data$pd_d2_pfket2_1m_1)="Frequency "
label(data$pd_d2_mgket3_1m_1)="MG"
label(data$pd_d2_pfket3_1m_1)="Frequency "
label(data$pd_d2_mgmel1_1m_1)="MG"
label(data$pd_d2_pfmel1_1m_1)="Frequency "
label(data$pd_d2_mgmel2_1m_1)="MG"
label(data$pd_d2_pfmel2_1m_1)="Frequency "
label(data$pd_d2_mgmel3_1m_1)="MG"
label(data$pd_d2_pfmel3_1m_1)="Frequency "
label(data$pd_d2_mgmeta1_1m_1)="MG"
label(data$pd_d2_pfmeta1_1m_1)="Frequency "
label(data$pd_d2_mgmeta2_1m_1)="MG"
label(data$pd_d2_pfmeta2_1m_1)="Frequency "
label(data$pd_d2_mgmeta3_1m_1)="MG"
label(data$pd_d2_pfmeta3_1m_1)="Frequency "
label(data$pd_d2_mgmet1_1m_1)="MG"
label(data$pd_d2_pfmet1_1m_1)="Frequency "
label(data$pd_d2_mgmet2_1m_1)="MG"
label(data$pd_d2_pfmet2_1m_1)="Frequency "
label(data$pd_d2_mgmet3_1m_1)="MG"
label(data$pd_d2_pfmet3_1m_1)="Frequency "
label(data$pd_d2_mgmor1_1m_1)="MG"
label(data$pd_d2_pfmor1_1m_1)="Frequency "
label(data$pd_d2_mgmor2_1m_1)="MG"
label(data$pd_d2_pfmor2_1m_1)="Frequency "
label(data$pd_d2_mgmor3_1m_1)="MG"
label(data$pd_d2_pfmor3_1m_1)="Frequency "
label(data$pd_d2_mgnap1_1m_1)="MG"
label(data$pd_d2_pfnap1_1m_1)="Frequency "
label(data$pd_d2_mgnap2_1m_1)="MG"
label(data$pd_d2_pfnap2_1m_1)="Frequency "
label(data$pd_d2_mgnap3_1m_1)="MG"
label(data$pd_d2_pfnap3_1m_1)="Frequency "
label(data$pd_d2_mgnor1_1m_1)="MG"
label(data$pd_d2_pfnor1_1m_1)="Frequency "
label(data$pd_d2_mgnor2_1m_1)="MG"
label(data$pd_d2_pfnor2_1m_1)="Frequency "
label(data$pd_d2_mgnor3_1m_1)="MG"
label(data$pd_d2_pfnor3_1m_1)="Frequency "
label(data$pd_d2_mgoxy1_1m_1)="MG"
label(data$pd_d2_pfoxy1_1m_1)="Frequency "
label(data$pd_d2_mgoxy2_1m_1)="MG"
label(data$pd_d2_pfoxy2_1m_1)="Frequency "
label(data$pd_d2_mgoxy3_1m_1)="MG"
label(data$pd_d2_pfoxy3_1m_1)="Frequency "
label(data$pd_d2_mgparac1_1m_1)="MG"
label(data$pd_d2_pfparac1_1m_1)="Frequency "
label(data$pd_d2_mgparac2_1m_1)="MG"
label(data$pd_d2_pfparac2_1m_1)="Frequency "
label(data$pd_d2_mgparac3_1m_1)="MG"
label(data$pd_d2_pfparac3_1m_1)="Frequency "
label(data$pd_d2_mgphe1_1m_1)="MG"
label(data$pd_d2_pfphe1_1m_1)="Frequency "
label(data$pd_d2_mgphe2_1m_1)="MG"
label(data$pd_d2_pfphe2_1m_1)="Frequency "
label(data$pd_d2_mgphe3_1m_1)="MG"
label(data$pd_d2_pfphe3_1m_1)="Frequency "
label(data$pd_d2_mgpreg1_1m_1)="MG"
label(data$pd_d2_pfpreg1_1m_1)="Frequency "
label(data$pd_d2_mgpreg2_1m_1)="MG"
label(data$pd_d2_pfpreg2_1m_1)="Frequency "
label(data$pd_d2_mgpreg3_1m_1)="MG"
label(data$pd_d2_pfpreg3_1m_1)="Frequency "
label(data$pd_d2_mgpir1_1m_1)="MG"
label(data$pd_d2_pfpir1_1m_1)="Frequency "
label(data$pd_d2_mgpir2_1m_1)="MG"
label(data$pd_d2_pfpir2_1m_1)="Frequency "
label(data$pd_d2_mgpir3_1m_1)="MG"
label(data$pd_d2_pfpir3_1m_1)="Frequency "
label(data$pd_d2_mgtap1_1m_1)="MG"
label(data$pd_d2_pftap1_1m_1)="Frequency "
label(data$pd_d2_mgtap2_1m_1)="MG"
label(data$pd_d2_pftap2_1m_1)="Frequency "
label(data$pd_d2_mgtap3_1m_1)="MG"
label(data$pd_d2_pftap3_1m_1)="Frequency "
label(data$pd_d2_mgtra1_1m_1)="MG"
label(data$pd_d2_pftra1_1m_1)="Frequency "
label(data$pd_d2_mgtra2_1m_1)="MG"
label(data$pd_d2_pftra2_1m_1)="Frequency "
label(data$pd_d2_mgtra3_1m_1)="MG"
label(data$pd_d2_pftra3_1m_1)="Frequency "
label(data$pd_d2_nameoth1_1m_1)="Name"
label(data$pd_d2_mgoth1_1m_1)="MG"
label(data$pd_d2_pfoth1_1m_1)="Frequency"
label(data$pd_d2_nameoth2_1m_1)="Name"
label(data$pd_d2_mgoth2_1m_1)="MG"
label(data$pd_d2_pfoth2_1m_1)="Frequency"
label(data$pd_d2_nameoth3_1m_1)="Name"
label(data$pd_d2_mgoth3_1m_1)="MG"
label(data$pd_d2_pfoth3_1m_1)="Frequency"
label(data$pd_d3_9_1m_1)="HOURS 09.00"
label(data$pd_d3_14_1m_1)="HOURS 14.00"
label(data$pd_d3_20_1m_1)="HOURS 20.00"
label(data$pd_d3_mgacec1_1m_1)="MG"
label(data$pd_d3_pfacec1_1m_1)="Frequency "
label(data$pd_d3_mgacec2_1m_1)="MG"
label(data$pd_d3_pfacec2_1m_1)="Frequency "
label(data$pd_d3_mgacec3_1m_1)="MG"
label(data$pd_d3_pfacec3_1m_1)="Frequency "
label(data$pd_d3_mgacem1_1m_1)="MG"
label(data$pd_d3_pfacem1_1m_1)="Frequency "
label(data$pd_d3_mgacem2_1m_1)="MG"
label(data$pd_d3_pfacem2_1m_1)="Frequency "
label(data$pd_d3_mgacem3_1m_1)="MG"
label(data$pd_d3_pfacem3_1m_1)="Frequency "
label(data$pd_d3_mgami1_1m_1)="MG"
label(data$pd_d3_pfami1_1m_1)="Frequency "
label(data$pd_d3_mgami2_1m_1)="MG"
label(data$pd_d3_pfami2_1m_1)="Frequency "
label(data$pd_d3_mgami3_1m_1)="MG"
label(data$pd_d3_pfami3_1m_1)="Frequency "
label(data$pd_d3_mcg_hbup1_1m_1)="MCG/H"
label(data$pd_d3_pfbup1_1m_1)="Frequency "
label(data$pd_d3_mcg_hbup2_1m_1)="MCG/H"
label(data$pd_d3_pfbup2_1m_1)="Frequency "
label(data$pd_d3_mcg_hbup3_1m_1)="MCG/H"
label(data$pd_d3_pfbup3_1m_1)="Frequency "
label(data$pd_d3_mgdex1_1m_1)="MG"
label(data$pd_d3_pfdex1_1m_1)="Frequency "
label(data$pd_d3_mgdex2_1m_1)="MG"
label(data$pd_d3_pfdex2_1m_1)="Frequency "
label(data$pd_d3_mgdex3_1m_1)="MG"
label(data$pd_d3_pfdex3_1m_1)="Frequency "
label(data$pd_d3_mgdiclo1_1m_1)="MG"
label(data$pd_d3_pfdiclo1_1m_1)="Frequency "
label(data$pd_d3_mgdiclo2_1m_1)="MG"
label(data$pd_d3_pfdiclo2_1m_1)="Frequency "
label(data$pd_d3_mgdiclo3_1m_1)="MG"
label(data$pd_d3_pfdiclo3_1m_1)="Frequency "
label(data$pd_d3_mgdul1_1m_1)="MG"
label(data$pd_d3_pfdul1_1m_1)="Frequency "
label(data$pd_d3_mgdul2_1m_1)="MG"
label(data$pd_d3_pfdul2_1m_1)="Frequency "
label(data$pd_d3_mgdul3_1m_1)="MG"
label(data$pd_d3_pfdul3_1m_1)="Frequency "
label(data$pd_d3_mcg_hfen1_1m_1)="MCG/H"
label(data$pd_d3_pffen1_1m_1)="Frequency "
label(data$pd_d3_mcg_hfen2_1m_1)="MCG/H"
label(data$pd_d3_pffen2_1m_1)="Frequency "
label(data$pd_d3_mcg_hfen3_1m_1)="MCG/H"
label(data$pd_d3_pffen3_1m_1)="Frequency "
label(data$pd_d3_mggab1_1m_1)="MG"
label(data$pd_d3_pfgab1_1m_1)="Frequency "
label(data$pd_d3_mggab2_1m_1)="MG"
label(data$pd_d3_pfgab2_1m_1)="Frequency "
label(data$pd_d3_mggab3_1m_1)="MG"
label(data$pd_d3_pfgab3_1m_1)="Frequency "
label(data$pd_d3_mghyd1_1m_1)="MG"
label(data$pd_d3_pfhyd1_1m_1)="Frequency "
label(data$pd_d3_mghyd2_1m_1)="MG"
label(data$pd_d3_pfhyd2_1m_1)="Frequency "
label(data$pd_d3_mghyd3_1m_1)="MG"
label(data$pd_d3_pfhyd3_1m_1)="Frequency "
label(data$pd_d3_mgibu1_1m_1)="MG"
label(data$pd_d3_pfibu1_1m_1)="Frequency "
label(data$pd_d3_mgibu2_1m_1)="MG"
label(data$pd_d3_pfibu2_1m_1)="Frequency "
label(data$pd_d3_mgibu3_1m_1)="MG"
label(data$pd_d3_pfibu3_1m_1)="Frequency "
label(data$pd_d3_mgind1_1m_1)="MG"
label(data$pd_d3_pfind1_1m_1)="Frequency "
label(data$pd_d3_mgind2_1m_1)="MG"
label(data$pd_d3_pfind2_1m_1)="Frequency "
label(data$pd_d3_mgind3_1m_1)="MG"
label(data$pd_d3_pfind3_1m_1)="Frequency "
label(data$pd_d3_mgket1_1m_1)="MG"
label(data$pd_d3_pfket1_1m_1)="Frequency "
label(data$pd_d3_mgket2_1m_1)="MG"
label(data$pd_d3_pfket2_1m_1)="Frequency "
label(data$pd_d3_mgket3_1m_1)="MG"
label(data$pd_d3_pfket3_1m_1)="Frequency "
label(data$pd_d3_mgmel1_1m_1)="MG"
label(data$pd_d3_pfmel1_1m_1)="Frequency "
label(data$pd_d3_mgmel2_1m_1)="MG"
label(data$pd_d3_pfmel2_1m_1)="Frequency "
label(data$pd_d3_mgmel3_1m_1)="MG"
label(data$pd_d3_pfmel3_1m_1)="Frequency "
label(data$pd_d3_mgmeta1_1m_1)="MG"
label(data$pd_d3_pfmeta1_1m_1)="Frequency "
label(data$pd_d3_mgmeta2_1m_1)="MG"
label(data$pd_d3_pfmeta2_1m_1)="Frequency "
label(data$pd_d3_mgmeta3_1m_1)="MG"
label(data$pd_d3_pfmeta3_1m_1)="Frequency "
label(data$pd_d3_mgmet1_1m_1)="MG"
label(data$pd_d3_pfmet1_1m_1)="Frequency "
label(data$pd_d3_mgmet2_1m_1)="MG"
label(data$pd_d3_pfmet2_1m_1)="Frequency "
label(data$pd_d3_mgmet3_1m_1)="MG"
label(data$pd_d3_pfmet3_1m_1)="Frequency "
label(data$pd_d3_mgmor1_1m_1)="MG"
label(data$pd_d3_pfmor1_1m_1)="Frequency "
label(data$pd_d3_mgmor2_1m_1)="MG"
label(data$pd_d3_pfmor2_1m_1)="Frequency "
label(data$pd_d3_mgmor3_1m_1)="MG"
label(data$pd_d3_pfmor3_1m_1)="Frequency "
label(data$pd_d3_mgnap1_1m_1)="MG"
label(data$pd_d3_pfnap1_1m_1)="Frequency "
label(data$pd_d3_mgnap2_1m_1)="MG"
label(data$pd_d3_pfnap2_1m_1)="Frequency "
label(data$pd_d3_mgnap3_1m_1)="MG"
label(data$pd_d3_pfnap3_1m_1)="Frequency "
label(data$pd_d3_mgnor1_1m_1)="MG"
label(data$pd_d3_pfnor1_1m_1)="Frequency "
label(data$pd_d3_mgnor2_1m_1)="MG"
label(data$pd_d3_pfnor2_1m_1)="Frequency "
label(data$pd_d3_mgnor3_1m_1)="MG"
label(data$pd_d3_pfnor3_1m_1)="Frequency "
label(data$pd_d3_mgoxy1_1m_1)="MG"
label(data$pd_d3_pfoxy1_1m_1)="Frequency "
label(data$pd_d3_mgoxy2_1m_1)="MG"
label(data$pd_d3_pfoxy2_1m_1)="Frequency "
label(data$pd_d3_mgoxy3_1m_1)="MG"
label(data$pd_d3_pfoxy3_1m_1)="Frequency "
label(data$pd_d3_mgparac1_1m_1)="MG"
label(data$pd_d3_pfparac1_1m_1)="Frequency "
label(data$pd_d3_mgparac2_1m_1)="MG"
label(data$pd_d3_pfparac2_1m_1)="Frequency "
label(data$pd_d3_mgparac3_1m_1)="MG"
label(data$pd_d3_pfparac3_1m_1)="Frequency "
label(data$pd_d3_mgphe1_1m_1)="MG"
label(data$pd_d3_pfphe1_1m_1)="Frequency "
label(data$pd_d3_mgphe2_1m_1)="MG"
label(data$pd_d3_pfphe2_1m_1)="Frequency "
label(data$pd_d3_mgphe3_1m_1)="MG"
label(data$pd_d3_pfphe3_1m_1)="Frequency "
label(data$pd_d3_mgpreg1_1m_1)="MG"
label(data$pd_d3_pfpreg1_1m_1)="Frequency "
label(data$pd_d3_mgpreg2_1m_1)="MG"
label(data$pd_d3_pfpreg2_1m_1)="Frequency "
label(data$pd_d3_mgpreg3_1m_1)="MG"
label(data$pd_d3_pfpreg3_1m_1)="Frequency "
label(data$pd_d3_mgpir1_1m_1)="MG"
label(data$pd_d3_pfpir1_1m_1)="Frequency "
label(data$pd_d3_mgpir2_1m_1)="MG"
label(data$pd_d3_pfpir2_1m_1)="Frequency "
label(data$pd_d3_mgpir3_1m_1)="MG"
label(data$pd_d3_pfpir3_1m_1)="Frequency "
label(data$pd_d3_mgtap1_1m_1)="MG"
label(data$pd_d3_pftap1_1m_1)="Frequency "
label(data$pd_d3_mgtap2_1m_1)="MG"
label(data$pd_d3_pftap2_1m_1)="Frequency "
label(data$pd_d3_mgtap3_1m_1)="MG"
label(data$pd_d3_pftap3_1m_1)="Frequency "
label(data$pd_d3_mgtra1_1m_1)="MG"
label(data$pd_d3_pftra1_1m_1)="Frequency "
label(data$pd_d3_mgtra2_1m_1)="MG"
label(data$pd_d3_pftra2_1m_1)="Frequency "
label(data$pd_d3_mgtra3_1m_1)="MG"
label(data$pd_d3_pftra3_1m_1)="Frequency "
label(data$pd_d3_nameoth1_1m_1)="Name"
label(data$pd_d3_mgoth1_1m_1)="MG"
label(data$pd_d3_pfoth1_1m_1)="Frequency"
label(data$pd_d3_nameoth2_1m_1)="Name"
label(data$pd_d3_mgoth2_1m_1)="MG"
label(data$pd_d3_pfoth2_1m_1)="Frequency"
label(data$pd_d3_nameoth3_1m_1)="Name"
label(data$pd_d3_mgoth3_1m_1)="MG"
label(data$pd_d3_pfoth3_1m_1)="Frequency"
label(data$pd_d4_9_1m_1)="HOURS 09.00"
label(data$pd_d4_14_1m_1)="HOURS 14.00"
label(data$pd_d4_20_1m_1)="HOURS 20.00"
label(data$pd_d4_mgacec1_1m_1)="MG"
label(data$pd_d4_pfacec1_1m_1)="Frequency "
label(data$pd_d4_mgacec2_1m_1)="MG"
label(data$pd_d4_pfacec2_1m_1)="Frequency "
label(data$pd_d4_mgacec3_1m_1)="MG"
label(data$pd_d4_pfacec3_1m_1)="Frequency "
label(data$pd_d4_mgacem1_1m_1)="MG"
label(data$pd_d4_pfacem1_1m_1)="Frequency "
label(data$pd_d4_mgacem2_1m_1)="MG"
label(data$pd_d4_pfacem2_1m_1)="Frequency "
label(data$pd_d4_mgacem3_1m_1)="MG"
label(data$pd_d4_pfacem3_1m_1)="Frequency "
label(data$pd_d4_mgami1_1m_1)="MG"
label(data$pd_d4_pfami1_1m_1)="Frequency "
label(data$pd_d4_mgami2_1m_1)="MG"
label(data$pd_d4_pfami2_1m_1)="Frequency "
label(data$pd_d4_mgami3_1m_1)="MG"
label(data$pd_d4_pfami3_1m_1)="Frequency "
label(data$pd_d4_mcg_hbup1_1m_1)="MCG/H"
label(data$pd_d4_pfbup1_1m_1)="Frequency "
label(data$pd_d4_mcg_hbup2_1m_1)="MCG/H"
label(data$pd_d4_pfbup2_1m_1)="Frequency "
label(data$pd_d4_mcg_hbup3_1m_1)="MCG/H"
label(data$pd_d4_pfbup3_1m_1)="Frequency "
label(data$pd_d4_mgdex1_1m_1)="MG"
label(data$pd_d4_pfdex1_1m_1)="Frequency "
label(data$pd_d4_mgdex2_1m_1)="MG"
label(data$pd_d4_pfdex2_1m_1)="Frequency "
label(data$pd_d4_mgdex3_1m_1)="MG"
label(data$pd_d4_pfdex3_1m_1)="Frequency "
label(data$pd_d4_mgdiclo1_1m_1)="MG"
label(data$pd_d4_pfdiclo1_1m_1)="Frequency "
label(data$pd_d4_mgdiclo2_1m_1)="MG"
label(data$pd_d4_pfdiclo2_1m_1)="Frequency "
label(data$pd_d4_mgdiclo3_1m_1)="MG"
label(data$pd_d4_pfdiclo3_1m_1)="Frequency "
label(data$pd_d4_mgdul1_1m_1)="MG"
label(data$pd_d4_pfdul1_1m_1)="Frequency "
label(data$pd_d4_mgdul2_1m_1)="MG"
label(data$pd_d4_pfdul2_1m_1)="Frequency "
label(data$pd_d4_mgdul3_1m_1)="MG"
label(data$pd_d4_pfdul3_1m_1)="Frequency "
label(data$pd_d4_mcg_hfen1_1m_1)="MCG/H"
label(data$pd_d4_pffen1_1m_1)="Frequency "
label(data$pd_d4_mcg_hfen2_1m_1)="MCG/H"
label(data$pd_d4_pffen2_1m_1)="Frequency "
label(data$pd_d4_mcg_hfen3_1m_1)="MCG/H"
label(data$pd_d4_pffen3_1m_1)="Frequency "
label(data$pd_d4_mggab1_1m_1)="MG"
label(data$pd_d4_pfgab1_1m_1)="Frequency "
label(data$pd_d4_mggab2_1m_1)="MG"
label(data$pd_d4_pfgab2_1m_1)="Frequency "
label(data$pd_d4_mggab3_1m_1)="MG"
label(data$pd_d4_pfgab3_1m_1)="Frequency "
label(data$pd_d4_mghyd1_1m_1)="MG"
label(data$pd_d4_pfhyd1_1m_1)="Frequency "
label(data$pd_d4_mghyd2_1m_1)="MG"
label(data$pd_d4_pfhyd2_1m_1)="Frequency "
label(data$pd_d4_mghyd3_1m_1)="MG"
label(data$pd_d4_pfhyd3_1m_1)="Frequency "
label(data$pd_d4_mgibu1_1m_1)="MG"
label(data$pd_d4_pfibu1_1m_1)="Frequency "
label(data$pd_d4_mgibu2_1m_1)="MG"
label(data$pd_d4_pfibu2_1m_1)="Frequency "
label(data$pd_d4_mgibu3_1m_1)="MG"
label(data$pd_d4_pfibu3_1m_1)="Frequency "
label(data$pd_d4_mgind1_1m_1)="MG"
label(data$pd_d4_pfind1_1m_1)="Frequency "
label(data$pd_d4_mgind2_1m_1)="MG"
label(data$pd_d4_pfind2_1m_1)="Frequency "
label(data$pd_d4_mgind3_1m_1)="MG"
label(data$pd_d4_pfind3_1m_1)="Frequency "
label(data$pd_d4_mgket1_1m_1)="MG"
label(data$pd_d4_pfket1_1m_1)="Frequency "
label(data$pd_d4_mgket2_1m_1)="MG"
label(data$pd_d4_pfket2_1m_1)="Frequency "
label(data$pd_d4_mgket3_1m_1)="MG"
label(data$pd_d4_pfket3_1m_1)="Frequency "
label(data$pd_d4_mgmel1_1m_1)="MG"
label(data$pd_d4_pfmel1_1m_1)="Frequency "
label(data$pd_d4_mgmel2_1m_1)="MG"
label(data$pd_d4_pfmel2_1m_1)="Frequency "
label(data$pd_d4_mgmel3_1m_1)="MG"
label(data$pd_d4_pfmel3_1m_1)="Frequency "
label(data$pd_d4_mgmeta1_1m_1)="MG"
label(data$pd_d4_pfmeta1_1m_1)="Frequency "
label(data$pd_d4_mgmeta2_1m_1)="MG"
label(data$pd_d4_pfmeta2_1m_1)="Frequency "
label(data$pd_d4_mgmeta3_1m_1)="MG"
label(data$pd_d4_pfmeta3_1m_1)="Frequency "
label(data$pd_d4_mgmet1_1m_1)="MG"
label(data$pd_d4_pfmet1_1m_1)="Frequency "
label(data$pd_d4_mgmet2_1m_1)="MG"
label(data$pd_d4_pfmet2_1m_1)="Frequency "
label(data$pd_d4_mgmet3_1m_1)="MG"
label(data$pd_d4_pfmet3_1m_1)="Frequency "
label(data$pd_d4_mgmor1_1m_1)="MG"
label(data$pd_d4_pfmor1_1m_1)="Frequency "
label(data$pd_d4_mgmor2_1m_1)="MG"
label(data$pd_d4_pfmor2_1m_1)="Frequency "
label(data$pd_d4_mgmor3_1m_1)="MG"
label(data$pd_d4_pfmor3_1m_1)="Frequency "
label(data$pd_d4_mgnap1_1m_1)="MG"
label(data$pd_d4_pfnap1_1m_1)="Frequency "
label(data$pd_d4_mgnap2_1m_1)="MG"
label(data$pd_d4_pfnap2_1m_1)="Frequency "
label(data$pd_d4_mgnap3_1m_1)="MG"
label(data$pd_d4_pfnap3_1m_1)="Frequency "
label(data$pd_d4_mgnor1_1m_1)="MG"
label(data$pd_d4_pfnor1_1m_1)="Frequency "
label(data$pd_d4_mgnor2_1m_1)="MG"
label(data$pd_d4_pfnor2_1m_1)="Frequency "
label(data$pd_d4_mgnor3_1m_1)="MG"
label(data$pd_d4_pfnor3_1m_1)="Frequency "
label(data$pd_d4_mgoxy1_1m_1)="MG"
label(data$pd_d4_pfoxy1_1m_1)="Frequency "
label(data$pd_d4_mgoxy2_1m_1)="MG"
label(data$pd_d4_pfoxy2_1m_1)="Frequency "
label(data$pd_d4_mgoxy3_1m_1)="MG"
label(data$pd_d4_pfoxy3_1m_1)="Frequency "
label(data$pd_d4_mgparac1_1m_1)="MG"
label(data$pd_d4_pfparac1_1m_1)="Frequency "
label(data$pd_d4_mgparac2_1m_1)="MG"
label(data$pd_d4_pfparac2_1m_1)="Frequency "
label(data$pd_d4_mgparac3_1m_1)="MG"
label(data$pd_d4_pfparac3_1m_1)="Frequency "
label(data$pd_d4_mgphe1_1m_1)="MG"
label(data$pd_d4_pfphe1_1m_1)="Frequency "
label(data$pd_d4_mgphe2_1m_1)="MG"
label(data$pd_d4_pfphe2_1m_1)="Frequency "
label(data$pd_d4_mgphe3_1m_1)="MG"
label(data$pd_d4_pfphe3_1m_1)="Frequency "
label(data$pd_d4_mgpreg1_1m_1)="MG"
label(data$pd_d4_pfpreg1_1m_1)="Frequency "
label(data$pd_d4_mgpreg2_1m_1)="MG"
label(data$pd_d4_pfpreg2_1m_1)="Frequency "
label(data$pd_d4_mgpreg3_1m_1)="MG"
label(data$pd_d4_pfpreg3_1m_1)="Frequency "
label(data$pd_d4_mgpir1_1m_1)="MG"
label(data$pd_d4_pfpir1_1m_1)="Frequency "
label(data$pd_d4_mgpir2_1m_1)="MG"
label(data$pd_d4_pfpir2_1m_1)="Frequency "
label(data$pd_d4_mgpir3_1m_1)="MG"
label(data$pd_d4_pfpir3_1m_1)="Frequency "
label(data$pd_d4_mgtap1_1m_1)="MG"
label(data$pd_d4_pftap1_1m_1)="Frequency "
label(data$pd_d4_mgtap2_1m_1)="MG"
label(data$pd_d4_pftap2_1m_1)="Frequency "
label(data$pd_d4_mgtap3_1m_1)="MG"
label(data$pd_d4_pftap3_1m_1)="Frequency "
label(data$pd_d4_mgtra1_1m_1)="MG"
label(data$pd_d4_pftra1_1m_1)="Frequency "
label(data$pd_d4_mgtra2_1m_1)="MG"
label(data$pd_d4_pftra2_1m_1)="Frequency "
label(data$pd_d4_mgtra3_1m_1)="MG"
label(data$pd_d4_pftra3_1m_1)="Frequency "
label(data$pd_d4_nameoth1_1m_1)="Name"
label(data$pd_d4_mgoth1_1m_1)="MG"
label(data$pd_d4_pfoth1_1m_1)="Frequency"
label(data$pd_d4_nameoth2_1m_1)="Name"
label(data$pd_d4_mgoth2_1m_1)="MG"
label(data$pd_d4_pfoth2_1m_1)="Frequency"
label(data$pd_d4_nameoth3_1m_1)="Name"
label(data$pd_d4_mgoth3_1m_1)="MG"
label(data$pd_d4_pfoth3_1m_1)="Frequency"
label(data$pd_d5_9_1m_1)="HOURS 09.00"
label(data$pd_d5_14_1m_1)="HOURS 14.00"
label(data$pd_d5_20_1m_1)="HOURS 20.00"
label(data$pd_d5_mgacec1_1m_1)="MG"
label(data$pd_d5_pfacec1_1m_1)="Frequency "
label(data$pd_d5_mgacec2_1m_1)="MG"
label(data$pd_d5_pfacec2_1m_1)="Frequency "
label(data$pd_d5_mgacec3_1m_1)="MG"
label(data$pd_d5_pfacec3_1m_1)="Frequency "
label(data$pd_d5_mgacem1_1m_1)="MG"
label(data$pd_d5_pfacem1_1m_1)="Frequency "
label(data$pd_d5_mgacem2_1m_1)="MG"
label(data$pd_d5_pfacem2_1m_1)="Frequency "
label(data$pd_d5_mgacem3_1m_1)="MG"
label(data$pd_d5_pfacem3_1m_1)="Frequency "
label(data$pd_d5_mgami1_1m_1)="MG"
label(data$pd_d5_pfami1_1m_1)="Frequency "
label(data$pd_d5_mgami2_1m_1)="MG"
label(data$pd_d5_pfami2_1m_1)="Frequency "
label(data$pd_d5_mgami3_1m_1)="MG"
label(data$pd_d5_pfami3_1m_1)="Frequency "
label(data$pd_d5_mcg_hbup1_1m_1)="MCG/H"
label(data$pd_d5_pfbup1_1m_1)="Frequency "
label(data$pd_d5_mcg_hbup2_1m_1)="MCG/H"
label(data$pd_d5_pfbup2_1m_1)="Frequency "
label(data$pd_d5_mcg_hbup3_1m_1)="MCG/H"
label(data$pd_d5_pfbup3_1m_1)="Frequency "
label(data$pd_d5_mgdex1_1m_1)="MG"
label(data$pd_d5_pfdex1_1m_1)="Frequency "
label(data$pd_d5_mgdex2_1m_1)="MG"
label(data$pd_d5_pfdex2_1m_1)="Frequency "
label(data$pd_d5_mgdex3_1m_1)="MG"
label(data$pd_d5_pfdex3_1m_1)="Frequency "
label(data$pd_d5_mgdiclo1_1m_1)="MG"
label(data$pd_d5_pfdiclo1_1m_1)="Frequency "
label(data$pd_d5_mgdiclo2_1m_1)="MG"
label(data$pd_d5_pfdiclo2_1m_1)="Frequency "
label(data$pd_d5_mgdiclo3_1m_1)="MG"
label(data$pd_d5_pfdiclo3_1m_1)="Frequency "
label(data$pd_d5_mgdul1_1m_1)="MG"
label(data$pd_d5_pfdul1_1m_1)="Frequency "
label(data$pd_d5_mgdul2_1m_1)="MG"
label(data$pd_d5_pfdul2_1m_1)="Frequency "
label(data$pd_d5_mgdul3_1m_1)="MG"
label(data$pd_d5_pfdul3_1m_1)="Frequency "
label(data$pd_d5_mcg_hfen1_1m_1)="MCG/H"
label(data$pd_d5_pffen1_1m_1)="Frequency "
label(data$pd_d5_mcg_hfen2_1m_1)="MCG/H"
label(data$pd_d5_pffen2_1m_1)="Frequency "
label(data$pd_d5_mcg_hfen3_1m_1)="MCG/H"
label(data$pd_d5_pffen3_1m_1)="Frequency "
label(data$pd_d5_mggab1_1m_1)="MG"
label(data$pd_d5_pfgab1_1m_1)="Frequency "
label(data$pd_d5_mggab2_1m_1)="MG"
label(data$pd_d5_pfgab2_1m_1)="Frequency "
label(data$pd_d5_mggab3_1m_1)="MG"
label(data$pd_d5_pfgab3_1m_1)="Frequency "
label(data$pd_d5_mghyd1_1m_1)="MG"
label(data$pd_d5_pfhyd1_1m_1)="Frequency "
label(data$pd_d5_mghyd2_1m_1)="MG"
label(data$pd_d5_pfhyd2_1m_1)="Frequency "
label(data$pd_d5_mghyd3_1m_1)="MG"
label(data$pd_d5_pfhyd3_1m_1)="Frequency "
label(data$pd_d5_mgibu1_1m_1)="MG"
label(data$pd_d5_pfibu1_1m_1)="Frequency "
label(data$pd_d5_mgibu2_1m_1)="MG"
label(data$pd_d5_pfibu2_1m_1)="Frequency "
label(data$pd_d5_mgibu3_1m_1)="MG"
label(data$pd_d5_pfibu3_1m_1)="Frequency "
label(data$pd_d5_mgind1_1m_1)="MG"
label(data$pd_d5_pfind1_1m_1)="Frequency "
label(data$pd_d5_mgind2_1m_1)="MG"
label(data$pd_d5_pfind2_1m_1)="Frequency "
label(data$pd_d5_mgind3_1m_1)="MG"
label(data$pd_d5_pfind3_1m_1)="Frequency "
label(data$pd_d5_mgket1_1m_1)="MG"
label(data$pd_d5_pfket1_1m_1)="Frequency "
label(data$pd_d5_mgket2_1m_1)="MG"
label(data$pd_d5_pfket2_1m_1)="Frequency "
label(data$pd_d5_mgket3_1m_1)="MG"
label(data$pd_d5_pfket3_1m_1)="Frequency "
label(data$pd_d5_mgmel1_1m_1)="MG"
label(data$pd_d5_pfmel1_1m_1)="Frequency "
label(data$pd_d5_mgmel2_1m_1)="MG"
label(data$pd_d5_pfmel2_1m_1)="Frequency "
label(data$pd_d5_mgmel3_1m_1)="MG"
label(data$pd_d5_pfmel3_1m_1)="Frequency "
label(data$pd_d5_mgmeta1_1m_1)="MG"
label(data$pd_d5_pfmeta1_1m_1)="Frequency "
label(data$pd_d5_mgmeta2_1m_1)="MG"
label(data$pd_d5_pfmeta2_1m_1)="Frequency "
label(data$pd_d5_mgmeta3_1m_1)="MG"
label(data$pd_d5_pfmeta3_1m_1)="Frequency "
label(data$pd_d5_mgmet1_1m_1)="MG"
label(data$pd_d5_pfmet1_1m_1)="Frequency "
label(data$pd_d5_mgmet2_1m_1)="MG"
label(data$pd_d5_pfmet2_1m_1)="Frequency "
label(data$pd_d5_mgmet3_1m_1)="MG"
label(data$pd_d5_pfmet3_1m_1)="Frequency "
label(data$pd_d5_mgmor1_1m_1)="MG"
label(data$pd_d5_pfmor1_1m_1)="Frequency "
label(data$pd_d5_mgmor2_1m_1)="MG"
label(data$pd_d5_pfmor2_1m_1)="Frequency "
label(data$pd_d5_mgmor3_1m_1)="MG"
label(data$pd_d5_pfmor3_1m_1)="Frequency "
label(data$pd_d5_mgnap1_1m_1)="MG"
label(data$pd_d5_pfnap1_1m_1)="Frequency "
label(data$pd_d5_mgnap2_1m_1)="MG"
label(data$pd_d5_pfnap2_1m_1)="Frequency "
label(data$pd_d5_mgnap3_1m_1)="MG"
label(data$pd_d5_pfnap3_1m_1)="Frequency "
label(data$pd_d5_mgnor1_1m_1)="MG"
label(data$pd_d5_pfnor1_1m_1)="Frequency "
label(data$pd_d5_mgnor2_1m_1)="MG"
label(data$pd_d5_pfnor2_1m_1)="Frequency "
label(data$pd_d5_mgnor3_1m_1)="MG"
label(data$pd_d5_pfnor3_1m_1)="Frequency "
label(data$pd_d5_mgoxy1_1m_1)="MG"
label(data$pd_d5_pfoxy1_1m_1)="Frequency "
label(data$pd_d5_mgoxy2_1m_1)="MG"
label(data$pd_d5_pfoxy2_1m_1)="Frequency "
label(data$pd_d5_mgoxy3_1m_1)="MG"
label(data$pd_d5_pfoxy3_1m_1)="Frequency "
label(data$pd_d5_mgparac1_1m_1)="MG"
label(data$pd_d5_pfparac1_1m_1)="Frequency "
label(data$pd_d5_mgparac2_1m_1)="MG"
label(data$pd_d5_pfparac2_1m_1)="Frequency "
label(data$pd_d5_mgparac3_1m_1)="MG"
label(data$pd_d5_pfparac3_1m_1)="Frequency "
label(data$pd_d5_mgphe1_1m_1)="MG"
label(data$pd_d5_pfphe1_1m_1)="Frequency "
label(data$pd_d5_mgphe2_1m_1)="MG"
label(data$pd_d5_pfphe2_1m_1)="Frequency "
label(data$pd_d5_mgphe3_1m_1)="MG"
label(data$pd_d5_pfphe3_1m_1)="Frequency "
label(data$pd_d5_mgpreg1_1m_1)="MG"
label(data$pd_d5_pfpreg1_1m_1)="Frequency "
label(data$pd_d5_mgpreg2_1m_1)="MG"
label(data$pd_d5_pfpreg2_1m_1)="Frequency "
label(data$pd_d5_mgpreg3_1m_1)="MG"
label(data$pd_d5_pfpreg3_1m_1)="Frequency "
label(data$pd_d5_mgpir1_1m_1)="MG"
label(data$pd_d5_pfpir1_1m_1)="Frequency "
label(data$pd_d5_mgpir2_1m_1)="MG"
label(data$pd_d5_pfpir2_1m_1)="Frequency "
label(data$pd_d5_mgpir3_1m_1)="MG"
label(data$pd_d5_pfpir3_1m_1)="Frequency "
label(data$pd_d5_mgtap1_1m_1)="MG"
label(data$pd_d5_pftap1_1m_1)="Frequency "
label(data$pd_d5_mgtap2_1m_1)="MG"
label(data$pd_d5_pftap2_1m_1)="Frequency "
label(data$pd_d5_mgtap3_1m_1)="MG"
label(data$pd_d5_pftap3_1m_1)="Frequency "
label(data$pd_d5_mgtra1_1m_1)="MG"
label(data$pd_d5_pftra1_1m_1)="Frequency "
label(data$pd_d5_mgtra2_1m_1)="MG"
label(data$pd_d5_pftra2_1m_1)="Frequency "
label(data$pd_d5_mgtra3_1m_1)="MG"
label(data$pd_d5_pftra3_1m_1)="Frequency "
label(data$pd_d5_nameoth1_1m_1)="Name"
label(data$pd_d5_mgoth1_1m_1)="MG"
label(data$pd_d5_pfoth1_1m_1)="Frequency"
label(data$pd_d5_nameoth2_1m_1)="Name"
label(data$pd_d5_mgoth2_1m_1)="MG"
label(data$pd_d5_pfoth2_1m_1)="Frequency"
label(data$pd_d5_nameoth3_1m_1)="Name"
label(data$pd_d5_mgoth3_1m_1)="MG"
label(data$pd_d5_pfoth3_1m_1)="Frequency"
label(data$month_follow_up_pain_diary_complete)="Complete?"
label(data$months_complete)="Complete?"
label(data$pd_notdone_pd_3m_1)="NOT DONE"
label(data$pd_date_3m_1)="SCREENING PAIN DIARY START DATE"
label(data$pd_d1_9_3m_1)="HOURS 09.00"
label(data$pd_d1_14_3m_1)="HOURS 14.00"
label(data$pd_d1_20_3m_1)="HOURS 20.00"
label(data$pd_d1_mgacec1_3m_1)="MG"
label(data$pd_d1_pfacec1_3m_1)="Frequency "
label(data$pd_d1_mgacec2_3m_1)="MG"
label(data$pd_d1_pfacec2_3m_1)="Frequency "
label(data$pd_d1_mgacec3_3m_1)="MG"
label(data$pd_d1_pfacec3_3m_1)="Frequency "
label(data$pd_d1_mgacem1_3m_1)="MG"
label(data$pd_d1_pfacem1_3m_1)="Frequency "
label(data$pd_d1_mgacem2_3m_1)="MG"
label(data$pd_d1_pfacem2_3m_1)="Frequency "
label(data$pd_d1_mgacem3_3m_1)="MG"
label(data$pd_d1_pfacem3_3m_1)="Frequency "
label(data$pd_d1_mgami1_3m_1)="MG"
label(data$pd_d1_pfami1_3m_1)="Frequency "
label(data$pd_d1_mgami2_3m_1)="MG"
label(data$pd_d1_pfami2_3m_1)="Frequency "
label(data$pd_d1_mgami3_3m_1)="MG"
label(data$pd_d1_pfami3_3m_1)="Frequency "
label(data$pd_d1_mcg_hbup1_3m_1)="MCG/H"
label(data$pd_d1_pfbup1_3m_1)="Frequency "
label(data$pd_d1_mcg_hbup2_3m_1)="MCG/H"
label(data$pd_d1_pfbup2_3m_1)="Frequency "
label(data$pd_d1_mcg_hbup3_3m_1)="MCG/H"
label(data$pd_d1_pfbup3_3m_1)="Frequency "
label(data$pd_d1_mgdex1_3m_1)="MG"
label(data$pd_d1_pfdex1_3m_1)="Frequency "
label(data$pd_d1_mgdex2_3m_1)="MG"
label(data$pd_d1_pfdex2_3m_1)="Frequency "
label(data$pd_d1_mgdex3_3m_1)="MG"
label(data$pd_d1_pfdex3_3m_1)="Frequency "
label(data$pd_d1_mgdiclo1_3m_1)="MG"
label(data$pd_d1_pfdiclo1_3m_1)="Frequency "
label(data$pd_d1_mgdiclo2_3m_1)="MG"
label(data$pd_d1_pfdiclo2_3m_1)="Frequency "
label(data$pd_d1_mgdiclo3_3m_1)="MG"
label(data$pd_d1_pfdiclo3_3m_1)="Frequency "
label(data$pd_d1_mgdul1_3m_1)="MG"
label(data$pd_d1_pfdul1_3m_1)="Frequency "
label(data$pd_d1_mgdul2_3m_1)="MG"
label(data$pd_d1_pfdul2_3m_1)="Frequency "
label(data$pd_d1_mgdul3_3m_1)="MG"
label(data$pd_d1_pfdul3_3m_1)="Frequency "
label(data$pd_d1_mcg_hfen1_3m_1)="MCG/H"
label(data$pd_d1_pffen1_3m_1)="Frequency "
label(data$pd_d1_mcg_hfen2_3m_1)="MCG/H"
label(data$pd_d1_pffen2_3m_1)="Frequency "
label(data$pd_d1_mcg_hfen3_3m_1)="MCG/H"
label(data$pd_d1_pffen3_3m_1)="Frequency "
label(data$pd_d1_mggab1_3m_1)="MG"
label(data$pd_d1_pfgab1_3m_1)="Frequency "
label(data$pd_d1_mggab2_3m_1)="MG"
label(data$pd_d1_pfgab2_3m_1)="Frequency "
label(data$pd_d1_mggab3_3m_1)="MG"
label(data$pd_d1_pfgab3_3m_1)="Frequency "
label(data$pd_d1_mghyd1_3m_1)="MG"
label(data$pd_d1_pfhyd1_3m_1)="Frequency "
label(data$pd_d1_mghyd2_3m_1)="MG"
label(data$pd_d1_pfhyd2_3m_1)="Frequency "
label(data$pd_d1_mghyd3_3m_1)="MG"
label(data$pd_d1_pfhyd3_3m_1)="Frequency "
label(data$pd_d1_mgibu1_3m_1)="MG"
label(data$pd_d1_pfibu1_3m_1)="Frequency "
label(data$pd_d1_mgibu2_3m_1)="MG"
label(data$pd_d1_pfibu2_3m_1)="Frequency "
label(data$pd_d1_mgibu3_3m_1)="MG"
label(data$pd_d1_pfibu3_3m_1)="Frequency "
label(data$pd_d1_mgind1_3m_1)="MG"
label(data$pd_d1_pfind1_3m_1)="Frequency "
label(data$pd_d1_mgind2_3m_1)="MG"
label(data$pd_d1_pfind2_3m_1)="Frequency "
label(data$pd_d1_mgind3_3m_1)="MG"
label(data$pd_d1_pfind3_3m_1)="Frequency "
label(data$pd_d1_mgket1_3m_1)="MG"
label(data$pd_d1_pfket1_3m_1)="Frequency "
label(data$pd_d1_mgket2_3m_1)="MG"
label(data$pd_d1_pfket2_3m_1)="Frequency "
label(data$pd_d1_mgket3_3m_1)="MG"
label(data$pd_d1_pfket3_3m_1)="Frequency "
label(data$pd_d1_mgmel1_3m_1)="MG"
label(data$pd_d1_pfmel1_3m_1)="Frequency "
label(data$pd_d1_mgmel2_3m_1)="MG"
label(data$pd_d1_pfmel2_3m_1)="Frequency "
label(data$pd_d1_mgmel3_3m_1)="MG"
label(data$pd_d1_pfmel3_3m_1)="Frequency "
label(data$pd_d1_mgmeta1_3m_1)="MG"
label(data$pd_d1_pfmeta1_3m_1)="Frequency "
label(data$pd_d1_mgmeta2_3m_1)="MG"
label(data$pd_d1_pfmeta2_3m_1)="Frequency "
label(data$pd_d1_mgmeta3_3m_1)="MG"
label(data$pd_d1_pfmeta3_3m_1)="Frequency "
label(data$pd_d1_mgmet1_3m_1)="MG"
label(data$pd_d1_pfmet1_3m_1)="Frequency "
label(data$pd_d1_mgmet2_3m_1)="MG"
label(data$pd_d1_pfmet2_3m_1)="Frequency "
label(data$pd_d1_mgmet3_3m_1)="MG"
label(data$pd_d1_pfmet3_3m_1)="Frequency "
label(data$pd_d1_mgmor1_3m_1)="MG"
label(data$pd_d1_pfmor1_3m_1)="Frequency "
label(data$pd_d1_mgmor2_3m_1)="MG"
label(data$pd_d1_pfmor2_3m_1)="Frequency "
label(data$pd_d1_mgmor3_3m_1)="MG"
label(data$pd_d1_pfmor3_3m_1)="Frequency "
label(data$pd_d1_mgnap1_3m_1)="MG"
label(data$pd_d1_pfnap1_3m_1)="Frequency "
label(data$pd_d1_mgnap2_3m_1)="MG"
label(data$pd_d1_pfnap2_3m_1)="Frequency "
label(data$pd_d1_mgnap3_3m_1)="MG"
label(data$pd_d1_pfnap3_3m_1)="Frequency "
label(data$pd_d1_mgnor1_3m_1)="MG"
label(data$pd_d1_pfnor1_3m_1)="Frequency "
label(data$pd_d1_mgnor2_3m_1)="MG"
label(data$pd_d1_pfnor2_3m_1)="Frequency "
label(data$pd_d1_mgnor3_3m_1)="MG"
label(data$pd_d1_pfnor3_3m_1)="Frequency "
label(data$pd_d1_mgoxy1_3m_1)="MG"
label(data$pd_d1_pfoxy1_3m_1)="Frequency "
label(data$pd_d1_mgoxy2_3m_1)="MG"
label(data$pd_d1_pfoxy2_3m_1)="Frequency "
label(data$pd_d1_mgoxy3_3m_1)="MG"
label(data$pd_d1_pfoxy3_3m_1)="Frequency "
label(data$pd_d1_mgparac1_3m_1)="MG"
label(data$pd_d1_pfparac1_3m_1)="Frequency "
label(data$pd_d1_mgparac2_3m_1)="MG"
label(data$pd_d1_pfparac2_3m_1)="Frequency "
label(data$pd_d1_mgparac3_3m_1)="MG"
label(data$pd_d1_pfparac3_3m_1)="Frequency "
label(data$pd_d1_mgphe1_3m_1)="MG"
label(data$pd_d1_pfphe1_3m_1)="Frequency "
label(data$pd_d1_mgphe2_3m_1)="MG"
label(data$pd_d1_pfphe2_3m_1)="Frequency "
label(data$pd_d1_mgphe3_3m_1)="MG"
label(data$pd_d1_pfphe3_3m_1)="Frequency "
label(data$pd_d1_mgpreg1_3m_1)="MG"
label(data$pd_d1_pfpreg1_3m_1)="Frequency "
label(data$pd_d1_mgpreg2_3m_1)="MG"
label(data$pd_d1_pfpreg2_3m_1)="Frequency "
label(data$pd_d1_mgpreg3_3m_1)="MG"
label(data$pd_d1_pfpreg3_3m_1)="Frequency "
label(data$pd_d1_mgpir1_3m_1)="MG"
label(data$pd_d1_pfpir1_3m_1)="Frequency "
label(data$pd_d1_mgpir2_3m_1)="MG"
label(data$pd_d1_pfpir2_3m_1)="Frequency "
label(data$pd_d1_mgpir3_3m_1)="MG"
label(data$pd_d1_pfpir3_3m_1)="Frequency "
label(data$pd_d1_mgtap1_3m_1)="MG"
label(data$pd_d1_pftap1_3m_1)="Frequency "
label(data$pd_d1_mgtap2_3m_1)="MG"
label(data$pd_d1_pftap2_3m_1)="Frequency "
label(data$pd_d1_mgtap3_3m_1)="MG"
label(data$pd_d1_pftap3_3m_1)="Frequency "
label(data$pd_d1_mgtra1_3m_1)="MG"
label(data$pd_d1_pftra1_3m_1)="Frequency "
label(data$pd_d1_mgtra2_3m_1)="MG"
label(data$pd_d1_pftra2_3m_1)="Frequency "
label(data$pd_d1_mgtra3_3m_1)="MG"
label(data$pd_d1_pftra3_3m_1)="Frequency "
label(data$pd_d1_nameoth1_3m_1)="Name"
label(data$pd_d1_mgoth1_3m_1)="MG"
label(data$pd_d1_pfoth1_3m_1)="Frequency"
label(data$pd_d1_nameoth2_3m_1)="Name"
label(data$pd_d1_mgoth2_3m_1)="MG"
label(data$pd_d1_pfoth2_3m_1)="Frequency"
label(data$pd_d1_nameoth3_3m_1)="Name"
label(data$pd_d1_mgoth3_3m_1)="MG"
label(data$pd_d1_pfoth3_3m_1)="Frequency"
label(data$pd_d2_9_3m_1)="HOURS 09.00"
label(data$pd_d2_14_3m_1)="HOURS 14.00"
label(data$pd_d2_20_3m_1)="HOURS 20.00"
label(data$pd_d2_mgacec1_3m_1)="MG"
label(data$pd_d2_pfacec1_3m_1)="Frequency "
label(data$pd_d2_mgacec2_3m_1)="MG"
label(data$pd_d2_pfacec2_3m_1)="Frequency "
label(data$pd_d2_mgacec3_3m_1)="MG"
label(data$pd_d2_pfacec3_3m_1)="Frequency "
label(data$pd_d2_mgacem1_3m_1)="MG"
label(data$pd_d2_pfacem1_3m_1)="Frequency "
label(data$pd_d2_mgacem2_3m_1)="MG"
label(data$pd_d2_pfacem2_3m_1)="Frequency "
label(data$pd_d2_mgacem3_3m_1)="MG"
label(data$pd_d2_pfacem3_3m_1)="Frequency "
label(data$pd_d2_mgami1_3m_1)="MG"
label(data$pd_d2_pfami1_3m_1)="Frequency "
label(data$pd_d2_mgami2_3m_1)="MG"
label(data$pd_d2_pfami2_3m_1)="Frequency "
label(data$pd_d2_mgami3_3m_1)="MG"
label(data$pd_d2_pfami3_3m_1)="Frequency "
label(data$pd_d2_mcg_hbup1_3m_1)="MCG/H"
label(data$pd_d2_pfbup1_3m_1)="Frequency "
label(data$pd_d2_mcg_hbup2_3m_1)="MCG/H"
label(data$pd_d2_pfbup2_3m_1)="Frequency "
label(data$pd_d2_mcg_hbup3_3m_1)="MCG/H"
label(data$pd_d2_pfbup3_3m_1)="Frequency "
label(data$pd_d2_mgdex1_3m_1)="MG"
label(data$pd_d2_pfdex1_3m_1)="Frequency "
label(data$pd_d2_mgdex2_3m_1)="MG"
label(data$pd_d2_pfdex2_3m_1)="Frequency "
label(data$pd_d2_mgdex3_3m_1)="MG"
label(data$pd_d2_pfdex3_3m_1)="Frequency "
label(data$pd_d2_mgdiclo1_3m_1)="MG"
label(data$pd_d2_pfdiclo1_3m_1)="Frequency "
label(data$pd_d2_mgdiclo2_3m_1)="MG"
label(data$pd_d2_pfdiclo2_3m_1)="Frequency "
label(data$pd_d2_mgdiclo3_3m_1)="MG"
label(data$pd_d2_pfdiclo3_3m_1)="Frequency "
label(data$pd_d2_mgdul1_3m_1)="MG"
label(data$pd_d2_pfdul1_3m_1)="Frequency "
label(data$pd_d2_mgdul2_3m_1)="MG"
label(data$pd_d2_pfdul2_3m_1)="Frequency "
label(data$pd_d2_mgdul3_3m_1)="MG"
label(data$pd_d2_pfdul3_3m_1)="Frequency "
label(data$pd_d2_mcg_hfen1_3m_1)="MCG/H"
label(data$pd_d2_pffen1_3m_1)="Frequency "
label(data$pd_d2_mcg_hfen2_3m_1)="MCG/H"
label(data$pd_d2_pffen2_3m_1)="Frequency "
label(data$pd_d2_mcg_hfen3_3m_1)="MCG/H"
label(data$pd_d2_pffen3_3m_1)="Frequency "
label(data$pd_d2_mggab1_3m_1)="MG"
label(data$pd_d2_pfgab1_3m_1)="Frequency "
label(data$pd_d2_mggab2_3m_1)="MG"
label(data$pd_d2_pfgab2_3m_1)="Frequency "
label(data$pd_d2_mggab3_3m_1)="MG"
label(data$pd_d2_pfgab3_3m_1)="Frequency "
label(data$pd_d2_mghyd1_3m_1)="MG"
label(data$pd_d2_pfhyd1_3m_1)="Frequency "
label(data$pd_d2_mghyd2_3m_1)="MG"
label(data$pd_d2_pfhyd2_3m_1)="Frequency "
label(data$pd_d2_mghyd3_3m_1)="MG"
label(data$pd_d2_pfhyd3_3m_1)="Frequency "
label(data$pd_d2_mgibu1_3m_1)="MG"
label(data$pd_d2_pfibu1_3m_1)="Frequency "
label(data$pd_d2_mgibu2_3m_1)="MG"
label(data$pd_d2_pfibu2_3m_1)="Frequency "
label(data$pd_d2_mgibu3_3m_1)="MG"
label(data$pd_d2_pfibu3_3m_1)="Frequency "
label(data$pd_d2_mgind1_3m_1)="MG"
label(data$pd_d2_pfind1_3m_1)="Frequency "
label(data$pd_d2_mgind2_3m_1)="MG"
label(data$pd_d2_pfind2_3m_1)="Frequency "
label(data$pd_d2_mgind3_3m_1)="MG"
label(data$pd_d2_pfind3_3m_1)="Frequency "
label(data$pd_d2_mgket1_3m_1)="MG"
label(data$pd_d2_pfket1_3m_1)="Frequency "
label(data$pd_d2_mgket2_3m_1)="MG"
label(data$pd_d2_pfket2_3m_1)="Frequency "
label(data$pd_d2_mgket3_3m_1)="MG"
label(data$pd_d2_pfket3_3m_1)="Frequency "
label(data$pd_d2_mgmel1_3m_1)="MG"
label(data$pd_d2_pfmel1_3m_1)="Frequency "
label(data$pd_d2_mgmel2_3m_1)="MG"
label(data$pd_d2_pfmel2_3m_1)="Frequency "
label(data$pd_d2_mgmel3_3m_1)="MG"
label(data$pd_d2_pfmel3_3m_1)="Frequency "
label(data$pd_d2_mgmeta1_3m_1)="MG"
label(data$pd_d2_pfmeta1_3m_1)="Frequency "
label(data$pd_d2_mgmeta2_3m_1)="MG"
label(data$pd_d2_pfmeta2_3m_1)="Frequency "
label(data$pd_d2_mgmeta3_3m_1)="MG"
label(data$pd_d2_pfmeta3_3m_1)="Frequency "
label(data$pd_d2_mgmet1_3m_1)="MG"
label(data$pd_d2_pfmet1_3m_1)="Frequency "
label(data$pd_d2_mgmet2_3m_1)="MG"
label(data$pd_d2_pfmet2_3m_1)="Frequency "
label(data$pd_d2_mgmet3_3m_1)="MG"
label(data$pd_d2_pfmet3_3m_1)="Frequency "
label(data$pd_d2_mgmor1_3m_1)="MG"
label(data$pd_d2_pfmor1_3m_1)="Frequency "
label(data$pd_d2_mgmor2_3m_1)="MG"
label(data$pd_d2_pfmor2_3m_1)="Frequency "
label(data$pd_d2_mgmor3_3m_1)="MG"
label(data$pd_d2_pfmor3_3m_1)="Frequency "
label(data$pd_d2_mgnap1_3m_1)="MG"
label(data$pd_d2_pfnap1_3m_1)="Frequency "
label(data$pd_d2_mgnap2_3m_1)="MG"
label(data$pd_d2_pfnap2_3m_1)="Frequency "
label(data$pd_d2_mgnap3_3m_1)="MG"
label(data$pd_d2_pfnap3_3m_1)="Frequency "
label(data$pd_d2_mgnor1_3m_1)="MG"
label(data$pd_d2_pfnor1_3m_1)="Frequency "
label(data$pd_d2_mgnor2_3m_1)="MG"
label(data$pd_d2_pfnor2_3m_1)="Frequency "
label(data$pd_d2_mgnor3_3m_1)="MG"
label(data$pd_d2_pfnor3_3m_1)="Frequency "
label(data$pd_d2_mgoxy1_3m_1)="MG"
label(data$pd_d2_pfoxy1_3m_1)="Frequency "
label(data$pd_d2_mgoxy2_3m_1)="MG"
label(data$pd_d2_pfoxy2_3m_1)="Frequency "
label(data$pd_d2_mgoxy3_3m_1)="MG"
label(data$pd_d2_pfoxy3_3m_1)="Frequency "
label(data$pd_d2_mgparac1_3m_1)="MG"
label(data$pd_d2_pfparac1_3m_1)="Frequency "
label(data$pd_d2_mgparac2_3m_1)="MG"
label(data$pd_d2_pfparac2_3m_1)="Frequency "
label(data$pd_d2_mgparac3_3m_1)="MG"
label(data$pd_d2_pfparac3_3m_1)="Frequency "
label(data$pd_d2_mgphe1_3m_1)="MG"
label(data$pd_d2_pfphe1_3m_1)="Frequency "
label(data$pd_d2_mgphe2_3m_1)="MG"
label(data$pd_d2_pfphe2_3m_1)="Frequency "
label(data$pd_d2_mgphe3_3m_1)="MG"
label(data$pd_d2_pfphe3_3m_1)="Frequency "
label(data$pd_d2_mgpreg1_3m_1)="MG"
label(data$pd_d2_pfpir1_3m_1)="Frequency "
label(data$pd_d2_mgpreg2_3m_1)="MG"
label(data$pd_d2_pfpir2_3m_1)="Frequency "
label(data$pd_d2_mgpreg3_3m_1)="MG"
label(data$pd_d2_pfpir3_3m_1)="Frequency "
label(data$pd_d2_mgpir1_3m_1)="MG"
label(data$pd_d2_pfpreg1_3m_1)="Frequency "
label(data$pd_d2_mgpir2_3m_1)="MG"
label(data$pd_d2_pfpreg2_3m_1)="Frequency "
label(data$pd_d2_mgpir3_3m_1)="MG"
label(data$pd_d2_pfpreg3_3m_1)="Frequency "
label(data$pd_d2_mgtap1_3m_1)="MG"
label(data$pd_d2_pftap1_3m_1)="Frequency "
label(data$pd_d2_mgtap2_3m_1)="MG"
label(data$pd_d2_pftap2_3m_1)="Frequency "
label(data$pd_d2_mgtap3_3m_1)="MG"
label(data$pd_d2_pftap3_3m_1)="Frequency "
label(data$pd_d2_mgtra1_3m_1)="MG"
label(data$pd_d2_pftra1_3m_1)="Frequency "
label(data$pd_d2_mgtra2_3m_1)="MG"
label(data$pd_d2_pftra2_3m_1)="Frequency "
label(data$pd_d2_mgtra3_3m_1)="MG"
label(data$pd_d2_pftra3_3m_1)="Frequency "
label(data$pd_d2_nameoth1_3m_1)="Name"
label(data$pd_d2_mgoth1_3m_1)="MG"
label(data$pd_d2_pfoth1_3m_1)="Frequency"
label(data$pd_d2_nameoth2_3m_1)="Name"
label(data$pd_d2_mgoth2_3m_1)="MG"
label(data$pd_d2_pfoth2_3m_1)="Frequency"
label(data$pd_d2_nameoth3_3m_1)="Name"
label(data$pd_d2_mgoth3_3m_1)="MG"
label(data$ppd_d2_pfoth3_3m_1)="Frequency"
label(data$pd_d3_9_3m_1)="HOURS 09.00"
label(data$pd_d3_14_3m_1)="HOURS 14.00"
label(data$pd_d3_20_3m_1)="HOURS 20.00"
label(data$pd_d3_mgacec1_3m_1)="MG"
label(data$pd_d3_pfacec1_3m_1)="Frequency "
label(data$pd_d3_mgacec2_3m_1)="MG"
label(data$pd_d3_pfacec2_3m_1)="Frequency "
label(data$pd_d3_mgacec3_3m_1)="MG"
label(data$pd_d3_pfacec3_3m_1)="Frequency "
label(data$pd_d3_mgacem1_3m_1)="MG"
label(data$pd_d3_pfacem1_3m_1)="Frequency "
label(data$pd_d3_mgacem2_3m_1)="MG"
label(data$pd_d3_pfacem2_3m_1)="Frequency "
label(data$pd_d3_mgacem3_3m_1)="MG"
label(data$pd_d3_pfacem3_3m_1)="Frequency "
label(data$pd_d3_mgami1_3m_1)="MG"
label(data$pd_d3_pfami1_3m_1)="Frequency "
label(data$pd_d3_mgami2_3m_1)="MG"
label(data$pd_d3_pfami2_3m_1)="Frequency "
label(data$pd_d3_mgami3_3m_1)="MG"
label(data$pd_d3_pfami3_3m_1)="Frequency "
label(data$pd_d3_mcg_hbup1_3m_1)="MCG/H"
label(data$pd_d3_pfbup1_3m_1)="Frequency "
label(data$pd_d3_mcg_hbup2_3m_1)="MCG/H"
label(data$pd_d3_pfbup2_3m_1)="Frequency "
label(data$pd_d3_mcg_hbup3_3m_1)="MCG/H"
label(data$pd_d3_pfbup3_3m_1)="Frequency "
label(data$pd_d3_mgdex1_3m_1)="MG"
label(data$pd_d3_pfdex1_3m_1)="Frequency "
label(data$pd_d3_mgdex2_3m_1)="MG"
label(data$pd_d3_pfdex2_3m_1)="Frequency "
label(data$pd_d3_mgdex3_3m_1)="MG"
label(data$pd_d3_pfdex3_3m_1)="Frequency "
label(data$pd_d3_mgdiclo1_3m_1)="MG"
label(data$pd_d3_pfdiclo1_3m_1)="Frequency "
label(data$pd_d3_mgdiclo2_3m_1)="MG"
label(data$pd_d3_pfdiclo2_3m_1)="Frequency "
label(data$pd_d3_mgdiclo3_3m_1)="MG"
label(data$pd_d3_pfdiclo3_3m_1)="Frequency "
label(data$pd_d3_mgdul1_3m_1)="MG"
label(data$pd_d3_pfdul1_3m_1)="Frequency "
label(data$pd_d3_mgdul2_3m_1)="MG"
label(data$pd_d3_pfdul2_3m_1)="Frequency "
label(data$pd_d3_mgdul3_3m_1)="MG"
label(data$pd_d3_pfdul3_3m_1)="Frequency "
label(data$pd_d3_mcg_hfen1_3m_1)="MCG/H"
label(data$pd_d3_pffen1_3m_1)="Frequency "
label(data$pd_d3_mcg_hfen2_3m_1)="MCG/H"
label(data$pd_d3_pffen2_3m_1)="Frequency "
label(data$pd_d3_mcg_hfen3_3m_1)="MCG/H"
label(data$pd_d3_pffen3_3m_1)="Frequency "
label(data$pd_d3_mggab1_3m_1)="MG"
label(data$pd_d3_pfgab1_3m_1)="Frequency "
label(data$pd_d3_mggab2_3m_1)="MG"
label(data$pd_d3_pfgab2_3m_1)="Frequency "
label(data$pd_d3_mggab3_3m_1)="MG"
label(data$pd_d3_pfgab3_3m_1)="Frequency "
label(data$pd_d3_mghyd1_3m_1)="MG"
label(data$pd_d3_pfhyd1_3m_1)="Frequency "
label(data$pd_d3_mghyd2_3m_1)="MG"
label(data$pd_d3_pfhyd2_3m_1)="Frequency "
label(data$pd_d3_mghyd3_3m_1)="MG"
label(data$pd_d3_pfhyd3_3m_1)="Frequency "
label(data$pd_d3_mgibu1_3m_1)="MG"
label(data$pd_d3_pfibu1_3m_1)="Frequency "
label(data$pd_d3_mgibu2_3m_1)="MG"
label(data$pd_d3_pfibu2_3m_1)="Frequency "
label(data$pd_d3_mgibu3_3m_1)="MG"
label(data$pd_d3_pfibu3_3m_1)="Frequency "
label(data$pd_d3_mgind1_3m_1)="MG"
label(data$pd_d3_pfind1_3m_1)="Frequency "
label(data$pd_d3_mgind2_3m_1)="MG"
label(data$pd_d3_pfind2_3m_1)="Frequency "
label(data$pd_d3_mgind3_3m_1)="MG"
label(data$pd_d3_pfind3_3m_1)="Frequency "
label(data$pd_d3_mgket1_3m_1)="MG"
label(data$pd_d3_pfket1_3m_1)="Frequency "
label(data$pd_d3_mgket2_3m_1)="MG"
label(data$pd_d3_pfket2_3m_1)="Frequency "
label(data$pd_d3_mgket3_3m_1)="MG"
label(data$pd_d3_pfket3_3m_1)="Frequency "
label(data$pd_d3_mgmel1_3m_1)="MG"
label(data$pd_d3_pfmel1_3m_1)="Frequency "
label(data$pd_d3_mgmel2_3m_1)="MG"
label(data$pd_d3_pfmel2_3m_1)="Frequency "
label(data$pd_d3_mgmel3_3m_1)="MG"
label(data$pd_d3_pfmel3_3m_1)="Frequency "
label(data$pd_d3_mgmeta1_3m_1)="MG"
label(data$pd_d3_pfmeta1_3m_1)="Frequency "
label(data$pd_d3_mgmeta2_3m_1)="MG"
label(data$pd_d3_pfmeta2_3m_1)="Frequency "
label(data$pd_d3_mgmeta3_3m_1)="MG"
label(data$pd_d3_pfmeta3_3m_1)="Frequency "
label(data$pd_d3_mgmor1_3m_1)="MG"
label(data$pd_d3_pfmor1_3m_1)="Frequency "
label(data$pd_d3_mgmor2_3m_1)="MG"
label(data$pd_d3_pfmor2_3m_1)="Frequency "
label(data$pd_d3_mgmor3_3m_1)="MG"
label(data$pd_d3_pfmor3_3m_1)="Frequency "
label(data$pd_d3_mgmet1_3m_1)="MG"
label(data$pd_d3_pfmet1_3m_1)="Frequency "
label(data$pd_d3_mgmet2_3m_1)="MG"
label(data$pd_d3_pfmet2_3m_1)="Frequency "
label(data$pd_d3_mgmet3_3m_1)="MG"
label(data$pd_d3_pfmet3_3m_1)="Frequency "
label(data$pd_d3_mgnap1_3m_1)="MG"
label(data$pd_d3_pfnap1_3m_1)="Frequency "
label(data$pd_d3_mgnap2_3m_1)="MG"
label(data$pd_d3_pfnap2_3m_1)="Frequency "
label(data$pd_d3_mgnap3_3m_1)="MG"
label(data$pd_d3_pfnap3_3m_1)="Frequency "
label(data$pd_d3_mgnor1_3m_1)="MG"
label(data$pd_d3_pfnor1_3m_1)="Frequency "
label(data$pd_d3_mgnor2_3m_1)="MG"
label(data$pd_d3_pfnor2_3m_1)="Frequency "
label(data$pd_d3_mgnor3_3m_1)="MG"
label(data$pd_d3_pfnor3_3m_1)="Frequency "
label(data$pd_d3_mgoxy1_3m_1)="MG"
label(data$pd_d3_pfoxy1_3m_1)="Frequency "
label(data$pd_d3_mgoxy2_3m_1)="MG"
label(data$pd_d3_pfoxy2_3m_1)="Frequency "
label(data$pd_d3_mgoxy3_3m_1)="MG"
label(data$pd_d3_pfoxy3_3m_1)="Frequency "
label(data$pd_d3_mgparac1_3m_1)="MG"
label(data$pd_d3_pfparac1_3m_1)="Frequency "
label(data$pd_d3_mgparac2_3m_1)="MG"
label(data$pd_d3_pfparac2_3m_1)="Frequency "
label(data$pd_d3_mgparac3_3m_1)="MG"
label(data$pd_d3_pfparac3_3m_1)="Frequency "
label(data$pd_d3_mgphe1_3m_1)="MG"
label(data$pd_d3_pfphe1_3m_1)="Frequency "
label(data$pd_d3_mgphe2_3m_1)="MG"
label(data$pd_d3_pfphe2_3m_1)="Frequency "
label(data$pd_d3_mgphe3_3m_1)="MG"
label(data$pd_d3_pfphe3_3m_1)="Frequency "
label(data$pd_d3_mgpreg1_3m_1)="MG"
label(data$pd_d3_pfpreg1_3m_1)="Frequency "
label(data$pd_d3_mgpreg2_3m_1)="MG"
label(data$pd_d3_pfpreg2_3m_1)="Frequency "
label(data$pd_d3_mgpreg_3m_1)="MG"
label(data$pd_d3_pfpreg3_3m_1)="Frequency "
label(data$pd_d3_mgpir1_3m_1)="MG"
label(data$pd_d3_pfpir1_3m_1)="Frequency "
label(data$pd_d3_mgpir2_3m_1)="MG"
label(data$pd_d3_pfpir2_3m_1)="Frequency "
label(data$pd_d3_mgpir3_3m_1)="MG"
label(data$pd_d3_pfpir3_3m_1)="Frequency "
label(data$pd_d3_mgtap1_3m_1)="MG"
label(data$pd_d3_pftap1_3m_1)="Frequency "
label(data$pd_d3_mgtap2_3m_1)="MG"
label(data$pd_d3_pftap2_3m_1)="Frequency "
label(data$pd_d3_mgtap3_3m_1)="MG"
label(data$pd_d3_pftap3_3m_1)="Frequency "
label(data$pd_d3_mgtra1_3m_1)="MG"
label(data$pd_d3_pftra1_3m_1)="Frequency "
label(data$pd_d3_mgtra2_3m_1)="MG"
label(data$pd_d3_pftra2_3m_1)="Frequency "
label(data$pd_d3_mgtra3_3m_1)="MG"
label(data$pd_d3_pftra3_3m_1)="Frequency "
label(data$pd_d3_nameoth1_3m_1)="Name"
label(data$pd_d3_mgoth1_3m_1)="MG"
label(data$pd_d3_pfoth1_3m_1)="Frequency"
label(data$pd_d3_nameoth2_3m_1)="Name"
label(data$ppd_d3_mgoth2_3m_1)="MG"
label(data$pd_d3_pfoth2_3m_1)="Frequency"
label(data$pd_d3_nameoth3_3m_1)="Name"
label(data$ppd_d3_mgoth3_3m_1)="MG"
label(data$pd_d3_pfoth3_3m_1)="Frequency"
label(data$pd_d4_9_3m_1)="HOURS 09.00"
label(data$pd_d4_14_3m_1)="HOURS 14.00"
label(data$pd_d4_20_3m_1)="HOURS 20.00"
label(data$pd_d4_mgacec1_3m_1)="MG"
label(data$pd_d4_pfacec1_3m_1)="Frequency "
label(data$pd_d4_mgacec2_3m_1)="MG"
label(data$pd_d4_pfacec2_3m_1)="Frequency "
label(data$pd_d4_mgacec3_3m_1)="MG"
label(data$pd_d4_pfacec3_3m_1)="Frequency "
label(data$pd_d4_mgacem1_3m_1)="MG"
label(data$pd_d4_pfacem1_3m_1)="Frequency "
label(data$pd_d4_mgacem2_3m_1)="MG"
label(data$pd_d4_pfacem2_3m_1)="Frequency "
label(data$pd_d4_mgacem3_3m_1)="MG"
label(data$pd_d4_pfacem3_3m_1)="Frequency "
label(data$pd_d4_mgami1_3m_1)="MG"
label(data$pd_d4_pfami1_3m_1)="Frequency "
label(data$pd_d4_mgami2_3m_1)="MG"
label(data$pd_d4_pfami2_3m_1)="Frequency "
label(data$pd_d4_mgami3_3m_1)="MG"
label(data$pd_d4_pfami3_3m_1)="Frequency "
label(data$pd_d4_mcg_hbup1_3m_1)="MCG/H"
label(data$pd_d4_pfbup1_3m_1)="Frequency "
label(data$pd_d4_mcg_hbup2_3m_1)="MCG/H"
label(data$pd_d4_pfbup2_3m_1)="Frequency "
label(data$pd_d4_mcg_hbup3_3m_1)="MCG/H"
label(data$pd_d4_pfbup3_3m_1)="Frequency "
label(data$pd_d4_mgdex1_3m_1)="MG"
label(data$pd_d4_pfdex1_3m_1)="Frequency "
label(data$pd_d4_mgdex2_3m_1)="MG"
label(data$pd_d4_pfdex2_3m_1)="Frequency "
label(data$pd_d4_mgdex3_3m_1)="MG"
label(data$pd_d4_pfdex3_3m_1)="Frequency "
label(data$pd_d4_mgdiclo1_3m_1)="MG"
label(data$pd_d4_pfdiclo1_3m_1)="Frequency "
label(data$pd_d4_mgdiclo2_3m_1)="MG"
label(data$pd_d4_pfdiclo2_3m_1)="Frequency "
label(data$pd_d4_mgdiclo3_3m_1)="MG"
label(data$pd_d4_pfdiclo3_3m_1)="Frequency "
label(data$pd_d4_mgdul1_3m_1)="MG"
label(data$pd_d4_pfdul1_3m_1)="Frequency "
label(data$pd_d4_mgdul2_3m_1)="MG"
label(data$pd_d4_pfdul2_3m_1)="Frequency "
label(data$pd_d4_mgdul3_3m_1)="MG"
label(data$pd_d4_pfdul3_3m_1)="Frequency "
label(data$pd_d4_mcg_hfen1_3m_1)="MCG/H"
label(data$pd_d4_pffen1_3m_1)="Frequency "
label(data$pd_d4_mcg_hfen2_3m_1)="MCG/H"
label(data$pd_d4_pffen2_3m_1)="Frequency "
label(data$pd_d4_mcg_hfen3_3m_1)="MCG/H"
label(data$pd_d4_pffen3_3m_1)="Frequency "
label(data$pd_d4_mggab1_3m_1)="MG"
label(data$pd_d4_pfgab1_3m_1)="Frequency "
label(data$pd_d4_mggab2_3m_1)="MG"
label(data$pd_d4_pfgab2_3m_1)="Frequency "
label(data$pd_d4_mggab3_3m_1)="MG"
label(data$pd_d4_pfgab3_3m_1)="Frequency "
label(data$pd_d4_mghyd1_3m_1)="MG"
label(data$pd_d4_pfhyd1_3m_1)="Frequency "
label(data$pd_d4_mghyd2_3m_1)="MG"
label(data$pd_d4_pfhyd2_3m_1)="Frequency "
label(data$pd_d4_mghyd3_3m_1)="MG"
label(data$pd_d4_pfhyd3_3m_1)="Frequency "
label(data$pd_d4_mgibu1_3m_1)="MG"
label(data$pd_d4_pfibu1_3m_1)="Frequency "
label(data$pd_d4_mgibu2_3m_1)="MG"
label(data$pd_d4_pfibu2_3m_1)="Frequency "
label(data$pd_d4_mgibu3_3m_1)="MG"
label(data$pd_d4_pfibu3_3m_1)="Frequency "
label(data$pd_d4_mgind1_3m_1)="MG"
label(data$pd_d4_pfind1_3m_1)="Frequency "
label(data$pd_d4_mgind2_3m_1)="MG"
label(data$pd_d4_pfind2_3m_1)="Frequency "
label(data$pd_d4_mgind3_3m_1)="MG"
label(data$pd_d4_pfind3_3m_1)="Frequency "
label(data$pd_d4_mgket1_3m_1)="MG"
label(data$pd_d4_pfket1_3m_1)="Frequency "
label(data$pd_d4_mgket2_3m_1)="MG"
label(data$pd_d4_pfket2_3m_1)="Frequency "
label(data$pd_d4_mgket3_3m_1)="MG"
label(data$pd_d4_pfket3_3m_1)="Frequency "
label(data$pd_d4_mgmel1_3m_1)="MG"
label(data$pd_d4_pfmel1_3m_1)="Frequency "
label(data$pd_d4_mgmel2_3m_1)="MG"
label(data$pd_d4_pfmel2_3m_1)="Frequency "
label(data$pd_d4_mgmel3_3m_1)="MG"
label(data$pd_d4_pfmel3_3m_1)="Frequency "
label(data$pd_d4_mgmeta1_3m_1)="MG"
label(data$pd_d4_pfmeta1_3m_1)="Frequency "
label(data$pd_d4_mgmeta2_3m_1)="MG"
label(data$pd_d4_pfmeta2_3m_1)="Frequency "
label(data$pd_d4_mgmeta3_3m_1)="MG"
label(data$pd_d4_pfmeta3_3m_1)="Frequency "
label(data$pd_d4_mgmet1_3m_1)="MG"
label(data$pd_d4_pfmet1_3m_1)="Frequency "
label(data$pd_d4_mgmet2_3m_1)="MG"
label(data$pd_d4_pfmet2_3m_1)="Frequency "
label(data$pd_d4_mgmet3_3m_1)="MG"
label(data$pd_d4_pfmet3_3m_1)="Frequency "
label(data$pd_d4_mgmor1_3m_1)="MG"
label(data$pd_d4_pfmor1_3m_1)="Frequency "
label(data$pd_d4_mgmor2_3m_1)="MG"
label(data$pd_d4_pfmor2_3m_1)="Frequency "
label(data$pd_d4_mgmor3_3m_1)="MG"
label(data$pd_d4_pfmor3_3m_1)="Frequency "
label(data$pd_d4_mgnap1_3m_1)="MG"
label(data$pd_d4_pfnap1_3m_1)="Frequency "
label(data$pd_d4_mgnap2_3m_1)="MG"
label(data$pd_d4_pfnap2_3m_1)="Frequency "
label(data$pd_d4_mgnap3_3m_1)="MG"
label(data$pd_d4_pfnap3_3m_1)="Frequency "
label(data$pd_d4_mgnor1_3m_1)="MG"
label(data$pd_d4_pfnor1_3m_1)="Frequency "
label(data$pd_d4_mgnor2_3m_1)="MG"
label(data$pd_d4_pfnor2_3m_1)="Frequency "
label(data$pd_d4_mgnor3_3m_1)="MG"
label(data$pd_d4_pfnor3_3m_1)="Frequency "
label(data$pd_d4_mgoxy1_3m_1)="MG"
label(data$pd_d4_pfoxy1_3m_1)="Frequency "
label(data$pd_d4_mgoxy2_3m_1)="MG"
label(data$pd_d4_pfoxy2_3m_1)="Frequency "
label(data$pd_d4_mgoxy3_3m_1)="MG"
label(data$pd_d4_pfoxy3_3m_1)="Frequency "
label(data$pd_d4_mgparac1_3m_1)="MG"
label(data$pd_d4_pfparac1_3m_1)="Frequency "
label(data$pd_d4_mgparac2_3m_1)="MG"
label(data$pd_d4_pfparac2_3m_1)="Frequency "
label(data$pd_d4_mgparac3_3m_1)="MG"
label(data$pd_d4_pfparac3_3m_1)="Frequency "
label(data$pd_d4_mgphe1_3m_1)="MG"
label(data$pd_d4_pfphe1_3m_1)="Frequency "
label(data$pd_d4_mgphe2_3m_1)="MG"
label(data$pd_d4_pfphe2_3m_1)="Frequency "
label(data$pd_d4_mgphe3_3m_1)="MG"
label(data$pd_d4_pfphe3_3m_1)="Frequency "
label(data$pd_d4_mgpreg1_3m_1)="MG"
label(data$pd_d4_pfpreg1_3m_1)="Frequency "
label(data$pd_d4_mgpreg2_3m_1)="MG"
label(data$pd_d4_pfpreg2_3m_1)="Frequency "
label(data$pd_d4_mgpreg3_3m_1)="MG"
label(data$pd_d4_pfpreg3_3m_1)="Frequency "
label(data$pd_d4_mgpir1_3m_1)="MG"
label(data$pd_d4_pfpir1_3m_1)="Frequency "
label(data$pd_d4_mgpir2_3m_1)="MG"
label(data$pd_d4_pfpir2_3m_1)="Frequency "
label(data$pd_d4_mgpir3_3m_1)="MG"
label(data$pd_d4_pfpir3_3m_1)="Frequency "
label(data$pd_d4_mgtap1_3m_1)="MG"
label(data$pd_d4_pftap1_3m_1)="Frequency "
label(data$pd_d4_mgtap2_3m_1)="MG"
label(data$pd_d4_pftap2_3m_1)="Frequency "
label(data$pd_d4_mgtap3_3m_1)="MG"
label(data$pd_d4_pftap3_3m_1)="Frequency "
label(data$pd_d4_mgtra1_3m_1)="MG"
label(data$pd_d4_pftra1_3m_1)="Frequency "
label(data$pd_d4_mgtra2_3m_1)="MG"
label(data$pd_d4_pftra2_3m_1)="Frequency "
label(data$pd_d4_mgtra3_3m_1)="MG"
label(data$pd_d4_pftra3_3m_1)="Frequency "
label(data$pd_d4_nameoth1_3m_1)="Name"
label(data$pd_d4_mgoth1_3m_1)="MG"
label(data$pd_d4_pfoth1_3m_1)="Frequency"
label(data$pd_d4_nameoth2_3m_1)="Name"
label(data$pd_d4_mgoth2_3m_1)="MG"
label(data$pd_d4_pfoth2_3m_1)="Frequency"
label(data$pd_d4_nameoth3_3m_1)="Name"
label(data$pd_d4_mgoth3_3m_1)="MG"
label(data$pd_d4_pfoth3_3m_1)="Frequency"
label(data$pd_d5_9_3m_1)="HOURS 09.00"
label(data$pd_d5_14_3m_1)="HOURS 14.00"
label(data$pd_d5_20_3m_1)="HOURS 20.00"
label(data$pd_d5_mgacec1_3m_1)="MG"
label(data$pd_d5_pfacec1_3m_1)="Frequency "
label(data$pd_d5_mgacec2_3m_1)="MG"
label(data$pd_d5_pfacec2_3m_1)="Frequency "
label(data$pd_d5_mgacec3_3m_1)="MG"
label(data$pd_d5_pfacec3_3m_1)="Frequency "
label(data$pd_d5_mgacem1_3m_1)="MG"
label(data$pd_d5_pfacem1_3m_1)="Frequency "
label(data$pd_d5_mgacem2_3m_1)="MG"
label(data$pd_d5_pfacem2_3m_1)="Frequency "
label(data$pd_d5_mgacem3_3m_1)="MG"
label(data$pd_d5_pfacem3_3m_1)="Frequency "
label(data$pd_d5_mgami1_3m_1)="MG"
label(data$pd_d5_pfami1_3m_1)="Frequency "
label(data$pd_d5_mgami2_3m_1)="MG"
label(data$pd_d5_pfami2_3m_1)="Frequency "
label(data$pd_d5_mgami3_3m_1)="MG"
label(data$pd_d5_pfami3_3m_1)="Frequency "
label(data$pd_d5_mcg_hbup1_3m_1)="MCG/H"
label(data$pd_d5_pfbup1_3m_1)="Frequency "
label(data$pd_d5_mcg_hbup2_3m_1)="MCG/H"
label(data$pd_d5_pfbup2_3m_1)="Frequency "
label(data$pd_d5_mcg_hbup3_3m_1)="MCG/H"
label(data$pd_d5_pfbup3_3m_1)="Frequency "
label(data$pd_d5_mgdex1_3m_1)="MG"
label(data$pd_d5_pfdex1_3m_1)="Frequency "
label(data$pd_d5_mgdex2_3m_1)="MG"
label(data$pd_d5_pfdex2_3m_1)="Frequency "
label(data$pd_d5_mgdex3_3m_1)="MG"
label(data$pd_d5_pfdex3_3m_1)="Frequency "
label(data$pd_d5_mgdiclo1_3m_1)="MG"
label(data$pd_d5_pfdiclo1_3m_1)="Frequency "
label(data$pd_d5_mgdiclo2_3m_1)="MG"
label(data$pd_d5_pfdiclo2_3m_1)="Frequency "
label(data$pd_d5_mgdiclo3_3m_1)="MG"
label(data$pd_d5_pfdiclo3_3m_1)="Frequency "
label(data$pd_d5_mgdul1_3m_1)="MG"
label(data$pd_d5_pfdul1_3m_1)="Frequency "
label(data$pd_d5_mgdul2_3m_1)="MG"
label(data$pd_d5_pfdul2_3m_1)="Frequency "
label(data$pd_d5_mgdul3_3m_1)="MG"
label(data$pd_d5_pfdul3_3m_1)="Frequency "
label(data$pd_d5_mcg_hfen1_3m_1)="MCG/H"
label(data$pd_d5_pffen1_3m_1)="Frequency "
label(data$pd_d5_mcg_hfen2_3m_1)="MCG/H"
label(data$pd_d5_pffen2_3m_1)="Frequency "
label(data$pd_d5_mcg_hfen3_3m_1)="MCG/H"
label(data$pd_d5_pffen3_3m_1)="Frequency "
label(data$pd_d5_mggab1_3m_1)="MG"
label(data$pd_d5_pfgab1_3m_1)="Frequency "
label(data$pd_d5_mggab2_3m_1)="MG"
label(data$pd_d5_pfgab2_3m_1)="Frequency "
label(data$pd_d5_mggab3_3m_1)="MG"
label(data$pd_d5_pfgab3_3m_1)="Frequency "
label(data$pd_d5_mghyd1_3m_1)="MG"
label(data$pd_d5_pfhyd1_3m_1)="Frequency "
label(data$pd_d5_mghyd2_3m_1)="MG"
label(data$pd_d5_pfhyd2_3m_1)="Frequency "
label(data$pd_d5_mghyd3_3m_1)="MG"
label(data$pd_d5_pfhyd3_3m_1)="Frequency "
label(data$pd_d5_mgibu1_3m_1)="MG"
label(data$pd_d5_pfibu1_3m_1)="Frequency "
label(data$pd_d5_mgibu2_3m_1)="MG"
label(data$pd_d5_pfibu2_3m_1)="Frequency "
label(data$pd_d5_mgibu3_3m_1)="MG"
label(data$pd_d5_pfibu3_3m_1)="Frequency "
label(data$pd_d5_mgind1_3m_1)="MG"
label(data$pd_d5_pfind1_3m_1)="Frequency "
label(data$pd_d5_mgind2_3m_1)="MG"
label(data$pd_d5_pfind2_3m_1)="Frequency "
label(data$pd_d5_mgind3_3m_1)="MG"
label(data$pd_d5_pfind3_3m_1)="Frequency "
label(data$pd_d5_mgket1_3m_1)="MG"
label(data$pd_d5_pfket1_3m_1)="Frequency "
label(data$pd_d5_mgket2_3m_1)="MG"
label(data$pd_d5_pfket2_3m_1)="Frequency "
label(data$pd_d5_mgket3_3m_1)="MG"
label(data$pd_d5_pfket3_3m_1)="Frequency "
label(data$pd_d5_mgmel1_3m_1)="MG"
label(data$pd_d5_pfmel1_3m_1)="Frequency "
label(data$pd_d5_mgmel2_3m_1)="MG"
label(data$pd_d5_pfmel2_3m_1)="Frequency "
label(data$pd_d5_mgmel3_3m_1)="MG"
label(data$pd_d5_pfmel3_3m_1)="Frequency "
label(data$pd_d5_mgmeta1_3m_1)="MG"
label(data$pd_d5_pfmeta1_3m_1)="Frequency "
label(data$pd_d5_mgmeta2_3m_1)="MG"
label(data$pd_d5_pfmeta2_3m_1)="Frequency "
label(data$pd_d5_mgmeta3_3m_1)="MG"
label(data$pd_d5_pfmeta3_3m_1)="Frequency "
label(data$pd_d5_mgmet1_3m_1)="MG"
label(data$pd_d5_pfmet1_3m_1)="Frequency "
label(data$pd_d5_mgmet2_3m_1)="MG"
label(data$pd_d5_pfmet2_3m_1)="Frequency "
label(data$pd_d5_mgmet3_3m_1)="MG"
label(data$pd_d5_pfmet3_3m_1)="Frequency "
label(data$pd_d5_mgmor1_3m_1)="MG"
label(data$pd_d5_pfmor1_3m_1)="Frequency "
label(data$pd_d5_mgmor2_3m_1)="MG"
label(data$pd_d5_pfmor2_3m_1)="Frequency "
label(data$pd_d5_mgmor3_3m_1)="MG"
label(data$pd_d5_pfmor3_3m_1)="Frequency "
label(data$pd_d5_mgnap1_3m_1)="MG"
label(data$pd_d5_pfnap1_3m_1)="Frequency "
label(data$pd_d5_mgnap2_3m_1)="MG"
label(data$pd_d5_pfnap2_3m_1)="Frequency "
label(data$pd_d5_mgnap3_3m_1)="MG"
label(data$pd_d5_pfnap3_3m_1)="Frequency "
label(data$pd_d5_mgnor1_3m_1)="MG"
label(data$pd_d5_pfnor1_3m_1)="Frequency "
label(data$pd_d5_mgnor2_3m_1)="MG"
label(data$pd_d5_pfnor2_3m_1)="Frequency "
label(data$pd_d5_mgnor3_3m_1)="MG"
label(data$pd_d5_pfnor3_3m_1)="Frequency "
label(data$pd_d5_mgoxy1_3m_1)="MG"
label(data$pd_d5_pfoxy1_3m_1)="Frequency "
label(data$pd_d5_mgoxy2_3m_1)="MG"
label(data$pd_d5_pfoxy2_3m_1)="Frequency "
label(data$pd_d5_mgoxy3_3m_1)="MG"
label(data$pd_d5_pfoxy3_3m_1)="Frequency "
label(data$pd_d5_mgparac1_3m_1)="MG"
label(data$pd_d5_pfparac1_3m_1)="Frequency "
label(data$pd_d5_mgparac2_3m_1)="MG"
label(data$pd_d5_pfparac2_3m_1)="Frequency "
label(data$pd_d5_mgparac3_3m_1)="MG"
label(data$pd_d5_pfparac3_3m_1)="Frequency "
label(data$pd_d5_mgphe1_3m_1)="MG"
label(data$pd_d5_pfphe1_3m_1)="Frequency "
label(data$pd_d5_mgphe2_3m_1)="MG"
label(data$pd_d5_pfphe2_3m_1)="Frequency "
label(data$pd_d5_mgphe3_3m_1)="MG"
label(data$pd_d5_pfphe3_3m_1)="Frequency "
label(data$pd_d5_mgpreg1_3m_1)="MG"
label(data$pd_d5_pfpreg1_3m_1)="Frequency "
label(data$pd_d5_mgpreg2_3m_1)="MG"
label(data$pd_d5_pfpreg2_3m_1)="Frequency "
label(data$pd_d5_mgpreg3_3m_1)="MG"
label(data$pd_d5_pfpreg3_3m_1)="Frequency "
label(data$pd_d5_mgpir1_3m_1)="MG"
label(data$pd_d5_pfpir1_3m_1)="Frequency "
label(data$pd_d5_mgpir2_3m_1)="MG"
label(data$pd_d5_pfpir2_3m_1)="Frequency "
label(data$pd_d5_mgpir3_3m_1)="MG"
label(data$pd_d5_pfpir3_3m_1)="Frequency "
label(data$pd_d5_mgtap1_3m_1)="MG"
label(data$pd_d5_pftap1_3m_1)="Frequency "
label(data$pd_d5_mgtap2_3m_1)="MG"
label(data$pd_d5_pftap2_3m_1)="Frequency "
label(data$pd_d5_mgtap3_3m_1)="MG"
label(data$pd_d5_pftap3_3m_1)="Frequency "
label(data$pd_d5_mgtra1_3m_1)="MG"
label(data$pd_d5_pftra1_3m_1)="Frequency "
label(data$pd_d5_mgtra2_3m_1)="MG"
label(data$pd_d5_pftra2_3m_1)="Frequency "
label(data$pd_d5_mgtra3_3m_1)="MG"
label(data$pd_d5_pftra3_3m_1)="Frequency "
label(data$pd_d5_nameoth1_3m_1)="Name"
label(data$pd_d5_mgoth1_3m_1)="MG"
label(data$pd_d5_pfoth1_3m_1)="Frequency"
label(data$pd_d5_nameoth2_3m_1)="Name"
label(data$pd_d5_mgoth2_3m_1)="MG"
label(data$pd_d5_pfoth2_3m_1)="Frequency"
label(data$pd_d5_nameoth3_3m_1)="Name"
label(data$pd_d5_mgoth3_3m_1)="MG"
label(data$pd_d5_pfoth3_3m_1)="Frequency"
label(data$months_follow_up_pain_diary_complete)="Complete?"
label(data$gelstix_3m_advev1_1)="ADVERSE EVENTS"
label(data$gelstix_3m_advev1_starh_1)="START TIME"
label(data$gelstix_3m_advev1_stop_1)="STOP TIME"
label(data$gelstix_3m_advevdesc1_1)="ADVERSE EVENT"
label(data$gelstix_3m_advev1_inten_1)="MAXIMUM INTENSITY"
label(data$gelstix_3m_advev1_action_1)="ACTION TAKEN"
label(data$gelstix_3m_advev1_relat_1)="RELATIONSHIP TO INVESTIGATIONAL PRODUCT"
label(data$gelstix_3m_advev1_outc_1)="SUBJECT OUTCOME"
label(data$gelstix_3m_advev1_sae_1)="SAE"
label(data$gelstix_3m_advev2_starh_1)="START TIME"
label(data$gelstix_3m_advev2_stoph_1)="STOP TIME"
label(data$gelstix_3m_advevdesc2_1)="ADVERSE EVENT"
label(data$gelstix_3m_advev2_intens_1)="MAXIMUM INTENSITY"
label(data$gelstix_3m_advev2_action_1)="ACTION TAKEN"
label(data$gelstix_3m_advev2_relat_1)="RELATIONSHIP TO INVESTIGATIONAL PRODUCT"
label(data$gelstix_3m_advev2_outc_1)="SUBJECT OUTCOME"
label(data$gelstix_3m_advev2_sae_1)="SAE"
label(data$gelstix_3m_advev3_starh_1)="START TIME"
label(data$gelstix_3m_advev3_stoph_1)="STOP TIME"
label(data$gelstix_3m_advevdesc3_1)="ADVERSE EVENT"
label(data$gelstix_3m_advev3_intens_1)="MAXIMUM INTENSITY"
label(data$gelstix_3m_advev3_action_1)="ACTION TAKEN"
label(data$gelstix_3m_advev3_relat_1)="RELATIONSHIP TO INVESTIGATIONAL PRODUCT"
label(data$gelstix_3m_advev3_outc_1)="SUBJECT OUTCOME"
label(data$gelstix_3m_advev3_sae_1)="SAE"
label(data$months_adverse_event_complete)="Complete?"
label(data$pd_notdone_quest_3m_1)="NOT DONE"
label(data$eq1_3m_1)="MOBILITY"
label(data$eq2_3m_1)="SELF-CARE"
label(data$eq3_3m_1)="USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"
label(data$eq4_3m_1)="PAIN / DISCOMFORT"
label(data$eq5_3m_1)="ANXIETY / DEPRESSION"
label(data$eq6_3m_1)="We would like to know how good or bad your health is TODAY."
label(data$pgic_3m_1)="Since the start of the study, my overall status is:"
label(data$months_questionnaires_complete)="Complete?"
label(data$months_34d630_complete)="Complete?"
label(data$es_date_6m_1)="DATE OF VERIFICATION EMPLOYMENT STATUS"
label(data$es_occup_6m_1)="OCCUPATION (if applicable):"
label(data$es_occuptime_6m_1)="OCCUPATION TIME"
label(data$es_parttime_6m_1)="If PART TIME as a percentage:"
label(data$es_legpain_6m_1)="LEG PAIN"
label(data$es_backpain_6m_1)="BACK PAIN"
label(data$es_disab_6m_1)="DISABILITY"
label(data$es_sick_6m_1)="SICK LEAVE"
label(data$es_other_6m_1)="OTHER PROBLEMS"
label(data$es_otheryes_6m_1)="OTHER PROBLEMS IF YES, SPECIFY"
label(data$es_datestopwor_6m_1)="DATE STOPPED WORKING"
label(data$months_employment_status_complete)="Complete?"
label(data$pd_notdone_pd_6m_1)="NOT DONE"
label(data$pd_date_6m_1)="SCREENING PAIN DIARY START DATE"
label(data$pd_d1_9_6m_1)="HOURS 09.00"
label(data$pd_d1_14_6m_1)="HOURS 14.00"
label(data$pd_d1_20_6m_1)="HOURS 20.00"
label(data$pd_d1_mgacec1_6m_1)="MG"
label(data$pd_d1_pfacec1_6m_1)="Frequency "
label(data$pd_d1_mgacec2_6m_1)="MG"
label(data$pd_d1_pfacec2_6m_1)="Frequency "
label(data$pd_d1_mgacec3_6m_1)="MG"
label(data$pd_d1_pfacec3_6m_1)="Frequency "
label(data$pd_d1_mgacem1_6m_1)="MG"
label(data$pd_d1_pfacem1_6m_1)="Frequency "
label(data$pd_d1_mgacem2_6m_1)="MG"
label(data$pd_d1_pfacem2_6m_1)="Frequency "
label(data$pd_d1_mgacem3_6m_1)="MG"
label(data$pd_d1_pfacem3_6m_1)="Frequency "
label(data$pd_d1_mgami1_6m_1)="MG"
label(data$pd_d1_pfami1_6m_1)="Frequency "
label(data$pd_d1_mgami2_6m_1)="MG"
label(data$pd_d1_pfami2_6m_1)="Frequency "
label(data$pd_d1_mgami3_6m_1)="MG"
label(data$pd_d1_pfami3_6m_1)="Frequency "
label(data$pd_d1_mcg_hbup1_6m_1)="MCG/H"
label(data$pd_d1_pfbup1_6m_1)="Frequency "
label(data$pd_d1_mcg_hbup2_6m_1)="MCG/H"
label(data$pd_d1_pfbup2_6m_1)="Frequency "
label(data$pd_d1_mcg_hbup3_6m_1)="MCG/H"
label(data$pd_d1_pfbup3_6m_1)="Frequency "
label(data$pd_d1_mgdex1_6m_1)="MG"
label(data$pd_d1_pfdex1_6m_1)="Frequency "
label(data$pd_d1_mgdex2_6m_1)="MG"
label(data$pd_d1_pfdex2_6m_1)="Frequency "
label(data$pd_d1_mgdex3_6m_1)="MG"
label(data$pd_d1_pfdex3_6m_1)="Frequency "
label(data$pd_d1_mgdiclo1_6m_1)="MG"
label(data$pd_d1_pfdiclo1_6m_1)="Frequency "
label(data$pd_d1_mgdiclo2_6m_1)="MG"
label(data$pd_d1_pfdiclo2_6m_1)="Frequency "
label(data$pd_d1_mgdiclo3_6m_1)="MG"
label(data$pd_d1_pfdiclo3_6m_1)="Frequency "
label(data$pd_d1_mgdul1_6m_1)="MG"
label(data$pd_d2_pfdul1_6m_1)="Frequency "
label(data$pd_d1_mgdul2_6m_1)="MG"
label(data$pd_d2_pfdul2_6m_1)="Frequency "
label(data$pd_d1_mgdul3_6m_1)="MG"
label(data$pd_d2_pfdul3_6m_1)="Frequency "
label(data$pd_d1_mcg_hfen1_6m_1)="MCG/H"
label(data$pd_d1_pffen1_6m_1)="Frequency "
label(data$pd_d1_mcg_hfen2_6m_1)="MCG/H"
label(data$pd_d1_pffen2_6m_1)="Frequency "
label(data$pd_d1_mcg_hfen3_6m_1)="MCG/H"
label(data$pd_d1_pffen3_6m_1)="Frequency "
label(data$pd_d1_mggab1_6m_1)="MG"
label(data$pd_d1_pfgab1_6m_1)="Frequency "
label(data$pd_d1_mggab2_6m_1)="MG"
label(data$pd_d1_pfgab2_6m_1)="Frequency "
label(data$pd_d1_mggab3_6m_1)="MG"
label(data$pd_d1_pfgab3_6m_1)="Frequency "
label(data$pd_d1_mghyd1_6m_1)="MG"
label(data$pd_d1_pfhyd1_6m_1)="Frequency "
label(data$pd_d1_mghyd2_6m_1)="MG"
label(data$pd_d1_pfhyd2_6m_1)="Frequency "
label(data$pd_d1_mghyd3_6m_1)="MG"
label(data$pd_d1_pfhyd3_6m_1)="Frequency "
label(data$pd_d1_mgibu1_6m_1)="MG"
label(data$pd_d1_pfibu1_6m_1)="Frequency "
label(data$pd_d1_mgibu2_6m_1)="MG"
label(data$pd_d1_pfibu2_6m_1)="Frequency "
label(data$pd_d1_mgibu3_6m_1)="MG"
label(data$pd_d1_pfibu3_6m_1)="Frequency "
label(data$pd_d1_mgind1_6m_1)="MG"
label(data$pd_d1_pfind1_6m_1)="Frequency "
label(data$pd_d1_mgind2_6m_1)="MG"
label(data$pd_d1_pfind2_6m_1)="Frequency "
label(data$pd_d1_mgind3_6m_1)="MG"
label(data$pd_d1_pfind3_6m_1)="Frequency "
label(data$pd_d1_mgket1_6m_1)="MG"
label(data$pd_d1_pfket1_6m_1)="Frequency "
label(data$pd_d1_mgket2_6m_1)="MG"
label(data$pd_d1_pfket2_6m_1)="Frequency "
label(data$pd_d1_mgket3_6m_1)="MG"
label(data$pd_d1_pfket3_6m_1)="Frequency "
label(data$pd_d1_mgmel1_6m_1)="MG"
label(data$pd_d1_pfmel1_6m_1)="Frequency "
label(data$pd_d1_mgmel2_6m_1)="MG"
label(data$pd_d1_pfmel2_6m_1)="Frequency "
label(data$pd_d1_mgmel3_6m_1)="MG"
label(data$pd_d1_pfmel3_6m_1)="Frequency "
label(data$pd_d1_mgmeta1_6m_1)="MG"
label(data$pd_d1_pfmeta1_6m_1)="Frequency "
label(data$pd_d1_mgmeta2_6m_1)="MG"
label(data$pd_d1_pfmeta2_6m_1)="Frequency "
label(data$pd_d1_mgmeta3_6m_1)="MG"
label(data$pd_d1_pfmeta3_6m_1)="Frequency "
label(data$pd_d1_mgmet1_6m_1)="MG"
label(data$pd_d1_pfmet1_6m_1)="Frequency "
label(data$pd_d1_mgmet2_6m_1)="MG"
label(data$pd_d1_pfmet2_6m_1)="Frequency "
label(data$pd_d1_mgmet3_6m_1)="MG"
label(data$pd_d1_pfmet3_6m_1)="Frequency "
label(data$pd_d1_mgmor1_6m_1)="MG"
label(data$pd_d1_pfmor1_6m_1)="Frequency "
label(data$pd_d1_mgmor2_6m_1)="MG"
label(data$pd_d1_pfmor2_6m_1)="Frequency "
label(data$pd_d1_mgmor3_6m_1)="MG"
label(data$pd_d1_pfmor3_6m_1)="Frequency "
label(data$pd_d1_mgnap1_6m_1)="MG"
label(data$pd_d1_pfnap1_6m_1)="Frequency "
label(data$pd_d1_mgnap2_6m_1)="MG"
label(data$pd_d1_pfnap2_6m_1)="Frequency "
label(data$pd_d1_mgnap3_6m_1)="MG"
label(data$pd_d1_pfnap3_6m_1)="Frequency "
label(data$pd_d1_mgnor1_6m_1)="MG"
label(data$pd_d1_pfnor1_6m_1)="Frequency "
label(data$pd_d1_mgnor2_6m_1)="MG"
label(data$pd_d1_pfnor2_6m_1)="Frequency "
label(data$pd_d1_mgnor3_6m_1)="MG"
label(data$pd_d1_pfnor3_6m_1)="Frequency "
label(data$pd_d1_mgoxy1_6m_1)="MG"
label(data$pd_d1_pfoxy1_6m_1)="Frequency "
label(data$pd_d1_mgoxy2_6m_1)="MG"
label(data$pd_d1_pfoxy2_6m_1)="Frequency "
label(data$pd_d1_mgoxy3_6m_1)="MG"
label(data$pd_d1_pfoxy3_6m_1)="Frequency "
label(data$pd_d1_mgparac1_6m_1)="MG"
label(data$pd_d1_pfparac1_6m_1)="Frequency "
label(data$pd_d1_mgparac2_6m_1)="MG"
label(data$pd_d1_pfparac2_6m_1)="Frequency "
label(data$pd_d1_mgparac3_6m_1)="MG"
label(data$pd_d1_pfparac3_6m_1)="Frequency "
label(data$pd_d1_mgphe1_6m_1)="MG"
label(data$pd_d1_pfphe1_6m_1)="Frequency "
label(data$pd_d1_mgphe2_6m_1)="MG"
label(data$pd_d1_pfphe2_6m_1)="Frequency "
label(data$pd_d1_mgphe3_6m_1)="MG"
label(data$pd_d1_pfphe3_6m_1)="Frequency "
label(data$pd_d1_mgpreg1_6m_1)="MG"
label(data$pd_d1_pfpreg1_6m_1)="Frequency "
label(data$pd_d1_mgpreg2_6m_1)="MG"
label(data$pd_d1_pfpreg2_6m_1)="Frequency "
label(data$pd_d1_mgpreg3_6m_1)="MG"
label(data$pd_d1_pfpreg3_6m_1)="Frequency "
label(data$pd_d1_mgpir1_6m_1)="MG"
label(data$pd_d1_pfpir1_6m_1)="Frequency "
label(data$pd_d1_mgpir2_6m_1)="MG"
label(data$pd_d1_pfpir2_6m_1)="Frequency "
label(data$pd_d1_mgpir3_6m_1)="MG"
label(data$pd_d1_pfpir3_6m_1)="Frequency "
label(data$pd_d1_mgtap1_6m_1)="MG"
label(data$pd_d1_pftap1_6m_1)="Frequency "
label(data$pd_d1_mgtap2_6m_1)="MG"
label(data$pd_d1_pftap2_6m_1)="Frequency "
label(data$pd_d1_mgtap3_6m_1)="MG"
label(data$pd_d1_pftap3_6m_1)="Frequency "
label(data$pd_d1_mgtra1_6m_1)="MG"
label(data$pd_d1_pftra1_6m_1)="Frequency "
label(data$pd_d1_mgtra2_6m_1)="MG"
label(data$pd_d1_pftra2_6m_1)="Frequency "
label(data$pd_d1_mgtra3_6m_1)="MG"
label(data$pd_d1_pftra3_6m_1)="Frequency "
label(data$pd_d1_nameoth1_6m_1)="Name"
label(data$pd_d1_mgoth1_6m_1)="MG"
label(data$pd_d1_pfoth1_6m_1)="Frequency"
label(data$pd_d1_nameoth2_6m_1)="Name"
label(data$pd_d1_mgoth2_6m_1)="MG"
label(data$pd_d1_pfoth2_6m_1)="Frequency"
label(data$pd_d1_nameoth3_6m_1)="Name"
label(data$pd_d1_mgoth3_6m_1)="MG"
label(data$pd_d1_pfoth3_6m_1)="Frequency"
label(data$pd_d2_9_6m_1)="HOURS 09.00"
label(data$pd_d2_14_6m_1)="HOURS 14.00"
label(data$pd_d2_20_6m_1)="HOURS 20.00"
label(data$pd_d2_mgacec1_6m_1)="MG"
label(data$pd_d2_pfacec1_6m_1)="Frequency "
label(data$pd_d2_mgacec2_6m_1)="MG"
label(data$pd_d2_pfacec2_6m_1)="Frequency "
label(data$pd_d2_mgacec3_6m_1)="MG"
label(data$pd_d2_pfacec3_6m_1)="Frequency "
label(data$pd_d2_mgacem1_6m_1)="MG"
label(data$pd_d2_pfacem1_6m_1)="Frequency "
label(data$pd_d2_mgacem2_6m_1)="MG"
label(data$pd_d2_pfacem2_6m_1)="Frequency "
label(data$pd_d2_mgacem3_6m_1)="MG"
label(data$pd_d2_pfacem3_6m_1)="Frequency "
label(data$pd_d2_mgami1_6m_1)="MG"
label(data$pd_d2_pfami1_6m_1)="Frequency "
label(data$pd_d2_mgami2_6m_1)="MG"
label(data$pd_d2_pfami2_6m_1)="Frequency "
label(data$pd_d2_mgami3_6m_1)="MG"
label(data$pd_d2_pfami3_6m_1)="Frequency "
label(data$pd_d2_mcg_hbup1_6m_1)="MCG/H"
label(data$pd_d2_pfbup1_6m_1)="Frequency "
label(data$pd_d2_mcg_hbup2_6m_1)="MCG/H"
label(data$pd_d2_pfbup2_6m_1)="Frequency "
label(data$pd_d2_mcg_hbup3_6m_1)="MCG/H"
label(data$pd_d2_pfbup3_6m_1)="Frequency "
label(data$pd_d2_mgdex1_6m_1)="MG"
label(data$pd_d2_pfdex1_6m_1)="Frequency "
label(data$pd_d2_mgdex2_6m_1)="MG"
label(data$pd_d2_pfdex2_6m_1)="Frequency "
label(data$pd_d2_mgdex3_6m_1)="MG"
label(data$pd_d2_pfdex3_6m_1)="Frequency "
label(data$pd_d2_mgdiclo1_6m_1)="MG"
label(data$pd_d2_pfdiclo1_6m_1)="Frequency "
label(data$pd_d2_mgdiclo2_6m_1)="MG"
label(data$pd_d2_pfdiclo2_6m_1)="Frequency "
label(data$pd_d2_mgdiclo3_6m_1)="MG"
label(data$pd_d2_pfdiclo3_6m_1)="Frequency "
label(data$pd_d2_mgdul1_6m_1)="MG"
label(data$pd_d1_pfdul1_6m_1)="Frequency "
label(data$pd_d2_mgdul2_6m_1)="MG"
label(data$pd_d1_pfdul2_6m_1)="Frequency "
label(data$pd_d2_mgdul3_6m_1)="MG"
label(data$pd_d1_pfdul3_6m_1)="Frequency "
label(data$pd_d2_mcg_hfen1_6m_1)="MCG/H"
label(data$pd_d2_pffen1_6m_1)="Frequency "
label(data$pd_d2_mcg_hfen2_6m_1)="MCG/H"
label(data$pd_d2_pffen2_6m_1)="Frequency "
label(data$pd_d2_mcg_hfen3_6m_1)="MCG/H"
label(data$pd_d2_pffen3_6m_1)="Frequency "
label(data$pd_d2_mggab1_6m_1)="MG"
label(data$pd_d2_pfgab1_6m_1)="Frequency "
label(data$pd_d2_mggab2_6m_1)="MG"
label(data$pd_d2_pfgab2_6m_1)="Frequency "
label(data$pd_d2_mggab3_6m_1)="MG"
label(data$pd_d2_pfgab3_6m_1)="Frequency "
label(data$pd_d2_mghyd1_6m_1)="MG"
label(data$pd_d2_pfhyd1_6m_1)="Frequency "
label(data$pd_d2_mghyd2_6m_1)="MG"
label(data$pd_d2_pfhyd2_6m_1)="Frequency "
label(data$pd_d2_mghyd3_6m_1)="MG"
label(data$pd_d2_pfhyd3_6m_1)="Frequency "
label(data$pd_d2_mgibu1_6m_1)="MG"
label(data$pd_d2_pfibu1_6m_1)="Frequency "
label(data$pd_d2_mgibu2_6m_1)="MG"
label(data$pd_d2_pfibu2_6m_1)="Frequency "
label(data$pd_d2_mgibu3_6m_1)="MG"
label(data$pd_d2_pfibu3_6m_1)="Frequency "
label(data$pd_d2_mgind1_6m_1)="MG"
label(data$pd_d2_pfind1_6m_1)="Frequency "
label(data$pd_d2_mgind2_6m_1)="MG"
label(data$pd_d2_pfind2_6m_1)="Frequency "
label(data$pd_d2_mgind3_6m_1)="MG"
label(data$pd_d2_pfind3_6m_1)="Frequency "
label(data$pd_d2_mgket1_6m_1)="MG"
label(data$pd_d2_pfket1_6m_1)="Frequency "
label(data$pd_d2_mgket2_6m_1)="MG"
label(data$pd_d2_pfket2_6m_1)="Frequency "
label(data$pd_d2_mgket3_6m_1)="MG"
label(data$pd_d2_pfket3_6m_1)="Frequency "
label(data$pd_d2_mgmel1_6m_1)="MG"
label(data$pd_d2_pfmel1_6m_1)="Frequency "
label(data$pd_d2_mgmel2_6m_1)="MG"
label(data$pd_d2_pfmel2_6m_1)="Frequency "
label(data$pd_d2_mgmel3_6m_1)="MG"
label(data$pd_d2_pfmel3_6m_1)="Frequency "
label(data$pd_d2_mgmeta1_6m_1)="MG"
label(data$pd_d2_pfmeta1_6m_1)="Frequency "
label(data$pd_d2_mgmeta2_6m_1)="MG"
label(data$pd_d2_pfmeta2_6m_1)="Frequency "
label(data$pd_d2_mgmeta3_6m_1)="MG"
label(data$pd_d2_pfmeta3_6m_1)="Frequency "
label(data$pd_d2_mgmet1_6m_1)="MG"
label(data$pd_d2_pfmet1_6m_1)="Frequency "
label(data$pd_d2_mgmet2_6m_1)="MG"
label(data$pd_d2_pfmet2_6m_1)="Frequency "
label(data$pd_d2_mgmet3_6m_1)="MG"
label(data$pd_d2_pfmet3_6m_1)="Frequency "
label(data$pd_d2_mgmor1_6m_1)="MG"
label(data$pd_d2_pfmor1_6m_1)="Frequency "
label(data$pd_d2_mgmor2_6m_1)="MG"
label(data$pd_d2_pfmor2_6m_1)="Frequency "
label(data$pd_d2_mgmor3_6m_1)="MG"
label(data$pd_d2_pfmor3_6m_1)="Frequency "
label(data$pd_d2_mgnap1_6m_1)="MG"
label(data$pd_d2_pfnap1_6m_1)="Frequency "
label(data$pd_d2_mgnap2_6m_1)="MG"
label(data$pd_d2_pfnap2_6m_1)="Frequency "
label(data$pd_d2_mgnap3_6m_1)="MG"
label(data$pd_d2_pfnap3_6m_1)="Frequency "
label(data$pd_d2_mgnor1_6m_1)="MG"
label(data$pd_d2_pfnor1_6m_1)="Frequency "
label(data$pd_d2_mgnor2_6m_1)="MG"
label(data$pd_d2_pfnor2_6m_1)="Frequency "
label(data$pd_d2_mgnor3_6m_1)="MG"
label(data$pd_d2_pfnor3_6m_1)="Frequency "
label(data$pd_d2_mgoxy1_6m_1)="MG"
label(data$pd_d2_pfoxy1_6m_1)="Frequency "
label(data$pd_d2_mgoxy2_6m_1)="MG"
label(data$pd_d2_pfoxy2_6m_1)="Frequency "
label(data$pd_d2_mgoxy3_6m_1)="MG"
label(data$pd_d2_pfoxy3_6m_1)="Frequency "
label(data$pd_d2_mgparac1_6m_1)="MG"
label(data$pd_d2_pfparac1_6m_1)="Frequency "
label(data$pd_d2_mgparac2_6m_1)="MG"
label(data$pd_d2_pfparac2_6m_1)="Frequency "
label(data$pd_d2_mgparac3_6m_1)="MG"
label(data$pd_d2_pfparac3_6m_1)="Frequency "
label(data$pd_d2_mgphe1_6m_1)="MG"
label(data$pd_d2_pfphe1_6m_1)="Frequency "
label(data$pd_d2_mgphe2_6m_1)="MG"
label(data$pd_d2_pfphe2_6m_1)="Frequency "
label(data$pd_d2_mgphe3_6m_1)="MG"
label(data$pd_d2_pfphe3_6m_1)="Frequency "
label(data$pd_d2_mgpreg1_6m_1)="MG"
label(data$pd_d2_pfpreg1_6m_1)="Frequency "
label(data$pd_d2_mgpreg2_6m_1)="MG"
label(data$pd_d2_pfpreg2_6m_1)="Frequency "
label(data$pd_d2_mgpreg3_6m_1)="MG"
label(data$pd_d2_pfpreg3_6m_1)="Frequency "
label(data$pd_d2_mgpir1_6m_1)="MG"
label(data$pd_d2_pfpir1_6m_1)="Frequency "
label(data$pd_d2_mgpir2_6m_1)="MG"
label(data$pd_d2_pfpir2_6m_1)="Frequency "
label(data$pd_d2_mgpir3_6m_1)="MG"
label(data$pd_d2_pfpir3_6m_1)="Frequency "
label(data$pd_d2_mgtap1_6m_1)="MG"
label(data$pd_d2_pftap1_6m_1)="Frequency "
label(data$pd_d2_mgtap2_6m_1)="MG"
label(data$pd_d2_pftap2_6m_1)="Frequency "
label(data$pd_d2_mgtap3_6m_1)="MG"
label(data$pd_d2_pftap3_6m_1)="Frequency "
label(data$pd_d2_mgtra1_6m_1)="MG"
label(data$pd_d2_pftra1_6m_1)="Frequency "
label(data$pd_d2_mgtra2_6m_1)="MG"
label(data$pd_d2_pftra2_6m_1)="Frequency "
label(data$pd_d2_mgtra3_6m_1)="MG"
label(data$pd_d2_pftra3_6m_1)="Frequency "
label(data$pd_d2_nameoth1_6m_1)="Name"
label(data$pd_d2_mgoth1_6m_1)="MG"
label(data$pd_d2_pfoth1_6m_1)="Frequency"
label(data$pd_d2_nameoth2_6m_1)="Name"
label(data$pd_d2_mgoth2_6m_1)="MG"
label(data$pd_d2_pfoth2_6m_1)="Frequency"
label(data$pd_d2_nameoth3_6m_1)="Name"
label(data$pd_d2_mgoth3_6m_1)="MG"
label(data$pd_d2_pfoth3_6m_1)="Frequency"
label(data$pd_d3_9_6m_1)="HOURS 09.00"
label(data$pd_d3_14_6m_1)="HOURS 14.00"
label(data$pd_d3_20_6m_1)="HOURS 20.00"
label(data$pd_d3_mgacec1_6m_1)="MG"
label(data$pd_d3_pfacec1_6m_1)="Frequency "
label(data$pd_d3_mgacec2_6m_1)="MG"
label(data$pd_d3_pfacec2_6m_1)="Frequency "
label(data$pd_d3_mgacec3_6m_1)="MG"
label(data$pd_d3_pfacec3_6m_1)="Frequency "
label(data$pd_d3_mgacem1_6m_1)="MG"
label(data$pd_d3_pfacem1_6m_1)="Frequency "
label(data$pd_d3_mgacem2_6m_1)="MG"
label(data$pd_d3_pfacem2_6m_1)="Frequency "
label(data$pd_d3_mgacem3_6m_1)="MG"
label(data$pd_d3_pfacem3_6m_1)="Frequency "
label(data$pd_d3_mgami1_6m_1)="MG"
label(data$pd_d3_pfami1_6m_1)="Frequency "
label(data$pd_d3_mgami2_6m_1)="MG"
label(data$pd_d3_pfami2_6m_1)="Frequency "
label(data$pd_d3_mgami3_6m_1)="MG"
label(data$pd_d3_pfami3_6m_1)="Frequency "
label(data$pd_d3_mcg_hbup1_6m_1)="MCG/H"
label(data$pd_d3_pfbup1_6m_1)="Frequency "
label(data$pd_d3_mcg_hbup2_6m_1)="MCG/H"
label(data$pd_d3_pfbup2_6m_1)="Frequency "
label(data$pd_d3_mcg_hbup3_6m_1)="MCG/H"
label(data$pd_d3_pfbup3_6m_1)="Frequency "
label(data$pd_d3_mgdex1_6m_1)="MG"
label(data$pd_d3_pfdex1_6m_1)="Frequency "
label(data$pd_d3_mgdex2_6m_1)="MG"
label(data$pd_d3_pfdex2_6m_1)="Frequency "
label(data$pd_d3_mgdex3_6m_1)="MG"
label(data$pd_d3_pfdex3_6m_1)="Frequency "
label(data$pd_d3_mgdiclo1_6m_1)="MG"
label(data$pd_d3_pfdiclo1_6m_1)="Frequency "
label(data$pd_d3_mgdiclo2_6m_1)="MG"
label(data$pd_d3_pfdiclo2_6m_1)="Frequency "
label(data$pd_d3_mgdiclo3_6m_1)="MG"
label(data$pd_d3_pfdiclo3_6m_1)="Frequency "
label(data$pd_d3_mgdul1_6m_1)="MG"
label(data$pd_d3_pfdul1_6m_1)="Frequency "
label(data$pd_d3_mgdul2_6m_1)="MG"
label(data$pd_d3_pfdul2_6m_1)="Frequency "
label(data$pd_d3_mgdul3_6m_1)="MG"
label(data$pd_d3_pfdul3_6m_1)="Frequency "
label(data$pd_d3_mcg_hfen1_6m_1)="MCG/H"
label(data$pd_d3_pffen1_6m_1)="Frequency "
label(data$pd_d3_mcg_hfen2_6m_1)="MCG/H"
label(data$pd_d3_pffen2_6m_1)="Frequency "
label(data$pd_d3_mcg_hfen3_6m_1)="MCG/H"
label(data$pd_d3_pffen3_6m_1)="Frequency "
label(data$pd_d3_mggab1_6m_1)="MG"
label(data$pd_d3_pfgab1_6m_1)="Frequency "
label(data$pd_d3_mggab2_6m_1)="MG"
label(data$pd_d3_pfgab2_6m_1)="Frequency "
label(data$pd_d3_mggab3_6m_1)="MG"
label(data$pd_d3_pfgab3_6m_1)="Frequency "
label(data$pd_d3_mghyd1_6m_1)="MG"
label(data$pd_d3_pfhyd1_6m_1)="Frequency "
label(data$pd_d3_mghyd2_6m_1)="MG"
label(data$pd_d3_pfhyd2_6m_1)="Frequency "
label(data$pd_d3_mghyd3_6m_1)="MG"
label(data$pd_d3_pfhyd3_6m_1)="Frequency "
label(data$pd_d3_mgibu1_6m_1)="MG"
label(data$pd_d3_pfibu1_6m_1)="Frequency "
label(data$pd_d3_mgibu2_6m_1)="MG"
label(data$pd_d3_pfibu2_6m_1)="Frequency "
label(data$pd_d3_mgibu3_6m_1)="MG"
label(data$pd_d3_pfibu3_6m_1)="Frequency "
label(data$pd_d3_mgind1_6m_1)="MG"
label(data$pd_d3_pfind1_6m_1)="Frequency "
label(data$pd_d3_mgind2_6m_1)="MG"
label(data$pd_d3_pfind2_6m_1)="Frequency "
label(data$pd_d3_mgind3_6m_1)="MG"
label(data$pd_d3_pfind3_6m_1)="Frequency "
label(data$pd_d3_mgket1_6m_1)="MG"
label(data$pd_d3_pfket1_6m_1)="Frequency "
label(data$pd_d3_mgket2_6m_1)="MG"
label(data$pd_d3_pfket2_6m_1)="Frequency "
label(data$pd_d3_mgket3_6m_1)="MG"
label(data$pd_d3_pfket3_6m_1)="Frequency "
label(data$pd_d3_mgmel1_6m_1)="MG"
label(data$pd_d3_pfmel1_6m_1)="Frequency "
label(data$pd_d3_mgmel2_6m_1)="MG"
label(data$pd_d3_pfmel2_6m_1)="Frequency "
label(data$pd_d3_mgmel3_6m_1)="MG"
label(data$pd_d3_pfmel3_6m_1)="Frequency "
label(data$pd_d3_mgmeta1_6m_1)="MG"
label(data$pd_d3_pfmeta1_6m_1)="Frequency "
label(data$pd_d3_mgmeta2_6m_1)="MG"
label(data$pd_d3_pfmeta2_6m_1)="Frequency "
label(data$pd_d3_mgmeta3_6m_1)="MG"
label(data$pd_d3_pfmeta3_6m_1)="Frequency "
label(data$pd_d3_mgmet1_6m_1)="MG"
label(data$pd_d3_pfmet1_6m_1)="Frequency "
label(data$pd_d3_mgmet2_6m_1)="MG"
label(data$pd_d3_pfmet2_6m_1)="Frequency "
label(data$pd_d3_mgmet3_6m_1)="MG"
label(data$pd_d3_pfmet3_6m_1)="Frequency "
label(data$pd_d3_mgmor1_6m_1)="MG"
label(data$pd_d3_pfmor1_6m_1)="Frequency "
label(data$pd_d3_mgmor2_6m_1)="MG"
label(data$pd_d3_pfmor2_6m_1)="Frequency "
label(data$pd_d3_mgmor3_6m_1)="MG"
label(data$pd_d3_pfmor3_6m_1)="Frequency "
label(data$pd_d3_mgnap1_6m_1)="MG"
label(data$pd_d3_pfnap1_6m_1)="Frequency "
label(data$pd_d3_mgnap2_6m_1)="MG"
label(data$pd_d3_pfnap2_6m_1)="Frequency "
label(data$pd_d3_mgnap3_6m_1)="MG"
label(data$pd_d3_pfnap3_6m_1)="Frequency "
label(data$pd_d3_mgnor1_6m_1)="MG"
label(data$pd_d3_pfnor1_6m_1)="Frequency "
label(data$pd_d3_mgnor2_6m_1)="MG"
label(data$pd_d3_pfnor2_6m_1)="Frequency "
label(data$pd_d3_mgnor3_6m_1)="MG"
label(data$pd_d3_pfnor3_6m_1)="Frequency "
label(data$pd_d3_mgoxy1_6m_1)="MG"
label(data$pd_d3_pfoxy1_6m_1)="Frequency "
label(data$pd_d3_mgoxy2_6m_1)="MG"
label(data$pd_d3_pfoxy2_6m_1)="Frequency "
label(data$pd_d3_mgoxy3_6m_1)="MG"
label(data$pd_d3_pfoxy3_6m_1)="Frequency "
label(data$pd_d3_mgparac1_6m_1)="MG"
label(data$pd_d3_pfparac1_6m_1)="Frequency "
label(data$pd_d3_mgparac2_6m_1)="MG"
label(data$pd_d3_pfparac2_6m_1)="Frequency "
label(data$pd_d3_mgparac3_6m_1)="MG"
label(data$pd_d3_pfparac3_6m_1)="Frequency "
label(data$pd_d3_mgphe1_6m_1)="MG"
label(data$pd_d3_pfphe1_6m_1)="Frequency "
label(data$pd_d3_mgphe2_6m_1)="MG"
label(data$pd_d3_pfphe2_6m_1)="Frequency "
label(data$pd_d3_mgphe3_6m_1)="MG"
label(data$pd_d3_pfphe3_6m_1)="Frequency "
label(data$pd_d3_mgpreg1_6m_1)="MG"
label(data$pd_d3_pfpreg1_6m_1)="Frequency "
label(data$pd_d3_mgpreg2_6m_1)="MG"
label(data$pd_d3_pfpreg2_6m_1)="Frequency "
label(data$pd_d3_mgpreg3_6m_1)="MG"
label(data$pd_d3_pfpreg3_6m_1)="Frequency "
label(data$pd_d3_mgpir1_6m_1)="MG"
label(data$pd_d3_pfpir1_6m_1)="Frequency "
label(data$pd_d3_mgpir2_6m_1)="MG"
label(data$pd_d3_pfpir2_6m_1)="Frequency "
label(data$pd_d3_mgpir3_6m_1)="MG"
label(data$pd_d3_pfpir3_6m_1)="Frequency "
label(data$pd_d3_mgtap1_6m_1)="MG"
label(data$pd_d3_pftap1_6m_1)="Frequency "
label(data$pd_d3_mgtap2_6m_1)="MG"
label(data$pd_d3_pftap2_6m_1)="Frequency "
label(data$pd_d3_mgtap3_6m_1)="MG"
label(data$pd_d3_pftap3_6m_1)="Frequency "
label(data$pd_d3_mgtra1_6m_1)="MG"
label(data$pd_d3_pftra1_6m_1)="Frequency "
label(data$pd_d3_mgtra2_6m_1)="MG"
label(data$pd_d3_pftra2_6m_1)="Frequency "
label(data$pd_d3_mgtra3_6m_1)="MG"
label(data$pd_d3_pftra3_6m_1)="Frequency "
label(data$pd_d3_nameoth1_6m_1)="Name"
label(data$pd_d3_mgoth1_6m_1)="MG"
label(data$pd_d3_pfoth1_6m_1)="Frequency"
label(data$pd_d3_nameoth2_6m_1)="Name"
label(data$pd_d3_mgoth2_6m_1)="MG"
label(data$pd_d3_pfoth2_6m_1)="Frequency"
label(data$pd_d3_nameoth3_6m_1)="Name"
label(data$pd_d3_mgoth3_6m_1)="MG"
label(data$pd_d3_pfoth3_6m_1)="Frequency"
label(data$pd_d4_9_6m_1)="HOURS 09.00"
label(data$pd_d4_14_6m_1)="HOURS 14.00"
label(data$pd_d4_20_6m_1)="HOURS 20.00"
label(data$pd_d4_mgacec1_6m_1)="MG"
label(data$pd_d4_pfacec1_6m_1)="Frequency "
label(data$pd_d4_mgacec2_6m_1)="MG"
label(data$pd_d4_pfacec2_6m_1)="Frequency "
label(data$pd_d4_mgacec3_6m_1)="MG"
label(data$pd_d4_pfacec3_6m_1)="Frequency "
label(data$pd_d4_mgacem1_6m_1)="MG"
label(data$pd_d4_pfacem1_6m_1)="Frequency "
label(data$pd_d4_mgacem2_6m_1)="MG"
label(data$pd_d4_pfacem2_6m_1)="Frequency "
label(data$pd_d4_mgacem3_6m_1)="MG"
label(data$pd_d4_pfacem3_6m_1)="Frequency "
label(data$pd_d4_mgami1_6m_1)="MG"
label(data$pd_d4_pfami1_6m_1)="Frequency "
label(data$pd_d4_mgami2_6m_1)="MG"
label(data$pd_d4_pfami2_6m_1)="Frequency "
label(data$pd_d4_mgami3_6m_1)="MG"
label(data$pd_d4_pfami3_6m_1)="Frequency "
label(data$pd_d4_mcg_hbup1_6m_1)="MCG/H"
label(data$pd_d4_pfbup1_6m_1)="Frequency "
label(data$pd_d4_mcg_hbup2_6m_1)="MCG/H"
label(data$pd_d4_pfbup2_6m_1)="Frequency "
label(data$pd_d4_mcg_hbup3_6m_1)="MCG/H"
label(data$pd_d4_pfbup3_6m_1)="Frequency "
label(data$pd_d4_mgdex1_6m_1)="MG"
label(data$pd_d4_pfdex1_6m_1)="Frequency "
label(data$pd_d4_mgdex2_6m_1)="MG"
label(data$pd_d4_pfdex2_6m_1)="Frequency "
label(data$pd_d4_mgdex3_6m_1)="MG"
label(data$pd_d4_pfdex3_6m_1)="Frequency "
label(data$pd_d4_mgdiclo1_6m_1)="MG"
label(data$pd_d4_pfdiclo1_6m_1)="Frequency "
label(data$pd_d4_mgdiclo2_6m_1)="MG"
label(data$pd_d4_pfdiclo2_6m_1)="Frequency "
label(data$pd_d4_mgdiclo3_6m_1)="MG"
label(data$pd_d4_pfdiclo3_6m_1)="Frequency "
label(data$pd_d4_mgdul1_6m_1)="MG"
label(data$pd_d4_pfdul1_6m_1)="Frequency "
label(data$pd_d4_mgdul2_6m_1)="MG"
label(data$pd_d4_pfdul2_6m_1)="Frequency "
label(data$pd_d4_mgdul3_6m_1)="MG"
label(data$pd_d4_pfdul3_6m_1)="Frequency "
label(data$pd_d4_mcg_hfen1_6m_1)="MCG/H"
label(data$pd_d4_pffen1_6m_1)="Frequency "
label(data$pd_d4_mcg_hfen2_6m_1)="MCG/H"
label(data$pd_d4_pffen2_6m_1)="Frequency "
label(data$pd_d4_mcg_hfen3_6m_1)="MCG/H"
label(data$pd_d4_pffen3_6m_1)="Frequency "
label(data$pd_d4_mggab1_6m_1)="MG"
label(data$pd_d4_pfgab1_6m_1)="Frequency "
label(data$pd_d4_mggab2_6m_1)="MG"
label(data$pd_d4_pfgab2_6m_1)="Frequency "
label(data$pd_d4_mggab3_6m_1)="MG"
label(data$pd_d4_pfgab3_6m_1)="Frequency "
label(data$pd_d4_mghyd1_6m_1)="MG"
label(data$pd_d4_pfhyd1_6m_1)="Frequency "
label(data$pd_d4_mghyd2_6m_1)="MG"
label(data$pd_d4_pfhyd2_6m_1)="Frequency "
label(data$pd_d4_mghyd3_6m_1)="MG"
label(data$pd_d4_pfhyd3_6m_1)="Frequency "
label(data$pd_d4_mgibu1_6m_1)="MG"
label(data$pd_d4_pfibu1_6m_1)="Frequency "
label(data$pd_d4_mgibu2_6m_1)="MG"
label(data$pd_d4_pfibu2_6m_1)="Frequency "
label(data$pd_d4_mgibu3_6m_1)="MG"
label(data$pd_d4_pfibu3_6m_1)="Frequency "
label(data$pd_d4_mgind1_6m_1)="MG"
label(data$pd_d4_pfind1_6m_1)="Frequency "
label(data$pd_d4_mgind2_6m_1)="MG"
label(data$pd_d4_pfind2_6m_1)="Frequency "
label(data$pd_d4_mgind3_6m_1)="MG"
label(data$pd_d4_pfind3_6m_1)="Frequency "
label(data$pd_d4_mgket1_6m_1)="MG"
label(data$pd_d4_pfket1_6m_1)="Frequency "
label(data$pd_d4_mgket2_6m_1)="MG"
label(data$pd_d4_pfket2_6m_1)="Frequency "
label(data$pd_d4_mgket3_6m_1)="MG"
label(data$pd_d4_pfket3_6m_1)="Frequency "
label(data$pd_d4_mgmel1_6m_1)="MG"
label(data$pd_d4_pfmel1_6m_1)="Frequency "
label(data$pd_d4_mgmel2_6m_1)="MG"
label(data$pd_d4_pfmel2_6m_1)="Frequency "
label(data$pd_d4_mgmel3_6m_1)="MG"
label(data$pd_d4_pfmel3_6m_1)="Frequency "
label(data$pd_d4_mgmeta1_6m_1)="MG"
label(data$pd_d4_pfmeta1_6m_1)="Frequency "
label(data$pd_d4_mgmeta2_6m_1)="MG"
label(data$pd_d4_pfmeta2_6m_1)="Frequency "
label(data$pd_d4_mgmeta3_6m_1)="MG"
label(data$pd_d4_pfmeta3_6m_1)="Frequency "
label(data$pd_d4_mgmet1_6m_1)="MG"
label(data$pd_d4_pfmet1_6m_1)="Frequency "
label(data$pd_d4_mgmet2_6m_1)="MG"
label(data$pd_d4_pfmet2_6m_1)="Frequency "
label(data$pd_d4_mgmet3_6m_1)="MG"
label(data$pd_d4_pfmet3_6m_1)="Frequency "
label(data$pd_d4_mgmor1_6m_1)="MG"
label(data$pd_d4_pfmor1_6m_1)="Frequency "
label(data$pd_d4_mgmor2_6m_1)="MG"
label(data$pd_d4_pfmor2_6m_1)="Frequency "
label(data$pd_d4_mgmor3_6m_1)="MG"
label(data$pd_d4_pfmor3_6m_1)="Frequency "
label(data$pd_d4_mgnap1_6m_1)="MG"
label(data$pd_d4_pfnap1_6m_1)="Frequency "
label(data$pd_d4_mgnap2_6m_1)="MG"
label(data$pd_d4_pfnap2_6m_1)="Frequency "
label(data$pd_d4_mgnap3_6m_1)="MG"
label(data$pd_d4_pfnap3_6m_1)="Frequency "
label(data$pd_d4_mgnor1_6m_1)="MG"
label(data$pd_d4_pfnor1_6m_1)="Frequency "
label(data$pd_d4_mgnor2_6m_1)="MG"
label(data$pd_d4_pfnor2_6m_1)="Frequency "
label(data$pd_d4_mgnor3_6m_1)="MG"
label(data$pd_d4_pfnor3_6m_1)="Frequency "
label(data$pd_d4_mgoxy1_6m_1)="MG"
label(data$pd_d4_pfoxy1_6m_1)="Frequency "
label(data$pd_d4_mgoxy2_6m_1)="MG"
label(data$pd_d4_pfoxy2_6m_1)="Frequency "
label(data$pd_d4_mgoxy3_6m_1)="MG"
label(data$pd_d4_pfoxy3_6m_1)="Frequency "
label(data$pd_d4_mgparac1_6m_1)="MG"
label(data$pd_d4_pfparac1_6m_1)="Frequency "
label(data$pd_d4_mgparac2_6m_1)="MG"
label(data$pd_d4_pfparac2_6m_1)="Frequency "
label(data$pd_d4_mgparac3_6m_1)="MG"
label(data$pd_d4_pfparac3_6m_1)="Frequency "
label(data$pd_d4_mgphe1_6m_1)="MG"
label(data$pd_d4_pfphe1_6m_1)="Frequency "
label(data$pd_d4_mgphe2_6m_1)="MG"
label(data$pd_d4_pfphe2_6m_1)="Frequency "
label(data$pd_d4_mgphe3_6m_1)="MG"
label(data$pd_d4_pfphe3_6m_1)="Frequency "
label(data$pd_d4_mgpreg1_6m_1)="MG"
label(data$pd_d4_pfpreg1_6m_1)="Frequency "
label(data$pd_d4_mgpreg2_6m_1)="MG"
label(data$pd_d4_pfpreg2_6m_1)="Frequency "
label(data$pd_d4_mgpreg3_6m_1)="MG"
label(data$pd_d4_pfpreg3_6m_1)="Frequency "
label(data$pd_d4_mgpir1_6m_1)="MG"
label(data$pd_d4_pfpir1_6m_1)="Frequency "
label(data$pd_d4_mgpir2_6m_1)="MG"
label(data$pd_d4_pfpir2_6m_1)="Frequency "
label(data$pd_d4_mgpir3_6m_1)="MG"
label(data$pd_d4_pfpir3_6m_1)="Frequency "
label(data$pd_d4_mgtap1_6m_1)="MG"
label(data$pd_d4_pftap1_6m_1)="Frequency "
label(data$pd_d4_mgtap2_6m_1)="MG"
label(data$pd_d4_pftap2_6m_1)="Frequency "
label(data$pd_d4_mgtap3_6m_1)="MG"
label(data$pd_d4_pftap3_6m_1)="Frequency "
label(data$pd_d4_mgtra1_6m_1)="MG"
label(data$pd_d4_pftra1_6m_1)="Frequency "
label(data$pd_d4_mgtra2_6m_1)="MG"
label(data$pd_d4_pftra2_6m_1)="Frequency "
label(data$pd_d4_mgtra3_6m_1)="MG"
label(data$pd_d4_pftra3_6m_1)="Frequency "
label(data$pd_d4_nameoth1_6m_1)="Name"
label(data$pd_d4_mgoth1_6m_1)="MG"
label(data$pd_d4_pfoth1_6m_1)="Frequency"
label(data$pd_d4_nameoth2_6m_1)="Name"
label(data$pd_d4_mgoth2_6m_1)="MG"
label(data$pd_d4_pfoth2_6m_1)="Frequency"
label(data$pd_d4_nameoth3_6m_1)="Name"
label(data$pd_d4_mgoth3_6m_1)="MG"
label(data$pd_d4_pfoth3_6m_1)="Frequency"
label(data$pd_d5_9_6m_1)="HOURS 09.00"
label(data$pd_d5_14_6m_1)="HOURS 14.00"
label(data$pd_d5_20_6m_1)="HOURS 20.00"
label(data$pd_d5_mgacec1_6m_1)="MG"
label(data$pd_d5_pfacec1_6m_1)="Frequency "
label(data$pd_d5_mgacec2_6m_1)="MG"
label(data$pd_d5_pfacec2_6m_1)="Frequency "
label(data$pd_d5_mgacec3_6m_1)="MG"
label(data$pd_d5_pfacec3_6m_1)="Frequency "
label(data$pd_d5_mgacem1_6m_1)="MG"
label(data$pd_d5_pfacem1_6m_1)="Frequency "
label(data$pd_d5_mgacem2_6m_1)="MG"
label(data$pd_d5_pfacem2_6m_1)="Frequency "
label(data$pd_d5_mgacem3_6m_1)="MG"
label(data$pd_d5_pfacem3_6m_1)="Frequency "
label(data$pd_d5_mgami1_6m_1)="MG"
label(data$pd_d5_pfami1_6m_1)="Frequency "
label(data$pd_d5_pfami2_6m_1)="Frequency "
label(data$pd_d5_mgami2_6m_1)="MG"
label(data$pd_d5_mgami3_6m_1)="MG"
label(data$pd_d5_pfami3_6m_1)="Frequency "
label(data$pd_d5_mcg_hbup1_6m_1)="MCG/H"
label(data$pd_d5_pfbup1_6m_1)="Frequency "
label(data$pd_d5_mcg_hbup2_6m_1)="MCG/H"
label(data$pd_d5_pfbup2_6m_1)="Frequency "
label(data$pd_d5_mcg_hbup3_6m_1)="MCG/H"
label(data$pd_d5_pfbup3_6m_1)="Frequency "
label(data$pd_d5_mgdex1_6m_1)="MG"
label(data$pd_d5_pfdex1_6m_1)="Frequency "
label(data$pd_d5_mgdex2_6m_1)="MG"
label(data$pd_d5_pfdex2_6m_1)="Frequency "
label(data$pd_d5_mgdex3_6m_1)="MG"
label(data$pd_d5_pfdex3_6m_1)="Frequency "
label(data$pd_d5_mgdiclo1_6m_1)="MG"
label(data$pd_d5_pfdiclo1_6m_1)="Frequency "
label(data$pd_d5_mgdiclo2_6m_1)="MG"
label(data$pd_d5_pfdiclo2_6m_1)="Frequency "
label(data$pd_d5_mgdiclo3_6m_1)="MG"
label(data$pd_d5_pfdiclo3_6m_1)="Frequency "
label(data$pd_d5_mgdul1_6m_1)="MG"
label(data$pd_d5_pfdul1_6m_1)="Frequency "
label(data$pd_d5_mgdul2_6m_1)="MG"
label(data$pd_d5_pfdul2_6m_1)="Frequency "
label(data$pd_d5_mgdul3_6m_1)="MG"
label(data$pd_d5_pfdul3_6m_1)="Frequency "
label(data$pd_d5_mcg_hfen1_6m_1)="MCG/H"
label(data$pd_d5_pffen1_6m_1)="Frequency "
label(data$pd_d5_mcg_hfen2_6m_1)="MCG/H"
label(data$pd_d5_pffen2_6m_1)="Frequency "
label(data$pd_d5_mcg_hfen3_6m_1)="MCG/H"
label(data$pd_d5_pffen3_6m_1)="Frequency "
label(data$pd_d5_mggab1_6m_1)="MG"
label(data$pd_d5_pfgab1_6m_1)="Frequency "
label(data$pd_d5_mggab2_6m_1)="MG"
label(data$pd_d5_pfgab2_6m_1)="Frequency "
label(data$pd_d5_mggab3_6m_1)="MG"
label(data$pd_d5_pfgab3_6m_1)="Frequency "
label(data$pd_d5_mghyd1_6m_1)="MG"
label(data$pd_d5_pfhyd1_6m_1)="Frequency "
label(data$pd_d5_mghyd2_6m_1)="MG"
label(data$pd_d5_pfhyd2_6m_1)="Frequency "
label(data$pd_d5_mghyd3_6m_1)="MG"
label(data$pd_d5_pfhyd3_6m_1)="Frequency "
label(data$pd_d5_mgibu1_6m_1)="MG"
label(data$pd_d5_pfibu1_6m_1)="Frequency "
label(data$pd_d5_mgibu2_6m_1)="MG"
label(data$pd_d5_pfibu2_6m_1)="Frequency "
label(data$pd_d5_mgibu3_6m_1)="MG"
label(data$pd_d5_pfibu3_6m_1)="Frequency "
label(data$pd_d5_mgind1_6m_1)="MG"
label(data$pd_d5_pfind1_6m_1)="Frequency "
label(data$pd_d5_mgind2_6m_1)="MG"
label(data$pd_d5_pfind2_6m_1)="Frequency "
label(data$pd_d5_mgind3_6m_1)="MG"
label(data$pd_d5_pfind3_6m_1)="Frequency "
label(data$pd_d5_mgket1_6m_1)="MG"
label(data$pd_d5_pfket1_6m_1)="Frequency "
label(data$pd_d5_mgket2_6m_1)="MG"
label(data$pd_d5_pfket2_6m_1)="Frequency "
label(data$pd_d5_mgket3_6m_1)="MG"
label(data$pd_d5_pfket3_6m_1)="Frequency "
label(data$pd_d5_mgmel1_6m_1)="MG"
label(data$pd_d5_pfmel1_6m_1)="Frequency "
label(data$pd_d5_mgmel2_6m_1)="MG"
label(data$pd_d5_pfmel2_6m_1)="Frequency "
label(data$pd_d5_mgmel3_6m_1)="MG"
label(data$pd_d5_pfmel3_6m_1)="Frequency "
label(data$pd_d5_mgmeta1_6m_1)="MG"
label(data$pd_d5_pfmeta1_6m_1)="Frequency "
label(data$pd_d5_mgmeta2_6m_1)="MG"
label(data$pd_d5_pfmeta2_6m_1)="Frequency "
label(data$pd_d5_mgmeta3_6m_1)="MG"
label(data$pd_d5_pfmeta3_6m_1)="Frequency "
label(data$pd_d5_mgmet1_6m_1)="MG"
label(data$pd_d5_pfmet1_6m_1)="Frequency "
label(data$pd_d5_mgmet2_6m_1)="MG"
label(data$pd_d5_pfmet2_6m_1)="Frequency "
label(data$pd_d5_mgmet3_6m_1)="MG"
label(data$pd_d5_pfmet3_6m_1)="Frequency "
label(data$pd_d5_mgmor1_6m_1)="MG"
label(data$pd_d5_pfmor1_6m_1)="Frequency "
label(data$pd_d5_mgmor2_6m_1)="MG"
label(data$pd_d5_pfmor2_6m_1)="Frequency "
label(data$pd_d5_mgmor3_6m_1)="MG"
label(data$pd_d5_pfmor3_6m_1)="Frequency "
label(data$pd_d5_mgnap1_6m_1)="MG"
label(data$pd_d5_pfnap1_6m_1)="Frequency "
label(data$pd_d5_mgnap2_6m_1)="MG"
label(data$pd_d5_pfnap2_6m_1)="Frequency "
label(data$pd_d5_mgnap3_6m_1)="MG"
label(data$pd_d5_pfnap3_6m_1)="Frequency "
label(data$pd_d5_mgnor1_6m_1)="MG"
label(data$pd_d5_pfnor1_6m_1)="Frequency "
label(data$pd_d5_mgnor2_6m_1)="MG"
label(data$pd_d5_pfnor2_6m_1)="Frequency "
label(data$pd_d5_mgnor3_6m_1)="MG"
label(data$pd_d5_pfnor3_6m_1)="Frequency "
label(data$pd_d5_mgoxy1_6m_1)="MG"
label(data$pd_d5_pfoxy1_6m_1)="Frequency "
label(data$pd_d5_mgoxy2_6m_1)="MG"
label(data$pd_d5_pfoxy2_6m_1)="Frequency "
label(data$pd_d5_mgoxy3_6m_1)="MG"
label(data$pd_d5_pfoxy3_6m_1)="Frequency "
label(data$pd_d5_mgparac1_6m_1)="MG"
label(data$pd_d5_pfparac1_6m_1)="Frequency "
label(data$pd_d5_mgparac2_6m_1)="MG"
label(data$pd_d5_pfparac2_6m_1)="Frequency "
label(data$pd_d5_mgparac3_6m_1)="MG"
label(data$pd_d5_pfparac3_6m_1)="Frequency "
label(data$pd_d5_mgphe1_6m_1)="MG"
label(data$pd_d5_pfphe1_6m_1)="Frequency "
label(data$pd_d5_mgphe2_6m_1)="MG"
label(data$pd_d5_pfphe2_6m_1)="Frequency "
label(data$pd_d5_mgphe3_6m_1)="MG"
label(data$pd_d5_pfphe3_6m_1)="Frequency "
label(data$pd_d5_mgpreg1_6m_1)="MG"
label(data$pd_d5_pfpreg1_6m_1)="Frequency "
label(data$pd_d5_mgpreg2_6m_1)="MG"
label(data$pd_d5_pfpreg2_6m_1)="Frequency "
label(data$pd_d5_mgpreg3_6m_1)="MG"
label(data$pd_d5_pfpreg3_6m_1)="Frequency "
label(data$pd_d5_mgpir1_6m_1)="MG"
label(data$pd_d5_pfpir1_6m_1)="Frequency "
label(data$pd_d5_mgpir2_6m_1)="MG"
label(data$pd_d5_pfpir2_6m_1)="Frequency "
label(data$pd_d5_mgpir3_6m_1)="MG"
label(data$pd_d5_pfpir3_6m_1)="Frequency "
label(data$pd_d5_mgtap1_6m_1)="MG"
label(data$pd_d5_pftap1_6m_1)="Frequency "
label(data$pd_d5_mgtap2_6m_1)="MG"
label(data$pd_d5_pftap2_6m_1)="Frequency "
label(data$pd_d5_mgtap3_6m_1)="MG"
label(data$pd_d5_pftap3_6m_1)="Frequency "
label(data$pd_d5_mgtra1_6m_1)="MG"
label(data$pd_d5_pftra1_6m_1)="Frequency "
label(data$pd_d5_mgtra2_6m_1)="MG"
label(data$pd_d5_pftra2_6m_1)="Frequency "
label(data$pd_d5_mgtra3_6m_1)="MG"
label(data$pd_d5_pftra3_6m_1)="Frequency "
label(data$pd_d5_nameoth1_6m_1)="Name"
label(data$pd_d5_mgoth1_6m_1)="MG"
label(data$pd_d5_pfoth1_6m_1)="Frequency"
label(data$pd_d5_nameoth2_6m_1)="Name"
label(data$pd_d5_mgoth2_6m_1)="MG"
label(data$pd_d5_pfoth2_6m_1)="Frequency"
label(data$pd_d5_nameoth3_6m_1)="Name"
label(data$pd_d5_mgoth3_6m_1)="MG"
label(data$pd_d5_pfoth3_6m_1)="Frequency"
label(data$months_follow_up_pain_diary_c7cd_complete)="Complete?"
label(data$gelstix_6m_advev1_1)="ADVERSE EVENTS"
label(data$gelstix_6m_advev1_starh_1)="START TIME"
label(data$gelstix_6m_advev1_stop_1)="STOP TIME"
label(data$gelstix_6m_advevdesc1_1)="ADVERSE EVENT"
label(data$gelstix_6m_advev1_inten_1)="MAXIMUM INTENSITY"
label(data$gelstix_6m_advev1_action_1)="ACTION TAKEN"
label(data$gelstix_6m_advev1_relat_1)="RELATIONSHIP TO INVESTIGATIONAL PRODUCT"
label(data$gelstix_6m_advev1_outc_1)="SUBJECT OUTCOME"
label(data$gelstix_6m_advev1_sae_1)="SAE"
label(data$gelstix_6m_advev2_starh_1)="START TIME"
label(data$gelstix_6m_advev2_stop_1)="STOP TIME"
label(data$gelstix_6m_advevdesc2_1)="ADVERSE EVENT"
label(data$gelstix_6m_advev2_inten_1)="MAXIMUM INTENSITY"
label(data$gelstix_6m_advev2_action_1)="ACTION TAKEN"
label(data$gelstix_6m_advev2_relat_1)="RELATIONSHIP TO INVESTIGATIONAL PRODUCT"
label(data$gelstix_6m_advev2_outc_1)="SUBJECT OUTCOME"
label(data$gelstix_6m_advev2_sae_1)="SAE"
label(data$gelstix_6m_advev3_starh_1)="START TIME"
label(data$gelstix_6m_advev3_stop_1)="STOP TIME"
label(data$gelstix_6m_advevdesc3_1)="ADVERSE EVENT"
label(data$gelstix_6m_advev3_inten_1)="MAXIMUM INTENSITY"
label(data$gelstix_6m_advev3_action_1)="ACTION TAKEN"
label(data$gelstix_6m_advev3_relat_1)="RELATIONSHIP TO INVESTIGATIONAL PRODUCT"
label(data$gelstix_6m_advev3_outc_1)="SUBJECT OUTCOME"
label(data$gelstix_6m_advev3_sae_1)="SAE"
label(data$months_adverse_event_4fa91c_complete)="Complete?"
label(data$pd_notdone_quest_6m_1)="NOT DONE"
label(data$eq1_6m_1)="MOBILITY"
label(data$eq2_6m_1)="SELF-CARE"
label(data$eq3_6m_1)="USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"
label(data$eq4_6m_1)="PAIN / DISCOMFORT"
label(data$eq5_6m_1)="ANXIETY / DEPRESSION"
label(data$eq6_6m_1)="We would like to know how good or bad your health is TODAY."
label(data$o1_6m_1)="Pain intensity"
label(data$o2_6m_1)="Personal care (washing, dressing etc)"
label(data$o3_6m_1)="Lifting"
label(data$o4_6m_1)="Walking"
label(data$o5_6m_1)="Sitting"
label(data$o6_6m_1)="Standing"
label(data$o7_6m_1)="Sleeping"
label(data$o8_6m_1)="Sex life (if applicable)"
label(data$o9_6m_1)="Social life"
label(data$o10_6m_1)="Travelling"
label(data$pgic_6m_1)="Since the start of the study, my overall status is:"
label(data$crossover_6m_1)="Crossover"
label(data$quest_cecit_pz_6m_1)="QUESTIONARY OF THE EFFICACY OF BLINDING   PATIENT"
label(data$quest_cecit_med_6m_1)="QUESTIONARY OF THE EFFICACY OF BLINDING   MEDICO"
label(data$plac_gelstix_6m)="Treatment"
label(data$months_questionnaires_55b815_complete)="Complete?"
label(data$months_ca1d31_complete)="Complete?"
label(data$es_date_12m_1)="DATE OF VERIFICATION EMPLOYMENT STATUS"
label(data$es_occup_12m_1)="OCCUPATION (if applicable):"
label(data$es_occuptime_12m_1)="OCCUPATION TIME"
label(data$es_parttime_12m_1)="If PART TIME as a percentage:"
label(data$es_legpain_12m_1)="LEG PAIN"
label(data$es_backpain_12m_1)="BACK PAIN"
label(data$es_disab_12m_1)="DISABILITY"
label(data$es_sick_12m_1)="SICK LEAVE"
label(data$es_other_12m_1)="OTHER PROBLEMS"
label(data$es_otheryes_12m_1)="OTHER PROBLEMS IF YES, SPECIFY"
label(data$es_datestopwor_12m_1)="DATE STOPPED WORKING"
label(data$months_employment_status_3a61ed_complete)="Complete?"
label(data$pd_notdone_pd_12m_1)="NOT DONE"
label(data$pd_date_12m_1)="SCREENING PAIN DIARY START DATE"
label(data$pd_d1_9_12m_1)="HOURS 09.00"
label(data$pd_d1_14_12m_1)="HOURS 14.00"
label(data$pd_d1_20_12m_1)="HOURS 20.00"
label(data$pd_d1_mgacec1_12m_1)="MG"
label(data$pd_d1_pfacec1_12m_1)="Frequency "
label(data$pd_d1_mgacec2_12m_1)="MG"
label(data$pd_d1_pfacec2_12m_1)="Frequency "
label(data$pd_d1_mgacec3_12m_1)="MG"
label(data$pd_d1_pfacec3_12m_1)="Frequency "
label(data$pd_d1_mgacem1_12m_1)="MG"
label(data$pd_d1_pfacem1_12m_1)="Frequency "
label(data$pd_d1_mgacem2_12m_1)="MG"
label(data$pd_d1_pfacem2_12m_1)="Frequency "
label(data$pd_d1_mgacem3_12m_1)="MG"
label(data$pd_d1_pfacem3_12m_1)="Frequency "
label(data$pd_d1_mgami1_12m_1)="MG"
label(data$pd_d1_pfami1_12m_1)="Frequency "
label(data$pd_d1_mgami2_12m_1)="MG"
label(data$pd_d1_pfami2_12m_1)="Frequency "
label(data$pd_d1_mgami3_12m_1)="MG"
label(data$pd_d1_pfami3_12m_1)="Frequency "
label(data$pd_d1_mcg_hbup1_12m_1)="MCG/H"
label(data$pd_d1_pfbup1_12m_1)="Frequency "
label(data$pd_d1_mcg_hbup2_12m_1)="MCG/H"
label(data$pd_d1_pfbup2_12m_1)="Frequency "
label(data$pd_d1_mcg_hbup3_12m_1)="MCG/H"
label(data$pd_d1_pfbup3_12m_1)="Frequency "
label(data$pd_d1_mgdex1_12m_1)="MG"
label(data$pd_d1_pfdex1_12m_1)="Frequency "
label(data$pd_d1_mgdex2_12m_1)="MG"
label(data$pd_d1_pfdex2_12m_1)="Frequency "
label(data$pd_d1_mgdex3_12m_1)="MG"
label(data$pd_d1_pfdex3_12m_1)="Frequency "
label(data$pd_d1_mgdiclo1_12m_1)="MG"
label(data$pd_d1_pfdiclo1_12m_1)="Frequency "
label(data$pd_d1_mgdiclo2_12m_1)="MG"
label(data$pd_d1_pfdiclo2_12m_1)="Frequency "
label(data$pd_d1_mgdiclo3_12m_1)="MG"
label(data$pd_d1_pfdiclo3_12m_1)="Frequency "
label(data$pd_d1_mgdul1_12m_1)="MG"
label(data$pd_d1_pfdul1_12m_1)="Frequency "
label(data$pd_d1_mgdul2_12m_1)="MG"
label(data$pd_d1_pfdul2_12m_1)="Frequency "
label(data$pd_d1_mgdul3_12m_1)="MG"
label(data$pd_d1_pfdul3_12m_1)="Frequency "
label(data$pd_d1_mcg_hfen1_12m_1)="MCG/H"
label(data$pd_d1_pffen1_12m_1)="Frequency "
label(data$pd_d1_mcg_hfen2_12m_1)="MCG/H"
label(data$pd_d1_pffen2_12m_1)="Frequency "
label(data$pd_d1_mcg_hfen3_12m_1)="MCG/H"
label(data$pd_d1_pffen3_12m_1)="Frequency "
label(data$pd_d1_mggab1_12m_1)="MG"
label(data$pd_d1_pfgab1_12m_1)="Frequency "
label(data$pd_d1_mggab2_12m_1)="MG"
label(data$pd_d1_pfgab2_12m_1)="Frequency "
label(data$pd_d1_mggab3_12m_1)="MG"
label(data$pd_d1_pfgab3_12m_1)="Frequency "
label(data$pd_d1_mghyd1_12m_1)="MG"
label(data$pd_d1_pfhyd1_12m_1)="Frequency "
label(data$pd_d1_mghyd2_12m_1)="MG"
label(data$pd_d1_pfhyd2_12m_1)="Frequency "
label(data$pd_d1_mghyd3_12m_1)="MG"
label(data$pd_d1_pfhyd3_12m_1)="Frequency "
label(data$pd_d1_mgibu1_12m_1)="MG"
label(data$pd_d1_pfibu1_12m_1)="Frequency "
label(data$pd_d1_mgibu2_12m_1)="MG"
label(data$pd_d1_pfibu2_12m_1)="Frequency "
label(data$pd_d1_mgibu3_12m_1)="MG"
label(data$pd_d1_pfibu3_12m_1)="Frequency "
label(data$pd_d1_mgind1_12m_1)="MG"
label(data$pd_d1_pfind1_12m_1)="Frequency "
label(data$pd_d1_mgind2_12m_1)="MG"
label(data$pd_d1_pfind2_12m_1)="Frequency "
label(data$pd_d1_mgind3_12m_1)="MG"
label(data$pd_d1_pfind3_12m_1)="Frequency "
label(data$pd_d1_mgket1_12m_1)="MG"
label(data$pd_d1_pfket1_12m_1)="Frequency "
label(data$pd_d1_mgket2_12m_1)="MG"
label(data$pd_d1_pfket2_12m_1)="Frequency "
label(data$pd_d1_mgket3_12m_1)="MG"
label(data$pd_d1_pfket3_12m_1)="Frequency "
label(data$pd_d1_mgmel1_12m_1)="MG"
label(data$pd_d1_pfmel1_12m_1)="Frequency "
label(data$pd_d1_mgmel2_12m_1)="MG"
label(data$pd_d1_pfmel2_12m_1)="Frequency "
label(data$pd_d1_mgmel3_12m_1)="MG"
label(data$pd_d1_pfmel3_12m_1)="Frequency "
label(data$pd_d1_mgmeta1_12m_1)="MG"
label(data$pd_d1_pfmeta1_12m_1)="Frequency "
label(data$pd_d1_mgmeta2_12m_1)="MG"
label(data$pd_d1_pfmeta2_12m_1)="Frequency "
label(data$pd_d1_mgmeta3_12m_1)="MG"
label(data$pd_d1_pfmeta3_12m_1)="Frequency "
label(data$pd_d1_mgmet1_12m_1)="MG"
label(data$pd_d1_pfmet1_12m_1)="Frequency "
label(data$pd_d1_mgmet2_12m_1)="MG"
label(data$pd_d1_pfmet2_12m_1)="Frequency "
label(data$pd_d1_mgmet3_12m_1)="MG"
label(data$pd_d1_pfmet3_12m_1)="Frequency "
label(data$pd_d1_mgmor1_12m_1)="MG"
label(data$pd_d1_pfmor1_12m_1)="Frequency "
label(data$pd_d1_mgmor2_12m_1)="MG"
label(data$pd_d1_pfmor2_12m_1)="Frequency "
label(data$pd_d1_mgmor3_12m_1)="MG"
label(data$pd_d1_pfmor3_12m_1)="Frequency "
label(data$pd_d1_mgnap1_12m_1)="MG"
label(data$pd_d1_pfnap1_12m_1)="Frequency "
label(data$pd_d1_mgnap2_12m_1)="MG"
label(data$pd_d1_pfnap2_12m_1)="Frequency "
label(data$pd_d1_mgnap3_12m_1)="MG"
label(data$pd_d1_pfnap3_12m_1)="Frequency "
label(data$pd_d1_mgnor1_12m_1)="MG"
label(data$pd_d1_pfnor1_12m_1)="Frequency "
label(data$pd_d1_mgnor2_12m_1)="MG"
label(data$pd_d1_pfnor2_12m_1)="Frequency "
label(data$pd_d1_mgnor3_12m_1)="MG"
label(data$pd_d1_pfnor3_12m_1)="Frequency "
label(data$pd_d1_mgoxy1_12m_1)="MG"
label(data$pd_d1_pfoxy1_12m_1)="Frequency "
label(data$pd_d1_mgoxy2_12m_1)="MG"
label(data$pd_d1_pfoxy2_12m_1)="Frequency "
label(data$pd_d1_mgoxy3_12m_1)="MG"
label(data$pd_d1_pfoxy3_12m_1)="Frequency "
label(data$pd_d1_mgparac1_12m_1)="MG"
label(data$pd_d1_pfparac1_12m_1)="Frequency "
label(data$pd_d1_mgparac2_12m_1)="MG"
label(data$pd_d1_pfparac2_12m_1)="Frequency "
label(data$pd_d1_mgparac3_12m_1)="MG"
label(data$pd_d1_pfparac3_12m_1)="Frequency "
label(data$pd_d1_mgphe1_12m_1)="MG"
label(data$pd_d1_pfphe1_12m_1)="Frequency "
label(data$pd_d1_mgphe2_12m_1)="MG"
label(data$pd_d1_pfphe2_12m_1)="Frequency "
label(data$pd_d1_mgphe3_12m_1)="MG"
label(data$pd_d1_pfphe3_12m_1)="Frequency "
label(data$pd_d1_mgpreg1_12m_1)="MG"
label(data$pd_d1_pfpreg1_12m_1)="Frequency "
label(data$pd_d1_mgpreg2_12m_1)="MG"
label(data$pd_d1_pfpreg2_12m_1)="Frequency "
label(data$pd_d1_mgpreg3_12m_1)="MG"
label(data$pd_d1_pfpreg3_12m_1)="Frequency "
label(data$pd_d1_mgpir1_12m_1)="MG"
label(data$pd_d1_pfpir1_12m_1)="Frequency "
label(data$pd_d1_mgpir2_12m_1)="MG"
label(data$pd_d1_pfpir2_12m_1)="Frequency "
label(data$pd_d1_mgpir3_12m_1)="MG"
label(data$pd_d1_pfpir3_12m_1)="Frequency "
label(data$pd_d1_mgtap1_12m_1)="MG"
label(data$pd_d1_pftap1_12m_1)="Frequency "
label(data$pd_d1_mgtap2_12m_1)="MG"
label(data$pd_d1_pftap2_12m_1)="Frequency "
label(data$pd_d1_mgtap3_12m_1)="MG"
label(data$pd_d1_pftap3_12m_1)="Frequency "
label(data$pd_d1_mgtra1_12m_1)="MG"
label(data$pd_d1_pftra1_12m_1)="Frequency "
label(data$pd_d1_mgtra2_12m_1)="MG"
label(data$pd_d1_pftra2_12m_1)="Frequency "
label(data$pd_d1_mgtra3_12m_1)="MG"
label(data$pd_d1_pftra3_12m_1)="Frequency "
label(data$pd_d1_nameoth1_12m_1)="Name"
label(data$pd_d1_mgoth1_12m_1)="MG"
label(data$pd_d1_pfoth1_12m_1)="Frequency"
label(data$pd_d1_nameoth2_12m_1)="Name"
label(data$pd_d1_mgoth2_12m_1)="MG"
label(data$pd_d1_pfoth2_12m_1)="Frequency"
label(data$pd_d1_nameoth3_12m_1)="Name"
label(data$pd_d1_mgoth3_12m_1)="MG"
label(data$pd_d1_pfoth3_12m_1)="Frequency"
label(data$pd_d2_9_12m_1)="HOURS 09.00"
label(data$pd_d2_14_12m_1)="HOURS 14.00"
label(data$pd_d2_20_12m_1)="HOURS 20.00"
label(data$pd_d2_mgacec1_12m_1)="MG"
label(data$pd_d2_pfacec1_12m_1)="Frequency "
label(data$pd_d2_mgacec2_12m_1)="MG"
label(data$pd_d2_pfacec2_12m_1)="Frequency "
label(data$pd_d2_mgacec3_12m_1)="MG"
label(data$pd_d2_pfacec3_12m_1)="Frequency "
label(data$pd_d2_mgacem1_12m_1)="MG"
label(data$pd_d2_pfacem1_12m_1)="Frequency "
label(data$pd_d2_mgacem2_12m_1)="MG"
label(data$pd_d2_pfacem2_12m_1)="Frequency "
label(data$pd_d2_mgacem3_12m_1)="MG"
label(data$pd_d2_pfacem3_12m_1)="Frequency "
label(data$pd_d2_mgami1_12m_1)="MG"
label(data$pd_d2_pfami1_12m_1)="Frequency "
label(data$pd_d2_mgami2_12m_1)="MG"
label(data$pd_d2_pfami2_12m_1)="Frequency "
label(data$pd_d2_mgami3_12m_1)="MG"
label(data$pd_d2_pfami3_12m_1)="Frequency "
label(data$pd_d2_mcg_hbup1_12m_1)="MCG/H"
label(data$pd_d2_pfbup1_12m_1)="Frequency "
label(data$pd_d2_mcg_hbup2_12m_1)="MCG/H"
label(data$pd_d2_pfbup2_12m_1)="Frequency "
label(data$pd_d2_mcg_hbup3_12m_1)="MCG/H"
label(data$pd_d2_pfbup3_12m_1)="Frequency "
label(data$pd_d2_mgdex1_12m_1)="MG"
label(data$pd_d2_pfdex1_12m_1)="Frequency "
label(data$pd_d2_mgdex2_12m_1)="MG"
label(data$pd_d2_pfdex2_12m_1)="Frequency "
label(data$pd_d2_mgdex3_12m_1)="MG"
label(data$pd_d2_pfdex3_12m_1)="Frequency "
label(data$pd_d2_mgdiclo1_12m_1)="MG"
label(data$pd_d2_pfdiclo1_12m_1)="Frequency "
label(data$pd_d2_mgdiclo2_12m_1)="MG"
label(data$pd_d2_pfdiclo2_12m_1)="Frequency "
label(data$pd_d2_mgdiclo3_12m_1)="MG"
label(data$pd_d2_pfdiclo3_12m_1)="Frequency "
label(data$pd_d2_mgdul1_12m_1)="MG"
label(data$pd_d2_pfdul1_12m_1)="Frequency "
label(data$pd_d2_mgdul2_12m_1)="MG"
label(data$pd_d2_pfdul2_12m_1)="Frequency "
label(data$pd_d2_mgdul3_12m_1)="MG"
label(data$pd_d2_pfdul3_12m_1)="Frequency "
label(data$pd_d2_mcg_hfen1_12m_1)="MCG/H"
label(data$pd_d2_pffen1_12m_1)="Frequency "
label(data$pd_d2_mcg_hfen2_12m_1)="MCG/H"
label(data$pd_d2_pffen2_12m_1)="Frequency "
label(data$pd_d2_mcg_hfen3_12m_1)="MCG/H"
label(data$pd_d2_pffen3_12m_1)="Frequency "
label(data$pd_d2_mggab1_12m_1)="MG"
label(data$pd_d2_pfgab1_12m_1)="Frequency "
label(data$pd_d2_mggab2_12m_1)="MG"
label(data$pd_d2_pfgab2_12m_1)="Frequency "
label(data$pd_d2_mggab3_12m_1)="MG"
label(data$pd_d2_pfgab3_12m_1)="Frequency "
label(data$pd_d2_mghyd1_12m_1)="MG"
label(data$pd_d2_pfhyd1_12m_1)="Frequency "
label(data$pd_d2_mghyd2_12m_1)="MG"
label(data$pd_d2_pfhyd2_12m_1)="Frequency "
label(data$pd_d2_mghyd3_12m_1)="MG"
label(data$pd_d2_pfhyd3_12m_1)="Frequency "
label(data$pd_d2_mgibu1_12m_1)="MG"
label(data$pd_d2_pfibu1_12m_1)="Frequency "
label(data$pd_d2_mgibu2_12m_1)="MG"
label(data$pd_d2_pfibu2_12m_1)="Frequency "
label(data$pd_d2_mgibu3_12m_1)="MG"
label(data$pd_d2_pfibu3_12m_1)="Frequency "
label(data$pd_d2_mgind1_12m_1)="MG"
label(data$pd_d2_pfind1_12m_1)="Frequency "
label(data$pd_d2_mgind2_12m_1)="MG"
label(data$pd_d2_pfind2_12m_1)="Frequency "
label(data$pd_d2_mgind3_12m_1)="MG"
label(data$pd_d2_pfind3_12m_1)="Frequency "
label(data$pd_d2_mgket1_12m_1)="MG"
label(data$pd_d2_pfket1_12m_1)="Frequency "
label(data$pd_d2_mgket2_12m_1)="MG"
label(data$pd_d2_pfket2_12m_1)="Frequency "
label(data$pd_d2_mgket3_12m_1)="MG"
label(data$pd_d2_pfket3_12m_1)="Frequency "
label(data$pd_d2_mgmel1_12m_1)="MG"
label(data$pd_d2_pfmel1_12m_1)="Frequency "
label(data$pd_d2_mgmel2_12m_1)="MG"
label(data$pd_d2_pfmel2_12m_1)="Frequency "
label(data$pd_d2_mgmel3_12m_1)="MG"
label(data$pd_d2_pfmel3_12m_1)="Frequency "
label(data$pd_d2_mgmeta1_12m_1)="MG"
label(data$pd_d2_pfmeta1_12m_1)="Frequency "
label(data$pd_d2_mgmeta2_12m_1)="MG"
label(data$pd_d2_pfmeta2_12m_1)="Frequency "
label(data$pd_d2_mgmeta3_12m_1)="MG"
label(data$pd_d2_pfmeta3_12m_1)="Frequency "
label(data$pd_d2_mgmet1_12m_1)="MG"
label(data$pd_d2_pfmet1_12m_1)="Frequency "
label(data$pd_d2_mgmet2_12m_1)="MG"
label(data$pd_d2_pfmet2_12m_1)="Frequency "
label(data$pd_d2_mgmet3_12m_1)="MG"
label(data$pd_d2_pfmet3_12m_1)="Frequency "
label(data$pd_d2_mgmor1_12m_1)="MG"
label(data$pd_d2_pfmor1_12m_1)="Frequency "
label(data$pd_d2_mgmor2_12m_1)="MG"
label(data$pd_d2_pfmor2_12m_1)="Frequency "
label(data$pd_d2_mgmor3_12m_1)="MG"
label(data$pd_d2_pfmor3_12m_1)="Frequency "
label(data$pd_d2_mgnap1_12m_1)="MG"
label(data$pd_d2_pfnap1_12m_1)="Frequency "
label(data$pd_d2_mgnap2_12m_1)="MG"
label(data$pd_d2_pfnap2_12m_1)="Frequency "
label(data$pd_d2_mgnap3_12m_1)="MG"
label(data$pd_d2_pfnap3_12m_1)="Frequency "
label(data$pd_d2_mgnor1_12m_1)="MG"
label(data$pd_d2_pfnor1_12m_1)="Frequency "
label(data$pd_d2_mgnor2_12m_1)="MG"
label(data$pd_d2_pfnor2_12m_1)="Frequency "
label(data$pd_d2_mgnor3_12m_1)="MG"
label(data$pd_d2_pfnor3_12m_1)="Frequency "
label(data$pd_d2_mgoxy1_12m_1)="MG"
label(data$pd_d2_pfoxy1_12m_1)="Frequency "
label(data$pd_d2_mgoxy2_12m_1)="MG"
label(data$pd_d2_pfoxy2_12m_1)="Frequency "
label(data$pd_d2_mgoxy3_12m_1)="MG"
label(data$pd_d2_pfoxy3_12m_1)="Frequency "
label(data$pd_d2_mgparac1_12m_1)="MG"
label(data$pd_d2_pfparac1_12m_1)="Frequency "
label(data$pd_d2_mgparac2_12m_1)="MG"
label(data$pd_d2_pfparac2_12m_1)="Frequency "
label(data$pd_d2_mgparac3_12m_1)="MG"
label(data$pd_d2_pfparac3_12m_1)="Frequency "
label(data$pd_d2_mgphe1_12m_1)="MG"
label(data$pd_d2_pfphe1_12m_1)="Frequency "
label(data$pd_d2_mgphe2_12m_1)="MG"
label(data$pd_d2_pfphe2_12m_1)="Frequency "
label(data$pd_d2_mgphe3_12m_1)="MG"
label(data$pd_d2_pfphe3_12m_1)="Frequency "
label(data$pd_d2_mgpreg1_12m_1)="MG"
label(data$pd_d2_pfpreg1_12m_1)="Frequency "
label(data$pd_d2_mgpreg2_12m_1)="MG"
label(data$pd_d2_pfpreg2_12m_1)="Frequency "
label(data$pd_d2_mgpreg3_12m_1)="MG"
label(data$pd_d2_pfpreg3_12m_1)="Frequency "
label(data$pd_d2_mgpir1_12m_1)="MG"
label(data$pd_d2_pfpir1_12m_1)="Frequency "
label(data$pd_d2_mgpir2_12m_1)="MG"
label(data$pd_d2_pfpir2_12m_1)="Frequency "
label(data$pd_d2_mgpir3_12m_1)="MG"
label(data$pd_d2_pfpir3_12m_1)="Frequency "
label(data$pd_d2_mgtap1_12m_1)="MG"
label(data$pd_d2_pftap1_12m_1)="Frequency "
label(data$pd_d2_mgtap2_12m_1)="MG"
label(data$pd_d2_pftap2_12m_1)="Frequency "
label(data$pd_d2_mgtap3_12m_1)="MG"
label(data$pd_d2_pftap3_12m_1)="Frequency "
label(data$pd_d2_mgtra1_12m_1)="MG"
label(data$pd_d2_pftra1_12m_1)="Frequency "
label(data$pd_d2_mgtra2_12m_1)="MG"
label(data$pd_d2_pftra2_12m_1)="Frequency "
label(data$pd_d2_mgtra3_12m_1)="MG"
label(data$pd_d2_pftra3_12m_1)="Frequency "
label(data$pd_d2_nameoth1_12m_1)="Name"
label(data$pd_d2_mgoth1_12m_1)="MG"
label(data$pd_d2_pfoth1_12m_1)="Frequency"
label(data$pd_d2_nameoth2_12m_1)="Name"
label(data$pd_d2_mgoth2_12m_1)="MG"
label(data$pd_d2_pfoth2_12m_1)="Frequency"
label(data$pd_d2_nameoth3_12m_1)="Name"
label(data$pd_d2_mgoth3_12m_1)="MG"
label(data$pd_d2_pfoth3_12m_1)="Frequency"
label(data$pd_d3_9_12m_1)="HOURS 09.00"
label(data$pd_d3_14_12m_1)="HOURS 14.00"
label(data$pd_d3_20_12m_1)="HOURS 20.00"
label(data$pd_d3_mgacec1_12m_1)="MG"
label(data$pd_d3_pfacec1_12m_1)="Frequency "
label(data$pd_d3_mgacec2_12m_1)="MG"
label(data$pd_d3_pfacec2_12m_1)="Frequency "
label(data$pd_d3_mgacec3_12m_1)="MG"
label(data$pd_d3_pfacec3_12m_1)="Frequency "
label(data$pd_d3_mgacem1_12m_1)="MG"
label(data$pd_d3_pfacem1_12m_1)="Frequency "
label(data$pd_d3_mgacem2_12m_1)="MG"
label(data$pd_d3_pfacem2_12m_1)="Frequency "
label(data$pd_d3_mgacem3_12m_1)="MG"
label(data$pd_d3_pfacem3_12m_1)="Frequency "
label(data$pd_d3_mgami1_12m_1)="MG"
label(data$pd_d3_pfami1_12m_1)="Frequency "
label(data$pd_d3_mgami2_12m_1)="MG"
label(data$pd_d3_pfami2_12m_1)="Frequency "
label(data$pd_d3_mgami3_12m_1)="MG"
label(data$pd_d3_pfami3_12m_1)="Frequency "
label(data$pd_d3_mcg_hbup1_12m_1)="MCG/H"
label(data$pd_d3_pfbup1_12m_1)="Frequency "
label(data$pd_d3_mcg_hbup2_12m_1)="MCG/H"
label(data$pd_d3_pfbup2_12m_1)="Frequency "
label(data$pd_d3_mcg_hbup3_12m_1)="MCG/H"
label(data$pd_d3_pfbup3_12m_1)="Frequency "
label(data$pd_d3_mgdex1_12m_1)="MG"
label(data$pd_d3_pfdex1_12m_1)="Frequency "
label(data$pd_d3_mgdex2_12m_1)="MG"
label(data$pd_d3_pfdex2_12m_1)="Frequency "
label(data$pd_d3_mgdex3_12m_1)="MG"
label(data$pd_d3_pfdex3_12m_1)="Frequency "
label(data$pd_d3_mgdiclo1_12m_1)="MG"
label(data$pd_d3_pfdiclo1_12m_1)="Frequency "
label(data$pd_d3_mgdiclo2_12m_1)="MG"
label(data$pd_d3_pfdiclo2_12m_1)="Frequency "
label(data$pd_d3_mgdiclo3_12m_1)="MG"
label(data$pd_d3_pfdiclo3_12m_1)="Frequency "
label(data$pd_d3_mgdul1_12m_1)="MG"
label(data$pd_d3_pfdul1_12m_1)="Frequency "
label(data$pd_d3_mgdul2_12m_1)="MG"
label(data$pd_d3_pfdul2_12m_1)="Frequency "
label(data$pd_d3_mgdul3_12m_1)="MG"
label(data$pd_d3_pfdul3_12m_1)="Frequency "
label(data$pd_d3_mcg_hfen1_12m_1)="MCG/H"
label(data$pd_d3_pffen1_12m_1)="Frequency "
label(data$pd_d3_mcg_hfen2_12m_1)="MCG/H"
label(data$pd_d3_pffen2_12m_1)="Frequency "
label(data$pd_d3_mcg_hfen3_12m_1)="MCG/H"
label(data$pd_d3_pffen3_12m_1)="Frequency "
label(data$pd_d3_mggab1_12m_1)="MG"
label(data$pd_d3_pfgab1_12m_1)="Frequency "
label(data$pd_d3_mggab2_12m_1)="MG"
label(data$pd_d3_pfgab2_12m_1)="Frequency "
label(data$pd_d3_mggab3_12m_1)="MG"
label(data$pd_d3_pfgab3_12m_1)="Frequency "
label(data$pd_d3_mghyd1_12m_1)="MG"
label(data$pd_d3_pfhyd1_12m_1)="Frequency "
label(data$pd_d3_mghyd2_12m_1)="MG"
label(data$pd_d3_pfhyd2_12m_1)="Frequency "
label(data$pd_d3_mghyd3_12m_1)="MG"
label(data$pd_d3_pfhyd3_12m_1)="Frequency "
label(data$pd_d3_mgibu1_12m_1)="MG"
label(data$pd_d3_pfibu1_12m_1)="Frequency "
label(data$pd_d3_mgibu2_12m_1)="MG"
label(data$pd_d3_pfibu2_12m_1)="Frequency "
label(data$pd_d3_mgibu3_12m_1)="MG"
label(data$pd_d3_pfibu3_12m_1)="Frequency "
label(data$pd_d3_mgind1_12m_1)="MG"
label(data$pd_d3_pfind1_12m_1)="Frequency "
label(data$pd_d3_mgind2_12m_1)="MG"
label(data$pd_d3_pfind2_12m_1)="Frequency "
label(data$pd_d3_mgind3_12m_1)="MG"
label(data$pd_d3_pfind3_12m_1)="Frequency "
label(data$pd_d3_mgket1_12m_1)="MG"
label(data$pd_d3_pfket1_12m_1)="Frequency "
label(data$pd_d3_mgket2_12m_1)="MG"
label(data$pd_d3_pfket2_12m_1)="Frequency "
label(data$pd_d3_mgket3_12m_1)="MG"
label(data$pd_d3_pfket3_12m_1)="Frequency "
label(data$pd_d3_mgmel1_12m_1)="MG"
label(data$pd_d3_pfmel1_12m_1)="Frequency "
label(data$pd_d3_mgmel2_12m_1)="MG"
label(data$pd_d3_pfmel2_12m_1)="Frequency "
label(data$pd_d3_mgmel3_12m_1)="MG"
label(data$pd_d3_pfmel3_12m_1)="Frequency "
label(data$pd_d3_mgmeta1_12m_1)="MG"
label(data$pd_d3_pfmeta1_12m_1)="Frequency "
label(data$pd_d3_mgmeta2_12m_1)="MG"
label(data$pd_d3_pfmeta2_12m_1)="Frequency "
label(data$pd_d3_mgmeta3_12m_1)="MG"
label(data$pd_d3_pfmeta3_12m_1)="Frequency "
label(data$pd_d3_mgmet1_12m_1)="MG"
label(data$pd_d3_pfmet1_12m_1)="Frequency "
label(data$pd_d3_mgmet2_12m_1)="MG"
label(data$pd_d3_pfmet2_12m_1)="Frequency "
label(data$pd_d3_mgmet3_12m_1)="MG"
label(data$pd_d3_pfmet3_12m_1)="Frequency "
label(data$pd_d3_mgmor1_12m_1)="MG"
label(data$pd_d3_pfmor1_12m_1)="Frequency "
label(data$pd_d3_mgmor2_12m_1)="MG"
label(data$pd_d3_pfmor2_12m_1)="Frequency "
label(data$pd_d3_mgmor3_12m_1)="MG"
label(data$pd_d3_pfmor3_12m_1)="Frequency "
label(data$pd_d3_mgnap1_12m_1)="MG"
label(data$pd_d3_pfnap1_12m_1)="Frequency "
label(data$pd_d3_mgnap2_12m_1)="MG"
label(data$pd_d3_pfnap2_12m_1)="Frequency "
label(data$pd_d3_mgnap3_12m_1)="MG"
label(data$pd_d3_pfnap3_12m_1)="Frequency "
label(data$pd_d3_mgnor1_12m_1)="MG"
label(data$pd_d3_pfnor1_12m_1)="Frequency "
label(data$pd_d3_mgnor2_12m_1)="MG"
label(data$pd_d3_pfnor2_12m_1)="Frequency "
label(data$pd_d3_mgnor3_12m_1)="MG"
label(data$pd_d3_pfnor3_12m_1)="Frequency "
label(data$pd_d3_mgoxy1_12m_1)="MG"
label(data$pd_d3_pfoxy1_12m_1)="Frequency "
label(data$pd_d3_mgoxy2_12m_1)="MG"
label(data$pd_d3_pfoxy2_12m_1)="Frequency "
label(data$pd_d3_mgoxy3_12m_1)="MG"
label(data$pd_d3_pfoxy3_12m_1)="Frequency "
label(data$pd_d3_mgparac1_12m_1)="MG"
label(data$pd_d3_pfparac1_12m_1)="Frequency "
label(data$pd_d3_mgparac2_12m_1)="MG"
label(data$pd_d3_pfparac2_12m_1)="Frequency "
label(data$pd_d3_mgparac3_12m_1)="MG"
label(data$pd_d3_pfparac3_12m_1)="Frequency "
label(data$pd_d3_mgphe1_12m_1)="MG"
label(data$pd_d3_pfphe1_12m_1)="Frequency "
label(data$pd_d3_mgphe2_12m_1)="MG"
label(data$pd_d3_pfphe2_12m_1)="Frequency "
label(data$pd_d3_mgphe3_12m_1)="MG"
label(data$pd_d3_pfphe3_12m_1)="Frequency "
label(data$pd_d3_mgpreg1_12m_1)="MG"
label(data$pd_d3_pfpreg1_12m_1)="Frequency "
label(data$pd_d3_mgpreg2_12m_1)="MG"
label(data$pd_d3_pfpreg2_12m_1)="Frequency "
label(data$pd_d3_mgpreg3_12m_1)="MG"
label(data$pd_d3_pfpreg3_12m_1)="Frequency "
label(data$pd_d3_mgpir1_12m_1)="MG"
label(data$pd_d3_pfpir1_12m_1)="Frequency "
label(data$pd_d3_mgpir2_12m_1)="MG"
label(data$pd_d3_pfpir2_12m_1)="Frequency "
label(data$pd_d3_mgpir3_12m_1)="MG"
label(data$pd_d3_pfpir3_12m_1)="Frequency "
label(data$pd_d3_mgtap1_12m_1)="MG"
label(data$pd_d3_pftap1_12m_1)="Frequency "
label(data$pd_d3_mgtap2_12m_1)="MG"
label(data$pd_d3_pftap2_12m_1)="Frequency "
label(data$pd_d3_mgtap3_12m_1)="MG"
label(data$pd_d3_pftap3_12m_1)="Frequency "
label(data$pd_d3_mgtra1_12m_1)="MG"
label(data$pd_d3_pftra1_12m_1)="Frequency "
label(data$pd_d3_mgtra2_12m_1)="MG"
label(data$pd_d3_pftra2_12m_1)="Frequency "
label(data$pd_d3_mgtra3_12m_1)="MG"
label(data$pd_d3_pftra3_12m_1)="Frequency "
label(data$pd_d3_nameoth1_12m_1)="Name"
label(data$pd_d3_mgoth1_12m_1)="MG"
label(data$pd_d3_pfoth1_12m_1)="Frequency"
label(data$pd_d3_nameoth2_12m_1)="Name"
label(data$pd_d3_mgoth2_12m_1)="MG"
label(data$pd_d3_pfoth2_12m_1)="Frequency"
label(data$pd_d3_nameoth3_12m_1)="Name"
label(data$pd_d3_mgoth3_12m_1)="MG"
label(data$pd_d3_pfoth3_12m_1)="Frequency"
label(data$pd_d4_9_12m_1)="HOURS 09.00"
label(data$pd_d4_14_12m_1)="HOURS 14.00"
label(data$pd_d4_20_12m_1)="HOURS 20.00"
label(data$pd_d4_mgacec1_12m_1)="MG"
label(data$pd_d4_pfacec1_12m_1)="Frequency "
label(data$pd_d4_mgacec2_12m_1)="MG"
label(data$pd_d4_pfacec2_12m_1)="Frequency "
label(data$pd_d4_mgacec3_12m_1)="MG"
label(data$pd_d4_pfacec3_12m_1)="Frequency "
label(data$pd_d4_mgacem1_12m_1)="MG"
label(data$pd_d4_pfacem1_12m_1)="Frequency "
label(data$pd_d4_mgacem2_12m_1)="MG"
label(data$pd_d4_pfacem2_12m_1)="Frequency "
label(data$pd_d4_mgacem3_12m_1)="MG"
label(data$pd_d4_pfacem3_12m_1)="Frequency "
label(data$pd_d4_mgami1_12m_1)="MG"
label(data$pd_d4_pfami1_12m_1)="Frequency "
label(data$pd_d4_mgami2_12m_1)="MG"
label(data$pd_d4_pfami2_12m_1)="Frequency "
label(data$pd_d4_mgami3_12m_1)="MG"
label(data$pd_d4_pfami3_12m_1)="Frequency "
label(data$pd_d4_mcg_hbup1_12m_1)="MCG/H"
label(data$pd_d4_pfbup1_12m_1)="Frequency "
label(data$pd_d4_mcg_hbup2_12m_1)="MCG/H"
label(data$pd_d4_pfbup2_12m_1)="Frequency "
label(data$pd_d4_mcg_hbup3_12m_1)="MCG/H"
label(data$pd_d4_pfbup3_12m_1)="Frequency "
label(data$pd_d4_mgdex1_12m_1)="MG"
label(data$pd_d4_pfdex1_12m_1)="Frequency "
label(data$pd_d4_mgdex2_12m_1)="MG"
label(data$pd_d4_pfdex2_12m_1)="Frequency "
label(data$pd_d4_mgdex3_12m_1)="MG"
label(data$pd_d4_pfdex3_12m_1)="Frequency "
label(data$pd_d4_mgdiclo1_12m_1)="MG"
label(data$pd_d4_pfdiclo1_12m_1)="Frequency "
label(data$pd_d4_mgdiclo2_12m_1)="MG"
label(data$pd_d4_pfdiclo2_12m_1)="Frequency "
label(data$pd_d4_mgdiclo3_12m_1)="MG"
label(data$pd_d4_pfdiclo3_12m_1)="Frequency "
label(data$pd_d4_mgdul1_12m_1)="MG"
label(data$pd_d4_pfdul1_12m_1)="Frequency "
label(data$pd_d4_mgdul2_12m_1)="MG"
label(data$pd_d4_pfdul2_12m_1)="Frequency "
label(data$pd_d4_mgdul3_12m_1)="MG"
label(data$pd_d4_pfdul3_12m_1)="Frequency "
label(data$pd_d4_mcg_hfen1_12m_1)="MCG/H"
label(data$pd_d4_pffen1_12m_1)="Frequency "
label(data$pd_d4_mcg_hfen2_12m_1)="MCG/H"
label(data$pd_d4_pffen2_12m_1)="Frequency "
label(data$pd_d4_mcg_hfen3_12m_1)="MCG/H"
label(data$pd_d4_pffen3_12m_1)="Frequency "
label(data$pd_d4_mggab1_12m_1)="MG"
label(data$pd_d4_pfgab1_12m_1)="Frequency "
label(data$pd_d4_mggab2_12m_1)="MG"
label(data$pd_d4_pfgab2_12m_1)="Frequency "
label(data$pd_d4_mggab3_12m_1)="MG"
label(data$pd_d4_pfgab3_12m_1)="Frequency "
label(data$pd_d4_mghyd1_12m_1)="MG"
label(data$pd_d4_pfhyd1_12m_1)="Frequency "
label(data$pd_d4_mghyd2_12m_1)="MG"
label(data$pd_d4_pfhyd2_12m_1)="Frequency "
label(data$pd_d4_mghyd3_12m_1)="MG"
label(data$pd_d4_pfhyd3_12m_1)="Frequency "
label(data$pd_d4_mgibu1_12m_1)="MG"
label(data$pd_d4_pfibu1_12m_1)="Frequency "
label(data$pd_d4_mgibu2_12m_1)="MG"
label(data$pd_d4_pfibu2_12m_1)="Frequency "
label(data$pd_d4_mgibu3_12m_1)="MG"
label(data$pd_d4_pfibu3_12m_1)="Frequency "
label(data$pd_d4_mgind1_12m_1)="MG"
label(data$pd_d4_pfind1_12m_1)="Frequency "
label(data$pd_d4_mgind2_12m_1)="MG"
label(data$pd_d4_pfind2_12m_1)="Frequency "
label(data$pd_d4_mgind3_12m_1)="MG"
label(data$pd_d4_pfind3_12m_1)="Frequency "
label(data$pd_d4_mgket1_12m_1)="MG"
label(data$pd_d4_pfket1_12m_1)="Frequency "
label(data$pd_d4_mgket2_12m_1)="MG"
label(data$pd_d4_pfket2_12m_1)="Frequency "
label(data$pd_d4_mgket3_12m_1)="MG"
label(data$pd_d4_pfket3_12m_1)="Frequency "
label(data$pd_d4_mgmel1_12m_1)="MG"
label(data$pd_d4_pfmel1_12m_1)="Frequency "
label(data$pd_d4_mgmel2_12m_1)="MG"
label(data$pd_d4_pfmel2_12m_1)="Frequency "
label(data$pd_d4_mgmel3_12m_1)="MG"
label(data$pd_d4_pfmel3_12m_1)="Frequency "
label(data$pd_d4_mgmeta1_12m_1)="MG"
label(data$pd_d4_pfmeta1_12m_1)="Frequency "
label(data$pd_d4_mgmeta2_12m_1)="MG"
label(data$pd_d4_pfmeta2_12m_1)="Frequency "
label(data$pd_d4_mgmeta3_12m_1)="MG"
label(data$pd_d4_pfmeta3_12m_1)="Frequency "
label(data$pd_d4_mgmet1_12m_1)="MG"
label(data$pd_d4_pfmet1_12m_1)="Frequency "
label(data$pd_d4_mgmet2_12m_1)="MG"
label(data$pd_d4_pfmet2_12m_1)="Frequency "
label(data$pd_d4_mgmet3_12m_1)="MG"
label(data$pd_d4_pfmet3_12m_1)="Frequency "
label(data$pd_d4_mgmor1_12m_1)="MG"
label(data$pd_d4_pfmor1_12m_1)="Frequency "
label(data$pd_d4_mgmor2_12m_1)="MG"
label(data$pd_d4_pfmor2_12m_1)="Frequency "
label(data$pd_d4_mgmor3_12m_1)="MG"
label(data$pd_d4_pfmor3_12m_1)="Frequency "
label(data$pd_d4_mgnap1_12m_1)="MG"
label(data$pd_d4_pfnap1_12m_1)="Frequency "
label(data$pd_d4_mgnap2_12m_1)="MG"
label(data$pd_d4_pfnap2_12m_1)="Frequency "
label(data$pd_d4_mgnap3_12m_1)="MG"
label(data$pd_d4_pfnap3_12m_1)="Frequency "
label(data$pd_d4_mgnor1_12m_1)="MG"
label(data$pd_d4_pfnor1_12m_1)="Frequency "
label(data$pd_d4_mgnor2_12m_1)="MG"
label(data$pd_d4_pfnor2_12m_1)="Frequency "
label(data$pd_d4_mgnor3_12m_1)="MG"
label(data$pd_d4_pfnor3_12m_1)="Frequency "
label(data$pd_d4_mgoxy1_12m_1)="MG"
label(data$pd_d4_pfoxy1_12m_1)="Frequency "
label(data$pd_d4_mgoxy2_12m_1)="MG"
label(data$pd_d4_pfoxy2_12m_1)="Frequency "
label(data$pd_d4_mgoxy3_12m_1)="MG"
label(data$pd_d4_pfoxy3_12m_1)="Frequency "
label(data$pd_d4_mgparac1_12m_1)="MG"
label(data$pd_d4_pfparac1_12m_1)="Frequency "
label(data$pd_d4_mgparac2_12m_1)="MG"
label(data$pd_d4_pfparac2_12m_1)="Frequency "
label(data$pd_d4_mgparac3_12m_1)="MG"
label(data$pd_d4_pfparac3_12m_1)="Frequency "
label(data$pd_d4_mgphe1_12m_1)="MG"
label(data$pd_d4_pfphe1_12m_1)="Frequency "
label(data$pd_d4_mgphe2_12m_1)="MG"
label(data$pd_d4_pfphe2_12m_1)="Frequency "
label(data$pd_d4_mgphe3_12m_1)="MG"
label(data$pd_d4_pfphe3_12m_1)="Frequency "
label(data$pd_d4_mgpreg1_12m_1)="MG"
label(data$pd_d4_pfpreg1_12m_1)="Frequency "
label(data$pd_d4_mgpreg2_12m_1)="MG"
label(data$pd_d4_pfpreg2_12m_1)="Frequency "
label(data$pd_d4_mgpreg3_12m_1)="MG"
label(data$pd_d4_pfpreg3_12m_1)="Frequency "
label(data$pd_d4_mgpir1_12m_1)="MG"
label(data$pd_d4_pfpir1_12m_1)="Frequency "
label(data$pd_d4_mgpir2_12m_1)="MG"
label(data$pd_d4_pfpir2_12m_1)="Frequency "
label(data$pd_d4_mgpir3_12m_1)="MG"
label(data$pd_d4_pfpir3_12m_1)="Frequency "
label(data$pd_d4_mgtap1_12m_1)="MG"
label(data$pd_d4_pftap1_12m_1)="Frequency "
label(data$pd_d4_mgtap2_12m_1)="MG"
label(data$pd_d4_pftap2_12m_1)="Frequency "
label(data$pd_d4_mgtap3_12m_1)="MG"
label(data$pd_d4_pftap3_12m_1)="Frequency "
label(data$pd_d4_mgtra1_12m_1)="MG"
label(data$pd_d4_pftra1_12m_1)="Frequency "
label(data$pd_d4_mgtra2_12m_1)="MG"
label(data$pd_d4_pftra2_12m_1)="Frequency "
label(data$pd_d4_mgtra3_12m_1)="MG"
label(data$pd_d4_pftra3_12m_1)="Frequency "
label(data$pd_d4_nameoth1_12m_1)="Name"
label(data$pd_d4_mgoth1_12m_1)="MG"
label(data$pd_d4_pfoth1_12m_1)="Frequency"
label(data$pd_d4_nameoth2_12m_1)="Name"
label(data$pd_d4_mgoth2_12m_1)="MG"
label(data$pd_d4_pfoth2_12m_1)="Frequency"
label(data$pd_d4_nameoth3_12m_1)="Name"
label(data$pd_d4_mgoth3_12m_1)="MG"
label(data$pd_d4_pfoth3_12m_1)="Frequency"
label(data$pd_d5_9_12m_1)="HOURS 09.00"
label(data$pd_d5_14_12m_1)="HOURS 14.00"
label(data$pd_d5_20_12m_1)="HOURS 20.00"
label(data$pd_d5_mgacec1_12m_1)="MG"
label(data$pd_d5_pfacec1_12m_1)="Frequency "
label(data$pd_d5_mgacec2_12m_1)="MG"
label(data$pd_d5_pfacec2_12m_1)="Frequency "
label(data$pd_d5_mgacec3_12m_1)="MG"
label(data$pd_d5_pfacec3_12m_1)="Frequency "
label(data$pd_d5_mgacem1_12m_1)="MG"
label(data$pd_d5_pfacem1_12m_1)="Frequency "
label(data$pd_d5_mgacem2_12m_1)="MG"
label(data$pd_d5_pfacem2_12m_1)="Frequency "
label(data$pd_d5_mgacem3_12m_1)="MG"
label(data$pd_d5_pfacem3_12m_1)="Frequency "
label(data$pd_d5_mgami1_12m_1)="MG"
label(data$pd_d5_pfami1_12m_1)="Frequency "
label(data$pd_d5_mgami2_12m_1)="MG"
label(data$pd_d5_pfami2_12m_1)="Frequency "
label(data$pd_d5_mgami3_12m_1)="MG"
label(data$pd_d5_pfami3_12m_1)="Frequency "
label(data$pd_d5_mcg_hbup1_12m_1)="MCG/H"
label(data$pd_d5_pfbup1_12m_1)="Frequency "
label(data$pd_d5_mcg_hbup2_12m_1)="MCG/H"
label(data$pd_d5_pfbup2_12m_1)="Frequency "
label(data$pd_d5_mcg_hbup3_12m_1)="MCG/H"
label(data$pd_d5_pfbup3_12m_1)="Frequency "
label(data$pd_d5_mgdex1_12m_1)="MG"
label(data$pd_d5_pfdex1_12m_1)="Frequency "
label(data$pd_d5_mgdex2_12m_1)="MG"
label(data$pd_d5_pfdex2_12m_1)="Frequency "
label(data$pd_d5_mgdex3_12m_1)="MG"
label(data$pd_d5_pfdex3_12m_1)="Frequency "
label(data$pd_d5_mgdiclo1_12m_1)="MG"
label(data$pd_d5_pfdiclo1_12m_1)="Frequency "
label(data$pd_d5_mgdiclo2_12m_1)="MG"
label(data$pd_d5_pfdiclo2_12m_1)="Frequency "
label(data$pd_d5_mgdiclo3_12m_1)="MG"
label(data$pd_d5_pfdiclo3_12m_1)="Frequency "
label(data$pd_d5_mgdul1_12m_1)="MG"
label(data$pd_d5_pfdul1_12m_1)="Frequency "
label(data$pd_d5_mgdul2_12m_1)="MG"
label(data$pd_d5_pfdul2_12m_1)="Frequency "
label(data$pd_d5_mgdul3_12m_1)="MG"
label(data$pd_d5_pfdul3_12m_1)="Frequency "
label(data$pd_d5_mcg_hfen1_12m_1)="MCG/H"
label(data$pd_d5_pffen1_12m_1)="Frequency "
label(data$pd_d5_mcg_hfen2_12m_1)="MCG/H"
label(data$pd_d5_pffen2_12m_1)="Frequency "
label(data$pd_d5_mcg_hfen3_12m_1)="MCG/H"
label(data$pd_d5_pffen3_12m_1)="Frequency "
label(data$pd_d5_mggab1_12m_1)="MG"
label(data$pd_d5_pfgab1_12m_1)="Frequency "
label(data$pd_d5_mggab2_12m_1)="MG"
label(data$pd_d5_pfgab2_12m_1)="Frequency "
label(data$pd_d5_mggab3_12m_1)="MG"
label(data$pd_d5_pfgab3_12m_1)="Frequency "
label(data$pd_d5_mghyd1_12m_1)="MG"
label(data$pd_d5_pfhyd1_12m_1)="Frequency "
label(data$pd_d5_mghyd2_12m_1)="MG"
label(data$pd_d5_pfhyd2_12m_1)="Frequency "
label(data$pd_d5_mghyd3_12m_1)="MG"
label(data$pd_d5_pfhyd3_12m_1)="Frequency "
label(data$pd_d5_mgibu1_12m_1)="MG"
label(data$pd_d5_pfibu1_12m_1)="Frequency "
label(data$pd_d5_mgibu2_12m_1)="MG"
label(data$pd_d5_pfibu2_12m_1)="Frequency "
label(data$pd_d5_mgibu3_12m_1)="MG"
label(data$pd_d5_pfibu3_12m_1)="Frequency "
label(data$pd_d5_mgind1_12m_1)="MG"
label(data$pd_d5_pfind1_12m_1)="Frequency "
label(data$pd_d5_mgind2_12m_1)="MG"
label(data$pd_d5_pfind2_12m_1)="Frequency "
label(data$pd_d5_mgind3_12m_1)="MG"
label(data$pd_d5_pfind3_12m_1)="Frequency "
label(data$pd_d5_mgket1_12m_1)="MG"
label(data$pd_d5_pfket1_12m_1)="Frequency "
label(data$pd_d5_mgket2_12m_1)="MG"
label(data$pd_d5_pfket2_12m_1)="Frequency "
label(data$pd_d5_mgket3_12m_1)="MG"
label(data$pd_d5_pfket3_12m_1)="Frequency "
label(data$pd_d5_mgmel1_12m_1)="MG"
label(data$pd_d5_pfmel1_12m_1)="Frequency "
label(data$pd_d5_mgmel2_12m_1)="MG"
label(data$pd_d5_pfmel2_12m_1)="Frequency "
label(data$pd_d5_mgmel3_12m_1)="MG"
label(data$pd_d5_pfmel3_12m_1)="Frequency "
label(data$pd_d5_mgmeta1_12m_1)="MG"
label(data$pd_d5_pfmeta1_12m_1)="Frequency "
label(data$pd_d5_mgmeta2_12m_1)="MG"
label(data$pd_d5_pfmeta2_12m_1)="Frequency "
label(data$pd_d5_mgmeta3_12m_1)="MG"
label(data$pd_d5_pfmeta3_12m_1)="Frequency "
label(data$pd_d5_mgmet1_12m_1)="MG"
label(data$pd_d5_pfmet1_12m_1)="Frequency "
label(data$pd_d5_mgmet2_12m_1)="MG"
label(data$pd_d5_pfmet2_12m_1)="Frequency "
label(data$pd_d5_mgmet3_12m_1)="MG"
label(data$pd_d5_pfmet3_12m_1)="Frequency "
label(data$pd_d5_mgmor1_12m_1)="MG"
label(data$pd_d5_pfmor1_12m_1)="Frequency "
label(data$pd_d5_mgmor2_12m_1)="MG"
label(data$pd_d5_pfmor2_12m_1)="Frequency "
label(data$pd_d5_mgmor3_12m_1)="MG"
label(data$pd_d5_pfmor3_12m_1)="Frequency "
label(data$pd_d5_mgnap1_12m_1)="MG"
label(data$pd_d5_pfnap1_12m_1)="Frequency "
label(data$pd_d5_mgnap2_12m_1)="MG"
label(data$pd_d5_pfnap2_12m_1)="Frequency "
label(data$pd_d5_mgnap3_12m_1)="MG"
label(data$pd_d5_pfnap3_12m_1)="Frequency "
label(data$pd_d5_mgnor1_12m_1)="MG"
label(data$pd_d5_pfnor1_12m_1)="Frequency "
label(data$pd_d5_mgnor2_12m_1)="MG"
label(data$pd_d5_pfnor2_12m_1)="Frequency "
label(data$pd_d5_mgnor3_12m_1)="MG"
label(data$pd_d5_pfnor3_12m_1)="Frequency "
label(data$pd_d5_mgoxy1_12m_1)="MG"
label(data$pd_d5_pfoxy1_12m_1)="Frequency "
label(data$pd_d5_mgoxy2_12m_1)="MG"
label(data$pd_d5_pfoxy2_12m_1)="Frequency "
label(data$pd_d5_mgoxy3_12m_1)="MG"
label(data$pd_d5_pfoxy3_12m_1)="Frequency "
label(data$pd_d5_mgparac1_12m_1)="MG"
label(data$pd_d5_pfparac1_12m_1)="Frequency "
label(data$pd_d5_mgparac2_12m_1)="MG"
label(data$pd_d5_pfparac2_12m_1)="Frequency "
label(data$pd_d5_mgparac3_12m_1)="MG"
label(data$pd_d5_pfparac3_12m_1)="Frequency "
label(data$pd_d5_mgphe1_12m_1)="MG"
label(data$pd_d5_pfphe1_12m_1)="Frequency "
label(data$pd_d5_mgphe2_12m_1)="MG"
label(data$pd_d5_pfphe2_12m_1)="Frequency "
label(data$pd_d5_mgphe3_12m_1)="MG"
label(data$pd_d5_pfphe3_12m_1)="Frequency "
label(data$pd_d5_mgpreg1_12m_1)="MG"
label(data$pd_d5_pfpreg1_12m_1)="Frequency "
label(data$pd_d5_mgpreg2_12m_1)="MG"
label(data$pd_d5_pfpreg2_12m_1)="Frequency "
label(data$pd_d5_mgpreg3_12m_1)="MG"
label(data$pd_d5_pfpreg3_12m_1)="Frequency "
label(data$pd_d5_mgpir1_12m_1)="MG"
label(data$pd_d5_pfpir1_12m_1)="Frequency "
label(data$pd_d5_mgpir2_12m_1)="MG"
label(data$pd_d5_pfpir2_12m_1)="Frequency "
label(data$pd_d5_mgpir3_12m_1)="MG"
label(data$pd_d5_pfpir3_12m_1)="Frequency "
label(data$pd_d5_mgtap1_12m_1)="MG"
label(data$pd_d5_pftap1_12m_1)="Frequency "
label(data$pd_d5_mgtap2_12m_1)="MG"
label(data$pd_d5_pftap2_12m_1)="Frequency "
label(data$pd_d5_mgtap3_12m_1)="MG"
label(data$pd_d5_pftap3_12m_1)="Frequency "
label(data$pd_d5_mgtra1_12m_1)="MG"
label(data$pd_d5_pftra1_12m_1)="Frequency "
label(data$pd_d5_mgtra2_12m_1)="MG"
label(data$pd_d5_pftra2_12m_1)="Frequency "
label(data$pd_d5_mgtra3_12m_1)="MG"
label(data$pd_d5_pftra3_12m_1)="Frequency "
label(data$pd_d5_nameoth1_12m_1)="Name"
label(data$pd_d5_mgoth1_12m_1)="MG"
label(data$pd_d5_pfoth1_12m_1)="Frequency"
label(data$pd_d5_nameoth2_12m_1)="Name"
label(data$pd_d5_mgoth2_12m_1)="MG"
label(data$pd_d5_pfoth2_12m_1)="Frequency"
label(data$pd_d5_nameoth3_12m_1)="Name"
label(data$pd_d5_mgoth3_12m_1)="MG"
label(data$pd_d5_pfoth3_12m_1)="Frequency"
label(data$months_follow_up_pain_diary_15e6_complete)="Complete?"
label(data$gelstix_12m_advev1_1)="ADVERSE EVENTS"
label(data$gelstix_12m_advev1_starh_1)="START TIME"
label(data$gelstix_12m_advev1_stop_1)="STOP TIME"
label(data$gelstix_12m_advevdesc1_1)="ADVERSE EVENT"
label(data$gelstix_12m_advev1_inten_1)="MAXIMUM INTENSITY"
label(data$gelstix_12m_advev1_actio_1)="ACTION TAKEN"
label(data$gelstix_12m_advev1_relat_1)="RELATIONSHIP TO INVESTIGATIONAL PRODUCT"
label(data$gelstix_12m_advev1_outc_1)="SUBJECT OUTCOME"
label(data$gelstix_12m_advev1_sae_1)="SAE"
label(data$gelstix_12m_advev2_starth_1)="START TIME"
label(data$gelstix_12m_advev2_stop_1)="STOP TIME"
label(data$gelstix_12m_advevdesc2_1)="ADVERSE EVENT"
label(data$gelstix_12m_advev2_inten_1)="MAXIMUM INTENSITY"
label(data$gelstix_12m_advev2_actio_1)="ACTION TAKEN"
label(data$gelstix_12m_advev2_relat_1)="RELATIONSHIP TO INVESTIGATIONAL PRODUCT"
label(data$gelstix_12m_advev2_outc_1)="SUBJECT OUTCOME"
label(data$gelstix_12m_advev2_sae_1)="SAE"
label(data$gelstix_12m_advev3_starh_1)="START TIME"
label(data$gelstix_12m_advev3_stop_1)="STOP TIME"
label(data$gelstix_12m_advevdesc3_1)="ADVERSE EVENT"
label(data$gelstix_12m_advev3_inten_1)="MAXIMUM INTENSITY"
label(data$gelstix_12m_advev3_actio_1)="ACTION TAKEN"
label(data$gelstix_12m_advev3_relat_1)="RELATIONSHIP TO INVESTIGATIONAL PRODUCT"
label(data$gelstix_12m_advev3_outc_1)="SUBJECT OUTCOME"
label(data$gelstix_12m_advev3_sae_1)="SAE"
label(data$months_adverse_event_2b662c_complete)="Complete?"
label(data$pd_notdone_quest_12m_1)="NOT DONE"
label(data$eq1_12m_1)="MOBILITY"
label(data$eq2_12m_1)="SELF-CARE"
label(data$eq3_12m_1)="USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"
label(data$eq4_12m_1)="PAIN / DISCOMFORT"
label(data$eq5_12m_1)="ANXIETY / DEPRESSION"
label(data$eq6_12m_1)="We would like to know how good or bad your health is TODAY."
label(data$o1_12m_1)="Pain intensity"
label(data$o2_12m_1)="Personal care (washing, dressing etc)"
label(data$o3_12m_1)="Lifting"
label(data$o4_12m_1)="Walking"
label(data$o5_12m_1)="Sitting"
label(data$o6_12m_1)="Standing"
label(data$o7_12m_1)="Sleeping"
label(data$o8_12m_1)="Sex life (if applicable)"
label(data$o9_12m_1)="Social life"
label(data$o10_12m_1)="Travelling"
label(data$pgic_12m_1)="Since the start of the study, my overall status is:"
label(data$crossover_12m_1)="Crossover"
label(data$quest_cecit_pz_12m_1)="QUESTIONARY OF THE EFFICACY OF BLINDING   PATIENT"
label(data$quest_cecit_med_12m_1)="QUESTIONARY OF THE EFFICACY OF BLINDING   MEDICO"
label(data$plac_gelstix_12m)="Treatment"
label(data$months_questionnaires_c93271_complete)="Complete?"
label(data$mri_date_12m_1)="MRI date"
label(data$mri_l1_pf_12m_1)="PFIRRMANN"
label(data$mri_l1_heigh_12m_1)="DISC HEIGH (mm)"
label(data$mri_l1_hiz_12m_1)="HIZ"
label(data$mri_l1_modic_12m_1)="MODIC SIGNS"
label(data$mri_l1_schmorl_12m_1)="SCHMORL HERNIA"
label(data$mri_l2_pf_12m_1)="PFIRRMANN"
label(data$mri_l2_heigh_12m_1)="DISC HEIGH (mm)"
label(data$mri_l2_hiz_12m_1)="HIZ"
label(data$mri_l2_modic_12m_1)="MODIC SIGNS"
label(data$mri_l2_schmorl_12m_1)="SCHMORL HERNIA"
label(data$mri_l3_pf_12m_1)="PFIRRMANN"
label(data$mri_l3_heigh_12m_1)="DISC HEIGH (mm)"
label(data$mri_l3_hiz_12m_1)="HIZ"
label(data$mri_l3_modic_12m_1)="MODIC SIGNS"
label(data$mri_l3_schmorl_12m_1)="SCHMORL HERNIA"
label(data$mri_l4_pf_12m_1)="PFIRRMANN"
label(data$mri_l4_heigh_12m_1)="DISC HEIGH (mm)"
label(data$mri_l4_hiz_12m_1)="HIZ"
label(data$mri_l4_modic_12m_1)="MODIC SIGNS"
label(data$mri_l4_schmorl_12m_1)="SCHMORL HERNIA"
label(data$mri_l5_pf_12m_1)="PFIRRMANN"
label(data$mri_l5_heigh_12m_1)="DISC HEIGH (mm)"
label(data$mri_l5_hiz_12m_1)="HIZ"
label(data$mri_l5_modic_12m_1)="MODIC SIGNS"
label(data$mri_l5_schmorl_12m_1)="SCHMORL HERNIA"
label(data$months_screening_rmi_complete)="Complete?"
label(data$endt_date_1)="DATE OF EXAMINATION"
label(data$endt_protocol_1)="DID THE SUBJECT COMPLETE THE PROTOCOL?"
label(data$endt_reason_1)="REASON"
label(data$endt_other_reason_1)="OTHER - REASON"
label(data$end_date_signature_1)="DATE SIGNATURE"
label(data$endt_signature_1)="SIGNATURE"
label(data$end_of_trial_form_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$my_first_instrument_complete.factor = factor(data$my_first_instrument_complete,levels=c("0","1","2"))
data$i1.factor = factor(data$i1,levels=c("1","0"))
data$i2.factor = factor(data$i2,levels=c("1","0"))
data$i3.factor = factor(data$i3,levels=c("1","0"))
data$i4.factor = factor(data$i4,levels=c("1","0"))
data$i5.factor = factor(data$i5,levels=c("1","0"))
data$i6.factor = factor(data$i6,levels=c("1","0"))
data$i7.factor = factor(data$i7,levels=c("1","0"))
data$e1.factor = factor(data$e1,levels=c("1","0"))
data$e2.factor = factor(data$e2,levels=c("1","0"))
data$e3.factor = factor(data$e3,levels=c("1","0"))
data$e4.factor = factor(data$e4,levels=c("1","0"))
data$e5.factor = factor(data$e5,levels=c("1","0"))
data$e6.factor = factor(data$e6,levels=c("1","0"))
data$e7.factor = factor(data$e7,levels=c("1","0"))
data$e8.factor = factor(data$e8,levels=c("1","0"))
data$e9.factor = factor(data$e9,levels=c("1","0"))
data$e10.factor = factor(data$e10,levels=c("1","0"))
data$e11.factor = factor(data$e11,levels=c("1","0"))
data$e12.factor = factor(data$e12,levels=c("1","0"))
data$eligibility.factor = factor(data$eligibility,levels=c("1","0"))
data$study_in.factor = factor(data$study_in,levels=c("1","0"))
data$eligibility_criteria_complete.factor = factor(data$eligibility_criteria_complete,levels=c("0","1","2"))
data$ttt_sgsex_1.factor = factor(data$ttt_sgsex_1,levels=c("1","2"))
data$ttt_sj_smo_1.factor = factor(data$ttt_sj_smo_1,levels=c("1","2"))
data$sj_pt_bed_1.factor = factor(data$sj_pt_bed_1,levels=c("1","0"))
data$sj_pt_bra_1.factor = factor(data$sj_pt_bra_1,levels=c("1","0"))
data$sj_pt_chiro_1.factor = factor(data$sj_pt_chiro_1,levels=c("1","0"))
data$sj_pt_physi_1.factor = factor(data$sj_pt_physi_1,levels=c("1","0"))
data$sj_pt_tens_1.factor = factor(data$sj_pt_tens_1,levels=c("1","0"))
data$sj_pt_acu_1.factor = factor(data$sj_pt_acu_1,levels=c("1","0"))
data$sj_pt_epi_1.factor = factor(data$sj_pt_epi_1,levels=c("1","0"))
data$sj_pt_facet_1.factor = factor(data$sj_pt_facet_1,levels=c("1","0"))
data$sj_pt_stero_1.factor = factor(data$sj_pt_stero_1,levels=c("1","0"))
data$es_occuptime_1.factor = factor(data$es_occuptime_1,levels=c("1","2","3","4"))
data$es_parttime_1.factor = factor(data$es_parttime_1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"))
data$es_backpain_1.factor = factor(data$es_backpain_1,levels=c("1","0"))
data$es_legpain_1.factor = factor(data$es_legpain_1,levels=c("1","0"))
data$es_disab_1.factor = factor(data$es_disab_1,levels=c("1","0"))
data$es_sick_1.factor = factor(data$es_sick_1,levels=c("1","0"))
data$es_other_1.factor = factor(data$es_other_1,levels=c("1","0"))
data$history_complete.factor = factor(data$history_complete,levels=c("0","1","2"))
data$screening_complete.factor = factor(data$screening_complete,levels=c("0","1","2"))
data$mri_l1_pf_1.factor = factor(data$mri_l1_pf_1,levels=c("1","2","3","4","5"))
data$mri_l1_hiz_1.factor = factor(data$mri_l1_hiz_1,levels=c("1","2","3","4"))
data$mri_l1_modic_1.factor = factor(data$mri_l1_modic_1,levels=c("1","2","3"))
data$mri_l1_schmorl_1.factor = factor(data$mri_l1_schmorl_1,levels=c("1","2"))
data$mri_l2_pf_1.factor = factor(data$mri_l2_pf_1,levels=c("1","2","3","4","5"))
data$mri_l2_hiz_1.factor = factor(data$mri_l2_hiz_1,levels=c("1","2","3","4"))
data$mri_l2_modic_1.factor = factor(data$mri_l2_modic_1,levels=c("1","2","3"))
data$mri_l2_schmorl_1.factor = factor(data$mri_l2_schmorl_1,levels=c("1","2"))
data$mri_l3_pf_1.factor = factor(data$mri_l3_pf_1,levels=c("1","2","3","4","5"))
data$mri_l3_hiz_1.factor = factor(data$mri_l3_hiz_1,levels=c("1","2","3","4"))
data$mri_l3_modic_1.factor = factor(data$mri_l3_modic_1,levels=c("1","2","3"))
data$mri_l3_schmorl_1.factor = factor(data$mri_l3_schmorl_1,levels=c("1","2"))
data$mri_l4_pf_1.factor = factor(data$mri_l4_pf_1,levels=c("1","2","3","4","5"))
data$mri_l4_hiz_1.factor = factor(data$mri_l4_hiz_1,levels=c("1","2","3","4"))
data$mri_l4_modic_1.factor = factor(data$mri_l4_modic_1,levels=c("1","2","3"))
data$mri_l4_schmorl_1.factor = factor(data$mri_l4_schmorl_1,levels=c("1","2"))
data$mri_l5_pf_1.factor = factor(data$mri_l5_pf_1,levels=c("1","2","3","4","5"))
data$mri_l5_hiz_1.factor = factor(data$mri_l5_hiz_1,levels=c("1","2","3","4"))
data$mri_l5_modic_1.factor = factor(data$mri_l5_modic_1,levels=c("1","2","3"))
data$mri_l5_schmorl_1.factor = factor(data$mri_l5_schmorl_1,levels=c("1","2"))
data$screening_mri_complete.factor = factor(data$screening_mri_complete,levels=c("0","1","2"))
data$pd_d1_9_1.factor = factor(data$pd_d1_9_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_14_1.factor = factor(data$pd_d1_14_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_20_1.factor = factor(data$pd_d1_20_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec1_1.factor = factor(data$pd_d1_pfacec1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec2_1.factor = factor(data$pd_d1_pfacec2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec3_1.factor = factor(data$pd_d1_pfacec3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem1_1.factor = factor(data$pd_d1_pfacem1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem2_1.factor = factor(data$pd_d1_pfacem2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem3_1.factor = factor(data$pd_d1_pfacem3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami1_1.factor = factor(data$pd_d1_pfami1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami2_1.factor = factor(data$pd_d1_pfami2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami3_1.factor = factor(data$pd_d1_pfami3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup1_1.factor = factor(data$pd_d1_pfbup1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup2_1.factor = factor(data$pd_d1_pfbup2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup3_1.factor = factor(data$pd_d1_pfbup3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex1_1.factor = factor(data$pd_d1_pfdex1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex2_1.factor = factor(data$pd_d1_pfdex2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex3_1.factor = factor(data$pd_d1_pfdex3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo1_1.factor = factor(data$pd_d1_pfdiclo1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo2_1.factor = factor(data$pd_d1_pfdiclo2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo3_1.factor = factor(data$pd_d1_pfdiclo3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul1_1.factor = factor(data$pd_d1_pfdul1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul2_1.factor = factor(data$pd_d1_pfdul2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul3_1.factor = factor(data$pd_d1_pfdul3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen1_1.factor = factor(data$pd_d1_pffen1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen2_1.factor = factor(data$pd_d1_pffen2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen3_1.factor = factor(data$pd_d1_pffen3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab1_1.factor = factor(data$pd_d1_pfgab1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab2_1.factor = factor(data$pd_d1_pfgab2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab3_1.factor = factor(data$pd_d1_pfgab3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd1_1.factor = factor(data$pd_d1_pfhyd1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd2_1.factor = factor(data$pd_d1_pfhyd2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd3_1.factor = factor(data$pd_d1_pfhyd3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu1_1.factor = factor(data$pd_d1_pfibu1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu2_1.factor = factor(data$pd_d1_pfibu2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu3_1.factor = factor(data$pd_d1_pfibu3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind1_1.factor = factor(data$pd_d1_pfind1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind2_1.factor = factor(data$pd_d1_pfind2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind3_1.factor = factor(data$pd_d1_pfind3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket1_1.factor = factor(data$pd_d1_pfket1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket2_1.factor = factor(data$pd_d1_pfket2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket3_1.factor = factor(data$pd_d1_pfket3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel1_1.factor = factor(data$pd_d1_pfmel1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel2_1.factor = factor(data$pd_d1_pfmel2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel3_1.factor = factor(data$pd_d1_pfmel3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta1_1.factor = factor(data$pd_d1_pfmeta1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta2_1.factor = factor(data$pd_d1_pfmeta2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta3_1.factor = factor(data$pd_d1_pfmeta3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet1_1.factor = factor(data$pd_d1_pfmet1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet2_1.factor = factor(data$pd_d1_pfmet2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet3_1.factor = factor(data$pd_d1_pfmet3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor1_1.factor = factor(data$pd_d1_pfmor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor2_1.factor = factor(data$pd_d1_pfmor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor3_1.factor = factor(data$pd_d1_pfmor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap1_1.factor = factor(data$pd_d1_pfnap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap2_1.factor = factor(data$pd_d1_pfnap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap3_1.factor = factor(data$pd_d1_pfnap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor1_1.factor = factor(data$pd_d1_pfnor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor2_1.factor = factor(data$pd_d1_pfnor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor3_1.factor = factor(data$pd_d1_pfnor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy1_1.factor = factor(data$pd_d1_pfoxy1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy2_1.factor = factor(data$pd_d1_pfoxy2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy3_1.factor = factor(data$pd_d1_pfoxy3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac1_1.factor = factor(data$pd_d1_pfparac1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac2_1.factor = factor(data$pd_d1_pfparac2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac3_1.factor = factor(data$pd_d1_pfparac3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe1_1.factor = factor(data$pd_d1_pfphe1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe2_1.factor = factor(data$pd_d1_pfphe2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe3_1.factor = factor(data$pd_d1_pfphe3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg1_1.factor = factor(data$pd_d1_pfpreg1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg2_1.factor = factor(data$pd_d1_pfpreg2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg3_1.factor = factor(data$pd_d1_pfpreg3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir1_1.factor = factor(data$pd_d1_pfpir1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir2_1.factor = factor(data$pd_d1_pfpir2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir3_1.factor = factor(data$pd_d1_pfpir3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap1_1.factor = factor(data$pd_d1_pftap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap2_1.factor = factor(data$pd_d1_pftap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap3_1.factor = factor(data$pd_d1_pftap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra1_1.factor = factor(data$pd_d1_pftra1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra2_1.factor = factor(data$pd_d1_pftra2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra3_1.factor = factor(data$pd_d1_pftra3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_9_1.factor = factor(data$pd_d2_9_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_14_1.factor = factor(data$pd_d2_14_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_20_1.factor = factor(data$pd_d2_20_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec1_1.factor = factor(data$pd_d2_pfacec1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec2_1.factor = factor(data$pd_d2_pfacec2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec3_1.factor = factor(data$pd_d2_pfacec3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem1_1.factor = factor(data$pd_d2_pfacem1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem2_1.factor = factor(data$pd_d2_pfacem2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem3_1.factor = factor(data$pd_d2_pfacem3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami1_1.factor = factor(data$pd_d2_pfami1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami2_1.factor = factor(data$pd_d2_pfami2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami3_1.factor = factor(data$pd_d2_pfami3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup1_1.factor = factor(data$pd_d2_pfbup1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup2_1.factor = factor(data$pd_d2_pfbup2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup3_1.factor = factor(data$pd_d2_pfbup3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex1_1.factor = factor(data$pd_d2_pfdex1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex2_1.factor = factor(data$pd_d2_pfdex2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex3_1.factor = factor(data$pd_d2_pfdex3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo1_1.factor = factor(data$pd_d2_pfdiclo1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo2_1.factor = factor(data$pd_d2_pfdiclo2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo3_1.factor = factor(data$pd_d2_pfdiclo3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul1_1.factor = factor(data$pd_d2_pfdul1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul2_1.factor = factor(data$pd_d2_pfdul2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul3_1.factor = factor(data$pd_d2_pfdul3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen1_1.factor = factor(data$pd_d2_pffen1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen2_1.factor = factor(data$pd_d2_pffen2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen3_1.factor = factor(data$pd_d2_pffen3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab1_1.factor = factor(data$pd_d2_pfgab1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab2_1.factor = factor(data$pd_d2_pfgab2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab3_1.factor = factor(data$pd_d2_pfgab3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd1_1.factor = factor(data$pd_d2_pfhyd1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd2_1.factor = factor(data$pd_d2_pfhyd2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd3_1.factor = factor(data$pd_d2_pfhyd3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu1_1.factor = factor(data$pd_d2_pfibu1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu2_1.factor = factor(data$pd_d2_pfibu2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu3_1.factor = factor(data$pd_d2_pfibu3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind1_1.factor = factor(data$pd_d2_pfind1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind2_1.factor = factor(data$pd_d2_pfind2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind3_1.factor = factor(data$pd_d2_pfind3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket1_1.factor = factor(data$pd_d2_pfket1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket2_1.factor = factor(data$pd_d2_pfket2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket3_1.factor = factor(data$pd_d2_pfket3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel1_1.factor = factor(data$pd_d2_pfmel1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel2_1.factor = factor(data$pd_d2_pfmel2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel3_1.factor = factor(data$pd_d2_pfmel3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta1_1.factor = factor(data$pd_d2_pfmeta1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta2_1.factor = factor(data$pd_d2_pfmeta2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta3_1.factor = factor(data$pd_d2_pfmeta3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet1_1.factor = factor(data$pd_d2_pfmet1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet2_1.factor = factor(data$pd_d2_pfmet2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet3_1.factor = factor(data$pd_d2_pfmet3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor1_1.factor = factor(data$pd_d2_pfmor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor2_1.factor = factor(data$pd_d2_pfmor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor3_1.factor = factor(data$pd_d2_pfmor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap1_1.factor = factor(data$pd_d2_pfnap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap2_1.factor = factor(data$pd_d2_pfnap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap3_1.factor = factor(data$pd_d2_pfnap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor1_1.factor = factor(data$pd_d2_pfnor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor2_1.factor = factor(data$pd_d2_pfnor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor3_1.factor = factor(data$pd_d2_pfnor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy1_1.factor = factor(data$pd_d2_pfoxy1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy2_1.factor = factor(data$pd_d2_pfoxy2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy3_1.factor = factor(data$pd_d2_pfoxy3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac1_1.factor = factor(data$pd_d2_pfparac1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac2_1.factor = factor(data$pd_d2_pfparac2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac3_1.factor = factor(data$pd_d2_pfparac3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe1_1.factor = factor(data$pd_d2_pfphe1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe2_1.factor = factor(data$pd_d2_pfphe2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe3_1.factor = factor(data$pd_d2_pfphe3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg1_1.factor = factor(data$pd_d2_pfpreg1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg2_1.factor = factor(data$pd_d2_pfpreg2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg3_1.factor = factor(data$pd_d2_pfpreg3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir1_1.factor = factor(data$pd_d2_pfpir1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir2_1.factor = factor(data$pd_d2_pfpir2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir3_1.factor = factor(data$pd_d2_pfpir3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap1_1.factor = factor(data$pd_d2_pftap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap2_1.factor = factor(data$pd_d2_pftap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap3_1.factor = factor(data$pd_d2_pftap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra1_1.factor = factor(data$pd_d2_pftra1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra2_1.factor = factor(data$pd_d2_pftra2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra3_1.factor = factor(data$pd_d2_pftra3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_9_1.factor = factor(data$pd_d3_9_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_14_1.factor = factor(data$pd_d3_14_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_20_1.factor = factor(data$pd_d3_20_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec1_1.factor = factor(data$pd_d3_pfacec1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec2_1.factor = factor(data$pd_d3_pfacec2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec3_1.factor = factor(data$pd_d3_pfacec3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem1_1.factor = factor(data$pd_d3_pfacem1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem2_1.factor = factor(data$pd_d3_pfacem2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem3_1.factor = factor(data$pd_d3_pfacem3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami1_1.factor = factor(data$pd_d3_pfami1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami2_1.factor = factor(data$pd_d3_pfami2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami3_1.factor = factor(data$pd_d3_pfami3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup1_1.factor = factor(data$pd_d3_pfbup1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup2_1.factor = factor(data$pd_d3_pfbup2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup3_1.factor = factor(data$pd_d3_pfbup3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex1_1.factor = factor(data$pd_d3_pfdex1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex2_1.factor = factor(data$pd_d3_pfdex2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex3_1.factor = factor(data$pd_d3_pfdex3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo1_1.factor = factor(data$pd_d3_pfdiclo1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo2_1.factor = factor(data$pd_d3_pfdiclo2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo3_1.factor = factor(data$pd_d3_pfdiclo3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul1_1.factor = factor(data$pd_d3_pfdul1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul2_1.factor = factor(data$pd_d3_pfdul2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul3_1.factor = factor(data$pd_d3_pfdul3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen1_1.factor = factor(data$pd_d3_pffen1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen2_1.factor = factor(data$pd_d3_pffen2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen3_1.factor = factor(data$pd_d3_pffen3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab1_1.factor = factor(data$pd_d3_pfgab1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab2_1.factor = factor(data$pd_d3_pfgab2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab3_1.factor = factor(data$pd_d3_pfgab3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd1_1.factor = factor(data$pd_d3_pfhyd1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd2_1.factor = factor(data$pd_d3_pfhyd2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd3_1.factor = factor(data$pd_d3_pfhyd3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu1_1.factor = factor(data$pd_d3_pfibu1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu2_1.factor = factor(data$pd_d3_pfibu2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu3_1.factor = factor(data$pd_d3_pfibu3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind1_1.factor = factor(data$pd_d3_pfind1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind2_1.factor = factor(data$pd_d3_pfind2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind3_1.factor = factor(data$pd_d3_pfind3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket1_1.factor = factor(data$pd_d3_pfket1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket2_1.factor = factor(data$pd_d3_pfket2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket3_1.factor = factor(data$pd_d3_pfket3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel1_1.factor = factor(data$pd_d3_pfmel1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel2_1.factor = factor(data$pd_d3_pfmel2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel3_1.factor = factor(data$pd_d3_pfmel3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmetam1_1.factor = factor(data$pd_d3_pfmetam1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmetam2_1.factor = factor(data$pd_d3_pfmetam2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmetam3_1.factor = factor(data$pd_d3_pfmetam3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet1_1.factor = factor(data$pd_d3_pfmet1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet2_1.factor = factor(data$pd_d3_pfmet2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet3_1.factor = factor(data$pd_d3_pfmet3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor1_1.factor = factor(data$pd_d3_pfmor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor2_1.factor = factor(data$pd_d3_pfmor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor3_1.factor = factor(data$pd_d3_pfmor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap1_1.factor = factor(data$pd_d3_pfnap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap2_1.factor = factor(data$pd_d3_pfnap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap3_1.factor = factor(data$pd_d3_pfnap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor1_1.factor = factor(data$pd_d3_pfnor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor2_1.factor = factor(data$pd_d3_pfnor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor3_1.factor = factor(data$pd_d3_pfnor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy1_1.factor = factor(data$pd_d3_pfoxy1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy2_1.factor = factor(data$pd_d3_pfoxy2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy3_1.factor = factor(data$pd_d3_pfoxy3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac1_1.factor = factor(data$pd_d3_pfparac1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac2_1.factor = factor(data$pd_d3_pfparac2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac3_1.factor = factor(data$pd_d3_pfparac3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe1_1.factor = factor(data$pd_d3_pfphe1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe2_1.factor = factor(data$pd_d3_pfphe2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe3_1.factor = factor(data$pd_d3_pfphe3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg1_1.factor = factor(data$pd_d3_pfpreg1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg2_1.factor = factor(data$pd_d3_pfpreg2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg3_1.factor = factor(data$pd_d3_pfpreg3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir1_1.factor = factor(data$pd_d3_pfpir1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir2_1.factor = factor(data$pd_d3_pfpir2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir3_1.factor = factor(data$pd_d3_pfpir3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap1_1.factor = factor(data$pd_d3_pftap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap2_1.factor = factor(data$pd_d3_pftap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap3_1.factor = factor(data$pd_d3_pftap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra1_1.factor = factor(data$pd_d3_pftra1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra2_1.factor = factor(data$pd_d3_pftra2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra3_1.factor = factor(data$pd_d3_pftra3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_9_1.factor = factor(data$pd_d4_9_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_14_1.factor = factor(data$pd_d4_14_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_20_1.factor = factor(data$pd_d4_20_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec1_1.factor = factor(data$pd_d4_pfacec1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec2_1.factor = factor(data$pd_d4_pfacec2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec3_1.factor = factor(data$pd_d4_pfacec3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem1_1.factor = factor(data$pd_d4_pfacem1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem2_1.factor = factor(data$pd_d4_pfacem2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem3_1.factor = factor(data$pd_d4_pfacem3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami1_1.factor = factor(data$pd_d4_pfami1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami2_1.factor = factor(data$pd_d4_pfami2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami3_1.factor = factor(data$pd_d4_pfami3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup1_1.factor = factor(data$pd_d4_pfbup1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup2_1.factor = factor(data$pd_d4_pfbup2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup3_1.factor = factor(data$pd_d4_pfbup3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex1_1.factor = factor(data$pd_d4_pfdex1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex2_1.factor = factor(data$pd_d4_pfdex2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex3_1.factor = factor(data$pd_d4_pfdex3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo1_1.factor = factor(data$pd_d4_pfdiclo1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo2_1.factor = factor(data$pd_d4_pfdiclo2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo3_1.factor = factor(data$pd_d4_pfdiclo3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul1_1.factor = factor(data$pd_d4_pfdul1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul2_1.factor = factor(data$pd_d4_pfdul2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul3_1.factor = factor(data$pd_d4_pfdul3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen1_1.factor = factor(data$pd_d4_pffen1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen2_1.factor = factor(data$pd_d4_pffen2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen3_1.factor = factor(data$pd_d4_pffen3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab1_1.factor = factor(data$pd_d4_pfgab1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab2_1.factor = factor(data$pd_d4_pfgab2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab3_1.factor = factor(data$pd_d4_pfgab3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd1_1.factor = factor(data$pd_d4_pfhyd1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd2_1.factor = factor(data$pd_d4_pfhyd2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd3_1.factor = factor(data$pd_d4_pfhyd3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu1_1.factor = factor(data$pd_d4_pfibu1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu2_1.factor = factor(data$pd_d4_pfibu2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu3_1.factor = factor(data$pd_d4_pfibu3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind1_1.factor = factor(data$pd_d4_pfind1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind2_1.factor = factor(data$pd_d4_pfind2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind3_1.factor = factor(data$pd_d4_pfind3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket1_1.factor = factor(data$pd_d4_pfket1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket2_1.factor = factor(data$pd_d4_pfket2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket3_1.factor = factor(data$pd_d4_pfket3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel1_1.factor = factor(data$pd_d4_pfmel1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel2_1.factor = factor(data$pd_d4_pfmel2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel3_1.factor = factor(data$pd_d4_pfmel3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmetam1_1.factor = factor(data$pd_d4_pfmetam1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmetam2_1.factor = factor(data$pd_d4_pfmetam2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmetam3_1.factor = factor(data$pd_d4_pfmetam3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet1_1.factor = factor(data$pd_d4_pfmet1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet2_1.factor = factor(data$pd_d4_pfmet2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet3_1.factor = factor(data$pd_d4_pfmet3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor1_1.factor = factor(data$pd_d4_pfmor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor2_1.factor = factor(data$pd_d4_pfmor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor3_1.factor = factor(data$pd_d4_pfmor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap1_1.factor = factor(data$pd_d4_pfnap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap2_1.factor = factor(data$pd_d4_pfnap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap3_1.factor = factor(data$pd_d4_pfnap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor1_1.factor = factor(data$pd_d4_pfnor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor2_1.factor = factor(data$pd_d4_pfnor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor3_1.factor = factor(data$pd_d4_pfnor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy1_1.factor = factor(data$pd_d4_pfoxy1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy2_1.factor = factor(data$pd_d4_pfoxy2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy3_1.factor = factor(data$pd_d4_pfoxy3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac1_1.factor = factor(data$pd_d4_pfparac1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac2_1.factor = factor(data$pd_d4_pfparac2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac3_1.factor = factor(data$pd_d4_pfparac3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe1_1.factor = factor(data$pd_d4_pfphe1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe2_1.factor = factor(data$pd_d4_pfphe2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe3_1.factor = factor(data$pd_d4_pfphe3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg1_1.factor = factor(data$pd_d4_pfpreg1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg2_1.factor = factor(data$pd_d4_pfpreg2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg3_1.factor = factor(data$pd_d4_pfpreg3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir1_1.factor = factor(data$pd_d4_pfpir1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir2_1.factor = factor(data$pd_d4_pfpir2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir3_1.factor = factor(data$pd_d4_pfpir3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap1_1.factor = factor(data$pd_d4_pftap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap2_1.factor = factor(data$pd_d4_pftap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap3_1.factor = factor(data$pd_d4_pftap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra1_1.factor = factor(data$pd_d4_pftra1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra2_1.factor = factor(data$pd_d4_pftra2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra3_1.factor = factor(data$pd_d4_pftra3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_9_1.factor = factor(data$pd_d5_9_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_14_1.factor = factor(data$pd_d5_14_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_20_1.factor = factor(data$pd_d5_20_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec1_1.factor = factor(data$pd_d5_pfacec1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec2_1.factor = factor(data$pd_d5_pfacec2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec3_1.factor = factor(data$pd_d5_pfacec3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem1_1.factor = factor(data$pd_d5_pfacem1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem2_1.factor = factor(data$pd_d5_pfacem2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem3_1.factor = factor(data$pd_d5_pfacem3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami1_1.factor = factor(data$pd_d5_pfami1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami2_1.factor = factor(data$pd_d5_pfami2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami3_1.factor = factor(data$pd_d5_pfami3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup1_1.factor = factor(data$pd_d5_pfbup1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup2_1.factor = factor(data$pd_d5_pfbup2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup3_1.factor = factor(data$pd_d5_pfbup3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex1_1.factor = factor(data$pd_d5_pfdex1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex2_1.factor = factor(data$pd_d5_pfdex2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex3_1.factor = factor(data$pd_d5_pfdex3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo1_1.factor = factor(data$pd_d5_pfdiclo1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo2_1.factor = factor(data$pd_d5_pfdiclo2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo3_1.factor = factor(data$pd_d5_pfdiclo3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul1_1.factor = factor(data$pd_d5_pfdul1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul2_1.factor = factor(data$pd_d5_pfdul2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul3_1.factor = factor(data$pd_d5_pfdul3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen1_1.factor = factor(data$pd_d5_pffen1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen2_1.factor = factor(data$pd_d5_pffen2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen3_1.factor = factor(data$pd_d5_pffen3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab1_1.factor = factor(data$pd_d5_pfgab1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab2_1.factor = factor(data$pd_d5_pfgab2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab3_1.factor = factor(data$pd_d5_pfgab3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd1_1.factor = factor(data$pd_d5_pfhyd1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd2_1.factor = factor(data$pd_d5_pfhyd2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd3_1.factor = factor(data$pd_d5_pfhyd3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu1_1.factor = factor(data$pd_d5_pfibu1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu2_1.factor = factor(data$pd_d5_pfibu2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu3_1.factor = factor(data$pd_d5_pfibu3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind1_1.factor = factor(data$pd_d5_pfind1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind2_1.factor = factor(data$pd_d5_pfind2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind3_1.factor = factor(data$pd_d5_pfind3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket1_1.factor = factor(data$pd_d5_pfket1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket2_1.factor = factor(data$pd_d5_pfket2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket3_1.factor = factor(data$pd_d5_pfket3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel1_1.factor = factor(data$pd_d5_pfmel1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel2_1.factor = factor(data$pd_d5_pfmel2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel3_1.factor = factor(data$pd_d5_pfmel3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmetam1_1.factor = factor(data$pd_d5_pfmetam1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmetam2_1.factor = factor(data$pd_d5_pfmetam2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmetam3_1.factor = factor(data$pd_d5_pfmetam3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet1_1.factor = factor(data$pd_d5_pfmet1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet2_1.factor = factor(data$pd_d5_pfmet2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet3_1.factor = factor(data$pd_d5_pfmet3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor1_1.factor = factor(data$pd_d5_pfmor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor2_1.factor = factor(data$pd_d5_pfmor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor3_1.factor = factor(data$pd_d5_pfmor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap1_1.factor = factor(data$pd_d5_pfnap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap2_1.factor = factor(data$pd_d5_pfnap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap3_1.factor = factor(data$pd_d5_pfnap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor1_1.factor = factor(data$pd_d5_pfnor1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor2_1.factor = factor(data$pd_d5_pfnor2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor3_1.factor = factor(data$pd_d5_pfnor3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy1_1.factor = factor(data$pd_d5_pfoxy1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy2_1.factor = factor(data$pd_d5_pfoxy2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy3_1.factor = factor(data$pd_d5_pfoxy3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac1_1.factor = factor(data$pd_d5_pfparac1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac2_1.factor = factor(data$pd_d5_pfparac2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac3_1.factor = factor(data$pd_d5_pfparac3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe1_1.factor = factor(data$pd_d5_pfphe1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe2_1.factor = factor(data$pd_d5_pfphe2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe3_1.factor = factor(data$pd_d5_pfphe3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg1_1.factor = factor(data$pd_d5_pfpreg1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg2_1.factor = factor(data$pd_d5_pfpreg2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg3_1.factor = factor(data$pd_d5_pfpreg3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir1_1.factor = factor(data$pd_d5_pfpir1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir2_1.factor = factor(data$pd_d5_pfpir2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir3_1.factor = factor(data$pd_d5_pfpir3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap1_1.factor = factor(data$pd_d5_pftap1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap2_1.factor = factor(data$pd_d5_pftap2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap3_1.factor = factor(data$pd_d5_pftap3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra1_1.factor = factor(data$pd_d5_pftra1_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra2_1.factor = factor(data$pd_d5_pftra2_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra3_1.factor = factor(data$pd_d5_pftra3_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$screening_pain_diary_complete.factor = factor(data$screening_pain_diary_complete,levels=c("0","1","2"))
data$pc1_1.factor = factor(data$pc1_1,levels=c("0","1","2","3","4"))
data$pc2_1.factor = factor(data$pc2_1,levels=c("0","1","2","3","4"))
data$pc3_1.factor = factor(data$pc3_1,levels=c("0","1","2","3","4"))
data$pc4_1.factor = factor(data$pc4_1,levels=c("0","1","2","3","4"))
data$pc5_1.factor = factor(data$pc5_1,levels=c("0","1","2","3","4"))
data$pc6_1.factor = factor(data$pc6_1,levels=c("0","1","2","3","4"))
data$pc7_1.factor = factor(data$pc7_1,levels=c("0","1","2","3","4"))
data$pc8_1.factor = factor(data$pc8_1,levels=c("0","1","2","3","4"))
data$pc9_1.factor = factor(data$pc9_1,levels=c("0","1","2","3","4"))
data$pc10_1.factor = factor(data$pc10_1,levels=c("0","1","2","3","4"))
data$pc11_1.factor = factor(data$pc11_1,levels=c("0","1","2","3","4"))
data$pc12_1.factor = factor(data$pc12_1,levels=c("0","1","2","3","4"))
data$pc13_1.factor = factor(data$pc13_1,levels=c("0","1","2","3","4"))
data$pse1_1.factor = factor(data$pse1_1,levels=c("0","1","2","3","4","5","6"))
data$pse2_1.factor = factor(data$pse2_1,levels=c("0","1","2","3","4","5","6"))
data$pse3_1.factor = factor(data$pse3_1,levels=c("0","1","2","3","4","5","6"))
data$pse4_1.factor = factor(data$pse4_1,levels=c("0","1","2","3","4","5","6"))
data$pse5_1.factor = factor(data$pse5_1,levels=c("0","1","2","3","4","5","6"))
data$pse6_1.factor = factor(data$pse6_1,levels=c("0","1","2","3","4","5","6"))
data$pse7_1.factor = factor(data$pse7_1,levels=c("0","1","2","3","4","5","6"))
data$pse8_1.factor = factor(data$pse8_1,levels=c("0","1","2","3","4","5","6"))
data$pse9_1.factor = factor(data$pse9_1,levels=c("0","1","2","3","4","5","6"))
data$pse10_1.factor = factor(data$pse10_1,levels=c("0","1","2","3","4","5","6"))
data$h1_1.factor = factor(data$h1_1,levels=c("3","2","1","0"))
data$h2_1.factor = factor(data$h2_1,levels=c("0","1","2","3"))
data$h3_1.factor = factor(data$h3_1,levels=c("3","2","1","0"))
data$h4_1.factor = factor(data$h4_1,levels=c("0","1","2","3"))
data$h5_1.factor = factor(data$h5_1,levels=c("3","2","1","0"))
data$h6_1.factor = factor(data$h6_1,levels=c("3","2","1","0"))
data$h7_1.factor = factor(data$h7_1,levels=c("0","1","2","3"))
data$h8_1.factor = factor(data$h8_1,levels=c("3","2","1","0"))
data$h9_1.factor = factor(data$h9_1,levels=c("0","1","2","3"))
data$h10_1.factor = factor(data$h10_1,levels=c("3","2","1","0"))
data$h11_1.factor = factor(data$h11_1,levels=c("3","2","1","0"))
data$h12_1.factor = factor(data$h12_1,levels=c("0","1","2","3"))
data$h13_1.factor = factor(data$h13_1,levels=c("3","2","1","0"))
data$h14_1.factor = factor(data$h14_1,levels=c("0","1","2","3"))
data$o1_1.factor = factor(data$o1_1,levels=c("0","1","2","3","4","5"))
data$o2_1.factor = factor(data$o2_1,levels=c("0","1","2","3","4","5"))
data$o3_1.factor = factor(data$o3_1,levels=c("0","1","2","3","4","5"))
data$o4_1.factor = factor(data$o4_1,levels=c("0","1","2","3","4","5"))
data$o5_1.factor = factor(data$o5_1,levels=c("0","1","2","3","4","5"))
data$o6_1.factor = factor(data$o6_1,levels=c("0","1","2","3","4","5"))
data$o7_1.factor = factor(data$o7_1,levels=c("0","1","2","3","4","5"))
data$o8_1.factor = factor(data$o8_1,levels=c("0","1","2","3","4","5"))
data$o9_1.factor = factor(data$o9_1,levels=c("0","1","2","3","4","5"))
data$o10_1.factor = factor(data$o10_1,levels=c("0","1","2","3","4","5"))
data$eq1_1.factor = factor(data$eq1_1,levels=c("0","1","2","3","4"))
data$eq2_1.factor = factor(data$eq2_1,levels=c("0","1","2","3","4"))
data$eq3_1.factor = factor(data$eq3_1,levels=c("0","1","2","3","4"))
data$eq4_1.factor = factor(data$eq4_1,levels=c("0","1","2","3","4"))
data$eq5_1.factor = factor(data$eq5_1,levels=c("0","1","2","3","4"))
data$eq6_1.factor = factor(data$eq6_1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"))
data$feari1_1.factor = factor(data$feari1_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$feari2_1.factor = factor(data$feari2_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$feari3_1.factor = factor(data$feari3_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$feari4_1.factor = factor(data$feari4_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$feari5_1.factor = factor(data$feari5_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$feari6_1.factor = factor(data$feari6_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$feari7_1.factor = factor(data$feari7_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$feari8_1.factor = factor(data$feari8_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$re_feari1_1.factor = factor(data$re_feari1_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$re_feari2_1.factor = factor(data$re_feari2_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$re_feari3_1.factor = factor(data$re_feari3_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$re_feari4_1.factor = factor(data$re_feari4_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$re_feari5_1.factor = factor(data$re_feari5_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$re_feari6_1.factor = factor(data$re_feari6_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$re_feari7_1.factor = factor(data$re_feari7_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$re_feari8_1.factor = factor(data$re_feari8_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$re_feari9_1.factor = factor(data$re_feari9_1,levels=c("1","2","3"))
data$screening_questionnaires_c5b270_complete.factor = factor(data$screening_questionnaires_c5b270_complete,levels=c("0","1","2"))
data$disco_yn_l12.factor = factor(data$disco_yn_l12,levels=c("1","0"))
data$disco_posneg_l12.factor = factor(data$disco_posneg_l12,levels=c("1","2"))
data$ppd_l1_adams_1.factor = factor(data$ppd_l1_adams_1,levels=c("1","2","3","4","5"))
data$ppd_l1_nrs_1.factor = factor(data$ppd_l1_nrs_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$disco_yn_l23.factor = factor(data$disco_yn_l23,levels=c("1","0"))
data$disco_posneg_l23.factor = factor(data$disco_posneg_l23,levels=c("1","2"))
data$ppd_l2_adams_1.factor = factor(data$ppd_l2_adams_1,levels=c("1","2","3","4","5"))
data$ppd_l2_nrs_1.factor = factor(data$ppd_l2_nrs_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$disco_yn_l34.factor = factor(data$disco_yn_l34,levels=c("1","0"))
data$disco_posneg_l34.factor = factor(data$disco_posneg_l34,levels=c("1","2"))
data$ppd_l3_adams_1.factor = factor(data$ppd_l3_adams_1,levels=c("1","2","3","4","5"))
data$ppd_l3_nrs_1.factor = factor(data$ppd_l3_nrs_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$disco_yn_l45.factor = factor(data$disco_yn_l45,levels=c("1","0"))
data$disco_posneg_l45.factor = factor(data$disco_posneg_l45,levels=c("1","2"))
data$ppd_l4_adams_1.factor = factor(data$ppd_l4_adams_1,levels=c("1","2","3","4","5"))
data$ppd_l4_nrs_1.factor = factor(data$ppd_l4_nrs_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$disco_yn_l5s1.factor = factor(data$disco_yn_l5s1,levels=c("1","0"))
data$disco_posneg_l5s1.factor = factor(data$disco_posneg_l5s1,levels=c("1","2"))
data$ppd_l5_adams_1.factor = factor(data$ppd_l5_adams_1,levels=c("1","2","3","4","5"))
data$ppd_l5_nrs_1.factor = factor(data$ppd_l5_nrs_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pressure_regulated_provocative_discography_complete.factor = factor(data$pressure_regulated_provocative_discography_complete,levels=c("0","1","2"))
data$exam_lquad_grade_1.factor = factor(data$exam_lquad_grade_1,levels=c("1","2","3","4","5"))
data$exam_lankle_dor_grade_1.factor = factor(data$exam_lankle_dor_grade_1,levels=c("1","2","3","4","5"))
data$exam_lankle_pla_grade_1.factor = factor(data$exam_lankle_pla_grade_1,levels=c("1","2","3","4","5"))
data$exam_lexten_hall_grade_1.factor = factor(data$exam_lexten_hall_grade_1,levels=c("1","2","3","4","5"))
data$exam_rquad_grade_1.factor = factor(data$exam_rquad_grade_1,levels=c("1","2","3","4","5"))
data$exam_rankle_dor_grade_1.factor = factor(data$exam_rankle_dor_grade_1,levels=c("1","2","3","4","5"))
data$exam_rankle_pla_grade_1.factor = factor(data$exam_rankle_pla_grade_1,levels=c("1","2","3","4","5"))
data$exam_rexten_hall_grade_1.factor = factor(data$exam_rexten_hall_grade_1,levels=c("1","2","3","4","5"))
data$exam_lpat_grade_1.factor = factor(data$exam_lpat_grade_1,levels=c("1","2","3","4"))
data$exam_lach_grade_1.factor = factor(data$exam_lach_grade_1,levels=c("1","2","3","4"))
data$exam_llas_grade_1.factor = factor(data$exam_llas_grade_1,levels=c("1","2"))
data$exam_rpat_grade_1.factor = factor(data$exam_rpat_grade_1,levels=c("1","2","3","4"))
data$exam_rach_grade_1.factor = factor(data$exam_rach_grade_1,levels=c("1","2","3","4"))
data$exam_rlas_grade_1.factor = factor(data$exam_rlas_grade_1,levels=c("1","2"))
data$exam_lbrag_1.factor = factor(data$exam_lbrag_1,levels=c("1","2"))
data$exam_rbrag_1.factor = factor(data$exam_rbrag_1,levels=c("1","2"))
data$exam_shob_1.factor = factor(data$exam_shob_1,levels=c("1","2"))
data$exam_pain_posit_1.factor = factor(data$exam_pain_posit_1,levels=c("1","0"))
data$exam_sensation_1.factor = factor(data$exam_sensation_1,levels=c("1","2"))
data$esam_axial_pain_1.factor = factor(data$esam_axial_pain_1,levels=c("1","0"))
data$exam_radpain_1.factor = factor(data$exam_radpain_1,levels=c("1","2"))
data$disco_l1_implant_1.factor = factor(data$disco_l1_implant_1,levels=c("1","0"))
data$gelstix_l1_nr_1.factor = factor(data$gelstix_l1_nr_1,levels=c("0","1","2","3"))
data$disco_l2_implant_1.factor = factor(data$disco_l2_implant_1,levels=c("1","0"))
data$gelstix_l2_nr_1.factor = factor(data$gelstix_l2_nr_1,levels=c("0","1","2","3"))
data$disco_l3_implant_1.factor = factor(data$disco_l3_implant_1,levels=c("1","0"))
data$gelstix_l3_nr_1.factor = factor(data$gelstix_l3_nr_1,levels=c("0","1","2","3"))
data$disco_l4_implant_1.factor = factor(data$disco_l4_implant_1,levels=c("1","0"))
data$gelstix_l4_nr_1.factor = factor(data$gelstix_l4_nr_1,levels=c("0","1","2","3"))
data$disco_l5_implant_1.factor = factor(data$disco_l5_implant_1,levels=c("1","0"))
data$gelstix_l5_nr_1.factor = factor(data$gelstix_l5_nr_1,levels=c("0","1","2","3"))
data$gelstix_insertion_1.factor = factor(data$gelstix_insertion_1,levels=c("1","2","3"))
data$study_gelstix_complete.factor = factor(data$study_gelstix_complete,levels=c("0","1","2"))
data$pd_notdone_pd_1w_1.factor = factor(data$pd_notdone_pd_1w_1,levels=c("1"))
data$pd_d1_9_1w_1.factor = factor(data$pd_d1_9_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_14_1w_1.factor = factor(data$pd_d1_14_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_20_1w_1.factor = factor(data$pd_d1_20_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec1_1w_1.factor = factor(data$pd_d1_pfacec1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec2_1w_1.factor = factor(data$pd_d1_pfacec2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec3_1w_1.factor = factor(data$pd_d1_pfacec3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem1_1w_1.factor = factor(data$pd_d1_pfacem1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem2_1w_1.factor = factor(data$pd_d1_pfacem2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem3_1w_1.factor = factor(data$pd_d1_pfacem3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami1_1w_1.factor = factor(data$pd_d1_pfami1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami2_1w_1.factor = factor(data$pd_d1_pfami2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami3_1w_1.factor = factor(data$pd_d1_pfami3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup1_1w_1.factor = factor(data$pd_d1_pfbup1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup2_1w_1.factor = factor(data$pd_d1_pfbup2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup3_1w_1.factor = factor(data$pd_d1_pfbup3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex1_1w_1.factor = factor(data$pd_d1_pfdex1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex2_1w_1.factor = factor(data$pd_d1_pfdex2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex3_1w_1.factor = factor(data$pd_d1_pfdex3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo1_1w_1.factor = factor(data$pd_d1_pfdiclo1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo2_1w_1.factor = factor(data$pd_d1_pfdiclo2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo3_1w_1.factor = factor(data$pd_d1_pfdiclo3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul1_1w_1.factor = factor(data$pd_d1_pfdul1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul2_1w_1.factor = factor(data$pd_d1_pfdul2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul3_1w_1.factor = factor(data$pd_d1_pfdul3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen1_1w_1.factor = factor(data$pd_d1_pffen1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen2_1w_1.factor = factor(data$pd_d1_pffen2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen3_1w_1.factor = factor(data$pd_d1_pffen3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab1_1w_1.factor = factor(data$pd_d1_pfgab1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab2_1w_1.factor = factor(data$pd_d1_pfgab2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab3_1w_1.factor = factor(data$pd_d1_pfgab3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd1_1w_1.factor = factor(data$pd_d1_pfhyd1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd2_1w_1.factor = factor(data$pd_d1_pfhyd2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd3_1w_1.factor = factor(data$pd_d1_pfhyd3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu1_1w_1.factor = factor(data$pd_d1_pfibu1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu2_1w_1.factor = factor(data$pd_d1_pfibu2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu3_1w_1.factor = factor(data$pd_d1_pfibu3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind1_1w_1.factor = factor(data$pd_d1_pfind1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind2_1w_1.factor = factor(data$pd_d1_pfind2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind3_1w_1.factor = factor(data$pd_d1_pfind3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket1_1w_1.factor = factor(data$pd_d1_pfket1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket2_1w_1.factor = factor(data$pd_d1_pfket2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket3_1w_1.factor = factor(data$pd_d1_pfket3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel1_1w_1.factor = factor(data$pd_d1_pfmel1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel2_1w_1.factor = factor(data$pd_d1_pfmel2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel3_1w_1.factor = factor(data$pd_d1_pfmel3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta1_1w_1.factor = factor(data$pd_d1_pfmeta1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta2_1w_1.factor = factor(data$pd_d1_pfmeta2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta3_1w_1.factor = factor(data$pd_d1_pfmeta3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet1_1w_1.factor = factor(data$pd_d1_pfmet1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet2_1w_1.factor = factor(data$pd_d1_pfmet2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet3_1w_1.factor = factor(data$pd_d1_pfmet3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor1_1w_1.factor = factor(data$pd_d1_pfmor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor2_1w_1.factor = factor(data$pd_d1_pfmor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor3_1w_1.factor = factor(data$pd_d1_pfmor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap1_1w_1.factor = factor(data$pd_d1_pfnap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap2_1w_1.factor = factor(data$pd_d1_pfnap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap3_1w_1.factor = factor(data$pd_d1_pfnap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor1_1w_1.factor = factor(data$pd_d1_pfnor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor2_1w_1.factor = factor(data$pd_d1_pfnor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor3_1w_1.factor = factor(data$pd_d1_pfnor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy1_1w_1.factor = factor(data$pd_d1_pfoxy1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy2_1w_1.factor = factor(data$pd_d1_pfoxy2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy3_1w_1.factor = factor(data$pd_d1_pfoxy3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac1_1w_1.factor = factor(data$pd_d1_pfparac1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac2_1w_1.factor = factor(data$pd_d1_pfparac2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac3_1w_1.factor = factor(data$pd_d1_pfparac3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe1_1w_1.factor = factor(data$pd_d1_pfphe1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe2_1w_1.factor = factor(data$pd_d1_pfphe2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe3_1w_1.factor = factor(data$pd_d1_pfphe3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg1_1w_1.factor = factor(data$pd_d1_pfpreg1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg2_1w_1.factor = factor(data$pd_d1_pfpreg2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg3_1w_1.factor = factor(data$pd_d1_pfpreg3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir1_1w_1.factor = factor(data$pd_d1_pfpir1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir2_1w_1.factor = factor(data$pd_d1_pfpir2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir3_1w_1.factor = factor(data$pd_d1_pfpir3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap1_1w_1.factor = factor(data$pd_d1_pftap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap2_1w_1.factor = factor(data$pd_d1_pftap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap3_1w_1.factor = factor(data$pd_d1_pftap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra1_1w_1.factor = factor(data$pd_d1_pftra1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra2_1w_1.factor = factor(data$pd_d1_pftra2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra3_1w_1.factor = factor(data$pd_d1_pftra3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_9_1w_1.factor = factor(data$pd_d2_9_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_14_1w_1.factor = factor(data$pd_d2_14_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_20_1w_1.factor = factor(data$pd_d2_20_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec1_1w_1.factor = factor(data$pd_d2_pfacec1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec2_1w_1.factor = factor(data$pd_d2_pfacec2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec3_1w_1.factor = factor(data$pd_d2_pfacec3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem1_1w_1.factor = factor(data$pd_d2_pfacem1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem2_1w_1.factor = factor(data$pd_d2_pfacem2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem3_1w_1.factor = factor(data$pd_d2_pfacem3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami1_1w_1.factor = factor(data$pd_d2_pfami1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami2_1w_1.factor = factor(data$pd_d2_pfami2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami3_1w_1.factor = factor(data$pd_d2_pfami3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup1_1w_1.factor = factor(data$pd_d2_pfbup1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup2_1w_1.factor = factor(data$pd_d2_pfbup2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup3_1w_1.factor = factor(data$pd_d2_pfbup3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex1_1w_1.factor = factor(data$pd_d2_pfdex1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex2_1w_1.factor = factor(data$pd_d2_pfdex2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex3_1w_1.factor = factor(data$pd_d2_pfdex3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo1_1w_1.factor = factor(data$pd_d2_pfdiclo1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo2_1w_1.factor = factor(data$pd_d2_pfdiclo2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo3_1w_1.factor = factor(data$pd_d2_pfdiclo3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul1_1w_1.factor = factor(data$pd_d2_pfdul1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul2_1w_1.factor = factor(data$pd_d2_pfdul2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul3_1w_1.factor = factor(data$pd_d2_pfdul3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen1_1w_1.factor = factor(data$pd_d2_pffen1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen2_1w_1.factor = factor(data$pd_d2_pffen2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen3_1w_1.factor = factor(data$pd_d2_pffen3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab1_1w_1.factor = factor(data$pd_d2_pfgab1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab2_1w_1.factor = factor(data$pd_d2_pfgab2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab3_1w_1.factor = factor(data$pd_d2_pfgab3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd1_1w_1.factor = factor(data$pd_d2_pfhyd1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd2_1w_1.factor = factor(data$pd_d2_pfhyd2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd3_1w_1.factor = factor(data$pd_d2_pfhyd3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu1_1w_1.factor = factor(data$pd_d2_pfibu1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu2_1w_1.factor = factor(data$pd_d2_pfibu2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu3_1w_1.factor = factor(data$pd_d2_pfibu3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind1_1w_1.factor = factor(data$pd_d2_pfind1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind2_1w_1.factor = factor(data$pd_d2_pfind2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind3_1w_1.factor = factor(data$pd_d2_pfind3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket1_1w_1.factor = factor(data$pd_d2_pfket1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket2_1w_1.factor = factor(data$pd_d2_pfket2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket3_1w_1.factor = factor(data$pd_d2_pfket3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel1_1w_1.factor = factor(data$pd_d2_pfmel1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel2_1w_1.factor = factor(data$pd_d2_pfmel2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel3_1w_1.factor = factor(data$pd_d2_pfmel3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta1_1w_1.factor = factor(data$pd_d2_pfmeta1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta2_1w_1.factor = factor(data$pd_d2_pfmeta2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta3_1w_1.factor = factor(data$pd_d2_pfmeta3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet1_1w_1.factor = factor(data$pd_d2_pfmet1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet2_1w_1.factor = factor(data$pd_d2_pfmet2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet3_1w_1.factor = factor(data$pd_d2_pfmet3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor1_1w_1.factor = factor(data$pd_d2_pfmor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor2_1w_1.factor = factor(data$pd_d2_pfmor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor3_1w_1.factor = factor(data$pd_d2_pfmor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap1_1w_1.factor = factor(data$pd_d2_pfnap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap2_1w_1.factor = factor(data$pd_d2_pfnap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap3_1w_1.factor = factor(data$pd_d2_pfnap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor1_1w_1.factor = factor(data$pd_d2_pfnor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor2_1w_1.factor = factor(data$pd_d2_pfnor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor3_1w_1.factor = factor(data$pd_d2_pfnor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy1_1w_1.factor = factor(data$pd_d2_pfoxy1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy2_1w_1.factor = factor(data$pd_d2_pfoxy2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy3_1w_1.factor = factor(data$pd_d2_pfoxy3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac1_1w_1.factor = factor(data$pd_d2_pfparac1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac2_1w_1.factor = factor(data$pd_d2_pfparac2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac3_1w_1.factor = factor(data$pd_d2_pfparac3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe1_1w_1.factor = factor(data$pd_d2_pfphe1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe2_1w_1.factor = factor(data$pd_d2_pfphe2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe3_1w_1.factor = factor(data$pd_d2_pfphe3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg1_1w_1.factor = factor(data$pd_d2_pfpreg1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg2_1w_1.factor = factor(data$pd_d2_pfpreg2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg3_1w_1.factor = factor(data$pd_d2_pfpreg3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir1_1w_1.factor = factor(data$pd_d2_pfpir1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir2_1w_1.factor = factor(data$pd_d2_pfpir2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir3_1w_1.factor = factor(data$pd_d2_pfpir3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap1_1w_1.factor = factor(data$pd_d2_pftap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap2_1w_1.factor = factor(data$pd_d2_pftap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap3_1w_1.factor = factor(data$pd_d2_pftap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra1_1w_1.factor = factor(data$pd_d2_pftra1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra2_1w_1.factor = factor(data$pd_d2_pftra2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra3_1w_1.factor = factor(data$pd_d2_pftra3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_9_1w_1.factor = factor(data$pd_d3_9_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_14_1w_1.factor = factor(data$pd_d3_14_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_20_1w_1.factor = factor(data$pd_d3_20_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec1_1w_1.factor = factor(data$pd_d3_pfacec1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec2_1w_1.factor = factor(data$pd_d3_pfacec2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec3_1w_1.factor = factor(data$pd_d3_pfacec3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem1_1w_1.factor = factor(data$pd_d3_pfacem1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem2_1w_1.factor = factor(data$pd_d3_pfacem2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem3_1w_1.factor = factor(data$pd_d3_pfacem3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami1_1w_1.factor = factor(data$pd_d3_pfami1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami2_1w_1.factor = factor(data$pd_d3_pfami2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami3_1w_1.factor = factor(data$pd_d3_pfami3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup1_1w_1.factor = factor(data$pd_d3_pfbup1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup2_1w_1.factor = factor(data$pd_d3_pfbup2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup3_1w_1.factor = factor(data$pd_d3_pfbup3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex1_1w_1.factor = factor(data$pd_d3_pfdex1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex2_1w_1.factor = factor(data$pd_d3_pfdex2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex3_1w_1.factor = factor(data$pd_d3_pfdex3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo1_1w_1.factor = factor(data$pd_d3_pfdiclo1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo2_1w_1.factor = factor(data$pd_d3_pfdiclo2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo3_1w_1.factor = factor(data$pd_d3_pfdiclo3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul1_1w_1.factor = factor(data$pd_d3_pfdul1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul2_1w_1.factor = factor(data$pd_d3_pfdul2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul3_1w_1.factor = factor(data$pd_d3_pfdul3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen1_1w_1.factor = factor(data$pd_d3_pffen1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen2_1w_1.factor = factor(data$pd_d3_pffen2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen3_1w_1.factor = factor(data$pd_d3_pffen3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab1_1w_1.factor = factor(data$pd_d3_pfgab1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab2_1w_1.factor = factor(data$pd_d3_pfgab2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab3_1w_1.factor = factor(data$pd_d3_pfgab3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd1_1w_1.factor = factor(data$pd_d3_pfhyd1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd2_1w_1.factor = factor(data$pd_d3_pfhyd2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd3_1w_1.factor = factor(data$pd_d3_pfhyd3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu1_1w_1.factor = factor(data$pd_d3_pfibu1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu2_1w_1.factor = factor(data$pd_d3_pfibu2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu3_1w_1.factor = factor(data$pd_d3_pfibu3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind1_1w_1.factor = factor(data$pd_d3_pfind1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind2_1w_1.factor = factor(data$pd_d3_pfind2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind3_1w_1.factor = factor(data$pd_d3_pfind3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket1_1w_1.factor = factor(data$pd_d3_pfket1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket2_1w_1.factor = factor(data$pd_d3_pfket2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket3_1w_1.factor = factor(data$pd_d3_pfket3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel1_1w_1.factor = factor(data$pd_d3_pfmel1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel2_1w_1.factor = factor(data$pd_d3_pfmel2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel3_1w_1.factor = factor(data$pd_d3_pfmel3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta1_1w_1.factor = factor(data$pd_d3_pfmeta1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta2_1w_1.factor = factor(data$pd_d3_pfmeta2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta3_1w_1.factor = factor(data$pd_d3_pfmeta3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet1_1w_1.factor = factor(data$pd_d3_pfmet1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet2_1w_1.factor = factor(data$pd_d3_pfmet2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet3_1w_1.factor = factor(data$pd_d3_pfmet3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor1_1w_1.factor = factor(data$pd_d3_pfmor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor2_1w_1.factor = factor(data$pd_d3_pfmor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor3_1w_1.factor = factor(data$pd_d3_pfmor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap1_1w_1.factor = factor(data$pd_d3_pfnap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap2_1w_1.factor = factor(data$pd_d3_pfnap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap3_1w_1.factor = factor(data$pd_d3_pfnap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor1_1w_1.factor = factor(data$pd_d3_pfnor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor2_1w_1.factor = factor(data$pd_d3_pfnor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor3_1w_1.factor = factor(data$pd_d3_pfnor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy1_1w_1.factor = factor(data$pd_d3_pfoxy1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy2_1w_1.factor = factor(data$pd_d3_pfoxy2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy3_1w_1.factor = factor(data$pd_d3_pfoxy3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac1_1w_1.factor = factor(data$pd_d3_pfparac1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac2_1w_1.factor = factor(data$pd_d3_pfparac2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac3_1w_1.factor = factor(data$pd_d3_pfparac3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe1_1w_1.factor = factor(data$pd_d3_pfphe1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe2_1w_1.factor = factor(data$pd_d3_pfphe2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe3_1w_1.factor = factor(data$pd_d3_pfphe3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg1_1w_1.factor = factor(data$pd_d3_pfpreg1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg2_1w_1.factor = factor(data$pd_d3_pfpreg2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg3_1w_1.factor = factor(data$pd_d3_pfpreg3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir1_1w_1.factor = factor(data$pd_d3_pfpir1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir2_1w_1.factor = factor(data$pd_d3_pfpir2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir3_1w_1.factor = factor(data$pd_d3_pfpir3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap1_1w_1.factor = factor(data$pd_d3_pftap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap2_1w_1.factor = factor(data$pd_d3_pftap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap3_1w_1.factor = factor(data$pd_d3_pftap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra1_1w_1.factor = factor(data$pd_d3_pftra1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra2_1w_1.factor = factor(data$pd_d3_pftra2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra3_1w_1.factor = factor(data$pd_d3_pftra3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_9_1w_1.factor = factor(data$pd_d4_9_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_14_1w_1.factor = factor(data$pd_d4_14_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_20_1w_1.factor = factor(data$pd_d4_20_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec1_1w_1.factor = factor(data$pd_d4_pfacec1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec2_1w_1.factor = factor(data$pd_d4_pfacec2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec3_1w_1.factor = factor(data$pd_d4_pfacec3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem1_1w_1.factor = factor(data$pd_d4_pfacem1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem2_1w_1.factor = factor(data$pd_d4_pfacem2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem3_1w_1.factor = factor(data$pd_d4_pfacem3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami1_1w_1.factor = factor(data$pd_d4_pfami1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami2_1w_1.factor = factor(data$pd_d4_pfami2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami3_1w_1.factor = factor(data$pd_d4_pfami3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup1_1w_1.factor = factor(data$pd_d4_pfbup1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup2_1w_1.factor = factor(data$pd_d4_pfbup2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup3_1w_1.factor = factor(data$pd_d4_pfbup3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex1_1w_1.factor = factor(data$pd_d4_pfdex1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex2_1w_1.factor = factor(data$pd_d4_pfdex2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex3_1w_1.factor = factor(data$pd_d4_pfdex3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo1_1w_1.factor = factor(data$pd_d4_pfdiclo1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo2_1w_1.factor = factor(data$pd_d4_pfdiclo2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo3_1w_1.factor = factor(data$pd_d4_pfdiclo3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul1_1w_1.factor = factor(data$pd_d4_pfdul1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul2_1w_1.factor = factor(data$pd_d4_pfdul2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul3_1w_1.factor = factor(data$pd_d4_pfdul3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen1_1w_1.factor = factor(data$pd_d4_pffen1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen2_1w_1.factor = factor(data$pd_d4_pffen2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen3_1w_1.factor = factor(data$pd_d4_pffen3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab1_1w_1.factor = factor(data$pd_d4_pfgab1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab2_1w_1.factor = factor(data$pd_d4_pfgab2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab3_1w_1.factor = factor(data$pd_d4_pfgab3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd1_1w_1.factor = factor(data$pd_d4_pfhyd1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd2_1w_1.factor = factor(data$pd_d4_pfhyd2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd3_1w_1.factor = factor(data$pd_d4_pfhyd3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu1_1w_1.factor = factor(data$pd_d4_pfibu1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu2_1w_1.factor = factor(data$pd_d4_pfibu2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu3_1w_1.factor = factor(data$pd_d4_pfibu3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind1_1w_1.factor = factor(data$pd_d4_pfind1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind2_1w_1.factor = factor(data$pd_d4_pfind2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind3_1w_1.factor = factor(data$pd_d4_pfind3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket1_1w_1.factor = factor(data$pd_d4_pfket1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket2_1w_1.factor = factor(data$pd_d4_pfket2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket3_1w_1.factor = factor(data$pd_d4_pfket3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel1_1w_1.factor = factor(data$pd_d4_pfmel1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel2_1w_1.factor = factor(data$pd_d4_pfmel2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel3_1w_1.factor = factor(data$pd_d4_pfmel3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta1_1w_1.factor = factor(data$pd_d4_pfmeta1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta2_1w_1.factor = factor(data$pd_d4_pfmeta2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta3_1w_1.factor = factor(data$pd_d4_pfmeta3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet1_1w_1.factor = factor(data$pd_d4_pfmet1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet2_1w_1.factor = factor(data$pd_d4_pfmet2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet3_1w_1.factor = factor(data$pd_d4_pfmet3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor1_1w_1.factor = factor(data$pd_d4_pfmor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor2_1w_1.factor = factor(data$pd_d4_pfmor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor3_1w_1.factor = factor(data$pd_d4_pfmor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap1_1w_1.factor = factor(data$pd_d4_pfnap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap2_1w_1.factor = factor(data$pd_d4_pfnap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap3_1w_1.factor = factor(data$pd_d4_pfnap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor1_1w_1.factor = factor(data$pd_d4_pfnor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor2_1w_1.factor = factor(data$pd_d4_pfnor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor3_1w_1.factor = factor(data$pd_d4_pfnor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy1_1w_1.factor = factor(data$pd_d4_pfoxy1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy2_1w_1.factor = factor(data$pd_d4_pfoxy2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy3_1w_1.factor = factor(data$pd_d4_pfoxy3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac1_1w_1.factor = factor(data$pd_d4_pfparac1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac2_1w_1.factor = factor(data$pd_d4_pfparac2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac3_1w_1.factor = factor(data$pd_d4_pfparac3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe1_1w_1.factor = factor(data$pd_d4_pfphe1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe2_1w_1.factor = factor(data$pd_d4_pfphe2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe3_1w_1.factor = factor(data$pd_d4_pfphe3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg1_1w_1.factor = factor(data$pd_d4_pfpreg1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg2_1w_1.factor = factor(data$pd_d4_pfpreg2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg3_1w_1.factor = factor(data$pd_d4_pfpreg3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir1_1w_1.factor = factor(data$pd_d4_pfpir1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir2_1w_1.factor = factor(data$pd_d4_pfpir2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir3_1w_1.factor = factor(data$pd_d4_pfpir3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap1_1w_1.factor = factor(data$pd_d4_pftap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap2_1w_1.factor = factor(data$pd_d4_pftap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap3_1w_1.factor = factor(data$pd_d4_pftap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra1_1w_1.factor = factor(data$pd_d4_pftra1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra2_1w_1.factor = factor(data$pd_d4_pftra2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra3_1w_1.factor = factor(data$pd_d4_pftra3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_9_1w_1.factor = factor(data$pd_d5_9_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_14_1w_1.factor = factor(data$pd_d5_14_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_20_1w_1.factor = factor(data$pd_d5_20_1w_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec1_1w_1.factor = factor(data$pd_d5_pfacec1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec2_1w_1.factor = factor(data$pd_d5_pfacec2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec3_1w_1.factor = factor(data$pd_d5_pfacec3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem1_1w_1.factor = factor(data$pd_d5_pfacem1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem2_1w_1.factor = factor(data$pd_d5_pfacem2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem3_1w_1.factor = factor(data$pd_d5_pfacem3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami1_1w_1.factor = factor(data$pd_d5_pfami1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami2_1w_1.factor = factor(data$pd_d5_pfami2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami3_1w_1.factor = factor(data$pd_d5_pfami3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup1_1w_1.factor = factor(data$pd_d5_pfbup1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup2_1w_1.factor = factor(data$pd_d5_pfbup2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup3_1w_1.factor = factor(data$pd_d5_pfbup3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex1_1w_1.factor = factor(data$pd_d5_pfdex1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex2_1w_1.factor = factor(data$pd_d5_pfdex2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex3_1w_1.factor = factor(data$pd_d5_pfdex3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo1_1w_1.factor = factor(data$pd_d5_pfdiclo1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo2_1w_1.factor = factor(data$pd_d5_pfdiclo2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo3_1w_1.factor = factor(data$pd_d5_pfdiclo3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul1_1w_1.factor = factor(data$pd_d5_pfdul1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul2_1w_1.factor = factor(data$pd_d5_pfdul2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul3_1w_1.factor = factor(data$pd_d5_pfdul3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen1_1w_1.factor = factor(data$pd_d5_pffen1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen2_1w_1.factor = factor(data$pd_d5_pffen2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen3_1w_1.factor = factor(data$pd_d5_pffen3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab1_1w_1.factor = factor(data$pd_d5_pfgab1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab2_1w_1.factor = factor(data$pd_d5_pfgab2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab3_1w_1.factor = factor(data$pd_d5_pfgab3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd1_1w_1.factor = factor(data$pd_d5_pfhyd1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd2_1w_1.factor = factor(data$pd_d5_pfhyd2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd3_1w_1.factor = factor(data$pd_d5_pfhyd3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu1_1w_1.factor = factor(data$pd_d5_pfibu1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu2_1w_1.factor = factor(data$pd_d5_pfibu2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu3_1w_1.factor = factor(data$pd_d5_pfibu3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind1_1w_1.factor = factor(data$pd_d5_pfind1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind2_1w_1.factor = factor(data$pd_d5_pfind2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind3_1w_1.factor = factor(data$pd_d5_pfind3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket1_1w_1.factor = factor(data$pd_d5_pfket1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket2_1w_1.factor = factor(data$pd_d5_pfket2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket3_1w_1.factor = factor(data$pd_d5_pfket3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel1_1w_1.factor = factor(data$pd_d5_pfmel1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel2_1w_1.factor = factor(data$pd_d5_pfmel2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel3_1w_1.factor = factor(data$pd_d5_pfmel3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta1_1w_1.factor = factor(data$pd_d5_pfmeta1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta2_1w_1.factor = factor(data$pd_d5_pfmeta2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta3_1w_1.factor = factor(data$pd_d5_pfmeta3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet1_1w_1.factor = factor(data$pd_d5_pfmet1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet2_1w_1.factor = factor(data$pd_d5_pfmet2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet3_1w_1.factor = factor(data$pd_d5_pfmet3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor1_1w_1.factor = factor(data$pd_d5_pfmor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor2_1w_1.factor = factor(data$pd_d5_pfmor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor3_1w_1.factor = factor(data$pd_d5_pfmor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap1_1w_1.factor = factor(data$pd_d5_pfnap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap2_1w_1.factor = factor(data$pd_d5_pfnap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap3_1w_1.factor = factor(data$pd_d5_pfnap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor1_1w_1.factor = factor(data$pd_d5_pfnor1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor2_1w_1.factor = factor(data$pd_d5_pfnor2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor3_1w_1.factor = factor(data$pd_d5_pfnor3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy1_1w_1.factor = factor(data$pd_d5_pfoxy1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy2_1w_1.factor = factor(data$pd_d5_pfoxy2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy3_1w_1.factor = factor(data$pd_d5_pfoxy3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac1_1w_1.factor = factor(data$pd_d5_pfparac1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac2_1w_1.factor = factor(data$pd_d5_pfparac2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac3_1w_1.factor = factor(data$pd_d5_pfparac3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe1_1w_1.factor = factor(data$pd_d5_pfphe1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe2_1w_1.factor = factor(data$pd_d5_pfphe2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe3_1w_1.factor = factor(data$pd_d5_pfphe3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg1_1w_1.factor = factor(data$pd_d5_pfpreg1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg2_1w_1.factor = factor(data$pd_d5_pfpreg2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg3_1w_1.factor = factor(data$pd_d5_pfpreg3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir1_1w_1.factor = factor(data$pd_d5_pfpir1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir2_1w_1.factor = factor(data$pd_d5_pfpir2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir3_1w_1.factor = factor(data$pd_d5_pfpir3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap1_1w_1.factor = factor(data$pd_d5_pftap1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap2_1w_1.factor = factor(data$pd_d5_pftap2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap3_1w_1.factor = factor(data$pd_d5_pftap3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra1_1w_1.factor = factor(data$pd_d5_pftra1_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra2_1w_1.factor = factor(data$pd_d5_pftra2_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra3_1w_1.factor = factor(data$pd_d5_pftra3_1w_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$week_follow_up_pain_diary_complete.factor = factor(data$week_follow_up_pain_diary_complete,levels=c("0","1","2"))
data$pd_notdone_pd_1m_1.factor = factor(data$pd_notdone_pd_1m_1,levels=c("1"))
data$pd_d1_9_1m_1.factor = factor(data$pd_d1_9_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_14_1m_1.factor = factor(data$pd_d1_14_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_20_1m_1.factor = factor(data$pd_d1_20_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec1_1m_1.factor = factor(data$pd_d1_pfacec1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec2_1m_1.factor = factor(data$pd_d1_pfacec2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec3_1m_1.factor = factor(data$pd_d1_pfacec3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem1_1m_1.factor = factor(data$pd_d1_pfacem1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem2_1m_1.factor = factor(data$pd_d1_pfacem2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem3_1m_1.factor = factor(data$pd_d1_pfacem3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami1_1m_1.factor = factor(data$pd_d1_pfami1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami2_1m_1.factor = factor(data$pd_d1_pfami2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami3_1m_1.factor = factor(data$pd_d1_pfami3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup1_1m_1.factor = factor(data$pd_d1_pfbup1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup2_1m_1.factor = factor(data$pd_d1_pfbup2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup3_1m_1.factor = factor(data$pd_d1_pfbup3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex1_1m_1.factor = factor(data$pd_d1_pfdex1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex2_1m_1.factor = factor(data$pd_d1_pfdex2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex3_1m_1.factor = factor(data$pd_d1_pfdex3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo1_1m_1.factor = factor(data$pd_d1_pfdiclo1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo2_1m_1.factor = factor(data$pd_d1_pfdiclo2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo3_1m_1.factor = factor(data$pd_d1_pfdiclo3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul1_1m_1.factor = factor(data$pd_d1_pfdul1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul2_1m_1.factor = factor(data$pd_d1_pfdul2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul3_1m_1.factor = factor(data$pd_d1_pfdul3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen1_1m_1.factor = factor(data$pd_d1_pffen1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen2_1m_1.factor = factor(data$pd_d1_pffen2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen3_1m_1.factor = factor(data$pd_d1_pffen3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab1_1m_1.factor = factor(data$pd_d1_pfgab1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab2_1m_1.factor = factor(data$pd_d1_pfgab2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab3_1m_1.factor = factor(data$pd_d1_pfgab3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd1_1m_1.factor = factor(data$pd_d1_pfhyd1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd2_1m_1.factor = factor(data$pd_d1_pfhyd2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd3_1m_1.factor = factor(data$pd_d1_pfhyd3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu1_1m_1.factor = factor(data$pd_d1_pfibu1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu2_1m_1.factor = factor(data$pd_d1_pfibu2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu3_1m_1.factor = factor(data$pd_d1_pfibu3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind1_1m_1.factor = factor(data$pd_d1_pfind1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind2_1m_1.factor = factor(data$pd_d1_pfind2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind3_1m_1.factor = factor(data$pd_d1_pfind3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket1_1m_1.factor = factor(data$pd_d1_pfket1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket2_1m_1.factor = factor(data$pd_d1_pfket2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket3_1m_1.factor = factor(data$pd_d1_pfket3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel1_1m_1.factor = factor(data$pd_d1_pfmel1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel2_1m_1.factor = factor(data$pd_d1_pfmel2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel3_1m_1.factor = factor(data$pd_d1_pfmel3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta1_1m_1.factor = factor(data$pd_d1_pfmeta1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta2_1m_1.factor = factor(data$pd_d1_pfmeta2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta3_1m_1.factor = factor(data$pd_d1_pfmeta3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet1_1m_1.factor = factor(data$pd_d1_pfmet1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet2_1m_1.factor = factor(data$pd_d1_pfmet2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet3_1m_1.factor = factor(data$pd_d1_pfmet3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor1_1m_1.factor = factor(data$pd_d1_pfmor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor2_1m_1.factor = factor(data$pd_d1_pfmor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor3_1m_1.factor = factor(data$pd_d1_pfmor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap1_1m_1.factor = factor(data$pd_d1_pfnap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap2_1m_1.factor = factor(data$pd_d1_pfnap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap3_1m_1.factor = factor(data$pd_d1_pfnap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor1_1m_1.factor = factor(data$pd_d1_pfnor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor2_1m_1.factor = factor(data$pd_d1_pfnor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor3_1m_1.factor = factor(data$pd_d1_pfnor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy1_1m_1.factor = factor(data$pd_d1_pfoxy1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy2_1m_1.factor = factor(data$pd_d1_pfoxy2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy3_1m_1.factor = factor(data$pd_d1_pfoxy3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac1_1m_1.factor = factor(data$pd_d1_pfparac1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac2_1m_1.factor = factor(data$pd_d1_pfparac2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac3_1m_1.factor = factor(data$pd_d1_pfparac3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe1_1m_1.factor = factor(data$pd_d1_pfphe1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe2_1m_1.factor = factor(data$pd_d1_pfphe2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe3_1m_1.factor = factor(data$pd_d1_pfphe3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg1_1m_1.factor = factor(data$pd_d1_pfpreg1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg2_1m_1.factor = factor(data$pd_d1_pfpreg2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg3_1m_1.factor = factor(data$pd_d1_pfpreg3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir1_1m_1.factor = factor(data$pd_d1_pfpir1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir2_1m_1.factor = factor(data$pd_d1_pfpir2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir3_1m_1.factor = factor(data$pd_d1_pfpir3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap1_1m_1.factor = factor(data$pd_d1_pftap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap2_1m_1.factor = factor(data$pd_d1_pftap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap3_1m_1.factor = factor(data$pd_d1_pftap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra1_1m_1.factor = factor(data$pd_d1_pftra1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra2_1m_1.factor = factor(data$pd_d1_pftra2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra3_1m_1.factor = factor(data$pd_d1_pftra3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_9_1m_1.factor = factor(data$pd_d2_9_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_14_1m_1.factor = factor(data$pd_d2_14_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_20_1m_1.factor = factor(data$pd_d2_20_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec1_1m_1.factor = factor(data$pd_d2_pfacec1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec2_1m_1.factor = factor(data$pd_d2_pfacec2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec3_1m_1.factor = factor(data$pd_d2_pfacec3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem1_1m_1.factor = factor(data$pd_d2_pfacem1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem2_1m_1.factor = factor(data$pd_d2_pfacem2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem3_1m_1.factor = factor(data$pd_d2_pfacem3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami1_1m_1.factor = factor(data$pd_d2_pfami1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami2_1m_1.factor = factor(data$pd_d2_pfami2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami3_1m_1.factor = factor(data$pd_d2_pfami3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup1_1m_1.factor = factor(data$pd_d2_pfbup1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup2_1m_1.factor = factor(data$pd_d2_pfbup2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup3_1m_1.factor = factor(data$pd_d2_pfbup3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex1_1m_1.factor = factor(data$pd_d2_pfdex1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex2_1m_1.factor = factor(data$pd_d2_pfdex2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex3_1m_1.factor = factor(data$pd_d2_pfdex3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo1_1m_1.factor = factor(data$pd_d2_pfdiclo1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo2_1m_1.factor = factor(data$pd_d2_pfdiclo2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo3_1m_1.factor = factor(data$pd_d2_pfdiclo3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul1_1m_1.factor = factor(data$pd_d2_pfdul1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul2_1m_1.factor = factor(data$pd_d2_pfdul2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul3_1m_1.factor = factor(data$pd_d2_pfdul3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen1_1m_1.factor = factor(data$pd_d2_pffen1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen2_1m_1.factor = factor(data$pd_d2_pffen2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen3_1m_1.factor = factor(data$pd_d2_pffen3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab1_1m_1.factor = factor(data$pd_d2_pfgab1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab2_1m_1.factor = factor(data$pd_d2_pfgab2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab3_1m_1.factor = factor(data$pd_d2_pfgab3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd1_1m_1.factor = factor(data$pd_d2_pfhyd1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd2_1m_1.factor = factor(data$pd_d2_pfhyd2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd3_1m_1.factor = factor(data$pd_d2_pfhyd3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu1_1m_1.factor = factor(data$pd_d2_pfibu1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu2_1m_1.factor = factor(data$pd_d2_pfibu2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu3_1m_1.factor = factor(data$pd_d2_pfibu3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind1_1m_1.factor = factor(data$pd_d2_pfind1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind2_1m_1.factor = factor(data$pd_d2_pfind2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind3_1m_1.factor = factor(data$pd_d2_pfind3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket1_1m_1.factor = factor(data$pd_d2_pfket1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket2_1m_1.factor = factor(data$pd_d2_pfket2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket3_1m_1.factor = factor(data$pd_d2_pfket3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel1_1m_1.factor = factor(data$pd_d2_pfmel1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel2_1m_1.factor = factor(data$pd_d2_pfmel2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel3_1m_1.factor = factor(data$pd_d2_pfmel3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta1_1m_1.factor = factor(data$pd_d2_pfmeta1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta2_1m_1.factor = factor(data$pd_d2_pfmeta2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta3_1m_1.factor = factor(data$pd_d2_pfmeta3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet1_1m_1.factor = factor(data$pd_d2_pfmet1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet2_1m_1.factor = factor(data$pd_d2_pfmet2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet3_1m_1.factor = factor(data$pd_d2_pfmet3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor1_1m_1.factor = factor(data$pd_d2_pfmor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor2_1m_1.factor = factor(data$pd_d2_pfmor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor3_1m_1.factor = factor(data$pd_d2_pfmor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap1_1m_1.factor = factor(data$pd_d2_pfnap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap2_1m_1.factor = factor(data$pd_d2_pfnap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap3_1m_1.factor = factor(data$pd_d2_pfnap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor1_1m_1.factor = factor(data$pd_d2_pfnor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor2_1m_1.factor = factor(data$pd_d2_pfnor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor3_1m_1.factor = factor(data$pd_d2_pfnor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy1_1m_1.factor = factor(data$pd_d2_pfoxy1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy2_1m_1.factor = factor(data$pd_d2_pfoxy2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy3_1m_1.factor = factor(data$pd_d2_pfoxy3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac1_1m_1.factor = factor(data$pd_d2_pfparac1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac2_1m_1.factor = factor(data$pd_d2_pfparac2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac3_1m_1.factor = factor(data$pd_d2_pfparac3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe1_1m_1.factor = factor(data$pd_d2_pfphe1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe2_1m_1.factor = factor(data$pd_d2_pfphe2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe3_1m_1.factor = factor(data$pd_d2_pfphe3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg1_1m_1.factor = factor(data$pd_d2_pfpreg1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg2_1m_1.factor = factor(data$pd_d2_pfpreg2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg3_1m_1.factor = factor(data$pd_d2_pfpreg3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir1_1m_1.factor = factor(data$pd_d2_pfpir1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir2_1m_1.factor = factor(data$pd_d2_pfpir2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir3_1m_1.factor = factor(data$pd_d2_pfpir3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap1_1m_1.factor = factor(data$pd_d2_pftap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap2_1m_1.factor = factor(data$pd_d2_pftap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap3_1m_1.factor = factor(data$pd_d2_pftap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra1_1m_1.factor = factor(data$pd_d2_pftra1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra2_1m_1.factor = factor(data$pd_d2_pftra2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra3_1m_1.factor = factor(data$pd_d2_pftra3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_9_1m_1.factor = factor(data$pd_d3_9_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_14_1m_1.factor = factor(data$pd_d3_14_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_20_1m_1.factor = factor(data$pd_d3_20_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec1_1m_1.factor = factor(data$pd_d3_pfacec1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec2_1m_1.factor = factor(data$pd_d3_pfacec2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec3_1m_1.factor = factor(data$pd_d3_pfacec3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem1_1m_1.factor = factor(data$pd_d3_pfacem1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem2_1m_1.factor = factor(data$pd_d3_pfacem2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem3_1m_1.factor = factor(data$pd_d3_pfacem3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami1_1m_1.factor = factor(data$pd_d3_pfami1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami2_1m_1.factor = factor(data$pd_d3_pfami2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami3_1m_1.factor = factor(data$pd_d3_pfami3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup1_1m_1.factor = factor(data$pd_d3_pfbup1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup2_1m_1.factor = factor(data$pd_d3_pfbup2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup3_1m_1.factor = factor(data$pd_d3_pfbup3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex1_1m_1.factor = factor(data$pd_d3_pfdex1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex2_1m_1.factor = factor(data$pd_d3_pfdex2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex3_1m_1.factor = factor(data$pd_d3_pfdex3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo1_1m_1.factor = factor(data$pd_d3_pfdiclo1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo2_1m_1.factor = factor(data$pd_d3_pfdiclo2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo3_1m_1.factor = factor(data$pd_d3_pfdiclo3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul1_1m_1.factor = factor(data$pd_d3_pfdul1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul2_1m_1.factor = factor(data$pd_d3_pfdul2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul3_1m_1.factor = factor(data$pd_d3_pfdul3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen1_1m_1.factor = factor(data$pd_d3_pffen1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen2_1m_1.factor = factor(data$pd_d3_pffen2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen3_1m_1.factor = factor(data$pd_d3_pffen3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab1_1m_1.factor = factor(data$pd_d3_pfgab1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab2_1m_1.factor = factor(data$pd_d3_pfgab2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab3_1m_1.factor = factor(data$pd_d3_pfgab3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd1_1m_1.factor = factor(data$pd_d3_pfhyd1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd2_1m_1.factor = factor(data$pd_d3_pfhyd2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd3_1m_1.factor = factor(data$pd_d3_pfhyd3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu1_1m_1.factor = factor(data$pd_d3_pfibu1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu2_1m_1.factor = factor(data$pd_d3_pfibu2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu3_1m_1.factor = factor(data$pd_d3_pfibu3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind1_1m_1.factor = factor(data$pd_d3_pfind1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind2_1m_1.factor = factor(data$pd_d3_pfind2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind3_1m_1.factor = factor(data$pd_d3_pfind3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket1_1m_1.factor = factor(data$pd_d3_pfket1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket2_1m_1.factor = factor(data$pd_d3_pfket2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket3_1m_1.factor = factor(data$pd_d3_pfket3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel1_1m_1.factor = factor(data$pd_d3_pfmel1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel2_1m_1.factor = factor(data$pd_d3_pfmel2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel3_1m_1.factor = factor(data$pd_d3_pfmel3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta1_1m_1.factor = factor(data$pd_d3_pfmeta1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta2_1m_1.factor = factor(data$pd_d3_pfmeta2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta3_1m_1.factor = factor(data$pd_d3_pfmeta3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet1_1m_1.factor = factor(data$pd_d3_pfmet1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet2_1m_1.factor = factor(data$pd_d3_pfmet2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet3_1m_1.factor = factor(data$pd_d3_pfmet3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor1_1m_1.factor = factor(data$pd_d3_pfmor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor2_1m_1.factor = factor(data$pd_d3_pfmor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor3_1m_1.factor = factor(data$pd_d3_pfmor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap1_1m_1.factor = factor(data$pd_d3_pfnap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap2_1m_1.factor = factor(data$pd_d3_pfnap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap3_1m_1.factor = factor(data$pd_d3_pfnap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor1_1m_1.factor = factor(data$pd_d3_pfnor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor2_1m_1.factor = factor(data$pd_d3_pfnor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor3_1m_1.factor = factor(data$pd_d3_pfnor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy1_1m_1.factor = factor(data$pd_d3_pfoxy1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy2_1m_1.factor = factor(data$pd_d3_pfoxy2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy3_1m_1.factor = factor(data$pd_d3_pfoxy3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac1_1m_1.factor = factor(data$pd_d3_pfparac1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac2_1m_1.factor = factor(data$pd_d3_pfparac2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac3_1m_1.factor = factor(data$pd_d3_pfparac3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe1_1m_1.factor = factor(data$pd_d3_pfphe1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe2_1m_1.factor = factor(data$pd_d3_pfphe2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe3_1m_1.factor = factor(data$pd_d3_pfphe3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg1_1m_1.factor = factor(data$pd_d3_pfpreg1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg2_1m_1.factor = factor(data$pd_d3_pfpreg2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg3_1m_1.factor = factor(data$pd_d3_pfpreg3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir1_1m_1.factor = factor(data$pd_d3_pfpir1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir2_1m_1.factor = factor(data$pd_d3_pfpir2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir3_1m_1.factor = factor(data$pd_d3_pfpir3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap1_1m_1.factor = factor(data$pd_d3_pftap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap2_1m_1.factor = factor(data$pd_d3_pftap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap3_1m_1.factor = factor(data$pd_d3_pftap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra1_1m_1.factor = factor(data$pd_d3_pftra1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra2_1m_1.factor = factor(data$pd_d3_pftra2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra3_1m_1.factor = factor(data$pd_d3_pftra3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_9_1m_1.factor = factor(data$pd_d4_9_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_14_1m_1.factor = factor(data$pd_d4_14_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_20_1m_1.factor = factor(data$pd_d4_20_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec1_1m_1.factor = factor(data$pd_d4_pfacec1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec2_1m_1.factor = factor(data$pd_d4_pfacec2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec3_1m_1.factor = factor(data$pd_d4_pfacec3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem1_1m_1.factor = factor(data$pd_d4_pfacem1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem2_1m_1.factor = factor(data$pd_d4_pfacem2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem3_1m_1.factor = factor(data$pd_d4_pfacem3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami1_1m_1.factor = factor(data$pd_d4_pfami1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami2_1m_1.factor = factor(data$pd_d4_pfami2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami3_1m_1.factor = factor(data$pd_d4_pfami3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup1_1m_1.factor = factor(data$pd_d4_pfbup1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup2_1m_1.factor = factor(data$pd_d4_pfbup2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup3_1m_1.factor = factor(data$pd_d4_pfbup3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex1_1m_1.factor = factor(data$pd_d4_pfdex1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex2_1m_1.factor = factor(data$pd_d4_pfdex2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex3_1m_1.factor = factor(data$pd_d4_pfdex3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo1_1m_1.factor = factor(data$pd_d4_pfdiclo1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo2_1m_1.factor = factor(data$pd_d4_pfdiclo2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo3_1m_1.factor = factor(data$pd_d4_pfdiclo3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul1_1m_1.factor = factor(data$pd_d4_pfdul1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul2_1m_1.factor = factor(data$pd_d4_pfdul2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul3_1m_1.factor = factor(data$pd_d4_pfdul3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen1_1m_1.factor = factor(data$pd_d4_pffen1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen2_1m_1.factor = factor(data$pd_d4_pffen2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen3_1m_1.factor = factor(data$pd_d4_pffen3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab1_1m_1.factor = factor(data$pd_d4_pfgab1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab2_1m_1.factor = factor(data$pd_d4_pfgab2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab3_1m_1.factor = factor(data$pd_d4_pfgab3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd1_1m_1.factor = factor(data$pd_d4_pfhyd1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd2_1m_1.factor = factor(data$pd_d4_pfhyd2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd3_1m_1.factor = factor(data$pd_d4_pfhyd3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu1_1m_1.factor = factor(data$pd_d4_pfibu1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu2_1m_1.factor = factor(data$pd_d4_pfibu2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu3_1m_1.factor = factor(data$pd_d4_pfibu3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind1_1m_1.factor = factor(data$pd_d4_pfind1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind2_1m_1.factor = factor(data$pd_d4_pfind2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind3_1m_1.factor = factor(data$pd_d4_pfind3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket1_1m_1.factor = factor(data$pd_d4_pfket1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket2_1m_1.factor = factor(data$pd_d4_pfket2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket3_1m_1.factor = factor(data$pd_d4_pfket3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel1_1m_1.factor = factor(data$pd_d4_pfmel1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel2_1m_1.factor = factor(data$pd_d4_pfmel2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel3_1m_1.factor = factor(data$pd_d4_pfmel3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta1_1m_1.factor = factor(data$pd_d4_pfmeta1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta2_1m_1.factor = factor(data$pd_d4_pfmeta2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta3_1m_1.factor = factor(data$pd_d4_pfmeta3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet1_1m_1.factor = factor(data$pd_d4_pfmet1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet2_1m_1.factor = factor(data$pd_d4_pfmet2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet3_1m_1.factor = factor(data$pd_d4_pfmet3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor1_1m_1.factor = factor(data$pd_d4_pfmor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor2_1m_1.factor = factor(data$pd_d4_pfmor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor3_1m_1.factor = factor(data$pd_d4_pfmor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap1_1m_1.factor = factor(data$pd_d4_pfnap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap2_1m_1.factor = factor(data$pd_d4_pfnap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap3_1m_1.factor = factor(data$pd_d4_pfnap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor1_1m_1.factor = factor(data$pd_d4_pfnor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor2_1m_1.factor = factor(data$pd_d4_pfnor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor3_1m_1.factor = factor(data$pd_d4_pfnor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy1_1m_1.factor = factor(data$pd_d4_pfoxy1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy2_1m_1.factor = factor(data$pd_d4_pfoxy2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy3_1m_1.factor = factor(data$pd_d4_pfoxy3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac1_1m_1.factor = factor(data$pd_d4_pfparac1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac2_1m_1.factor = factor(data$pd_d4_pfparac2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac3_1m_1.factor = factor(data$pd_d4_pfparac3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe1_1m_1.factor = factor(data$pd_d4_pfphe1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe2_1m_1.factor = factor(data$pd_d4_pfphe2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe3_1m_1.factor = factor(data$pd_d4_pfphe3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg1_1m_1.factor = factor(data$pd_d4_pfpreg1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg2_1m_1.factor = factor(data$pd_d4_pfpreg2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg3_1m_1.factor = factor(data$pd_d4_pfpreg3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir1_1m_1.factor = factor(data$pd_d4_pfpir1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir2_1m_1.factor = factor(data$pd_d4_pfpir2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir3_1m_1.factor = factor(data$pd_d4_pfpir3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap1_1m_1.factor = factor(data$pd_d4_pftap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap2_1m_1.factor = factor(data$pd_d4_pftap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap3_1m_1.factor = factor(data$pd_d4_pftap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra1_1m_1.factor = factor(data$pd_d4_pftra1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra2_1m_1.factor = factor(data$pd_d4_pftra2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra3_1m_1.factor = factor(data$pd_d4_pftra3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_9_1m_1.factor = factor(data$pd_d5_9_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_14_1m_1.factor = factor(data$pd_d5_14_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_20_1m_1.factor = factor(data$pd_d5_20_1m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec1_1m_1.factor = factor(data$pd_d5_pfacec1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec2_1m_1.factor = factor(data$pd_d5_pfacec2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec3_1m_1.factor = factor(data$pd_d5_pfacec3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem1_1m_1.factor = factor(data$pd_d5_pfacem1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem2_1m_1.factor = factor(data$pd_d5_pfacem2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem3_1m_1.factor = factor(data$pd_d5_pfacem3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami1_1m_1.factor = factor(data$pd_d5_pfami1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami2_1m_1.factor = factor(data$pd_d5_pfami2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami3_1m_1.factor = factor(data$pd_d5_pfami3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup1_1m_1.factor = factor(data$pd_d5_pfbup1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup2_1m_1.factor = factor(data$pd_d5_pfbup2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup3_1m_1.factor = factor(data$pd_d5_pfbup3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex1_1m_1.factor = factor(data$pd_d5_pfdex1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex2_1m_1.factor = factor(data$pd_d5_pfdex2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex3_1m_1.factor = factor(data$pd_d5_pfdex3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo1_1m_1.factor = factor(data$pd_d5_pfdiclo1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo2_1m_1.factor = factor(data$pd_d5_pfdiclo2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo3_1m_1.factor = factor(data$pd_d5_pfdiclo3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul1_1m_1.factor = factor(data$pd_d5_pfdul1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul2_1m_1.factor = factor(data$pd_d5_pfdul2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul3_1m_1.factor = factor(data$pd_d5_pfdul3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen1_1m_1.factor = factor(data$pd_d5_pffen1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen2_1m_1.factor = factor(data$pd_d5_pffen2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen3_1m_1.factor = factor(data$pd_d5_pffen3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab1_1m_1.factor = factor(data$pd_d5_pfgab1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab2_1m_1.factor = factor(data$pd_d5_pfgab2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab3_1m_1.factor = factor(data$pd_d5_pfgab3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd1_1m_1.factor = factor(data$pd_d5_pfhyd1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd2_1m_1.factor = factor(data$pd_d5_pfhyd2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd3_1m_1.factor = factor(data$pd_d5_pfhyd3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu1_1m_1.factor = factor(data$pd_d5_pfibu1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu2_1m_1.factor = factor(data$pd_d5_pfibu2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu3_1m_1.factor = factor(data$pd_d5_pfibu3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind1_1m_1.factor = factor(data$pd_d5_pfind1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind2_1m_1.factor = factor(data$pd_d5_pfind2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind3_1m_1.factor = factor(data$pd_d5_pfind3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket1_1m_1.factor = factor(data$pd_d5_pfket1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket2_1m_1.factor = factor(data$pd_d5_pfket2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket3_1m_1.factor = factor(data$pd_d5_pfket3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel1_1m_1.factor = factor(data$pd_d5_pfmel1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel2_1m_1.factor = factor(data$pd_d5_pfmel2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel3_1m_1.factor = factor(data$pd_d5_pfmel3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta1_1m_1.factor = factor(data$pd_d5_pfmeta1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta2_1m_1.factor = factor(data$pd_d5_pfmeta2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta3_1m_1.factor = factor(data$pd_d5_pfmeta3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet1_1m_1.factor = factor(data$pd_d5_pfmet1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet2_1m_1.factor = factor(data$pd_d5_pfmet2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet3_1m_1.factor = factor(data$pd_d5_pfmet3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor1_1m_1.factor = factor(data$pd_d5_pfmor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor2_1m_1.factor = factor(data$pd_d5_pfmor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor3_1m_1.factor = factor(data$pd_d5_pfmor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap1_1m_1.factor = factor(data$pd_d5_pfnap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap2_1m_1.factor = factor(data$pd_d5_pfnap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap3_1m_1.factor = factor(data$pd_d5_pfnap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor1_1m_1.factor = factor(data$pd_d5_pfnor1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor2_1m_1.factor = factor(data$pd_d5_pfnor2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor3_1m_1.factor = factor(data$pd_d5_pfnor3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy1_1m_1.factor = factor(data$pd_d5_pfoxy1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy2_1m_1.factor = factor(data$pd_d5_pfoxy2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy3_1m_1.factor = factor(data$pd_d5_pfoxy3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac1_1m_1.factor = factor(data$pd_d5_pfparac1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac2_1m_1.factor = factor(data$pd_d5_pfparac2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac3_1m_1.factor = factor(data$pd_d5_pfparac3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe1_1m_1.factor = factor(data$pd_d5_pfphe1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe2_1m_1.factor = factor(data$pd_d5_pfphe2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe3_1m_1.factor = factor(data$pd_d5_pfphe3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg1_1m_1.factor = factor(data$pd_d5_pfpreg1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg2_1m_1.factor = factor(data$pd_d5_pfpreg2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg3_1m_1.factor = factor(data$pd_d5_pfpreg3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir1_1m_1.factor = factor(data$pd_d5_pfpir1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir2_1m_1.factor = factor(data$pd_d5_pfpir2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir3_1m_1.factor = factor(data$pd_d5_pfpir3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap1_1m_1.factor = factor(data$pd_d5_pftap1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap2_1m_1.factor = factor(data$pd_d5_pftap2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap3_1m_1.factor = factor(data$pd_d5_pftap3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra1_1m_1.factor = factor(data$pd_d5_pftra1_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra2_1m_1.factor = factor(data$pd_d5_pftra2_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra3_1m_1.factor = factor(data$pd_d5_pftra3_1m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$month_follow_up_pain_diary_complete.factor = factor(data$month_follow_up_pain_diary_complete,levels=c("0","1","2"))
data$months_complete.factor = factor(data$months_complete,levels=c("0","1","2"))
data$pd_notdone_pd_3m_1.factor = factor(data$pd_notdone_pd_3m_1,levels=c("1"))
data$pd_d1_9_3m_1.factor = factor(data$pd_d1_9_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_14_3m_1.factor = factor(data$pd_d1_14_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_20_3m_1.factor = factor(data$pd_d1_20_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec1_3m_1.factor = factor(data$pd_d1_pfacec1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec2_3m_1.factor = factor(data$pd_d1_pfacec2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec3_3m_1.factor = factor(data$pd_d1_pfacec3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem1_3m_1.factor = factor(data$pd_d1_pfacem1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem2_3m_1.factor = factor(data$pd_d1_pfacem2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem3_3m_1.factor = factor(data$pd_d1_pfacem3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami1_3m_1.factor = factor(data$pd_d1_pfami1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami2_3m_1.factor = factor(data$pd_d1_pfami2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami3_3m_1.factor = factor(data$pd_d1_pfami3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup1_3m_1.factor = factor(data$pd_d1_pfbup1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup2_3m_1.factor = factor(data$pd_d1_pfbup2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup3_3m_1.factor = factor(data$pd_d1_pfbup3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex1_3m_1.factor = factor(data$pd_d1_pfdex1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex2_3m_1.factor = factor(data$pd_d1_pfdex2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex3_3m_1.factor = factor(data$pd_d1_pfdex3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo1_3m_1.factor = factor(data$pd_d1_pfdiclo1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo2_3m_1.factor = factor(data$pd_d1_pfdiclo2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo3_3m_1.factor = factor(data$pd_d1_pfdiclo3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul1_3m_1.factor = factor(data$pd_d1_pfdul1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul2_3m_1.factor = factor(data$pd_d1_pfdul2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul3_3m_1.factor = factor(data$pd_d1_pfdul3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen1_3m_1.factor = factor(data$pd_d1_pffen1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen2_3m_1.factor = factor(data$pd_d1_pffen2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen3_3m_1.factor = factor(data$pd_d1_pffen3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab1_3m_1.factor = factor(data$pd_d1_pfgab1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab2_3m_1.factor = factor(data$pd_d1_pfgab2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab3_3m_1.factor = factor(data$pd_d1_pfgab3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd1_3m_1.factor = factor(data$pd_d1_pfhyd1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd2_3m_1.factor = factor(data$pd_d1_pfhyd2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd3_3m_1.factor = factor(data$pd_d1_pfhyd3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu1_3m_1.factor = factor(data$pd_d1_pfibu1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu2_3m_1.factor = factor(data$pd_d1_pfibu2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu3_3m_1.factor = factor(data$pd_d1_pfibu3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind1_3m_1.factor = factor(data$pd_d1_pfind1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind2_3m_1.factor = factor(data$pd_d1_pfind2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind3_3m_1.factor = factor(data$pd_d1_pfind3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket1_3m_1.factor = factor(data$pd_d1_pfket1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket2_3m_1.factor = factor(data$pd_d1_pfket2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket3_3m_1.factor = factor(data$pd_d1_pfket3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel1_3m_1.factor = factor(data$pd_d1_pfmel1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel2_3m_1.factor = factor(data$pd_d1_pfmel2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel3_3m_1.factor = factor(data$pd_d1_pfmel3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta1_3m_1.factor = factor(data$pd_d1_pfmeta1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta2_3m_1.factor = factor(data$pd_d1_pfmeta2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta3_3m_1.factor = factor(data$pd_d1_pfmeta3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet1_3m_1.factor = factor(data$pd_d1_pfmet1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet2_3m_1.factor = factor(data$pd_d1_pfmet2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet3_3m_1.factor = factor(data$pd_d1_pfmet3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor1_3m_1.factor = factor(data$pd_d1_pfmor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor2_3m_1.factor = factor(data$pd_d1_pfmor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor3_3m_1.factor = factor(data$pd_d1_pfmor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap1_3m_1.factor = factor(data$pd_d1_pfnap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap2_3m_1.factor = factor(data$pd_d1_pfnap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap3_3m_1.factor = factor(data$pd_d1_pfnap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor1_3m_1.factor = factor(data$pd_d1_pfnor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor2_3m_1.factor = factor(data$pd_d1_pfnor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor3_3m_1.factor = factor(data$pd_d1_pfnor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy1_3m_1.factor = factor(data$pd_d1_pfoxy1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy2_3m_1.factor = factor(data$pd_d1_pfoxy2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy3_3m_1.factor = factor(data$pd_d1_pfoxy3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac1_3m_1.factor = factor(data$pd_d1_pfparac1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac2_3m_1.factor = factor(data$pd_d1_pfparac2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac3_3m_1.factor = factor(data$pd_d1_pfparac3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe1_3m_1.factor = factor(data$pd_d1_pfphe1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe2_3m_1.factor = factor(data$pd_d1_pfphe2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe3_3m_1.factor = factor(data$pd_d1_pfphe3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg1_3m_1.factor = factor(data$pd_d1_pfpreg1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg2_3m_1.factor = factor(data$pd_d1_pfpreg2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg3_3m_1.factor = factor(data$pd_d1_pfpreg3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir1_3m_1.factor = factor(data$pd_d1_pfpir1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir2_3m_1.factor = factor(data$pd_d1_pfpir2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir3_3m_1.factor = factor(data$pd_d1_pfpir3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap1_3m_1.factor = factor(data$pd_d1_pftap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap2_3m_1.factor = factor(data$pd_d1_pftap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap3_3m_1.factor = factor(data$pd_d1_pftap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra1_3m_1.factor = factor(data$pd_d1_pftra1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra2_3m_1.factor = factor(data$pd_d1_pftra2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra3_3m_1.factor = factor(data$pd_d1_pftra3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_9_3m_1.factor = factor(data$pd_d2_9_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_14_3m_1.factor = factor(data$pd_d2_14_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_20_3m_1.factor = factor(data$pd_d2_20_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec1_3m_1.factor = factor(data$pd_d2_pfacec1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec2_3m_1.factor = factor(data$pd_d2_pfacec2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec3_3m_1.factor = factor(data$pd_d2_pfacec3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem1_3m_1.factor = factor(data$pd_d2_pfacem1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem2_3m_1.factor = factor(data$pd_d2_pfacem2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem3_3m_1.factor = factor(data$pd_d2_pfacem3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami1_3m_1.factor = factor(data$pd_d2_pfami1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami2_3m_1.factor = factor(data$pd_d2_pfami2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami3_3m_1.factor = factor(data$pd_d2_pfami3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup1_3m_1.factor = factor(data$pd_d2_pfbup1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup2_3m_1.factor = factor(data$pd_d2_pfbup2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup3_3m_1.factor = factor(data$pd_d2_pfbup3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex1_3m_1.factor = factor(data$pd_d2_pfdex1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex2_3m_1.factor = factor(data$pd_d2_pfdex2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex3_3m_1.factor = factor(data$pd_d2_pfdex3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo1_3m_1.factor = factor(data$pd_d2_pfdiclo1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo2_3m_1.factor = factor(data$pd_d2_pfdiclo2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo3_3m_1.factor = factor(data$pd_d2_pfdiclo3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul1_3m_1.factor = factor(data$pd_d2_pfdul1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul2_3m_1.factor = factor(data$pd_d2_pfdul2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul3_3m_1.factor = factor(data$pd_d2_pfdul3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen1_3m_1.factor = factor(data$pd_d2_pffen1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen2_3m_1.factor = factor(data$pd_d2_pffen2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen3_3m_1.factor = factor(data$pd_d2_pffen3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab1_3m_1.factor = factor(data$pd_d2_pfgab1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab2_3m_1.factor = factor(data$pd_d2_pfgab2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab3_3m_1.factor = factor(data$pd_d2_pfgab3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd1_3m_1.factor = factor(data$pd_d2_pfhyd1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd2_3m_1.factor = factor(data$pd_d2_pfhyd2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd3_3m_1.factor = factor(data$pd_d2_pfhyd3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu1_3m_1.factor = factor(data$pd_d2_pfibu1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu2_3m_1.factor = factor(data$pd_d2_pfibu2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu3_3m_1.factor = factor(data$pd_d2_pfibu3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind1_3m_1.factor = factor(data$pd_d2_pfind1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind2_3m_1.factor = factor(data$pd_d2_pfind2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind3_3m_1.factor = factor(data$pd_d2_pfind3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket1_3m_1.factor = factor(data$pd_d2_pfket1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket2_3m_1.factor = factor(data$pd_d2_pfket2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket3_3m_1.factor = factor(data$pd_d2_pfket3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel1_3m_1.factor = factor(data$pd_d2_pfmel1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel2_3m_1.factor = factor(data$pd_d2_pfmel2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel3_3m_1.factor = factor(data$pd_d2_pfmel3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta1_3m_1.factor = factor(data$pd_d2_pfmeta1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta2_3m_1.factor = factor(data$pd_d2_pfmeta2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta3_3m_1.factor = factor(data$pd_d2_pfmeta3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet1_3m_1.factor = factor(data$pd_d2_pfmet1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet2_3m_1.factor = factor(data$pd_d2_pfmet2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet3_3m_1.factor = factor(data$pd_d2_pfmet3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor1_3m_1.factor = factor(data$pd_d2_pfmor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor2_3m_1.factor = factor(data$pd_d2_pfmor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor3_3m_1.factor = factor(data$pd_d2_pfmor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap1_3m_1.factor = factor(data$pd_d2_pfnap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap2_3m_1.factor = factor(data$pd_d2_pfnap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap3_3m_1.factor = factor(data$pd_d2_pfnap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor1_3m_1.factor = factor(data$pd_d2_pfnor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor2_3m_1.factor = factor(data$pd_d2_pfnor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor3_3m_1.factor = factor(data$pd_d2_pfnor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy1_3m_1.factor = factor(data$pd_d2_pfoxy1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy2_3m_1.factor = factor(data$pd_d2_pfoxy2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy3_3m_1.factor = factor(data$pd_d2_pfoxy3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac1_3m_1.factor = factor(data$pd_d2_pfparac1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac2_3m_1.factor = factor(data$pd_d2_pfparac2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac3_3m_1.factor = factor(data$pd_d2_pfparac3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe1_3m_1.factor = factor(data$pd_d2_pfphe1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe2_3m_1.factor = factor(data$pd_d2_pfphe2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe3_3m_1.factor = factor(data$pd_d2_pfphe3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir1_3m_1.factor = factor(data$pd_d2_pfpir1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir2_3m_1.factor = factor(data$pd_d2_pfpir2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir3_3m_1.factor = factor(data$pd_d2_pfpir3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg1_3m_1.factor = factor(data$pd_d2_pfpreg1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg2_3m_1.factor = factor(data$pd_d2_pfpreg2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg3_3m_1.factor = factor(data$pd_d2_pfpreg3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap1_3m_1.factor = factor(data$pd_d2_pftap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap2_3m_1.factor = factor(data$pd_d2_pftap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap3_3m_1.factor = factor(data$pd_d2_pftap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra1_3m_1.factor = factor(data$pd_d2_pftra1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra2_3m_1.factor = factor(data$pd_d2_pftra2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra3_3m_1.factor = factor(data$pd_d2_pftra3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_9_3m_1.factor = factor(data$pd_d3_9_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_14_3m_1.factor = factor(data$pd_d3_14_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_20_3m_1.factor = factor(data$pd_d3_20_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec1_3m_1.factor = factor(data$pd_d3_pfacec1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec2_3m_1.factor = factor(data$pd_d3_pfacec2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec3_3m_1.factor = factor(data$pd_d3_pfacec3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem1_3m_1.factor = factor(data$pd_d3_pfacem1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem2_3m_1.factor = factor(data$pd_d3_pfacem2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem3_3m_1.factor = factor(data$pd_d3_pfacem3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami1_3m_1.factor = factor(data$pd_d3_pfami1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami2_3m_1.factor = factor(data$pd_d3_pfami2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami3_3m_1.factor = factor(data$pd_d3_pfami3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup1_3m_1.factor = factor(data$pd_d3_pfbup1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup2_3m_1.factor = factor(data$pd_d3_pfbup2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup3_3m_1.factor = factor(data$pd_d3_pfbup3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex1_3m_1.factor = factor(data$pd_d3_pfdex1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex2_3m_1.factor = factor(data$pd_d3_pfdex2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex3_3m_1.factor = factor(data$pd_d3_pfdex3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo1_3m_1.factor = factor(data$pd_d3_pfdiclo1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo2_3m_1.factor = factor(data$pd_d3_pfdiclo2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo3_3m_1.factor = factor(data$pd_d3_pfdiclo3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul1_3m_1.factor = factor(data$pd_d3_pfdul1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul2_3m_1.factor = factor(data$pd_d3_pfdul2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul3_3m_1.factor = factor(data$pd_d3_pfdul3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen1_3m_1.factor = factor(data$pd_d3_pffen1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen2_3m_1.factor = factor(data$pd_d3_pffen2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen3_3m_1.factor = factor(data$pd_d3_pffen3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab1_3m_1.factor = factor(data$pd_d3_pfgab1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab2_3m_1.factor = factor(data$pd_d3_pfgab2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab3_3m_1.factor = factor(data$pd_d3_pfgab3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd1_3m_1.factor = factor(data$pd_d3_pfhyd1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd2_3m_1.factor = factor(data$pd_d3_pfhyd2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd3_3m_1.factor = factor(data$pd_d3_pfhyd3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu1_3m_1.factor = factor(data$pd_d3_pfibu1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu2_3m_1.factor = factor(data$pd_d3_pfibu2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu3_3m_1.factor = factor(data$pd_d3_pfibu3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind1_3m_1.factor = factor(data$pd_d3_pfind1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind2_3m_1.factor = factor(data$pd_d3_pfind2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind3_3m_1.factor = factor(data$pd_d3_pfind3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket1_3m_1.factor = factor(data$pd_d3_pfket1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket2_3m_1.factor = factor(data$pd_d3_pfket2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket3_3m_1.factor = factor(data$pd_d3_pfket3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel1_3m_1.factor = factor(data$pd_d3_pfmel1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel2_3m_1.factor = factor(data$pd_d3_pfmel2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel3_3m_1.factor = factor(data$pd_d3_pfmel3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta1_3m_1.factor = factor(data$pd_d3_pfmeta1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta2_3m_1.factor = factor(data$pd_d3_pfmeta2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta3_3m_1.factor = factor(data$pd_d3_pfmeta3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor1_3m_1.factor = factor(data$pd_d3_pfmor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor2_3m_1.factor = factor(data$pd_d3_pfmor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor3_3m_1.factor = factor(data$pd_d3_pfmor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet1_3m_1.factor = factor(data$pd_d3_pfmet1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet2_3m_1.factor = factor(data$pd_d3_pfmet2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet3_3m_1.factor = factor(data$pd_d3_pfmet3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap1_3m_1.factor = factor(data$pd_d3_pfnap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap2_3m_1.factor = factor(data$pd_d3_pfnap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap3_3m_1.factor = factor(data$pd_d3_pfnap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor1_3m_1.factor = factor(data$pd_d3_pfnor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor2_3m_1.factor = factor(data$pd_d3_pfnor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor3_3m_1.factor = factor(data$pd_d3_pfnor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy1_3m_1.factor = factor(data$pd_d3_pfoxy1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy2_3m_1.factor = factor(data$pd_d3_pfoxy2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy3_3m_1.factor = factor(data$pd_d3_pfoxy3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac1_3m_1.factor = factor(data$pd_d3_pfparac1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac2_3m_1.factor = factor(data$pd_d3_pfparac2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac3_3m_1.factor = factor(data$pd_d3_pfparac3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe1_3m_1.factor = factor(data$pd_d3_pfphe1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe2_3m_1.factor = factor(data$pd_d3_pfphe2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe3_3m_1.factor = factor(data$pd_d3_pfphe3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg1_3m_1.factor = factor(data$pd_d3_pfpreg1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg2_3m_1.factor = factor(data$pd_d3_pfpreg2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg3_3m_1.factor = factor(data$pd_d3_pfpreg3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir1_3m_1.factor = factor(data$pd_d3_pfpir1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir2_3m_1.factor = factor(data$pd_d3_pfpir2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir3_3m_1.factor = factor(data$pd_d3_pfpir3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap1_3m_1.factor = factor(data$pd_d3_pftap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap2_3m_1.factor = factor(data$pd_d3_pftap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap3_3m_1.factor = factor(data$pd_d3_pftap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra1_3m_1.factor = factor(data$pd_d3_pftra1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra2_3m_1.factor = factor(data$pd_d3_pftra2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra3_3m_1.factor = factor(data$pd_d3_pftra3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_9_3m_1.factor = factor(data$pd_d4_9_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_14_3m_1.factor = factor(data$pd_d4_14_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_20_3m_1.factor = factor(data$pd_d4_20_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec1_3m_1.factor = factor(data$pd_d4_pfacec1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec2_3m_1.factor = factor(data$pd_d4_pfacec2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec3_3m_1.factor = factor(data$pd_d4_pfacec3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem1_3m_1.factor = factor(data$pd_d4_pfacem1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem2_3m_1.factor = factor(data$pd_d4_pfacem2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem3_3m_1.factor = factor(data$pd_d4_pfacem3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami1_3m_1.factor = factor(data$pd_d4_pfami1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami2_3m_1.factor = factor(data$pd_d4_pfami2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami3_3m_1.factor = factor(data$pd_d4_pfami3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup1_3m_1.factor = factor(data$pd_d4_pfbup1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup2_3m_1.factor = factor(data$pd_d4_pfbup2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup3_3m_1.factor = factor(data$pd_d4_pfbup3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex1_3m_1.factor = factor(data$pd_d4_pfdex1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex2_3m_1.factor = factor(data$pd_d4_pfdex2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex3_3m_1.factor = factor(data$pd_d4_pfdex3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo1_3m_1.factor = factor(data$pd_d4_pfdiclo1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo2_3m_1.factor = factor(data$pd_d4_pfdiclo2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo3_3m_1.factor = factor(data$pd_d4_pfdiclo3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul1_3m_1.factor = factor(data$pd_d4_pfdul1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul2_3m_1.factor = factor(data$pd_d4_pfdul2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul3_3m_1.factor = factor(data$pd_d4_pfdul3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen1_3m_1.factor = factor(data$pd_d4_pffen1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen2_3m_1.factor = factor(data$pd_d4_pffen2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen3_3m_1.factor = factor(data$pd_d4_pffen3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab1_3m_1.factor = factor(data$pd_d4_pfgab1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab2_3m_1.factor = factor(data$pd_d4_pfgab2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab3_3m_1.factor = factor(data$pd_d4_pfgab3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd1_3m_1.factor = factor(data$pd_d4_pfhyd1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd2_3m_1.factor = factor(data$pd_d4_pfhyd2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd3_3m_1.factor = factor(data$pd_d4_pfhyd3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu1_3m_1.factor = factor(data$pd_d4_pfibu1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu2_3m_1.factor = factor(data$pd_d4_pfibu2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu3_3m_1.factor = factor(data$pd_d4_pfibu3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind1_3m_1.factor = factor(data$pd_d4_pfind1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind2_3m_1.factor = factor(data$pd_d4_pfind2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind3_3m_1.factor = factor(data$pd_d4_pfind3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket1_3m_1.factor = factor(data$pd_d4_pfket1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket2_3m_1.factor = factor(data$pd_d4_pfket2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket3_3m_1.factor = factor(data$pd_d4_pfket3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel1_3m_1.factor = factor(data$pd_d4_pfmel1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel2_3m_1.factor = factor(data$pd_d4_pfmel2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel3_3m_1.factor = factor(data$pd_d4_pfmel3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta1_3m_1.factor = factor(data$pd_d4_pfmeta1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta2_3m_1.factor = factor(data$pd_d4_pfmeta2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta3_3m_1.factor = factor(data$pd_d4_pfmeta3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet1_3m_1.factor = factor(data$pd_d4_pfmet1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet2_3m_1.factor = factor(data$pd_d4_pfmet2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet3_3m_1.factor = factor(data$pd_d4_pfmet3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor1_3m_1.factor = factor(data$pd_d4_pfmor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor2_3m_1.factor = factor(data$pd_d4_pfmor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor3_3m_1.factor = factor(data$pd_d4_pfmor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap1_3m_1.factor = factor(data$pd_d4_pfnap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap2_3m_1.factor = factor(data$pd_d4_pfnap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap3_3m_1.factor = factor(data$pd_d4_pfnap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor1_3m_1.factor = factor(data$pd_d4_pfnor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor2_3m_1.factor = factor(data$pd_d4_pfnor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor3_3m_1.factor = factor(data$pd_d4_pfnor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy1_3m_1.factor = factor(data$pd_d4_pfoxy1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy2_3m_1.factor = factor(data$pd_d4_pfoxy2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy3_3m_1.factor = factor(data$pd_d4_pfoxy3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac1_3m_1.factor = factor(data$pd_d4_pfparac1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac2_3m_1.factor = factor(data$pd_d4_pfparac2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac3_3m_1.factor = factor(data$pd_d4_pfparac3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe1_3m_1.factor = factor(data$pd_d4_pfphe1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe2_3m_1.factor = factor(data$pd_d4_pfphe2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe3_3m_1.factor = factor(data$pd_d4_pfphe3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg1_3m_1.factor = factor(data$pd_d4_pfpreg1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg2_3m_1.factor = factor(data$pd_d4_pfpreg2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg3_3m_1.factor = factor(data$pd_d4_pfpreg3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir1_3m_1.factor = factor(data$pd_d4_pfpir1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir2_3m_1.factor = factor(data$pd_d4_pfpir2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir3_3m_1.factor = factor(data$pd_d4_pfpir3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap1_3m_1.factor = factor(data$pd_d4_pftap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap2_3m_1.factor = factor(data$pd_d4_pftap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap3_3m_1.factor = factor(data$pd_d4_pftap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra1_3m_1.factor = factor(data$pd_d4_pftra1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra2_3m_1.factor = factor(data$pd_d4_pftra2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra3_3m_1.factor = factor(data$pd_d4_pftra3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_9_3m_1.factor = factor(data$pd_d5_9_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_14_3m_1.factor = factor(data$pd_d5_14_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_20_3m_1.factor = factor(data$pd_d5_20_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec1_3m_1.factor = factor(data$pd_d5_pfacec1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec2_3m_1.factor = factor(data$pd_d5_pfacec2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec3_3m_1.factor = factor(data$pd_d5_pfacec3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem1_3m_1.factor = factor(data$pd_d5_pfacem1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem2_3m_1.factor = factor(data$pd_d5_pfacem2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem3_3m_1.factor = factor(data$pd_d5_pfacem3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami1_3m_1.factor = factor(data$pd_d5_pfami1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami2_3m_1.factor = factor(data$pd_d5_pfami2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami3_3m_1.factor = factor(data$pd_d5_pfami3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup1_3m_1.factor = factor(data$pd_d5_pfbup1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup2_3m_1.factor = factor(data$pd_d5_pfbup2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup3_3m_1.factor = factor(data$pd_d5_pfbup3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex1_3m_1.factor = factor(data$pd_d5_pfdex1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex2_3m_1.factor = factor(data$pd_d5_pfdex2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex3_3m_1.factor = factor(data$pd_d5_pfdex3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo1_3m_1.factor = factor(data$pd_d5_pfdiclo1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo2_3m_1.factor = factor(data$pd_d5_pfdiclo2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo3_3m_1.factor = factor(data$pd_d5_pfdiclo3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul1_3m_1.factor = factor(data$pd_d5_pfdul1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul2_3m_1.factor = factor(data$pd_d5_pfdul2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul3_3m_1.factor = factor(data$pd_d5_pfdul3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen1_3m_1.factor = factor(data$pd_d5_pffen1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen2_3m_1.factor = factor(data$pd_d5_pffen2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen3_3m_1.factor = factor(data$pd_d5_pffen3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab1_3m_1.factor = factor(data$pd_d5_pfgab1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab2_3m_1.factor = factor(data$pd_d5_pfgab2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab3_3m_1.factor = factor(data$pd_d5_pfgab3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd1_3m_1.factor = factor(data$pd_d5_pfhyd1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd2_3m_1.factor = factor(data$pd_d5_pfhyd2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd3_3m_1.factor = factor(data$pd_d5_pfhyd3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu1_3m_1.factor = factor(data$pd_d5_pfibu1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu2_3m_1.factor = factor(data$pd_d5_pfibu2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu3_3m_1.factor = factor(data$pd_d5_pfibu3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind1_3m_1.factor = factor(data$pd_d5_pfind1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind2_3m_1.factor = factor(data$pd_d5_pfind2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind3_3m_1.factor = factor(data$pd_d5_pfind3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket1_3m_1.factor = factor(data$pd_d5_pfket1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket2_3m_1.factor = factor(data$pd_d5_pfket2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket3_3m_1.factor = factor(data$pd_d5_pfket3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel1_3m_1.factor = factor(data$pd_d5_pfmel1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel2_3m_1.factor = factor(data$pd_d5_pfmel2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel3_3m_1.factor = factor(data$pd_d5_pfmel3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta1_3m_1.factor = factor(data$pd_d5_pfmeta1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta2_3m_1.factor = factor(data$pd_d5_pfmeta2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta3_3m_1.factor = factor(data$pd_d5_pfmeta3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet1_3m_1.factor = factor(data$pd_d5_pfmet1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet2_3m_1.factor = factor(data$pd_d5_pfmet2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet3_3m_1.factor = factor(data$pd_d5_pfmet3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor1_3m_1.factor = factor(data$pd_d5_pfmor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor2_3m_1.factor = factor(data$pd_d5_pfmor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor3_3m_1.factor = factor(data$pd_d5_pfmor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap1_3m_1.factor = factor(data$pd_d5_pfnap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap2_3m_1.factor = factor(data$pd_d5_pfnap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap3_3m_1.factor = factor(data$pd_d5_pfnap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor1_3m_1.factor = factor(data$pd_d5_pfnor1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor2_3m_1.factor = factor(data$pd_d5_pfnor2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor3_3m_1.factor = factor(data$pd_d5_pfnor3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy1_3m_1.factor = factor(data$pd_d5_pfoxy1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy2_3m_1.factor = factor(data$pd_d5_pfoxy2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy3_3m_1.factor = factor(data$pd_d5_pfoxy3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac1_3m_1.factor = factor(data$pd_d5_pfparac1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac2_3m_1.factor = factor(data$pd_d5_pfparac2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac3_3m_1.factor = factor(data$pd_d5_pfparac3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe1_3m_1.factor = factor(data$pd_d5_pfphe1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe2_3m_1.factor = factor(data$pd_d5_pfphe2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe3_3m_1.factor = factor(data$pd_d5_pfphe3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg1_3m_1.factor = factor(data$pd_d5_pfpreg1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg2_3m_1.factor = factor(data$pd_d5_pfpreg2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg3_3m_1.factor = factor(data$pd_d5_pfpreg3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir1_3m_1.factor = factor(data$pd_d5_pfpir1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir2_3m_1.factor = factor(data$pd_d5_pfpir2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir3_3m_1.factor = factor(data$pd_d5_pfpir3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap1_3m_1.factor = factor(data$pd_d5_pftap1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap2_3m_1.factor = factor(data$pd_d5_pftap2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap3_3m_1.factor = factor(data$pd_d5_pftap3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra1_3m_1.factor = factor(data$pd_d5_pftra1_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra2_3m_1.factor = factor(data$pd_d5_pftra2_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra3_3m_1.factor = factor(data$pd_d5_pftra3_3m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$months_follow_up_pain_diary_complete.factor = factor(data$months_follow_up_pain_diary_complete,levels=c("0","1","2"))
data$gelstix_3m_advev1_1.factor = factor(data$gelstix_3m_advev1_1,levels=c("1","0"))
data$gelstix_3m_advev1_inten_1.factor = factor(data$gelstix_3m_advev1_inten_1,levels=c("1","2","3"))
data$gelstix_3m_advev1_action_1.factor = factor(data$gelstix_3m_advev1_action_1,levels=c("1","2","3"))
data$gelstix_3m_advev1_relat_1.factor = factor(data$gelstix_3m_advev1_relat_1,levels=c("1","2","3","4","5"))
data$gelstix_3m_advev1_outc_1.factor = factor(data$gelstix_3m_advev1_outc_1,levels=c("1","2","3","4","5"))
data$gelstix_3m_advev1_sae_1.factor = factor(data$gelstix_3m_advev1_sae_1,levels=c("1","0"))
data$gelstix_3m_advev2_intens_1.factor = factor(data$gelstix_3m_advev2_intens_1,levels=c("1","2","3"))
data$gelstix_3m_advev2_action_1.factor = factor(data$gelstix_3m_advev2_action_1,levels=c("1","2","3"))
data$gelstix_3m_advev2_relat_1.factor = factor(data$gelstix_3m_advev2_relat_1,levels=c("1","2","3","4","5"))
data$gelstix_3m_advev2_outc_1.factor = factor(data$gelstix_3m_advev2_outc_1,levels=c("1","2","3","4","5"))
data$gelstix_3m_advev2_sae_1.factor = factor(data$gelstix_3m_advev2_sae_1,levels=c("1","0"))
data$gelstix_3m_advev3_intens_1.factor = factor(data$gelstix_3m_advev3_intens_1,levels=c("1","2","3"))
data$gelstix_3m_advev3_action_1.factor = factor(data$gelstix_3m_advev3_action_1,levels=c("1","2","3"))
data$gelstix_3m_advev3_relat_1.factor = factor(data$gelstix_3m_advev3_relat_1,levels=c("1","2","3","4","5"))
data$gelstix_3m_advev3_outc_1.factor = factor(data$gelstix_3m_advev3_outc_1,levels=c("1","2","3","4","5"))
data$gelstix_3m_advev3_sae_1.factor = factor(data$gelstix_3m_advev3_sae_1,levels=c("1","0"))
data$months_adverse_event_complete.factor = factor(data$months_adverse_event_complete,levels=c("0","1","2"))
data$pd_notdone_quest_3m_1.factor = factor(data$pd_notdone_quest_3m_1,levels=c("1"))
data$eq1_3m_1.factor = factor(data$eq1_3m_1,levels=c("0","1","2","3","4"))
data$eq2_3m_1.factor = factor(data$eq2_3m_1,levels=c("0","1","2","3","4"))
data$eq3_3m_1.factor = factor(data$eq3_3m_1,levels=c("0","1","2","3","4"))
data$eq4_3m_1.factor = factor(data$eq4_3m_1,levels=c("0","1","2","3","4"))
data$eq5_3m_1.factor = factor(data$eq5_3m_1,levels=c("0","1","2","3","4"))
data$eq6_3m_1.factor = factor(data$eq6_3m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"))
data$pgic_3m_1.factor = factor(data$pgic_3m_1,levels=c("1","2","3","4","5","6","7"))
data$months_questionnaires_complete.factor = factor(data$months_questionnaires_complete,levels=c("0","1","2"))
data$months_34d630_complete.factor = factor(data$months_34d630_complete,levels=c("0","1","2"))
data$es_occuptime_6m_1.factor = factor(data$es_occuptime_6m_1,levels=c("1","2","3","4"))
data$es_parttime_6m_1.factor = factor(data$es_parttime_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"))
data$es_legpain_6m_1.factor = factor(data$es_legpain_6m_1,levels=c("1","0"))
data$es_backpain_6m_1.factor = factor(data$es_backpain_6m_1,levels=c("1","0"))
data$es_disab_6m_1.factor = factor(data$es_disab_6m_1,levels=c("1","0"))
data$es_sick_6m_1.factor = factor(data$es_sick_6m_1,levels=c("1","0"))
data$es_other_6m_1.factor = factor(data$es_other_6m_1,levels=c("1","0"))
data$months_employment_status_complete.factor = factor(data$months_employment_status_complete,levels=c("0","1","2"))
data$pd_notdone_pd_6m_1.factor = factor(data$pd_notdone_pd_6m_1,levels=c("1"))
data$pd_d1_9_6m_1.factor = factor(data$pd_d1_9_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_14_6m_1.factor = factor(data$pd_d1_14_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_20_6m_1.factor = factor(data$pd_d1_20_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec1_6m_1.factor = factor(data$pd_d1_pfacec1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec2_6m_1.factor = factor(data$pd_d1_pfacec2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec3_6m_1.factor = factor(data$pd_d1_pfacec3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem1_6m_1.factor = factor(data$pd_d1_pfacem1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem2_6m_1.factor = factor(data$pd_d1_pfacem2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem3_6m_1.factor = factor(data$pd_d1_pfacem3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami1_6m_1.factor = factor(data$pd_d1_pfami1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami2_6m_1.factor = factor(data$pd_d1_pfami2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami3_6m_1.factor = factor(data$pd_d1_pfami3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup1_6m_1.factor = factor(data$pd_d1_pfbup1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup2_6m_1.factor = factor(data$pd_d1_pfbup2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup3_6m_1.factor = factor(data$pd_d1_pfbup3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex1_6m_1.factor = factor(data$pd_d1_pfdex1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex2_6m_1.factor = factor(data$pd_d1_pfdex2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex3_6m_1.factor = factor(data$pd_d1_pfdex3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo1_6m_1.factor = factor(data$pd_d1_pfdiclo1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo2_6m_1.factor = factor(data$pd_d1_pfdiclo2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo3_6m_1.factor = factor(data$pd_d1_pfdiclo3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul1_6m_1.factor = factor(data$pd_d2_pfdul1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul2_6m_1.factor = factor(data$pd_d2_pfdul2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul3_6m_1.factor = factor(data$pd_d2_pfdul3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen1_6m_1.factor = factor(data$pd_d1_pffen1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen2_6m_1.factor = factor(data$pd_d1_pffen2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen3_6m_1.factor = factor(data$pd_d1_pffen3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab1_6m_1.factor = factor(data$pd_d1_pfgab1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab2_6m_1.factor = factor(data$pd_d1_pfgab2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab3_6m_1.factor = factor(data$pd_d1_pfgab3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd1_6m_1.factor = factor(data$pd_d1_pfhyd1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd2_6m_1.factor = factor(data$pd_d1_pfhyd2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd3_6m_1.factor = factor(data$pd_d1_pfhyd3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu1_6m_1.factor = factor(data$pd_d1_pfibu1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu2_6m_1.factor = factor(data$pd_d1_pfibu2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu3_6m_1.factor = factor(data$pd_d1_pfibu3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind1_6m_1.factor = factor(data$pd_d1_pfind1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind2_6m_1.factor = factor(data$pd_d1_pfind2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind3_6m_1.factor = factor(data$pd_d1_pfind3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket1_6m_1.factor = factor(data$pd_d1_pfket1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket2_6m_1.factor = factor(data$pd_d1_pfket2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket3_6m_1.factor = factor(data$pd_d1_pfket3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel1_6m_1.factor = factor(data$pd_d1_pfmel1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel2_6m_1.factor = factor(data$pd_d1_pfmel2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel3_6m_1.factor = factor(data$pd_d1_pfmel3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta1_6m_1.factor = factor(data$pd_d1_pfmeta1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta2_6m_1.factor = factor(data$pd_d1_pfmeta2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta3_6m_1.factor = factor(data$pd_d1_pfmeta3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet1_6m_1.factor = factor(data$pd_d1_pfmet1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet2_6m_1.factor = factor(data$pd_d1_pfmet2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet3_6m_1.factor = factor(data$pd_d1_pfmet3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor1_6m_1.factor = factor(data$pd_d1_pfmor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor2_6m_1.factor = factor(data$pd_d1_pfmor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor3_6m_1.factor = factor(data$pd_d1_pfmor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap1_6m_1.factor = factor(data$pd_d1_pfnap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap2_6m_1.factor = factor(data$pd_d1_pfnap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap3_6m_1.factor = factor(data$pd_d1_pfnap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor1_6m_1.factor = factor(data$pd_d1_pfnor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor2_6m_1.factor = factor(data$pd_d1_pfnor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor3_6m_1.factor = factor(data$pd_d1_pfnor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy1_6m_1.factor = factor(data$pd_d1_pfoxy1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy2_6m_1.factor = factor(data$pd_d1_pfoxy2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy3_6m_1.factor = factor(data$pd_d1_pfoxy3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac1_6m_1.factor = factor(data$pd_d1_pfparac1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac2_6m_1.factor = factor(data$pd_d1_pfparac2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac3_6m_1.factor = factor(data$pd_d1_pfparac3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe1_6m_1.factor = factor(data$pd_d1_pfphe1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe2_6m_1.factor = factor(data$pd_d1_pfphe2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe3_6m_1.factor = factor(data$pd_d1_pfphe3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg1_6m_1.factor = factor(data$pd_d1_pfpreg1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg2_6m_1.factor = factor(data$pd_d1_pfpreg2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg3_6m_1.factor = factor(data$pd_d1_pfpreg3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir1_6m_1.factor = factor(data$pd_d1_pfpir1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir2_6m_1.factor = factor(data$pd_d1_pfpir2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir3_6m_1.factor = factor(data$pd_d1_pfpir3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap1_6m_1.factor = factor(data$pd_d1_pftap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap2_6m_1.factor = factor(data$pd_d1_pftap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap3_6m_1.factor = factor(data$pd_d1_pftap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra1_6m_1.factor = factor(data$pd_d1_pftra1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra2_6m_1.factor = factor(data$pd_d1_pftra2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra3_6m_1.factor = factor(data$pd_d1_pftra3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_9_6m_1.factor = factor(data$pd_d2_9_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_14_6m_1.factor = factor(data$pd_d2_14_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_20_6m_1.factor = factor(data$pd_d2_20_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec1_6m_1.factor = factor(data$pd_d2_pfacec1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec2_6m_1.factor = factor(data$pd_d2_pfacec2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec3_6m_1.factor = factor(data$pd_d2_pfacec3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem1_6m_1.factor = factor(data$pd_d2_pfacem1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem2_6m_1.factor = factor(data$pd_d2_pfacem2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem3_6m_1.factor = factor(data$pd_d2_pfacem3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami1_6m_1.factor = factor(data$pd_d2_pfami1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami2_6m_1.factor = factor(data$pd_d2_pfami2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami3_6m_1.factor = factor(data$pd_d2_pfami3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup1_6m_1.factor = factor(data$pd_d2_pfbup1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup2_6m_1.factor = factor(data$pd_d2_pfbup2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup3_6m_1.factor = factor(data$pd_d2_pfbup3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex1_6m_1.factor = factor(data$pd_d2_pfdex1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex2_6m_1.factor = factor(data$pd_d2_pfdex2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex3_6m_1.factor = factor(data$pd_d2_pfdex3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo1_6m_1.factor = factor(data$pd_d2_pfdiclo1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo2_6m_1.factor = factor(data$pd_d2_pfdiclo2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo3_6m_1.factor = factor(data$pd_d2_pfdiclo3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul1_6m_1.factor = factor(data$pd_d1_pfdul1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul2_6m_1.factor = factor(data$pd_d1_pfdul2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul3_6m_1.factor = factor(data$pd_d1_pfdul3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen1_6m_1.factor = factor(data$pd_d2_pffen1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen2_6m_1.factor = factor(data$pd_d2_pffen2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen3_6m_1.factor = factor(data$pd_d2_pffen3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab1_6m_1.factor = factor(data$pd_d2_pfgab1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab2_6m_1.factor = factor(data$pd_d2_pfgab2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab3_6m_1.factor = factor(data$pd_d2_pfgab3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd1_6m_1.factor = factor(data$pd_d2_pfhyd1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd2_6m_1.factor = factor(data$pd_d2_pfhyd2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd3_6m_1.factor = factor(data$pd_d2_pfhyd3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu1_6m_1.factor = factor(data$pd_d2_pfibu1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu2_6m_1.factor = factor(data$pd_d2_pfibu2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu3_6m_1.factor = factor(data$pd_d2_pfibu3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind1_6m_1.factor = factor(data$pd_d2_pfind1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind2_6m_1.factor = factor(data$pd_d2_pfind2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind3_6m_1.factor = factor(data$pd_d2_pfind3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket1_6m_1.factor = factor(data$pd_d2_pfket1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket2_6m_1.factor = factor(data$pd_d2_pfket2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket3_6m_1.factor = factor(data$pd_d2_pfket3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel1_6m_1.factor = factor(data$pd_d2_pfmel1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel2_6m_1.factor = factor(data$pd_d2_pfmel2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel3_6m_1.factor = factor(data$pd_d2_pfmel3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta1_6m_1.factor = factor(data$pd_d2_pfmeta1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta2_6m_1.factor = factor(data$pd_d2_pfmeta2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta3_6m_1.factor = factor(data$pd_d2_pfmeta3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet1_6m_1.factor = factor(data$pd_d2_pfmet1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet2_6m_1.factor = factor(data$pd_d2_pfmet2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet3_6m_1.factor = factor(data$pd_d2_pfmet3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor1_6m_1.factor = factor(data$pd_d2_pfmor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor2_6m_1.factor = factor(data$pd_d2_pfmor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor3_6m_1.factor = factor(data$pd_d2_pfmor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap1_6m_1.factor = factor(data$pd_d2_pfnap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap2_6m_1.factor = factor(data$pd_d2_pfnap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap3_6m_1.factor = factor(data$pd_d2_pfnap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor1_6m_1.factor = factor(data$pd_d2_pfnor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor2_6m_1.factor = factor(data$pd_d2_pfnor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor3_6m_1.factor = factor(data$pd_d2_pfnor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy1_6m_1.factor = factor(data$pd_d2_pfoxy1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy2_6m_1.factor = factor(data$pd_d2_pfoxy2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy3_6m_1.factor = factor(data$pd_d2_pfoxy3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac1_6m_1.factor = factor(data$pd_d2_pfparac1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac2_6m_1.factor = factor(data$pd_d2_pfparac2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac3_6m_1.factor = factor(data$pd_d2_pfparac3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe1_6m_1.factor = factor(data$pd_d2_pfphe1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe2_6m_1.factor = factor(data$pd_d2_pfphe2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe3_6m_1.factor = factor(data$pd_d2_pfphe3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg1_6m_1.factor = factor(data$pd_d2_pfpreg1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg2_6m_1.factor = factor(data$pd_d2_pfpreg2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg3_6m_1.factor = factor(data$pd_d2_pfpreg3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir1_6m_1.factor = factor(data$pd_d2_pfpir1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir2_6m_1.factor = factor(data$pd_d2_pfpir2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir3_6m_1.factor = factor(data$pd_d2_pfpir3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap1_6m_1.factor = factor(data$pd_d2_pftap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap2_6m_1.factor = factor(data$pd_d2_pftap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap3_6m_1.factor = factor(data$pd_d2_pftap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra1_6m_1.factor = factor(data$pd_d2_pftra1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra2_6m_1.factor = factor(data$pd_d2_pftra2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra3_6m_1.factor = factor(data$pd_d2_pftra3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_9_6m_1.factor = factor(data$pd_d3_9_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_14_6m_1.factor = factor(data$pd_d3_14_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_20_6m_1.factor = factor(data$pd_d3_20_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec1_6m_1.factor = factor(data$pd_d3_pfacec1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec2_6m_1.factor = factor(data$pd_d3_pfacec2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec3_6m_1.factor = factor(data$pd_d3_pfacec3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem1_6m_1.factor = factor(data$pd_d3_pfacem1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem2_6m_1.factor = factor(data$pd_d3_pfacem2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem3_6m_1.factor = factor(data$pd_d3_pfacem3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami1_6m_1.factor = factor(data$pd_d3_pfami1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami2_6m_1.factor = factor(data$pd_d3_pfami2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami3_6m_1.factor = factor(data$pd_d3_pfami3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup1_6m_1.factor = factor(data$pd_d3_pfbup1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup2_6m_1.factor = factor(data$pd_d3_pfbup2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup3_6m_1.factor = factor(data$pd_d3_pfbup3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex1_6m_1.factor = factor(data$pd_d3_pfdex1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex2_6m_1.factor = factor(data$pd_d3_pfdex2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex3_6m_1.factor = factor(data$pd_d3_pfdex3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo1_6m_1.factor = factor(data$pd_d3_pfdiclo1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo2_6m_1.factor = factor(data$pd_d3_pfdiclo2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo3_6m_1.factor = factor(data$pd_d3_pfdiclo3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul1_6m_1.factor = factor(data$pd_d3_pfdul1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul2_6m_1.factor = factor(data$pd_d3_pfdul2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul3_6m_1.factor = factor(data$pd_d3_pfdul3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen1_6m_1.factor = factor(data$pd_d3_pffen1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen2_6m_1.factor = factor(data$pd_d3_pffen2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen3_6m_1.factor = factor(data$pd_d3_pffen3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab1_6m_1.factor = factor(data$pd_d3_pfgab1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab2_6m_1.factor = factor(data$pd_d3_pfgab2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab3_6m_1.factor = factor(data$pd_d3_pfgab3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd1_6m_1.factor = factor(data$pd_d3_pfhyd1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd2_6m_1.factor = factor(data$pd_d3_pfhyd2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd3_6m_1.factor = factor(data$pd_d3_pfhyd3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu1_6m_1.factor = factor(data$pd_d3_pfibu1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu2_6m_1.factor = factor(data$pd_d3_pfibu2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu3_6m_1.factor = factor(data$pd_d3_pfibu3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind1_6m_1.factor = factor(data$pd_d3_pfind1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind2_6m_1.factor = factor(data$pd_d3_pfind2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind3_6m_1.factor = factor(data$pd_d3_pfind3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket1_6m_1.factor = factor(data$pd_d3_pfket1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket2_6m_1.factor = factor(data$pd_d3_pfket2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket3_6m_1.factor = factor(data$pd_d3_pfket3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel1_6m_1.factor = factor(data$pd_d3_pfmel1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel2_6m_1.factor = factor(data$pd_d3_pfmel2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel3_6m_1.factor = factor(data$pd_d3_pfmel3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta1_6m_1.factor = factor(data$pd_d3_pfmeta1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta2_6m_1.factor = factor(data$pd_d3_pfmeta2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta3_6m_1.factor = factor(data$pd_d3_pfmeta3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet1_6m_1.factor = factor(data$pd_d3_pfmet1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet2_6m_1.factor = factor(data$pd_d3_pfmet2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet3_6m_1.factor = factor(data$pd_d3_pfmet3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor1_6m_1.factor = factor(data$pd_d3_pfmor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor2_6m_1.factor = factor(data$pd_d3_pfmor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor3_6m_1.factor = factor(data$pd_d3_pfmor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap1_6m_1.factor = factor(data$pd_d3_pfnap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap2_6m_1.factor = factor(data$pd_d3_pfnap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap3_6m_1.factor = factor(data$pd_d3_pfnap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor1_6m_1.factor = factor(data$pd_d3_pfnor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor2_6m_1.factor = factor(data$pd_d3_pfnor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor3_6m_1.factor = factor(data$pd_d3_pfnor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy1_6m_1.factor = factor(data$pd_d3_pfoxy1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy2_6m_1.factor = factor(data$pd_d3_pfoxy2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy3_6m_1.factor = factor(data$pd_d3_pfoxy3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac1_6m_1.factor = factor(data$pd_d3_pfparac1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac2_6m_1.factor = factor(data$pd_d3_pfparac2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac3_6m_1.factor = factor(data$pd_d3_pfparac3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe1_6m_1.factor = factor(data$pd_d3_pfphe1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe2_6m_1.factor = factor(data$pd_d3_pfphe2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe3_6m_1.factor = factor(data$pd_d3_pfphe3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg1_6m_1.factor = factor(data$pd_d3_pfpreg1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg2_6m_1.factor = factor(data$pd_d3_pfpreg2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg3_6m_1.factor = factor(data$pd_d3_pfpreg3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir1_6m_1.factor = factor(data$pd_d3_pfpir1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir2_6m_1.factor = factor(data$pd_d3_pfpir2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir3_6m_1.factor = factor(data$pd_d3_pfpir3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap1_6m_1.factor = factor(data$pd_d3_pftap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap2_6m_1.factor = factor(data$pd_d3_pftap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap3_6m_1.factor = factor(data$pd_d3_pftap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra1_6m_1.factor = factor(data$pd_d3_pftra1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra2_6m_1.factor = factor(data$pd_d3_pftra2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra3_6m_1.factor = factor(data$pd_d3_pftra3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_9_6m_1.factor = factor(data$pd_d4_9_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_14_6m_1.factor = factor(data$pd_d4_14_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_20_6m_1.factor = factor(data$pd_d4_20_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec1_6m_1.factor = factor(data$pd_d4_pfacec1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec2_6m_1.factor = factor(data$pd_d4_pfacec2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec3_6m_1.factor = factor(data$pd_d4_pfacec3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem1_6m_1.factor = factor(data$pd_d4_pfacem1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem2_6m_1.factor = factor(data$pd_d4_pfacem2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem3_6m_1.factor = factor(data$pd_d4_pfacem3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami1_6m_1.factor = factor(data$pd_d4_pfami1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami2_6m_1.factor = factor(data$pd_d4_pfami2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami3_6m_1.factor = factor(data$pd_d4_pfami3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup1_6m_1.factor = factor(data$pd_d4_pfbup1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup2_6m_1.factor = factor(data$pd_d4_pfbup2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup3_6m_1.factor = factor(data$pd_d4_pfbup3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex1_6m_1.factor = factor(data$pd_d4_pfdex1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex2_6m_1.factor = factor(data$pd_d4_pfdex2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex3_6m_1.factor = factor(data$pd_d4_pfdex3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo1_6m_1.factor = factor(data$pd_d4_pfdiclo1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo2_6m_1.factor = factor(data$pd_d4_pfdiclo2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo3_6m_1.factor = factor(data$pd_d4_pfdiclo3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul1_6m_1.factor = factor(data$pd_d4_pfdul1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul2_6m_1.factor = factor(data$pd_d4_pfdul2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul3_6m_1.factor = factor(data$pd_d4_pfdul3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen1_6m_1.factor = factor(data$pd_d4_pffen1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen2_6m_1.factor = factor(data$pd_d4_pffen2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen3_6m_1.factor = factor(data$pd_d4_pffen3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab1_6m_1.factor = factor(data$pd_d4_pfgab1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab2_6m_1.factor = factor(data$pd_d4_pfgab2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab3_6m_1.factor = factor(data$pd_d4_pfgab3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd1_6m_1.factor = factor(data$pd_d4_pfhyd1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd2_6m_1.factor = factor(data$pd_d4_pfhyd2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd3_6m_1.factor = factor(data$pd_d4_pfhyd3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu1_6m_1.factor = factor(data$pd_d4_pfibu1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu2_6m_1.factor = factor(data$pd_d4_pfibu2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu3_6m_1.factor = factor(data$pd_d4_pfibu3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind1_6m_1.factor = factor(data$pd_d4_pfind1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind2_6m_1.factor = factor(data$pd_d4_pfind2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind3_6m_1.factor = factor(data$pd_d4_pfind3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket1_6m_1.factor = factor(data$pd_d4_pfket1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket2_6m_1.factor = factor(data$pd_d4_pfket2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket3_6m_1.factor = factor(data$pd_d4_pfket3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel1_6m_1.factor = factor(data$pd_d4_pfmel1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel2_6m_1.factor = factor(data$pd_d4_pfmel2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel3_6m_1.factor = factor(data$pd_d4_pfmel3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta1_6m_1.factor = factor(data$pd_d4_pfmeta1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta2_6m_1.factor = factor(data$pd_d4_pfmeta2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta3_6m_1.factor = factor(data$pd_d4_pfmeta3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet1_6m_1.factor = factor(data$pd_d4_pfmet1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet2_6m_1.factor = factor(data$pd_d4_pfmet2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet3_6m_1.factor = factor(data$pd_d4_pfmet3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor1_6m_1.factor = factor(data$pd_d4_pfmor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor2_6m_1.factor = factor(data$pd_d4_pfmor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor3_6m_1.factor = factor(data$pd_d4_pfmor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap1_6m_1.factor = factor(data$pd_d4_pfnap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap2_6m_1.factor = factor(data$pd_d4_pfnap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap3_6m_1.factor = factor(data$pd_d4_pfnap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor1_6m_1.factor = factor(data$pd_d4_pfnor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor2_6m_1.factor = factor(data$pd_d4_pfnor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor3_6m_1.factor = factor(data$pd_d4_pfnor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy1_6m_1.factor = factor(data$pd_d4_pfoxy1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy2_6m_1.factor = factor(data$pd_d4_pfoxy2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy3_6m_1.factor = factor(data$pd_d4_pfoxy3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac1_6m_1.factor = factor(data$pd_d4_pfparac1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac2_6m_1.factor = factor(data$pd_d4_pfparac2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac3_6m_1.factor = factor(data$pd_d4_pfparac3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe1_6m_1.factor = factor(data$pd_d4_pfphe1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe2_6m_1.factor = factor(data$pd_d4_pfphe2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe3_6m_1.factor = factor(data$pd_d4_pfphe3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg1_6m_1.factor = factor(data$pd_d4_pfpreg1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg2_6m_1.factor = factor(data$pd_d4_pfpreg2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg3_6m_1.factor = factor(data$pd_d4_pfpreg3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir1_6m_1.factor = factor(data$pd_d4_pfpir1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir2_6m_1.factor = factor(data$pd_d4_pfpir2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir3_6m_1.factor = factor(data$pd_d4_pfpir3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap1_6m_1.factor = factor(data$pd_d4_pftap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap2_6m_1.factor = factor(data$pd_d4_pftap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap3_6m_1.factor = factor(data$pd_d4_pftap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra1_6m_1.factor = factor(data$pd_d4_pftra1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra2_6m_1.factor = factor(data$pd_d4_pftra2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra3_6m_1.factor = factor(data$pd_d4_pftra3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_9_6m_1.factor = factor(data$pd_d5_9_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_14_6m_1.factor = factor(data$pd_d5_14_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_20_6m_1.factor = factor(data$pd_d5_20_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec1_6m_1.factor = factor(data$pd_d5_pfacec1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec2_6m_1.factor = factor(data$pd_d5_pfacec2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec3_6m_1.factor = factor(data$pd_d5_pfacec3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem1_6m_1.factor = factor(data$pd_d5_pfacem1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem2_6m_1.factor = factor(data$pd_d5_pfacem2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem3_6m_1.factor = factor(data$pd_d5_pfacem3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami1_6m_1.factor = factor(data$pd_d5_pfami1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami2_6m_1.factor = factor(data$pd_d5_pfami2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami3_6m_1.factor = factor(data$pd_d5_pfami3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup1_6m_1.factor = factor(data$pd_d5_pfbup1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup2_6m_1.factor = factor(data$pd_d5_pfbup2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup3_6m_1.factor = factor(data$pd_d5_pfbup3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex1_6m_1.factor = factor(data$pd_d5_pfdex1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex2_6m_1.factor = factor(data$pd_d5_pfdex2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex3_6m_1.factor = factor(data$pd_d5_pfdex3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo1_6m_1.factor = factor(data$pd_d5_pfdiclo1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo2_6m_1.factor = factor(data$pd_d5_pfdiclo2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo3_6m_1.factor = factor(data$pd_d5_pfdiclo3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul1_6m_1.factor = factor(data$pd_d5_pfdul1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul2_6m_1.factor = factor(data$pd_d5_pfdul2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul3_6m_1.factor = factor(data$pd_d5_pfdul3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen1_6m_1.factor = factor(data$pd_d5_pffen1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen2_6m_1.factor = factor(data$pd_d5_pffen2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen3_6m_1.factor = factor(data$pd_d5_pffen3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab1_6m_1.factor = factor(data$pd_d5_pfgab1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab2_6m_1.factor = factor(data$pd_d5_pfgab2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab3_6m_1.factor = factor(data$pd_d5_pfgab3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd1_6m_1.factor = factor(data$pd_d5_pfhyd1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd2_6m_1.factor = factor(data$pd_d5_pfhyd2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd3_6m_1.factor = factor(data$pd_d5_pfhyd3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu1_6m_1.factor = factor(data$pd_d5_pfibu1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu2_6m_1.factor = factor(data$pd_d5_pfibu2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu3_6m_1.factor = factor(data$pd_d5_pfibu3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind1_6m_1.factor = factor(data$pd_d5_pfind1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind2_6m_1.factor = factor(data$pd_d5_pfind2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind3_6m_1.factor = factor(data$pd_d5_pfind3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket1_6m_1.factor = factor(data$pd_d5_pfket1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket2_6m_1.factor = factor(data$pd_d5_pfket2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket3_6m_1.factor = factor(data$pd_d5_pfket3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel1_6m_1.factor = factor(data$pd_d5_pfmel1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel2_6m_1.factor = factor(data$pd_d5_pfmel2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel3_6m_1.factor = factor(data$pd_d5_pfmel3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta1_6m_1.factor = factor(data$pd_d5_pfmeta1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta2_6m_1.factor = factor(data$pd_d5_pfmeta2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta3_6m_1.factor = factor(data$pd_d5_pfmeta3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet1_6m_1.factor = factor(data$pd_d5_pfmet1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet2_6m_1.factor = factor(data$pd_d5_pfmet2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet3_6m_1.factor = factor(data$pd_d5_pfmet3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor1_6m_1.factor = factor(data$pd_d5_pfmor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor2_6m_1.factor = factor(data$pd_d5_pfmor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor3_6m_1.factor = factor(data$pd_d5_pfmor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap1_6m_1.factor = factor(data$pd_d5_pfnap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap2_6m_1.factor = factor(data$pd_d5_pfnap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap3_6m_1.factor = factor(data$pd_d5_pfnap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor1_6m_1.factor = factor(data$pd_d5_pfnor1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor2_6m_1.factor = factor(data$pd_d5_pfnor2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor3_6m_1.factor = factor(data$pd_d5_pfnor3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy1_6m_1.factor = factor(data$pd_d5_pfoxy1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy2_6m_1.factor = factor(data$pd_d5_pfoxy2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy3_6m_1.factor = factor(data$pd_d5_pfoxy3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac1_6m_1.factor = factor(data$pd_d5_pfparac1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac2_6m_1.factor = factor(data$pd_d5_pfparac2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac3_6m_1.factor = factor(data$pd_d5_pfparac3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe1_6m_1.factor = factor(data$pd_d5_pfphe1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe2_6m_1.factor = factor(data$pd_d5_pfphe2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe3_6m_1.factor = factor(data$pd_d5_pfphe3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg1_6m_1.factor = factor(data$pd_d5_pfpreg1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg2_6m_1.factor = factor(data$pd_d5_pfpreg2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg3_6m_1.factor = factor(data$pd_d5_pfpreg3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir1_6m_1.factor = factor(data$pd_d5_pfpir1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir2_6m_1.factor = factor(data$pd_d5_pfpir2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir3_6m_1.factor = factor(data$pd_d5_pfpir3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap1_6m_1.factor = factor(data$pd_d5_pftap1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap2_6m_1.factor = factor(data$pd_d5_pftap2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap3_6m_1.factor = factor(data$pd_d5_pftap3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra1_6m_1.factor = factor(data$pd_d5_pftra1_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra2_6m_1.factor = factor(data$pd_d5_pftra2_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra3_6m_1.factor = factor(data$pd_d5_pftra3_6m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$months_follow_up_pain_diary_c7cd_complete.factor = factor(data$months_follow_up_pain_diary_c7cd_complete,levels=c("0","1","2"))
data$gelstix_6m_advev1_1.factor = factor(data$gelstix_6m_advev1_1,levels=c("1","0"))
data$gelstix_6m_advev1_inten_1.factor = factor(data$gelstix_6m_advev1_inten_1,levels=c("1","2","3"))
data$gelstix_6m_advev1_action_1.factor = factor(data$gelstix_6m_advev1_action_1,levels=c("1","2","3"))
data$gelstix_6m_advev1_relat_1.factor = factor(data$gelstix_6m_advev1_relat_1,levels=c("1","2","3","4","5"))
data$gelstix_6m_advev1_outc_1.factor = factor(data$gelstix_6m_advev1_outc_1,levels=c("1","2","3","4","5"))
data$gelstix_6m_advev1_sae_1.factor = factor(data$gelstix_6m_advev1_sae_1,levels=c("1","0"))
data$gelstix_6m_advev2_inten_1.factor = factor(data$gelstix_6m_advev2_inten_1,levels=c("1","2","3"))
data$gelstix_6m_advev2_action_1.factor = factor(data$gelstix_6m_advev2_action_1,levels=c("1","2","3"))
data$gelstix_6m_advev2_relat_1.factor = factor(data$gelstix_6m_advev2_relat_1,levels=c("1","2","3","4","5"))
data$gelstix_6m_advev2_outc_1.factor = factor(data$gelstix_6m_advev2_outc_1,levels=c("1","2","3","4","5"))
data$gelstix_6m_advev2_sae_1.factor = factor(data$gelstix_6m_advev2_sae_1,levels=c("1","0"))
data$gelstix_6m_advev3_inten_1.factor = factor(data$gelstix_6m_advev3_inten_1,levels=c("1","2","3"))
data$gelstix_6m_advev3_action_1.factor = factor(data$gelstix_6m_advev3_action_1,levels=c("1","2","3"))
data$gelstix_6m_advev3_relat_1.factor = factor(data$gelstix_6m_advev3_relat_1,levels=c("1","2","3","4","5"))
data$gelstix_6m_advev3_outc_1.factor = factor(data$gelstix_6m_advev3_outc_1,levels=c("1","2","3","4","5"))
data$gelstix_6m_advev3_sae_1.factor = factor(data$gelstix_6m_advev3_sae_1,levels=c("1","0"))
data$months_adverse_event_4fa91c_complete.factor = factor(data$months_adverse_event_4fa91c_complete,levels=c("0","1","2"))
data$pd_notdone_quest_6m_1.factor = factor(data$pd_notdone_quest_6m_1,levels=c("1"))
data$eq1_6m_1.factor = factor(data$eq1_6m_1,levels=c("0","1","2","3","4"))
data$eq2_6m_1.factor = factor(data$eq2_6m_1,levels=c("0","1","2","3","4"))
data$eq3_6m_1.factor = factor(data$eq3_6m_1,levels=c("0","1","2","3","4"))
data$eq4_6m_1.factor = factor(data$eq4_6m_1,levels=c("0","1","2","3","4"))
data$eq5_6m_1.factor = factor(data$eq5_6m_1,levels=c("0","1","2","3","4"))
data$eq6_6m_1.factor = factor(data$eq6_6m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"))
data$o1_6m_1.factor = factor(data$o1_6m_1,levels=c("0","1","2","3","4","5"))
data$o2_6m_1.factor = factor(data$o2_6m_1,levels=c("0","1","2","3","4","5"))
data$o3_6m_1.factor = factor(data$o3_6m_1,levels=c("0","1","2","3","4","5"))
data$o4_6m_1.factor = factor(data$o4_6m_1,levels=c("0","1","2","3","4","5"))
data$o5_6m_1.factor = factor(data$o5_6m_1,levels=c("0","1","2","3","4","5"))
data$o6_6m_1.factor = factor(data$o6_6m_1,levels=c("0","1","2","3","4","5"))
data$o7_6m_1.factor = factor(data$o7_6m_1,levels=c("0","1","2","3","4","5"))
data$o8_6m_1.factor = factor(data$o8_6m_1,levels=c("0","1","2","3","4","5"))
data$o9_6m_1.factor = factor(data$o9_6m_1,levels=c("0","1","2","3","4","5"))
data$o10_6m_1.factor = factor(data$o10_6m_1,levels=c("0","1","2","3","4","5"))
data$pgic_6m_1.factor = factor(data$pgic_6m_1,levels=c("1","2","3","4","5","6","7"))
data$crossover_6m_1.factor = factor(data$crossover_6m_1,levels=c("1","0"))
data$quest_cecit_pz_6m_1.factor = factor(data$quest_cecit_pz_6m_1,levels=c("1","2","3"))
data$quest_cecit_med_6m_1.factor = factor(data$quest_cecit_med_6m_1,levels=c("1","2","3"))
data$plac_gelstix_6m.factor = factor(data$plac_gelstix_6m,levels=c("1","2"))
data$months_questionnaires_55b815_complete.factor = factor(data$months_questionnaires_55b815_complete,levels=c("0","1","2"))
data$months_ca1d31_complete.factor = factor(data$months_ca1d31_complete,levels=c("0","1","2"))
data$es_occuptime_12m_1.factor = factor(data$es_occuptime_12m_1,levels=c("1","2","3","4"))
data$es_parttime_12m_1.factor = factor(data$es_parttime_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"))
data$es_legpain_12m_1.factor = factor(data$es_legpain_12m_1,levels=c("1","0"))
data$es_backpain_12m_1.factor = factor(data$es_backpain_12m_1,levels=c("1","0"))
data$es_disab_12m_1.factor = factor(data$es_disab_12m_1,levels=c("1","0"))
data$es_sick_12m_1.factor = factor(data$es_sick_12m_1,levels=c("1","0"))
data$es_other_12m_1.factor = factor(data$es_other_12m_1,levels=c("1","0"))
data$months_employment_status_3a61ed_complete.factor = factor(data$months_employment_status_3a61ed_complete,levels=c("0","1","2"))
data$pd_notdone_pd_12m_1.factor = factor(data$pd_notdone_pd_12m_1,levels=c("1"))
data$pd_d1_9_12m_1.factor = factor(data$pd_d1_9_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_14_12m_1.factor = factor(data$pd_d1_14_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_20_12m_1.factor = factor(data$pd_d1_20_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec1_12m_1.factor = factor(data$pd_d1_pfacec1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec2_12m_1.factor = factor(data$pd_d1_pfacec2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacec3_12m_1.factor = factor(data$pd_d1_pfacec3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem1_12m_1.factor = factor(data$pd_d1_pfacem1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem2_12m_1.factor = factor(data$pd_d1_pfacem2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfacem3_12m_1.factor = factor(data$pd_d1_pfacem3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami1_12m_1.factor = factor(data$pd_d1_pfami1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami2_12m_1.factor = factor(data$pd_d1_pfami2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfami3_12m_1.factor = factor(data$pd_d1_pfami3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup1_12m_1.factor = factor(data$pd_d1_pfbup1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup2_12m_1.factor = factor(data$pd_d1_pfbup2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfbup3_12m_1.factor = factor(data$pd_d1_pfbup3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex1_12m_1.factor = factor(data$pd_d1_pfdex1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex2_12m_1.factor = factor(data$pd_d1_pfdex2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdex3_12m_1.factor = factor(data$pd_d1_pfdex3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo1_12m_1.factor = factor(data$pd_d1_pfdiclo1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo2_12m_1.factor = factor(data$pd_d1_pfdiclo2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdiclo3_12m_1.factor = factor(data$pd_d1_pfdiclo3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul1_12m_1.factor = factor(data$pd_d1_pfdul1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul2_12m_1.factor = factor(data$pd_d1_pfdul2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfdul3_12m_1.factor = factor(data$pd_d1_pfdul3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen1_12m_1.factor = factor(data$pd_d1_pffen1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen2_12m_1.factor = factor(data$pd_d1_pffen2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pffen3_12m_1.factor = factor(data$pd_d1_pffen3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab1_12m_1.factor = factor(data$pd_d1_pfgab1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab2_12m_1.factor = factor(data$pd_d1_pfgab2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfgab3_12m_1.factor = factor(data$pd_d1_pfgab3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd1_12m_1.factor = factor(data$pd_d1_pfhyd1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd2_12m_1.factor = factor(data$pd_d1_pfhyd2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfhyd3_12m_1.factor = factor(data$pd_d1_pfhyd3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu1_12m_1.factor = factor(data$pd_d1_pfibu1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu2_12m_1.factor = factor(data$pd_d1_pfibu2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfibu3_12m_1.factor = factor(data$pd_d1_pfibu3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind1_12m_1.factor = factor(data$pd_d1_pfind1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind2_12m_1.factor = factor(data$pd_d1_pfind2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfind3_12m_1.factor = factor(data$pd_d1_pfind3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket1_12m_1.factor = factor(data$pd_d1_pfket1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket2_12m_1.factor = factor(data$pd_d1_pfket2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfket3_12m_1.factor = factor(data$pd_d1_pfket3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel1_12m_1.factor = factor(data$pd_d1_pfmel1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel2_12m_1.factor = factor(data$pd_d1_pfmel2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmel3_12m_1.factor = factor(data$pd_d1_pfmel3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta1_12m_1.factor = factor(data$pd_d1_pfmeta1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta2_12m_1.factor = factor(data$pd_d1_pfmeta2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmeta3_12m_1.factor = factor(data$pd_d1_pfmeta3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet1_12m_1.factor = factor(data$pd_d1_pfmet1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet2_12m_1.factor = factor(data$pd_d1_pfmet2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmet3_12m_1.factor = factor(data$pd_d1_pfmet3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor1_12m_1.factor = factor(data$pd_d1_pfmor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor2_12m_1.factor = factor(data$pd_d1_pfmor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfmor3_12m_1.factor = factor(data$pd_d1_pfmor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap1_12m_1.factor = factor(data$pd_d1_pfnap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap2_12m_1.factor = factor(data$pd_d1_pfnap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnap3_12m_1.factor = factor(data$pd_d1_pfnap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor1_12m_1.factor = factor(data$pd_d1_pfnor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor2_12m_1.factor = factor(data$pd_d1_pfnor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfnor3_12m_1.factor = factor(data$pd_d1_pfnor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy1_12m_1.factor = factor(data$pd_d1_pfoxy1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy2_12m_1.factor = factor(data$pd_d1_pfoxy2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfoxy3_12m_1.factor = factor(data$pd_d1_pfoxy3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac1_12m_1.factor = factor(data$pd_d1_pfparac1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac2_12m_1.factor = factor(data$pd_d1_pfparac2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfparac3_12m_1.factor = factor(data$pd_d1_pfparac3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe1_12m_1.factor = factor(data$pd_d1_pfphe1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe2_12m_1.factor = factor(data$pd_d1_pfphe2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfphe3_12m_1.factor = factor(data$pd_d1_pfphe3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg1_12m_1.factor = factor(data$pd_d1_pfpreg1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg2_12m_1.factor = factor(data$pd_d1_pfpreg2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpreg3_12m_1.factor = factor(data$pd_d1_pfpreg3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir1_12m_1.factor = factor(data$pd_d1_pfpir1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir2_12m_1.factor = factor(data$pd_d1_pfpir2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pfpir3_12m_1.factor = factor(data$pd_d1_pfpir3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap1_12m_1.factor = factor(data$pd_d1_pftap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap2_12m_1.factor = factor(data$pd_d1_pftap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftap3_12m_1.factor = factor(data$pd_d1_pftap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra1_12m_1.factor = factor(data$pd_d1_pftra1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra2_12m_1.factor = factor(data$pd_d1_pftra2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d1_pftra3_12m_1.factor = factor(data$pd_d1_pftra3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_9_12m_1.factor = factor(data$pd_d2_9_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_14_12m_1.factor = factor(data$pd_d2_14_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_20_12m_1.factor = factor(data$pd_d2_20_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec1_12m_1.factor = factor(data$pd_d2_pfacec1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec2_12m_1.factor = factor(data$pd_d2_pfacec2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacec3_12m_1.factor = factor(data$pd_d2_pfacec3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem1_12m_1.factor = factor(data$pd_d2_pfacem1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem2_12m_1.factor = factor(data$pd_d2_pfacem2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfacem3_12m_1.factor = factor(data$pd_d2_pfacem3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami1_12m_1.factor = factor(data$pd_d2_pfami1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami2_12m_1.factor = factor(data$pd_d2_pfami2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfami3_12m_1.factor = factor(data$pd_d2_pfami3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup1_12m_1.factor = factor(data$pd_d2_pfbup1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup2_12m_1.factor = factor(data$pd_d2_pfbup2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfbup3_12m_1.factor = factor(data$pd_d2_pfbup3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex1_12m_1.factor = factor(data$pd_d2_pfdex1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex2_12m_1.factor = factor(data$pd_d2_pfdex2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdex3_12m_1.factor = factor(data$pd_d2_pfdex3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo1_12m_1.factor = factor(data$pd_d2_pfdiclo1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo2_12m_1.factor = factor(data$pd_d2_pfdiclo2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdiclo3_12m_1.factor = factor(data$pd_d2_pfdiclo3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul1_12m_1.factor = factor(data$pd_d2_pfdul1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul2_12m_1.factor = factor(data$pd_d2_pfdul2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfdul3_12m_1.factor = factor(data$pd_d2_pfdul3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen1_12m_1.factor = factor(data$pd_d2_pffen1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen2_12m_1.factor = factor(data$pd_d2_pffen2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pffen3_12m_1.factor = factor(data$pd_d2_pffen3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab1_12m_1.factor = factor(data$pd_d2_pfgab1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab2_12m_1.factor = factor(data$pd_d2_pfgab2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfgab3_12m_1.factor = factor(data$pd_d2_pfgab3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd1_12m_1.factor = factor(data$pd_d2_pfhyd1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd2_12m_1.factor = factor(data$pd_d2_pfhyd2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfhyd3_12m_1.factor = factor(data$pd_d2_pfhyd3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu1_12m_1.factor = factor(data$pd_d2_pfibu1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu2_12m_1.factor = factor(data$pd_d2_pfibu2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfibu3_12m_1.factor = factor(data$pd_d2_pfibu3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind1_12m_1.factor = factor(data$pd_d2_pfind1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind2_12m_1.factor = factor(data$pd_d2_pfind2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfind3_12m_1.factor = factor(data$pd_d2_pfind3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket1_12m_1.factor = factor(data$pd_d2_pfket1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket2_12m_1.factor = factor(data$pd_d2_pfket2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfket3_12m_1.factor = factor(data$pd_d2_pfket3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel1_12m_1.factor = factor(data$pd_d2_pfmel1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel2_12m_1.factor = factor(data$pd_d2_pfmel2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmel3_12m_1.factor = factor(data$pd_d2_pfmel3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta1_12m_1.factor = factor(data$pd_d2_pfmeta1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta2_12m_1.factor = factor(data$pd_d2_pfmeta2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmeta3_12m_1.factor = factor(data$pd_d2_pfmeta3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet1_12m_1.factor = factor(data$pd_d2_pfmet1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet2_12m_1.factor = factor(data$pd_d2_pfmet2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmet3_12m_1.factor = factor(data$pd_d2_pfmet3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor1_12m_1.factor = factor(data$pd_d2_pfmor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor2_12m_1.factor = factor(data$pd_d2_pfmor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfmor3_12m_1.factor = factor(data$pd_d2_pfmor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap1_12m_1.factor = factor(data$pd_d2_pfnap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap2_12m_1.factor = factor(data$pd_d2_pfnap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnap3_12m_1.factor = factor(data$pd_d2_pfnap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor1_12m_1.factor = factor(data$pd_d2_pfnor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor2_12m_1.factor = factor(data$pd_d2_pfnor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfnor3_12m_1.factor = factor(data$pd_d2_pfnor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy1_12m_1.factor = factor(data$pd_d2_pfoxy1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy2_12m_1.factor = factor(data$pd_d2_pfoxy2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfoxy3_12m_1.factor = factor(data$pd_d2_pfoxy3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac1_12m_1.factor = factor(data$pd_d2_pfparac1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac2_12m_1.factor = factor(data$pd_d2_pfparac2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfparac3_12m_1.factor = factor(data$pd_d2_pfparac3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe1_12m_1.factor = factor(data$pd_d2_pfphe1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe2_12m_1.factor = factor(data$pd_d2_pfphe2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfphe3_12m_1.factor = factor(data$pd_d2_pfphe3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg1_12m_1.factor = factor(data$pd_d2_pfpreg1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg2_12m_1.factor = factor(data$pd_d2_pfpreg2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpreg3_12m_1.factor = factor(data$pd_d2_pfpreg3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir1_12m_1.factor = factor(data$pd_d2_pfpir1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir2_12m_1.factor = factor(data$pd_d2_pfpir2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pfpir3_12m_1.factor = factor(data$pd_d2_pfpir3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap1_12m_1.factor = factor(data$pd_d2_pftap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap2_12m_1.factor = factor(data$pd_d2_pftap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftap3_12m_1.factor = factor(data$pd_d2_pftap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra1_12m_1.factor = factor(data$pd_d2_pftra1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra2_12m_1.factor = factor(data$pd_d2_pftra2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d2_pftra3_12m_1.factor = factor(data$pd_d2_pftra3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_9_12m_1.factor = factor(data$pd_d3_9_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_14_12m_1.factor = factor(data$pd_d3_14_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_20_12m_1.factor = factor(data$pd_d3_20_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec1_12m_1.factor = factor(data$pd_d3_pfacec1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec2_12m_1.factor = factor(data$pd_d3_pfacec2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacec3_12m_1.factor = factor(data$pd_d3_pfacec3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem1_12m_1.factor = factor(data$pd_d3_pfacem1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem2_12m_1.factor = factor(data$pd_d3_pfacem2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfacem3_12m_1.factor = factor(data$pd_d3_pfacem3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami1_12m_1.factor = factor(data$pd_d3_pfami1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami2_12m_1.factor = factor(data$pd_d3_pfami2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfami3_12m_1.factor = factor(data$pd_d3_pfami3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup1_12m_1.factor = factor(data$pd_d3_pfbup1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup2_12m_1.factor = factor(data$pd_d3_pfbup2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfbup3_12m_1.factor = factor(data$pd_d3_pfbup3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex1_12m_1.factor = factor(data$pd_d3_pfdex1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex2_12m_1.factor = factor(data$pd_d3_pfdex2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdex3_12m_1.factor = factor(data$pd_d3_pfdex3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo1_12m_1.factor = factor(data$pd_d3_pfdiclo1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo2_12m_1.factor = factor(data$pd_d3_pfdiclo2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdiclo3_12m_1.factor = factor(data$pd_d3_pfdiclo3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul1_12m_1.factor = factor(data$pd_d3_pfdul1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul2_12m_1.factor = factor(data$pd_d3_pfdul2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfdul3_12m_1.factor = factor(data$pd_d3_pfdul3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen1_12m_1.factor = factor(data$pd_d3_pffen1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen2_12m_1.factor = factor(data$pd_d3_pffen2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pffen3_12m_1.factor = factor(data$pd_d3_pffen3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab1_12m_1.factor = factor(data$pd_d3_pfgab1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab2_12m_1.factor = factor(data$pd_d3_pfgab2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfgab3_12m_1.factor = factor(data$pd_d3_pfgab3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd1_12m_1.factor = factor(data$pd_d3_pfhyd1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd2_12m_1.factor = factor(data$pd_d3_pfhyd2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfhyd3_12m_1.factor = factor(data$pd_d3_pfhyd3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu1_12m_1.factor = factor(data$pd_d3_pfibu1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu2_12m_1.factor = factor(data$pd_d3_pfibu2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfibu3_12m_1.factor = factor(data$pd_d3_pfibu3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind1_12m_1.factor = factor(data$pd_d3_pfind1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind2_12m_1.factor = factor(data$pd_d3_pfind2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfind3_12m_1.factor = factor(data$pd_d3_pfind3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket1_12m_1.factor = factor(data$pd_d3_pfket1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket2_12m_1.factor = factor(data$pd_d3_pfket2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfket3_12m_1.factor = factor(data$pd_d3_pfket3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel1_12m_1.factor = factor(data$pd_d3_pfmel1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel2_12m_1.factor = factor(data$pd_d3_pfmel2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmel3_12m_1.factor = factor(data$pd_d3_pfmel3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta1_12m_1.factor = factor(data$pd_d3_pfmeta1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta2_12m_1.factor = factor(data$pd_d3_pfmeta2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmeta3_12m_1.factor = factor(data$pd_d3_pfmeta3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet1_12m_1.factor = factor(data$pd_d3_pfmet1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet2_12m_1.factor = factor(data$pd_d3_pfmet2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmet3_12m_1.factor = factor(data$pd_d3_pfmet3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor1_12m_1.factor = factor(data$pd_d3_pfmor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor2_12m_1.factor = factor(data$pd_d3_pfmor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfmor3_12m_1.factor = factor(data$pd_d3_pfmor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap1_12m_1.factor = factor(data$pd_d3_pfnap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap2_12m_1.factor = factor(data$pd_d3_pfnap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnap3_12m_1.factor = factor(data$pd_d3_pfnap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor1_12m_1.factor = factor(data$pd_d3_pfnor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor2_12m_1.factor = factor(data$pd_d3_pfnor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfnor3_12m_1.factor = factor(data$pd_d3_pfnor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy1_12m_1.factor = factor(data$pd_d3_pfoxy1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy2_12m_1.factor = factor(data$pd_d3_pfoxy2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfoxy3_12m_1.factor = factor(data$pd_d3_pfoxy3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac1_12m_1.factor = factor(data$pd_d3_pfparac1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac2_12m_1.factor = factor(data$pd_d3_pfparac2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfparac3_12m_1.factor = factor(data$pd_d3_pfparac3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe1_12m_1.factor = factor(data$pd_d3_pfphe1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe2_12m_1.factor = factor(data$pd_d3_pfphe2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfphe3_12m_1.factor = factor(data$pd_d3_pfphe3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg1_12m_1.factor = factor(data$pd_d3_pfpreg1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg2_12m_1.factor = factor(data$pd_d3_pfpreg2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpreg3_12m_1.factor = factor(data$pd_d3_pfpreg3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir1_12m_1.factor = factor(data$pd_d3_pfpir1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir2_12m_1.factor = factor(data$pd_d3_pfpir2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pfpir3_12m_1.factor = factor(data$pd_d3_pfpir3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap1_12m_1.factor = factor(data$pd_d3_pftap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap2_12m_1.factor = factor(data$pd_d3_pftap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftap3_12m_1.factor = factor(data$pd_d3_pftap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra1_12m_1.factor = factor(data$pd_d3_pftra1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra2_12m_1.factor = factor(data$pd_d3_pftra2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d3_pftra3_12m_1.factor = factor(data$pd_d3_pftra3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_9_12m_1.factor = factor(data$pd_d4_9_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_14_12m_1.factor = factor(data$pd_d4_14_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_20_12m_1.factor = factor(data$pd_d4_20_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec1_12m_1.factor = factor(data$pd_d4_pfacec1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec2_12m_1.factor = factor(data$pd_d4_pfacec2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacec3_12m_1.factor = factor(data$pd_d4_pfacec3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem1_12m_1.factor = factor(data$pd_d4_pfacem1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem2_12m_1.factor = factor(data$pd_d4_pfacem2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfacem3_12m_1.factor = factor(data$pd_d4_pfacem3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami1_12m_1.factor = factor(data$pd_d4_pfami1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami2_12m_1.factor = factor(data$pd_d4_pfami2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfami3_12m_1.factor = factor(data$pd_d4_pfami3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup1_12m_1.factor = factor(data$pd_d4_pfbup1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup2_12m_1.factor = factor(data$pd_d4_pfbup2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfbup3_12m_1.factor = factor(data$pd_d4_pfbup3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex1_12m_1.factor = factor(data$pd_d4_pfdex1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex2_12m_1.factor = factor(data$pd_d4_pfdex2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdex3_12m_1.factor = factor(data$pd_d4_pfdex3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo1_12m_1.factor = factor(data$pd_d4_pfdiclo1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo2_12m_1.factor = factor(data$pd_d4_pfdiclo2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdiclo3_12m_1.factor = factor(data$pd_d4_pfdiclo3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul1_12m_1.factor = factor(data$pd_d4_pfdul1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul2_12m_1.factor = factor(data$pd_d4_pfdul2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfdul3_12m_1.factor = factor(data$pd_d4_pfdul3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen1_12m_1.factor = factor(data$pd_d4_pffen1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen2_12m_1.factor = factor(data$pd_d4_pffen2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pffen3_12m_1.factor = factor(data$pd_d4_pffen3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab1_12m_1.factor = factor(data$pd_d4_pfgab1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab2_12m_1.factor = factor(data$pd_d4_pfgab2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfgab3_12m_1.factor = factor(data$pd_d4_pfgab3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd1_12m_1.factor = factor(data$pd_d4_pfhyd1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd2_12m_1.factor = factor(data$pd_d4_pfhyd2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfhyd3_12m_1.factor = factor(data$pd_d4_pfhyd3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu1_12m_1.factor = factor(data$pd_d4_pfibu1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu2_12m_1.factor = factor(data$pd_d4_pfibu2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfibu3_12m_1.factor = factor(data$pd_d4_pfibu3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind1_12m_1.factor = factor(data$pd_d4_pfind1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind2_12m_1.factor = factor(data$pd_d4_pfind2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfind3_12m_1.factor = factor(data$pd_d4_pfind3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket1_12m_1.factor = factor(data$pd_d4_pfket1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket2_12m_1.factor = factor(data$pd_d4_pfket2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfket3_12m_1.factor = factor(data$pd_d4_pfket3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel1_12m_1.factor = factor(data$pd_d4_pfmel1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel2_12m_1.factor = factor(data$pd_d4_pfmel2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmel3_12m_1.factor = factor(data$pd_d4_pfmel3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta1_12m_1.factor = factor(data$pd_d4_pfmeta1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta2_12m_1.factor = factor(data$pd_d4_pfmeta2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmeta3_12m_1.factor = factor(data$pd_d4_pfmeta3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet1_12m_1.factor = factor(data$pd_d4_pfmet1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet2_12m_1.factor = factor(data$pd_d4_pfmet2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmet3_12m_1.factor = factor(data$pd_d4_pfmet3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor1_12m_1.factor = factor(data$pd_d4_pfmor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor2_12m_1.factor = factor(data$pd_d4_pfmor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfmor3_12m_1.factor = factor(data$pd_d4_pfmor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap1_12m_1.factor = factor(data$pd_d4_pfnap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap2_12m_1.factor = factor(data$pd_d4_pfnap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnap3_12m_1.factor = factor(data$pd_d4_pfnap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor1_12m_1.factor = factor(data$pd_d4_pfnor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor2_12m_1.factor = factor(data$pd_d4_pfnor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfnor3_12m_1.factor = factor(data$pd_d4_pfnor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy1_12m_1.factor = factor(data$pd_d4_pfoxy1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy2_12m_1.factor = factor(data$pd_d4_pfoxy2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfoxy3_12m_1.factor = factor(data$pd_d4_pfoxy3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac1_12m_1.factor = factor(data$pd_d4_pfparac1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac2_12m_1.factor = factor(data$pd_d4_pfparac2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfparac3_12m_1.factor = factor(data$pd_d4_pfparac3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe1_12m_1.factor = factor(data$pd_d4_pfphe1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe2_12m_1.factor = factor(data$pd_d4_pfphe2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfphe3_12m_1.factor = factor(data$pd_d4_pfphe3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg1_12m_1.factor = factor(data$pd_d4_pfpreg1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg2_12m_1.factor = factor(data$pd_d4_pfpreg2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpreg3_12m_1.factor = factor(data$pd_d4_pfpreg3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir1_12m_1.factor = factor(data$pd_d4_pfpir1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir2_12m_1.factor = factor(data$pd_d4_pfpir2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pfpir3_12m_1.factor = factor(data$pd_d4_pfpir3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap1_12m_1.factor = factor(data$pd_d4_pftap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap2_12m_1.factor = factor(data$pd_d4_pftap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftap3_12m_1.factor = factor(data$pd_d4_pftap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra1_12m_1.factor = factor(data$pd_d4_pftra1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra2_12m_1.factor = factor(data$pd_d4_pftra2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d4_pftra3_12m_1.factor = factor(data$pd_d4_pftra3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_9_12m_1.factor = factor(data$pd_d5_9_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_14_12m_1.factor = factor(data$pd_d5_14_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_20_12m_1.factor = factor(data$pd_d5_20_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec1_12m_1.factor = factor(data$pd_d5_pfacec1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec2_12m_1.factor = factor(data$pd_d5_pfacec2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacec3_12m_1.factor = factor(data$pd_d5_pfacec3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem1_12m_1.factor = factor(data$pd_d5_pfacem1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem2_12m_1.factor = factor(data$pd_d5_pfacem2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfacem3_12m_1.factor = factor(data$pd_d5_pfacem3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami1_12m_1.factor = factor(data$pd_d5_pfami1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami2_12m_1.factor = factor(data$pd_d5_pfami2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfami3_12m_1.factor = factor(data$pd_d5_pfami3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup1_12m_1.factor = factor(data$pd_d5_pfbup1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup2_12m_1.factor = factor(data$pd_d5_pfbup2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfbup3_12m_1.factor = factor(data$pd_d5_pfbup3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex1_12m_1.factor = factor(data$pd_d5_pfdex1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex2_12m_1.factor = factor(data$pd_d5_pfdex2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdex3_12m_1.factor = factor(data$pd_d5_pfdex3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo1_12m_1.factor = factor(data$pd_d5_pfdiclo1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo2_12m_1.factor = factor(data$pd_d5_pfdiclo2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdiclo3_12m_1.factor = factor(data$pd_d5_pfdiclo3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul1_12m_1.factor = factor(data$pd_d5_pfdul1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul2_12m_1.factor = factor(data$pd_d5_pfdul2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfdul3_12m_1.factor = factor(data$pd_d5_pfdul3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen1_12m_1.factor = factor(data$pd_d5_pffen1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen2_12m_1.factor = factor(data$pd_d5_pffen2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pffen3_12m_1.factor = factor(data$pd_d5_pffen3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab1_12m_1.factor = factor(data$pd_d5_pfgab1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab2_12m_1.factor = factor(data$pd_d5_pfgab2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfgab3_12m_1.factor = factor(data$pd_d5_pfgab3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd1_12m_1.factor = factor(data$pd_d5_pfhyd1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd2_12m_1.factor = factor(data$pd_d5_pfhyd2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfhyd3_12m_1.factor = factor(data$pd_d5_pfhyd3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu1_12m_1.factor = factor(data$pd_d5_pfibu1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu2_12m_1.factor = factor(data$pd_d5_pfibu2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfibu3_12m_1.factor = factor(data$pd_d5_pfibu3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind1_12m_1.factor = factor(data$pd_d5_pfind1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind2_12m_1.factor = factor(data$pd_d5_pfind2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfind3_12m_1.factor = factor(data$pd_d5_pfind3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket1_12m_1.factor = factor(data$pd_d5_pfket1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket2_12m_1.factor = factor(data$pd_d5_pfket2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfket3_12m_1.factor = factor(data$pd_d5_pfket3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel1_12m_1.factor = factor(data$pd_d5_pfmel1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel2_12m_1.factor = factor(data$pd_d5_pfmel2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmel3_12m_1.factor = factor(data$pd_d5_pfmel3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta1_12m_1.factor = factor(data$pd_d5_pfmeta1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta2_12m_1.factor = factor(data$pd_d5_pfmeta2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmeta3_12m_1.factor = factor(data$pd_d5_pfmeta3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet1_12m_1.factor = factor(data$pd_d5_pfmet1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet2_12m_1.factor = factor(data$pd_d5_pfmet2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmet3_12m_1.factor = factor(data$pd_d5_pfmet3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor1_12m_1.factor = factor(data$pd_d5_pfmor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor2_12m_1.factor = factor(data$pd_d5_pfmor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfmor3_12m_1.factor = factor(data$pd_d5_pfmor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap1_12m_1.factor = factor(data$pd_d5_pfnap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap2_12m_1.factor = factor(data$pd_d5_pfnap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnap3_12m_1.factor = factor(data$pd_d5_pfnap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor1_12m_1.factor = factor(data$pd_d5_pfnor1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor2_12m_1.factor = factor(data$pd_d5_pfnor2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfnor3_12m_1.factor = factor(data$pd_d5_pfnor3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy1_12m_1.factor = factor(data$pd_d5_pfoxy1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy2_12m_1.factor = factor(data$pd_d5_pfoxy2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfoxy3_12m_1.factor = factor(data$pd_d5_pfoxy3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac1_12m_1.factor = factor(data$pd_d5_pfparac1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac2_12m_1.factor = factor(data$pd_d5_pfparac2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfparac3_12m_1.factor = factor(data$pd_d5_pfparac3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe1_12m_1.factor = factor(data$pd_d5_pfphe1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe2_12m_1.factor = factor(data$pd_d5_pfphe2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfphe3_12m_1.factor = factor(data$pd_d5_pfphe3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg1_12m_1.factor = factor(data$pd_d5_pfpreg1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg2_12m_1.factor = factor(data$pd_d5_pfpreg2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpreg3_12m_1.factor = factor(data$pd_d5_pfpreg3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir1_12m_1.factor = factor(data$pd_d5_pfpir1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir2_12m_1.factor = factor(data$pd_d5_pfpir2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pfpir3_12m_1.factor = factor(data$pd_d5_pfpir3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap1_12m_1.factor = factor(data$pd_d5_pftap1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap2_12m_1.factor = factor(data$pd_d5_pftap2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftap3_12m_1.factor = factor(data$pd_d5_pftap3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra1_12m_1.factor = factor(data$pd_d5_pftra1_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra2_12m_1.factor = factor(data$pd_d5_pftra2_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$pd_d5_pftra3_12m_1.factor = factor(data$pd_d5_pftra3_12m_1,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$months_follow_up_pain_diary_15e6_complete.factor = factor(data$months_follow_up_pain_diary_15e6_complete,levels=c("0","1","2"))
data$gelstix_12m_advev1_1.factor = factor(data$gelstix_12m_advev1_1,levels=c("1","0"))
data$gelstix_12m_advev1_inten_1.factor = factor(data$gelstix_12m_advev1_inten_1,levels=c("1","2","3"))
data$gelstix_12m_advev1_actio_1.factor = factor(data$gelstix_12m_advev1_actio_1,levels=c("1","2","3"))
data$gelstix_12m_advev1_relat_1.factor = factor(data$gelstix_12m_advev1_relat_1,levels=c("1","2","3","4","5"))
data$gelstix_12m_advev1_outc_1.factor = factor(data$gelstix_12m_advev1_outc_1,levels=c("1","2","3","4","5"))
data$gelstix_12m_advev1_sae_1.factor = factor(data$gelstix_12m_advev1_sae_1,levels=c("1","0"))
data$gelstix_12m_advev2_inten_1.factor = factor(data$gelstix_12m_advev2_inten_1,levels=c("1","2","3"))
data$gelstix_12m_advev2_actio_1.factor = factor(data$gelstix_12m_advev2_actio_1,levels=c("1","2","3"))
data$gelstix_12m_advev2_relat_1.factor = factor(data$gelstix_12m_advev2_relat_1,levels=c("1","2","3","4","5"))
data$gelstix_12m_advev2_outc_1.factor = factor(data$gelstix_12m_advev2_outc_1,levels=c("1","2","3","4","5"))
data$gelstix_12m_advev2_sae_1.factor = factor(data$gelstix_12m_advev2_sae_1,levels=c("1","0"))
data$gelstix_12m_advev3_inten_1.factor = factor(data$gelstix_12m_advev3_inten_1,levels=c("1","2","3"))
data$gelstix_12m_advev3_actio_1.factor = factor(data$gelstix_12m_advev3_actio_1,levels=c("1","2","3"))
data$gelstix_12m_advev3_relat_1.factor = factor(data$gelstix_12m_advev3_relat_1,levels=c("1","2","3","4","5"))
data$gelstix_12m_advev3_outc_1.factor = factor(data$gelstix_12m_advev3_outc_1,levels=c("1","2","3","4","5"))
data$gelstix_12m_advev3_sae_1.factor = factor(data$gelstix_12m_advev3_sae_1,levels=c("1","0"))
data$months_adverse_event_2b662c_complete.factor = factor(data$months_adverse_event_2b662c_complete,levels=c("0","1","2"))
data$pd_notdone_quest_12m_1.factor = factor(data$pd_notdone_quest_12m_1,levels=c("1"))
data$eq1_12m_1.factor = factor(data$eq1_12m_1,levels=c("0","1","2","3","4"))
data$eq2_12m_1.factor = factor(data$eq2_12m_1,levels=c("0","1","2","3","4"))
data$eq3_12m_1.factor = factor(data$eq3_12m_1,levels=c("0","1","2","3","4"))
data$eq4_12m_1.factor = factor(data$eq4_12m_1,levels=c("0","1","2","3","4"))
data$eq5_12m_1.factor = factor(data$eq5_12m_1,levels=c("0","1","2","3","4"))
data$eq6_12m_1.factor = factor(data$eq6_12m_1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"))
data$o1_12m_1.factor = factor(data$o1_12m_1,levels=c("0","1","2","3","4","5"))
data$o2_12m_1.factor = factor(data$o2_12m_1,levels=c("0","1","2","3","4","5"))
data$o3_12m_1.factor = factor(data$o3_12m_1,levels=c("0","1","2","3","4","5"))
data$o4_12m_1.factor = factor(data$o4_12m_1,levels=c("0","1","2","3","4","5"))
data$o5_12m_1.factor = factor(data$o5_12m_1,levels=c("0","1","2","3","4","5"))
data$o6_12m_1.factor = factor(data$o6_12m_1,levels=c("0","1","2","3","4","5"))
data$o7_12m_1.factor = factor(data$o7_12m_1,levels=c("0","1","2","3","4","5"))
data$o8_12m_1.factor = factor(data$o8_12m_1,levels=c("0","1","2","3","4","5"))
data$o9_12m_1.factor = factor(data$o9_12m_1,levels=c("0","1","2","3","4","5"))
data$o10_12m_1.factor = factor(data$o10_12m_1,levels=c("0","1","2","3","4","5"))
data$pgic_12m_1.factor = factor(data$pgic_12m_1,levels=c("1","2","3","4","5","6","7"))
data$crossover_12m_1.factor = factor(data$crossover_12m_1,levels=c("1","0"))
data$quest_cecit_pz_12m_1.factor = factor(data$quest_cecit_pz_12m_1,levels=c("1","2","3"))
data$quest_cecit_med_12m_1.factor = factor(data$quest_cecit_med_12m_1,levels=c("1","2","3"))
data$plac_gelstix_12m.factor = factor(data$plac_gelstix_12m,levels=c("1","2"))
data$months_questionnaires_c93271_complete.factor = factor(data$months_questionnaires_c93271_complete,levels=c("0","1","2"))
data$mri_l1_pf_12m_1.factor = factor(data$mri_l1_pf_12m_1,levels=c("1","2","3","4","5"))
data$mri_l1_hiz_12m_1.factor = factor(data$mri_l1_hiz_12m_1,levels=c("1","2","3","4"))
data$mri_l1_modic_12m_1.factor = factor(data$mri_l1_modic_12m_1,levels=c("1","2","3"))
data$mri_l1_schmorl_12m_1.factor = factor(data$mri_l1_schmorl_12m_1,levels=c("1","2"))
data$mri_l2_pf_12m_1.factor = factor(data$mri_l2_pf_12m_1,levels=c("1","2","3","4","5"))
data$mri_l2_hiz_12m_1.factor = factor(data$mri_l2_hiz_12m_1,levels=c("1","2","3","4"))
data$mri_l2_modic_12m_1.factor = factor(data$mri_l2_modic_12m_1,levels=c("1","2","3"))
data$mri_l2_schmorl_12m_1.factor = factor(data$mri_l2_schmorl_12m_1,levels=c("1","2"))
data$mri_l3_pf_12m_1.factor = factor(data$mri_l3_pf_12m_1,levels=c("1","2","3","4","5"))
data$mri_l3_hiz_12m_1.factor = factor(data$mri_l3_hiz_12m_1,levels=c("1","2","3","4"))
data$mri_l3_modic_12m_1.factor = factor(data$mri_l3_modic_12m_1,levels=c("1","2","3"))
data$mri_l3_schmorl_12m_1.factor = factor(data$mri_l3_schmorl_12m_1,levels=c("1","2"))
data$mri_l4_pf_12m_1.factor = factor(data$mri_l4_pf_12m_1,levels=c("1","2","3","4","5"))
data$mri_l4_hiz_12m_1.factor = factor(data$mri_l4_hiz_12m_1,levels=c("1","2","3","4"))
data$mri_l4_modic_12m_1.factor = factor(data$mri_l4_modic_12m_1,levels=c("1","2","3"))
data$mri_l4_schmorl_12m_1.factor = factor(data$mri_l4_schmorl_12m_1,levels=c("1","2"))
data$mri_l5_pf_12m_1.factor = factor(data$mri_l5_pf_12m_1,levels=c("1","2","3","4","5"))
data$mri_l5_hiz_12m_1.factor = factor(data$mri_l5_hiz_12m_1,levels=c("1","2","3","4"))
data$mri_l5_modic_12m_1.factor = factor(data$mri_l5_modic_12m_1,levels=c("1","2","3"))
data$mri_l5_schmorl_12m_1.factor = factor(data$mri_l5_schmorl_12m_1,levels=c("1","2"))
data$months_screening_rmi_complete.factor = factor(data$months_screening_rmi_complete,levels=c("0","1","2"))
data$endt_protocol_1.factor = factor(data$endt_protocol_1,levels=c("1","2"))
data$endt_reason_1.factor = factor(data$endt_reason_1,levels=c("1","2","3","4","5","6","7"))
data$end_of_trial_form_complete.factor = factor(data$end_of_trial_form_complete,levels=c("0","1","2"))

levels(data$my_first_instrument_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$i1.factor)=c("Yes","No")
levels(data$i2.factor)=c("Yes","No")
levels(data$i3.factor)=c("Yes","No")
levels(data$i4.factor)=c("Yes","No")
levels(data$i5.factor)=c("Yes","No")
levels(data$i6.factor)=c("Yes","No")
levels(data$i7.factor)=c("Yes","No")
levels(data$e1.factor)=c("Yes","No")
levels(data$e2.factor)=c("Yes","No")
levels(data$e3.factor)=c("Yes","No")
levels(data$e4.factor)=c("Yes","No")
levels(data$e5.factor)=c("Yes","No")
levels(data$e6.factor)=c("Yes","No")
levels(data$e7.factor)=c("Yes","No")
levels(data$e8.factor)=c("Yes","No")
levels(data$e9.factor)=c("Yes","No")
levels(data$e10.factor)=c("Yes","No")
levels(data$e11.factor)=c("Yes","No")
levels(data$e12.factor)=c("Yes","No")
levels(data$eligibility.factor)=c("Yes","No")
levels(data$study_in.factor)=c("Yes","No")
levels(data$eligibility_criteria_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ttt_sgsex_1.factor)=c("MALE","FEMALE")
levels(data$ttt_sj_smo_1.factor)=c("YES","NO")
levels(data$sj_pt_bed_1.factor)=c("Yes","No")
levels(data$sj_pt_bra_1.factor)=c("Yes","No")
levels(data$sj_pt_chiro_1.factor)=c("Yes","No")
levels(data$sj_pt_physi_1.factor)=c("Yes","No")
levels(data$sj_pt_tens_1.factor)=c("Yes","No")
levels(data$sj_pt_acu_1.factor)=c("Yes","No")
levels(data$sj_pt_epi_1.factor)=c("Yes","No")
levels(data$sj_pt_facet_1.factor)=c("Yes","No")
levels(data$sj_pt_stero_1.factor)=c("Yes","No")
levels(data$es_occuptime_1.factor)=c("FULL","PART TIME","UNEMPLOYED","RESTRICTED EMPLOYMENT")
levels(data$es_parttime_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100")
levels(data$es_backpain_1.factor)=c("Yes","No")
levels(data$es_legpain_1.factor)=c("Yes","No")
levels(data$es_disab_1.factor)=c("Yes","No")
levels(data$es_sick_1.factor)=c("Yes","No")
levels(data$es_other_1.factor)=c("Yes","No")
levels(data$history_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$screening_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$mri_l1_pf_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l1_hiz_1.factor)=c("A","B","C","D")
levels(data$mri_l1_modic_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l1_schmorl_1.factor)=c("YES","NO")
levels(data$mri_l2_pf_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l2_hiz_1.factor)=c("A","B","C","D")
levels(data$mri_l2_modic_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l2_schmorl_1.factor)=c("YES","NO")
levels(data$mri_l3_pf_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l3_hiz_1.factor)=c("A","B","C","D")
levels(data$mri_l3_modic_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l3_schmorl_1.factor)=c("YES","NO")
levels(data$mri_l4_pf_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l4_hiz_1.factor)=c("A","B","C","D")
levels(data$mri_l4_modic_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l4_schmorl_1.factor)=c("YES","NO")
levels(data$mri_l5_pf_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l5_hiz_1.factor)=c("A","B","C","D")
levels(data$mri_l5_modic_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l5_schmorl_1.factor)=c("YES","NO")
levels(data$screening_mri_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pd_d1_9_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_14_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_20_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_9_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_14_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_20_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_9_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_14_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_20_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmetam1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmetam2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmetam3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_9_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_14_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_20_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmetam1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmetam2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmetam3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_9_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_14_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_20_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmetam1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmetam2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmetam3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra1_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra2_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra3_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$screening_pain_diary_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pc1_1.factor)=c("0","1","2","3","4")
levels(data$pc2_1.factor)=c("0","1","2","3","4")
levels(data$pc3_1.factor)=c("0","1","2","3","4")
levels(data$pc4_1.factor)=c("0","1","2","3","4")
levels(data$pc5_1.factor)=c("0","1","2","3","4")
levels(data$pc6_1.factor)=c("0","1","2","3","4")
levels(data$pc7_1.factor)=c("0","1","2","3","4")
levels(data$pc8_1.factor)=c("0","1","2","3","4")
levels(data$pc9_1.factor)=c("0","1","2","3","4")
levels(data$pc10_1.factor)=c("0","1","2","3","4")
levels(data$pc11_1.factor)=c("0","1","2","3","4")
levels(data$pc12_1.factor)=c("0","1","2","3","4")
levels(data$pc13_1.factor)=c("0","1","2","3","4")
levels(data$pse1_1.factor)=c("0","1","2","3","4","5","6")
levels(data$pse2_1.factor)=c("0","1","2","3","4","5","6")
levels(data$pse3_1.factor)=c("0","1","2","3","4","5","6")
levels(data$pse4_1.factor)=c("0","1","2","3","4","5","6")
levels(data$pse5_1.factor)=c("0","1","2","3","4","5","6")
levels(data$pse6_1.factor)=c("0","1","2","3","4","5","6")
levels(data$pse7_1.factor)=c("0","1","2","3","4","5","6")
levels(data$pse8_1.factor)=c("0","1","2","3","4","5","6")
levels(data$pse9_1.factor)=c("0","1","2","3","4","5","6")
levels(data$pse10_1.factor)=c("0","1","2","3","4","5","6")
levels(data$h1_1.factor)=c("Most of the time","A lot of the time","From time to time, occasionally","Not at all")
levels(data$h2_1.factor)=c("Definitely as much","Not quite so much","Only a little","Hardly at all")
levels(data$h3_1.factor)=c("Very definitely and quite badly","Yes, but not too badly","A little, but it doesnt worry me","Not at all")
levels(data$h4_1.factor)=c("As much as I always could","Not quite so much now","Definitely not so much now","Not at all")
levels(data$h5_1.factor)=c("A great deal of the time","A lot of the time","From time to time, but not too often","Only occasionally")
levels(data$h6_1.factor)=c("Not at all","Not often","Sometimes","Most of the time")
levels(data$h7_1.factor)=c("Definitely","Usually","Not Often","Not at all")
levels(data$h8_1.factor)=c("Nearly all the time","Very often","Sometimes","Not at all")
levels(data$h9_1.factor)=c("Not at all","Occasionally","Quite Often","Very Often")
levels(data$h10_1.factor)=c("Definitely","I dont take as much care as I should","I may not take quite as much care","I take just as much care as ever")
levels(data$h11_1.factor)=c("Very much indeed","Quite a lot","Not very much","Not at all")
levels(data$h12_1.factor)=c("As much as I ever did","Rather less than I used to","Definitely less than I used to","Hardly at all")
levels(data$h13_1.factor)=c("Very often indeed","Quite often","Not very often","Not at all")
levels(data$h14_1.factor)=c("Often","Sometimes","Not often","Very seldom")
levels(data$o1_1.factor)=c("I have no pain at the moment","The pain is very mild at the moment","The pain is moderate at the moment","The pain is fairly severe at the moment","The pain is very severe at the moment","The pain is the worst imaginable at the moment")
levels(data$o2_1.factor)=c("I can look after myself normally without causing extra pain","I can look after myself normally but it causes extra pain","It is painful to look after myself and I am slow and careful","I need some help but manage most of my personal care","I need help every day in most aspects of self-care","I do not get dressed, I wash with difficulty and stay in bed")
levels(data$o3_1.factor)=c("I can lift heavy weights without extra pain","I can lift heavy weights but it gives extra pain","gives extra pain Pain prevents me from lifting heavy weights off the floor, but I can manage if they are conveniently placed eg. on a table","Pain prevents me from lifting heavy weights, but I can manage light to medium weights if they are conveniently positioned","I can lift very light weights","I cannot lift or carry anything at all")
levels(data$o4_1.factor)=c("Pain does not prevent me walking any distance","Pain prevents me from walking more than 1 mile","Pain prevents me from walking more than 1/2 mile","Pain prevents me from walking more than 100 yards","I can only walk using a stick or crutches","I am in bed most of the time")
levels(data$o5_1.factor)=c("I can sit in any chair as long as I like","I can only sit in my favourite chair as long as I like","Pain prevents me sitting more than one hour","Pain prevents me from sitting more than 30 minutes","Pain prevents me from sitting more than 10 minutes","Pain prevents me from sitting at all")
levels(data$o6_1.factor)=c("I can stand as long as I want without extra pain","I can stand as long as I want but it gives me extra pain","Pain prevents me from standing for more than 1 hour","Pain prevents me from standing for more than 30 minutes","Pain prevents me from standing for more than 10 minutes","Pain prevents me from standing at all")
levels(data$o7_1.factor)=c("My sleep is never disturbed by pain","My sleep is occasionally disturbed by pain","Because of pain I have less than 6 hours sleep","Because of pain I have less than 4 hours sleep","Because of pain I have less than 2 hours sleep","Pain prevents me from sleeping at all")
levels(data$o8_1.factor)=c("My sex life is normal and causes no extra pain","My sex life is normal but causes some extra pain","My sex life is nearly normal but is very painful","My sex life is severely restricted by pain","My sex life is nearly absent because of pain","Pain prevents any sex life at all")
levels(data$o9_1.factor)=c("My social life is normal and gives me no extra pain","My social life is normal but increases the degree of pain","Pain has no significant effect on my social life apart from limiting my more energetic interests eg, sport","Pain has restricted my social life and I do not go out as often","Pain has restricted my social life to my home","I have no social life because of pain")
levels(data$o10_1.factor)=c("I can travel anywhere without pain","I can travel anywhere but it gives me extra pain","Pain is bad but I manage journeys over two hours","Pain restricts me to journeys of less than one hour","Pain restricts me to short necessary journeys under 30 minutes","Pain prevents me from travelling except to receive treatment")
levels(data$eq1_1.factor)=c("I have no problems in walking about","I have slight problems in walking about","I have moderate problems in walking about","I have severe problems in walking about","I am unable to walk about")
levels(data$eq2_1.factor)=c("I have no problems washing or dressing myself","I have slight problems washing or dressing myself","I have moderate problems washing or dressing myself","I have severe problems washing or dressing myself","I am unable to wash or dress myself")
levels(data$eq3_1.factor)=c("I have no problems doing my usual activities","I have slight problems doing my usual activities","I have moderate problems doing my usual activities","I have severe problems doing my usual activities","I am unable to do my usual activities")
levels(data$eq4_1.factor)=c("I have no pain or discomfort","I have slight pain or discomfort","I have moderate pain or discomfort","I have severe pain or discomfort","I have extreme pain or discomfort")
levels(data$eq5_1.factor)=c("I am not anxious or depressed","I am slightly anxious or depressed","I am moderately anxious or depressed","I am severely anxious or depressed","I am extremely anxious or depressed")
levels(data$eq6_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100")
levels(data$feari1_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$feari2_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$feari3_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$feari4_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$feari5_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$feari6_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$feari7_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$feari8_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$re_feari1_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$re_feari2_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$re_feari3_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$re_feari4_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$re_feari5_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$re_feari6_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$re_feari7_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$re_feari8_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$re_feari9_1.factor)=c("More scared","Equal fear","Less afraid")
levels(data$screening_questionnaires_c5b270_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$disco_yn_l12.factor)=c("Yes","No")
levels(data$disco_posneg_l12.factor)=c("POSITIVE","NEGATIVE")
levels(data$ppd_l1_adams_1.factor)=c("1","2","3","4","5")
levels(data$ppd_l1_nrs_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$disco_yn_l23.factor)=c("Yes","No")
levels(data$disco_posneg_l23.factor)=c("POSITIVE","NEGATIVE")
levels(data$ppd_l2_adams_1.factor)=c("1","2","3","4","5")
levels(data$ppd_l2_nrs_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$disco_yn_l34.factor)=c("Yes","No")
levels(data$disco_posneg_l34.factor)=c("POSITIVE","NEGATIVE")
levels(data$ppd_l3_adams_1.factor)=c("1","2","3","4","5")
levels(data$ppd_l3_nrs_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$disco_yn_l45.factor)=c("Yes","No")
levels(data$disco_posneg_l45.factor)=c("POSITIVE","NEGATIVE")
levels(data$ppd_l4_adams_1.factor)=c("1","2","3","4","5")
levels(data$ppd_l4_nrs_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$disco_yn_l5s1.factor)=c("Yes","No")
levels(data$disco_posneg_l5s1.factor)=c("POSITIVE","NEGATIVE")
levels(data$ppd_l5_adams_1.factor)=c("1","2","3","4","5")
levels(data$ppd_l5_nrs_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pressure_regulated_provocative_discography_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$exam_lquad_grade_1.factor)=c("1","2","3","4","5")
levels(data$exam_lankle_dor_grade_1.factor)=c("1","2","3","4","5")
levels(data$exam_lankle_pla_grade_1.factor)=c("1","2","3","4","5")
levels(data$exam_lexten_hall_grade_1.factor)=c("1","2","3","4","5")
levels(data$exam_rquad_grade_1.factor)=c("1","2","3","4","5")
levels(data$exam_rankle_dor_grade_1.factor)=c("1","2","3","4","5")
levels(data$exam_rankle_pla_grade_1.factor)=c("1","2","3","4","5")
levels(data$exam_rexten_hall_grade_1.factor)=c("1","2","3","4","5")
levels(data$exam_lpat_grade_1.factor)=c("1","2","3","4")
levels(data$exam_lach_grade_1.factor)=c("1","2","3","4")
levels(data$exam_llas_grade_1.factor)=c("NEGATIVE","POSITIVE")
levels(data$exam_rpat_grade_1.factor)=c("1","2","3","4")
levels(data$exam_rach_grade_1.factor)=c("1","2","3","4")
levels(data$exam_rlas_grade_1.factor)=c("NEGATIVE","POSITIVE")
levels(data$exam_lbrag_1.factor)=c("NEGATIVE","POSITIVE")
levels(data$exam_rbrag_1.factor)=c("NEGATIVE","POSITIVE")
levels(data$exam_shob_1.factor)=c("UNLIMITED","RESTRICTED")
levels(data$exam_pain_posit_1.factor)=c("Yes","No")
levels(data$exam_sensation_1.factor)=c("NORMAL","ABNORMAL/DEFICIT (if abnormal sign in drawing)")
levels(data$esam_axial_pain_1.factor)=c("Yes","No")
levels(data$exam_radpain_1.factor)=c("YES (sign irradiation pain in drawing)","NO")
levels(data$disco_l1_implant_1.factor)=c("Yes","No")
levels(data$gelstix_l1_nr_1.factor)=c("0","1","2","3")
levels(data$disco_l2_implant_1.factor)=c("Yes","No")
levels(data$gelstix_l2_nr_1.factor)=c("0","1","2","3")
levels(data$disco_l3_implant_1.factor)=c("Yes","No")
levels(data$gelstix_l3_nr_1.factor)=c("0","1","2","3")
levels(data$disco_l4_implant_1.factor)=c("Yes","No")
levels(data$gelstix_l4_nr_1.factor)=c("0","1","2","3")
levels(data$disco_l5_implant_1.factor)=c("Yes","No")
levels(data$gelstix_l5_nr_1.factor)=c("0","1","2","3")
levels(data$gelstix_insertion_1.factor)=c("easy","moderate","difficult (if  difficult, specify)")
levels(data$study_gelstix_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pd_notdone_pd_1w_1.factor)=c("ND")
levels(data$pd_d1_9_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_14_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_20_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_9_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_14_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_20_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_9_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_14_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_20_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_9_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_14_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_20_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_9_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_14_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_20_1w_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra1_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra2_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra3_1w_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$week_follow_up_pain_diary_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pd_notdone_pd_1m_1.factor)=c("ND")
levels(data$pd_d1_9_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_14_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_20_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_9_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_14_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_20_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_9_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_14_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_20_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_9_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_14_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_20_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_9_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_14_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_20_1m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra1_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra2_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra3_1m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$month_follow_up_pain_diary_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$months_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pd_notdone_pd_3m_1.factor)=c("ND")
levels(data$pd_d1_9_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_14_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_20_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_9_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_14_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_20_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_9_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_14_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_20_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_9_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_14_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_20_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_9_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_14_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_20_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra1_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra2_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra3_3m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$months_follow_up_pain_diary_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$gelstix_3m_advev1_1.factor)=c("Yes","No")
levels(data$gelstix_3m_advev1_inten_1.factor)=c("MILD","MODERATE","SEVERE")
levels(data$gelstix_3m_advev1_action_1.factor)=c("NONE","IMPLANTATION STOPPED","NOT APPLICABLE")
levels(data$gelstix_3m_advev1_relat_1.factor)=c("NONE","UNLIKELY","POSSIBLE","PROBABLE","DEFINITE")
levels(data$gelstix_3m_advev1_outc_1.factor)=c("RECOVERED","RECOVERED WITH SEQUELAE","AE STILL PRESENT","DIED","DATA NOT AVAILABLE")
levels(data$gelstix_3m_advev1_sae_1.factor)=c("Yes","No")
levels(data$gelstix_3m_advev2_intens_1.factor)=c("MILD","MODERATE","SEVERE")
levels(data$gelstix_3m_advev2_action_1.factor)=c("NONE","IMPLANTATION STOPPED","NOT APPLICABLE")
levels(data$gelstix_3m_advev2_relat_1.factor)=c("NONE","UNLIKELY","POSSIBLE","PROBABLE","DEFINITE")
levels(data$gelstix_3m_advev2_outc_1.factor)=c("RECOVERED","RECOVERED WITH SEQUELAE","AE STILL PRESENT","DIED","DATA NOT AVAILABLE")
levels(data$gelstix_3m_advev2_sae_1.factor)=c("Yes","No")
levels(data$gelstix_3m_advev3_intens_1.factor)=c("MILD","MODERATE","SEVERE")
levels(data$gelstix_3m_advev3_action_1.factor)=c("NONE","IMPLANTATION STOPPED","NOT APPLICABLE")
levels(data$gelstix_3m_advev3_relat_1.factor)=c("NONE","UNLIKELY","POSSIBLE","PROBABLE","DEFINITE")
levels(data$gelstix_3m_advev3_outc_1.factor)=c("RECOVERED","RECOVERED WITH SEQUELAE","AE STILL PRESENT","DIED","DATA NOT AVAILABLE")
levels(data$gelstix_3m_advev3_sae_1.factor)=c("Yes","No")
levels(data$months_adverse_event_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pd_notdone_quest_3m_1.factor)=c("ND")
levels(data$eq1_3m_1.factor)=c("I have no problems in walking about","I have slight problems in walking about","I have moderate problems in walking about","I have severe problems in walking about","I am unable to walk about")
levels(data$eq2_3m_1.factor)=c("I have no problems washing or dressing myself","I have slight problems washing or dressing myself","I have moderate problems washing or dressing myself","I have severe problems washing or dressing myself","I am unable to wash or dress myself")
levels(data$eq3_3m_1.factor)=c("I have no problems doing my usual activities","I have slight problems doing my usual activities","I have moderate problems doing my usual activities","I have severe problems doing my usual activities","I am unable to do my usual activities")
levels(data$eq4_3m_1.factor)=c("I have no pain or discomfort","I have slight pain or discomfort","I have moderate pain or discomfort","I have severe pain or discomfort","I have extreme pain or discomfort")
levels(data$eq5_3m_1.factor)=c("I am not anxious or depressed","I am slightly anxious or depressed","I am moderately anxious or depressed","I am severely anxious or depressed","I am extremely anxious or depressed")
levels(data$eq6_3m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100")
levels(data$pgic_3m_1.factor)=c("Very much improved","Much improved","Minimally improved","No change","Minimally worse","Much worse","Very much worse")
levels(data$months_questionnaires_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$months_34d630_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$es_occuptime_6m_1.factor)=c("FULL","PART TIME","UNEMPLOYED","RESTRICTED EMPLOYMENT")
levels(data$es_parttime_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100")
levels(data$es_legpain_6m_1.factor)=c("Yes","No")
levels(data$es_backpain_6m_1.factor)=c("Yes","No")
levels(data$es_disab_6m_1.factor)=c("Yes","No")
levels(data$es_sick_6m_1.factor)=c("Yes","No")
levels(data$es_other_6m_1.factor)=c("Yes","No")
levels(data$months_employment_status_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pd_notdone_pd_6m_1.factor)=c("ND")
levels(data$pd_d1_9_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_14_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_20_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_9_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_14_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_20_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_9_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_14_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_20_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_9_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_14_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_20_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_9_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_14_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_20_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra1_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra2_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra3_6m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$months_follow_up_pain_diary_c7cd_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$gelstix_6m_advev1_1.factor)=c("Yes","No")
levels(data$gelstix_6m_advev1_inten_1.factor)=c("MILD","MODERATE","SEVERE")
levels(data$gelstix_6m_advev1_action_1.factor)=c("NONE","IMPLANTATION STOPPED","NOT APPLICABLE")
levels(data$gelstix_6m_advev1_relat_1.factor)=c("NONE","UNLIKELY","POSSIBLE","PROBABLE","DEFINITE")
levels(data$gelstix_6m_advev1_outc_1.factor)=c("RECOVERED","RECOVERED WITH SEQUELAE","AE STILL PRESENT","DIED","DATA NOT AVAILABLE")
levels(data$gelstix_6m_advev1_sae_1.factor)=c("Yes","No")
levels(data$gelstix_6m_advev2_inten_1.factor)=c("MILD","MODERATE","SEVERE")
levels(data$gelstix_6m_advev2_action_1.factor)=c("NONE","IMPLANTATION STOPPED","NOT APPLICABLE")
levels(data$gelstix_6m_advev2_relat_1.factor)=c("NONE","UNLIKELY","POSSIBLE","PROBABLE","DEFINITE")
levels(data$gelstix_6m_advev2_outc_1.factor)=c("RECOVERED","RECOVERED WITH SEQUELAE","AE STILL PRESENT","DIED","DATA NOT AVAILABLE")
levels(data$gelstix_6m_advev2_sae_1.factor)=c("Yes","No")
levels(data$gelstix_6m_advev3_inten_1.factor)=c("MILD","MODERATE","SEVERE")
levels(data$gelstix_6m_advev3_action_1.factor)=c("NONE","IMPLANTATION STOPPED","NOT APPLICABLE")
levels(data$gelstix_6m_advev3_relat_1.factor)=c("NONE","UNLIKELY","POSSIBLE","PROBABLE","DEFINITE")
levels(data$gelstix_6m_advev3_outc_1.factor)=c("RECOVERED","RECOVERED WITH SEQUELAE","AE STILL PRESENT","DIED","DATA NOT AVAILABLE")
levels(data$gelstix_6m_advev3_sae_1.factor)=c("Yes","No")
levels(data$months_adverse_event_4fa91c_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pd_notdone_quest_6m_1.factor)=c("ND")
levels(data$eq1_6m_1.factor)=c("I have no problems in walking about","I have slight problems in walking about","I have moderate problems in walking about","I have severe problems in walking about","I am unable to walk about")
levels(data$eq2_6m_1.factor)=c("I have no problems washing or dressing myself","I have slight problems washing or dressing myself","I have moderate problems washing or dressing myself","I have severe problems washing or dressing myself","I am unable to wash or dress myself")
levels(data$eq3_6m_1.factor)=c("I have no problems doing my usual activities","I have slight problems doing my usual activities","I have moderate problems doing my usual activities","I have severe problems doing my usual activities","I am unable to do my usual activities")
levels(data$eq4_6m_1.factor)=c("I have no pain or discomfort","I have slight pain or discomfort","I have moderate pain or discomfort","I have severe pain or discomfort","I have extreme pain or discomfort")
levels(data$eq5_6m_1.factor)=c("I am not anxious or depressed","I am slightly anxious or depressed","I am moderately anxious or depressed","I am severely anxious or depressed","I am extremely anxious or depressed")
levels(data$eq6_6m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100")
levels(data$o1_6m_1.factor)=c("I have no pain at the moment","The pain is very mild at the moment","The pain is moderate at the moment","The pain is fairly severe at the moment","The pain is very severe at the moment","The pain is the worst imaginable at the moment")
levels(data$o2_6m_1.factor)=c("I can look after myself normally without causing extra pain","I can look after myself normally but it causes extra pain","It is painful to look after myself and I am slow and careful","I need some help but manage most of my personal care","I need help every day in most aspects of self-care","I do not get dressed, I wash with difficulty and stay in bed")
levels(data$o3_6m_1.factor)=c("I can lift heavy weights without extra pain","I can lift heavy weights but it gives extra pain","gives extra pain Pain prevents me from lifting heavy weights off the floor, but I can manage if they are conveniently placed eg. on a table","Pain prevents me from lifting heavy weights, but I can manage light to medium weights if they are conveniently positioned","I can lift very light weights","I cannot lift or carry anything at all")
levels(data$o4_6m_1.factor)=c("Pain does not prevent me walking any distance","Pain prevents me from walking more than 1 mile","Pain prevents me from walking more than 1/2 mile","Pain prevents me from walking more than 100 yards","I can only walk using a stick or crutches","I am in bed most of the time")
levels(data$o5_6m_1.factor)=c("I can sit in any chair as long as I like","I can only sit in my favourite chair as long as I like","Pain prevents me sitting more than one hour","Pain prevents me from sitting more than 30 minutes","Pain prevents me from sitting more than 10 minutes","Pain prevents me from sitting at all")
levels(data$o6_6m_1.factor)=c("I can stand as long as I want without extra pain","I can stand as long as I want but it gives me extra pain","Pain prevents me from standing for more than 1 hour","Pain prevents me from standing for more than 30 minutes","Pain prevents me from standing for more than 10 minutes","Pain prevents me from standing at all")
levels(data$o7_6m_1.factor)=c("My sleep is never disturbed by pain","My sleep is occasionally disturbed by pain","Because of pain I have less than 6 hours sleep","Because of pain I have less than 4 hours sleep","Because of pain I have less than 2 hours sleep","Pain prevents me from sleeping at all")
levels(data$o8_6m_1.factor)=c("My sex life is normal and causes no extra pain","My sex life is normal but causes some extra pain","My sex life is nearly normal but is very painful","My sex life is severely restricted by pain","My sex life is nearly absent because of pain","Pain prevents any sex life at all")
levels(data$o9_6m_1.factor)=c("My social life is normal and gives me no extra pain","My social life is normal but increases the degree of pain","Pain has no significant effect on my social life apart from limiting my more energetic interests eg, sport","Pain has restricted my social life and I do not go out as often","Pain has restricted my social life to my home","I have no social life because of pain")
levels(data$o10_6m_1.factor)=c("I can travel anywhere without pain","I can travel anywhere but it gives me extra pain","Pain is bad but I manage journeys over two hours","Pain restricts me to journeys of less than one hour","Pain restricts me to short necessary journeys under 30 minutes","Pain prevents me from travelling except to receive treatment")
levels(data$pgic_6m_1.factor)=c("Very much improved","Much improved","Minimally improved","No change","Minimally worse","Much worse","Very much worse")
levels(data$crossover_6m_1.factor)=c("Yes","No")
levels(data$quest_cecit_pz_6m_1.factor)=c("I think the patient has (I have) been treated with GelStix™","I think the patient has (I have) not been treated with GelStix™","I dont know if the patient is ( I am) been treated with GelStix™ or not.")
levels(data$quest_cecit_med_6m_1.factor)=c("I think the patient has (I have) been treated with GelStix™","- I think the patient has (I have) not been treated with GelStix™","I dont know if the patient is ( I am) been treated with GelStix™ or not")
levels(data$plac_gelstix_6m.factor)=c("Placebo","Gelstix")
levels(data$months_questionnaires_55b815_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$months_ca1d31_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$es_occuptime_12m_1.factor)=c("FULL","PART TIME","UNEMPLOYED","RESTRICTED EMPLOYMENT")
levels(data$es_parttime_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100")
levels(data$es_legpain_12m_1.factor)=c("Yes","No")
levels(data$es_backpain_12m_1.factor)=c("Yes","No")
levels(data$es_disab_12m_1.factor)=c("Yes","No")
levels(data$es_sick_12m_1.factor)=c("Yes","No")
levels(data$es_other_12m_1.factor)=c("Yes","No")
levels(data$months_employment_status_3a61ed_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pd_notdone_pd_12m_1.factor)=c("ND")
levels(data$pd_d1_9_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_14_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_20_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacec3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfacem3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfami3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfbup3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdex3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdiclo3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfdul3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pffen3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfgab3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfhyd3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfibu3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfind3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfket3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmel3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmeta3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmet3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfmor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfnor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfoxy3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfparac3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfphe3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpreg3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pfpir3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d1_pftra3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_9_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_14_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_20_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacec3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfacem3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfami3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfbup3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdex3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdiclo3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfdul3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pffen3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfgab3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfhyd3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfibu3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfind3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfket3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmel3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmeta3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmet3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfmor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfnor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfoxy3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfparac3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfphe3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpreg3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pfpir3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d2_pftra3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_9_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_14_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_20_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacec3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfacem3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfami3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfbup3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdex3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdiclo3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfdul3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pffen3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfgab3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfhyd3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfibu3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfind3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfket3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmel3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmeta3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmet3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfmor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfnor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfoxy3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfparac3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfphe3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpreg3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pfpir3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d3_pftra3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_9_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_14_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_20_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacec3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfacem3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfami3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfbup3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdex3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdiclo3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfdul3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pffen3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfgab3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfhyd3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfibu3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfind3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfket3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmel3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmeta3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmet3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfmor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfnor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfoxy3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfparac3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfphe3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpreg3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pfpir3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d4_pftra3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_9_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_14_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_20_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacec3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfacem3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfami3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfbup3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdex3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdiclo3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfdul3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pffen3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfgab3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfhyd3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfibu3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfind3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfket3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmel3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmeta3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmet3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfmor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfnor3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfoxy3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfparac3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfphe3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpreg3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pfpir3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftap3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra1_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra2_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$pd_d5_pftra3_12m_1.factor)=c("1","2","3","4","5","6","7","8","9","10")
levels(data$months_follow_up_pain_diary_15e6_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$gelstix_12m_advev1_1.factor)=c("Yes","No")
levels(data$gelstix_12m_advev1_inten_1.factor)=c("MILD","MODERATE","SEVERE")
levels(data$gelstix_12m_advev1_actio_1.factor)=c("NONE","IMPLANTATION STOPPED","NOT APPLICABLE")
levels(data$gelstix_12m_advev1_relat_1.factor)=c("NONE","UNLIKELY","POSSIBLE","PROBABLE","DEFINITE")
levels(data$gelstix_12m_advev1_outc_1.factor)=c("RECOVERED","RECOVERED WITH SEQUELAE","AE STILL PRESENT","DIED","DATA NOT AVAILABLE")
levels(data$gelstix_12m_advev1_sae_1.factor)=c("Yes","No")
levels(data$gelstix_12m_advev2_inten_1.factor)=c("MILD","MODERATE","SEVERE")
levels(data$gelstix_12m_advev2_actio_1.factor)=c("NONE","IMPLANTATION STOPPED","NOT APPLICABLE")
levels(data$gelstix_12m_advev2_relat_1.factor)=c("NONE","UNLIKELY","POSSIBLE","PROBABLE","DEFINITE")
levels(data$gelstix_12m_advev2_outc_1.factor)=c("RECOVERED","RECOVERED WITH SEQUELAE","AE STILL PRESENT","DIED","DATA NOT AVAILABLE")
levels(data$gelstix_12m_advev2_sae_1.factor)=c("Yes","No")
levels(data$gelstix_12m_advev3_inten_1.factor)=c("MILD","MODERATE","SEVERE")
levels(data$gelstix_12m_advev3_actio_1.factor)=c("NONE","IMPLANTATION STOPPED","NOT APPLICABLE")
levels(data$gelstix_12m_advev3_relat_1.factor)=c("NONE","UNLIKELY","POSSIBLE","PROBABLE","DEFINITE")
levels(data$gelstix_12m_advev3_outc_1.factor)=c("RECOVERED","RECOVERED WITH SEQUELAE","AE STILL PRESENT","DIED","DATA NOT AVAILABLE")
levels(data$gelstix_12m_advev3_sae_1.factor)=c("Yes","No")
levels(data$months_adverse_event_2b662c_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$pd_notdone_quest_12m_1.factor)=c("ND")
levels(data$eq1_12m_1.factor)=c("I have no problems in walking about","I have slight problems in walking about","I have moderate problems in walking about","I have severe problems in walking about","I am unable to walk about")
levels(data$eq2_12m_1.factor)=c("I have no problems washing or dressing myself","I have slight problems washing or dressing myself","I have moderate problems washing or dressing myself","I have severe problems washing or dressing myself","I am unable to wash or dress myself")
levels(data$eq3_12m_1.factor)=c("I have no problems doing my usual activities","I have slight problems doing my usual activities","I have moderate problems doing my usual activities","I have severe problems doing my usual activities","I am unable to do my usual activities")
levels(data$eq4_12m_1.factor)=c("I have no pain or discomfort","I have slight pain or discomfort","I have moderate pain or discomfort","I have severe pain or discomfort","I have extreme pain or discomfort")
levels(data$eq5_12m_1.factor)=c("I am not anxious or depressed","I am slightly anxious or depressed","I am moderately anxious or depressed","I am severely anxious or depressed","I am extremely anxious or depressed")
levels(data$eq6_12m_1.factor)=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100")
levels(data$o1_12m_1.factor)=c("I have no pain at the moment","The pain is very mild at the moment","The pain is moderate at the moment","The pain is fairly severe at the moment","The pain is very severe at the moment","The pain is the worst imaginable at the moment")
levels(data$o2_12m_1.factor)=c("I can look after myself normally without causing extra pain","I can look after myself normally but it causes extra pain","It is painful to look after myself and I am slow and careful","I need some help but manage most of my personal care","I need help every day in most aspects of self-care","I do not get dressed, I wash with difficulty and stay in bed")
levels(data$o3_12m_1.factor)=c("I can lift heavy weights without extra pain","I can lift heavy weights but it gives extra pain","gives extra pain Pain prevents me from lifting heavy weights off the floor, but I can manage if they are conveniently placed eg. on a table","Pain prevents me from lifting heavy weights, but I can manage light to medium weights if they are conveniently positioned","I can lift very light weights","I cannot lift or carry anything at all")
levels(data$o4_12m_1.factor)=c("Pain does not prevent me walking any distance","Pain prevents me from walking more than 1 mile","Pain prevents me from walking more than 1/2 mile","Pain prevents me from walking more than 100 yards","I can only walk using a stick or crutches","I am in bed most of the time")
levels(data$o5_12m_1.factor)=c("I can sit in any chair as long as I like","I can only sit in my favourite chair as long as I like","Pain prevents me sitting more than one hour","Pain prevents me from sitting more than 30 minutes","Pain prevents me from sitting more than 10 minutes","Pain prevents me from sitting at all")
levels(data$o6_12m_1.factor)=c("I can stand as long as I want without extra pain","I can stand as long as I want but it gives me extra pain","Pain prevents me from standing for more than 1 hour","Pain prevents me from standing for more than 30 minutes","Pain prevents me from standing for more than 10 minutes","Pain prevents me from standing at all")
levels(data$o7_12m_1.factor)=c("My sleep is never disturbed by pain","My sleep is occasionally disturbed by pain","Because of pain I have less than 6 hours sleep","Because of pain I have less than 4 hours sleep","Because of pain I have less than 2 hours sleep","Pain prevents me from sleeping at all")
levels(data$o8_12m_1.factor)=c("My sex life is normal and causes no extra pain","My sex life is normal but causes some extra pain","My sex life is nearly normal but is very painful","My sex life is severely restricted by pain","My sex life is nearly absent because of pain","Pain prevents any sex life at all")
levels(data$o9_12m_1.factor)=c("My social life is normal and gives me no extra pain","My social life is normal but increases the degree of pain","Pain has no significant effect on my social life apart from limiting my more energetic interests eg, sport","Pain has restricted my social life and I do not go out as often","Pain has restricted my social life to my home","I have no social life because of pain")
levels(data$o10_12m_1.factor)=c("I can travel anywhere without pain","I can travel anywhere but it gives me extra pain","Pain is bad but I manage journeys over two hours","Pain restricts me to journeys of less than one hour","Pain restricts me to short necessary journeys under 30 minutes","Pain prevents me from travelling except to receive treatment")
levels(data$pgic_12m_1.factor)=c("Very much improved","Much improved","Minimally improved","No change","Minimally worse","Much worse","Very much worse")
levels(data$crossover_12m_1.factor)=c("Yes","No")
levels(data$quest_cecit_pz_12m_1.factor)=c("I think the patient has (I have) been treated with GelStix™","I think the patient has (I have) not been treated with GelStix™","I dont know if the patient is ( I am) been treated with GelStix™ or not")
levels(data$quest_cecit_med_12m_1.factor)=c("I think the patient has (I have) been treated with GelStix™","I think the patient has (I have) not been treated with GelStix™","I dont know if the patient is ( I am) been treated with GelStix™ or not")
levels(data$plac_gelstix_12m.factor)=c("Placebo","Gelstix")
levels(data$months_questionnaires_c93271_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$mri_l1_pf_12m_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l1_hiz_12m_1.factor)=c("A","B","C","D")
levels(data$mri_l1_modic_12m_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l1_schmorl_12m_1.factor)=c("YES","NO")
levels(data$mri_l2_pf_12m_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l2_hiz_12m_1.factor)=c("A","B","C","D")
levels(data$mri_l2_modic_12m_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l2_schmorl_12m_1.factor)=c("YES","NO")
levels(data$mri_l3_pf_12m_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l3_hiz_12m_1.factor)=c("A","B","C","D")
levels(data$mri_l3_modic_12m_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l3_schmorl_12m_1.factor)=c("YES","NO")
levels(data$mri_l4_pf_12m_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l4_hiz_12m_1.factor)=c("A","B","C","D")
levels(data$mri_l4_modic_12m_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l4_schmorl_12m_1.factor)=c("YES","NO")
levels(data$mri_l5_pf_12m_1.factor)=c("I","II","III","IV","V")
levels(data$mri_l5_hiz_12m_1.factor)=c("A","B","C","D")
levels(data$mri_l5_modic_12m_1.factor)=c("NO MODIC","TYPE 1","TYPE 2")
levels(data$mri_l5_schmorl_12m_1.factor)=c("YES","NO")
levels(data$months_screening_rmi_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$endt_protocol_1.factor)=c("YES","NO (if No, please explain which data are not available and give the reason)")
levels(data$endt_reason_1.factor)=c("PATIENT DETERMINED INELIGIBLE DURING FINAL SCREENING PROCESS PRIOR TO IMPLANTATION","PATIENT EXCLUDED DUE TO INTRA-OPERATIVE EXCLUSION","DEVICE REMOVED AND NOT RE-IMPLANTED","PATIENT WITHDREV FROM STUDY","PATIENT LOST TO FOLLOW-UP","PATIENT DECEASED","OTHER")
levels(data$end_of_trial_form_complete.factor)=c("Incomplete","Unverified","Complete")
