#Correlation: Stress level (y) vs GPA (x)

index=which(d$School.Year. !="Freshman"&d$What.is.your.GPA...If.you.re.a.freshman.put.0. !=0)
cor.test(d$What.is.your.GPA...If.you.re.a.freshman.put.0.[index], d$How.would.you.rate.your.overall.stress.in.life.[index])

#Results: There is not a significant relationship between stress level and GPA for the students of Santa Clara University (r = 0.036, t = 0.405, df = 128, P = 0.69)