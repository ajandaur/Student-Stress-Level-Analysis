#Linear Regression: Stress level (y) vs GPA (x)

index=which(d$School.Year. !="Freshman"&d$What.is.your.GPA...If.you.re.a.freshman.put.0. !=0)
mean(d$How.would.you.rate.your.overall.stress.in.life.[index])
sd(d$How.would.you.rate.your.overall.stress.in.life.[index])
mean(d$What.is.your.GPA...If.you.re.a.freshman.put.0.[index])
sd(d$What.is.your.GPA...If.you.re.a.freshman.put.0.[index])
mean(d$How.many.credits.are.you.taking.this.quarter.)
sd(d$How.many.credits.are.you.taking.this.quarter.)


model=lm(d$How.would.you.rate.your.overall.stress.in.life.[index]~d$What.is.your.GPA...If.you.re.a.freshman.put.0.[index])
abline(model)
summary(model)

#Conclusion: There is not a significant relationship between GPA of students and their observed stress levels (y= 5.98 + 0.2x, P = 0.68, R2= 0.0013). 

model=lm(d$How.would.you.rate.your.overall.stress.in.life.[index]~d$What.is.your.GPA...If.you.re.a.freshman.put.0.[index])
plot((d$How.would.you.rate.your.overall.stress.in.life.[index]) + runif(length(index) , -0.03,0.03) ~  (d$What.is.your.GPA...If.you.re.a.freshman.put.0.[index]), xlab = "GPA", ylab = "Stress Level")
hist(model$residuals)
plot(model$fitted.values, model$residuals)
abline(model)
