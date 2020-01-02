#T-Test: Gender vs Hours Studying
#Welch two sample T-test
d = read.csv("biostats.csv")

x = d$How.would.you.rate.your.overall.stress.in.life.
t.test(x[d$Gender == "Male"],x[d$Gender == "Female"])

#Conclusion - Reject the null hypothesis 
#Women have a 1.5 higher stress score compared to men. (two-sample t- test, t = -5.1388, df = 155.24, p-value = 8.201e-07)

#Boxplot for T-test
boxplot(x[d$Gender == "Male"], x[d$Gender == "Female"], names = c("Male", "Female"), ylab = "Level of Stress”, xlab = “Gender”)