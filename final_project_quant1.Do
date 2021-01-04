  
/* Create profiles by age, gender, marital status, and race to analyze changes of job satisfaction over time.
Author: Finn Dobkin
*/


/*Load data: National Survey of College Graduates (NSCG) contains cross-sectional data on the nation's STEM workforce. It includes data on work activities, salary and demographic information:		           
	JOBSATIS -- Job Satisfaction
	AGE -- Age 
	DGRDG -- Educational Attainment
	EMRG -- Region of Employer
	GENDER -- Gender  
	LFSTAT -- Employement Status
	MARSTA -- Marital Status
	RACEM -- Race 
	SALARY -- Annualized Salary
	
	
Year: 2017
*/

/* Upload data */
use NSCG_2017_PUAD601.dta, clear;

/* Convert strings to numeric */
encode dgrdg, generate (educ_attainment)
encode emrg, generate (region)
encode jobsatis, generate(job_satisfaction)
encode lfstat, generate(employ_status)
encode marsta, generate(marital_status)
encode racem, generate(race)

/* Convert gender to logical */
gen gender_log = 1 if gender == "F"
replace gender_log = 2 if gender == "M"

/* Limit to employed & between 20 and 65*/
keep if employ_status == "1";
keep if age >= 20 & age <= 65;

/* Generate age cohort variables */
gen age_cohort = 1 if age >= 20 & age <= 29;
replace age_cohort = 2 if age >= 30 & age <= 39;
replace age_cohort = 3 if age >=40 & age <= 49;
replace age_cohort = 4 if age >=40 & age <= 49;
replace age_cohort = 5 if age >= 50 & age <= 59; 
replace age_cohort = 6 if age >=60 & age <= 65;

/* Save full dataframe prior to collapsing */
save NSCG_2017_PUAD601, replace;

/************* 1) Graph(Job Satisfaction by Gender and Age) ********************/

/* Collapse to generate mean job satisfaction by age cohort and gender */
collapse (mean) job_satisfaction, by(age gender_log);

/* Program locals by gender */
local graph_male = "";
local graph_female = "";

/*Get all values of years */
levelsof age_cohort, local(age_cohort);

/*Loop through all years */
foreach age of local age_cohort {;

/* Graph  */
graph twoway (line pct_satisfied age_cohort if gender == 1)
			 (line pct_satisfied age_cohort if gender == 2)
			  plotregion(margin(zero))
			  subtitle("Job Satisfaction by Age Cohort and Gender", justification(left))
			  margin(b+1 t-1) bexpand))
			  xtitle("Average Job Satisfaction", size(medlarge))
			  ytitle("Age Cohort", size(medlarge))
		      	  legend(off)
			  note("Source: 2017 National Survey of College Graduates", margin(l-8 t+2 b-2))
