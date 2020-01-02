#Logistic Regression: In  a fraternity vs GPA

d = read.csv("biostats.csv")


GreekStatus = d$Are.you.in.a.fraternity.sorority.
Gpa = d$What.is.your.GPA...If.you.re.a.freshman.put.0.
fratbinary = ifelse(GreekStatus == "Yes", 1, 0)
index=which(d$What.is.your.GPA...If.you.re.a.freshman.put.0. != 0 & d$School.Year. !="Freshman")
model3 =glm(fratbinary[index] ~ Gpa[index], binomial)
summary(model3)

#Results: Since P > 0.05, we can not reject the null hypothesis.
# What your GPA is doesn’t affect whether or not you are in a fraternity or sorority  ( y = 0.34 + -0.07(GPA), P = 0.891).
