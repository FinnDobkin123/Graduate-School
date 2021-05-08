
/*Generate Ethnicity Dummy variables*/
gen af_pop = 0
replace af_pop = 1 if pct_af_a > pct_white & pct_af_a > pct_hispanic & pct_af_a > pct_am_ind & pct_af_a > pct_asian & pct_af_a > pct_multiple & pct_af_a > pct_other

gen white_pop = 0 
replace white_pop = 1 if pct_white > pct_af_a & pct_white > pct_hispanic & pct_white > pct_am_ind & pct_white > pct_asian & pct_white > pct_multiple & pct_white > pct_other

gen hisp_pop = 0 
replace hisp_pop = 1 if pct_hispanic > pct_af_a & pct_hispanic > pct_white & pct_hispanic > pct_am_ind & pct_hispanic > pct_asian & pct_hispanic > pct_multiple & pct_hispanic > pct_other

gen asian_pop = 0
replace asian_pop = 1 if pct_asian > pct_af_a & pct_asian > pct_white & pct_asian > pct_am_ind & pct_asian > pct_hispanic & pct_asian > pct_multiple & pct_asian > pct_other

gen am_ind_pop = 0 
replace am_ind_pop = 1 if pct_am_ind > pct_af_a & pct_am_ind > pct_white & pct_am_ind > pct_asian &  pct_am_ind > pct_hispanic &  pct_am_ind > pct_multiple &  pct_am_ind > pct_other

gen multi_pop = 0
replace multi_pop = 1 if pct_multiple > pct_af_a & pct_multiple > pct_white & pct_multiple >pct_asian &  pct_multiple > pct_hispanic &  pct_multiple > pct_am_ind &  pct_multiple > pct_other

gen other_pop = 0 
replace other_pop = 1 if pct_other > pct_af_a & pct_other > pct_white & pct_other >pct_asian &  pct_other > pct_hispanic &  pct_other > pct_am_ind &  pct_other > pct_multiple

/*Ethnicity macro*/
global control "af_pop hisp_pop asian_pop am_ind_pop multi_pop other_pop"

/*Encode county*/
encode county, generate(county1)

/*Unconditional OLS models*/
xtset county1
xtreg eviction_rate ling_isolation, fe vce(cluster county1)
xtreg eviction_rate ling_isolation $control, fe vce(cluster county1)

/*Financial OLS models*/
xtreg eviction_rate ling_isolation incarceration educ_attainment $control, fe vce(cluster county1)
