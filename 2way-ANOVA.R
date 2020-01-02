#2-way ANOVA: School vs year vs GPA
#Assumptions:Equal variances for all populations
#Random and independent samples
#Normal distribution for each population

gpa = d$What.is.your.GPA...If.you.re.a.freshman.put.0.
schoolType = d$What.school.are.you.in.
schoolYear = d$School.Year.
index=which(d$School.Year.!="Freshman"&d$What.is.your.GPA...If.you.re.a.freshman.put.0. !=0)

#Mean:
aggregate(gpa[index], list(schoolType[index], schoolYear[index]), mean)
#Standard Deviation:
aggregate(gpa[index], list(schoolType[index], schoolYear[index]), sd)
#Variance:
aggregate(gpa[index], list(schoolType[index], schoolYear[index]), var)

#Test for equal variance:
leveneTest(gpa[index] ~ schoolType[index]*schoolYear[index], data = d)

#ANOVA Test
anova2=aov(gpa[index] ~ as.factor(schoolType[index])*as.factor(schoolYear[index]),data=d)
summary(anova2)

#Results:We have failed to reject the null hypothesis. Students in the school of Arts and Sciences and the school of Business had 0.24 higher GPA than students in the school of Engineering (Two-way ANOVA, F2,118 = 6.18, P = 0.00281).
#The school year of a student does not significantly affect their GPA (Two-way ANOVA, F3,118 = 2.45, P = 0.07). The school of the student does not influence the effect that school year has upon GPA (Two-way ANOVA, F6,118=1.122, P = 0.35). 

#Performed a posthoc test to compare group means
# Tukey multiple comparisons of means
#95% family-wise confidence level

TukeyHSD(anova2)
boxplot(gpa[index] ~ schoolType[index], data =d ,xlab = "Academic School",ylab = "GPA",frame = "False")

