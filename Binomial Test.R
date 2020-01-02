#Binomial Test: Gender (female as success) in our study

d=read.csv("BioStats Project - Sheet1.csv")
table(d$Gender)
n=174 x=91 p=0.5 p-1=0.5
binom.test(91,174,p=0.5)

#There is equal representation of gender in our study