#ANOVA: Leadership Status vs Stress Level

d = read.csv("biostats.csv")

stressLevel = d$How.would.you.rate.your.overall.stress.in.life.
leadershipStatus = d$If.yes..do.you.hold.a.leadership.position.in.this.club.
boxplot(stressLevel ~ leadershipStatus, data = d, xlab = "Leadership Status", ylab = "Stress Level", frame = "False")
#ANOVA test
ANOVA = aov(stressLevel ~ leadershipStatus, data = d)
summary(ANOVA)
#Plot ANOVA 
plot(leadershipStatus, stressLevel, xlab = "Leadership Status", ylab = "Stress Level")

#ANOVA: School (business v engineering v arts and sciences) vs units taken 
#Assumptions: Equal variances of all populations
#Random and independent samples
#Normal distrubtion for each population

#Mean of units taken for each school
aggregate(d$How.many.credits.are.you.taking.this.quarter., list(d$What.school.are.you.in.), mean)
#Standard Deviation of units taken for each school
aggregate(d$How.many.credits.are.you.taking.this.quarter., list(d$What.school.are.you.in.), sd)
#Variance of units taken for each school
aggregate(d$How.many.credits.are.you.taking.this.quarter., list(d$What.school.are.you.in.), var)
#Test for equal variance
leveneTest(y = d$How.many.credits.are.you.taking.this.quarter., group = d$What.school.are.you.in.)
#ANOVA test
ANOVA1 = aov(How.many.credits.are.you.taking.this.quarter. ~ What.school.are.you.in., d)
summary(ANOVA1)
#Plot ANOVA
plot(d$What.school.are.you.in., d$How.many.credits.are.you.taking.this.quarter., xlab = "School", ylab = "Number of Units")

#ANOVA: Romantic Relationship vs Stress Level
#Assumptions:Equal variances for all populations
#Random and independent samples
#Normal distribution for each population

#Mean of stres levels (10 being high, 1 being low) for relationship status
aggregate(d$How.would.you.rate.your.overall.stress.in.life., list(d$Are.you.in.a.romantic.relationship.), mean)

#Standard deviation of stres levels (10 being high, 1 being low) for relationship status
aggregate(d$How.would.you.rate.your.overall.stress.in.life., list(d$Are.you.in.a.romantic.relationship.), sd)

#Variance of stres levels (10 being high, 1 being low) for relationship status
aggregate(d$How.would.you.rate.your.overall.stress.in.life., list(d$Are.you.in.a.romantic.relationship.), var)

#Test for equal variance 
leveneTest(y= d$How.would.you.rate.your.overall.stress.in.life., group= d$Are.you.in.a.romantic.relationship.)

#ANOVA test
ANOVA = aov(How.would.you.rate.your.overall.stress.in.life. ~ Are.you.in.a.romantic.relationship., d)
summary(ANOVA)

#ANOVA plot
plot(d$Are.you.in.a.romantic.relationship., d$How.would.you.rate.your.overall.stress.in.life., xlab = "Relationship Status", ylab = "Stress Level")


