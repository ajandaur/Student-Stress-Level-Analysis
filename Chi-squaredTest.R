#Chi-squared: Gender vs school

index = which(d$School.Year. != "Grad Student")
chisq.test(d$School.Year.[index], d$If.yes..do.you.hold.a.leadership.position.in.this.club.[index])
#Plot Chi-square Test
plot(table(as.factor(as.character(d$School.Year.[index])),
           d$If.yes..do.you.hold.a.leadership.position.in.this.club.[index]), col=c("salmon1", "skyblue", "light green"), main= "")

#X-squared = 13.674, df = 6, p-value = 0.0335
#Results: Junior and seniors are significantly more likely to hold leadership positions compared to freshman (𝝌2= 13.674, df = 6, p-value = 0.0335)