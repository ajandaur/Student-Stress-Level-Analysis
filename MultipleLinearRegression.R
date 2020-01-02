#Multiple Linear Regression: Number of Credits + GPA vs stress level
d = read.csv("biostats.csv")

index=which(d$What.is.your.GPA...If.you.re.a.freshman.put.0. != 0 & d$School.Year. !="Freshman")
model3=lm(d$How.would.you.rate.your.overall.stress.in.life.[index] ~ d$How.many.credits.are.you.taking.this.quarter.[index]+ d$What.is.your.GPA...If.you.re.a.freshman.put.0.[index])
summary(model3)

require(rgl)


my_surface = function(f, n=10, ...) 
{ 
  ranges = rgl:::.getRanges()
  x = seq(ranges$xlim[1], ranges$xlim[2], length=n)
  y = seq(ranges$ylim[1], ranges$ylim[2], length=n)
  z = outer(x,y,f)
  surface3d(x, y, z, ...)
}

f = function(x1, x2) {5.67307 + 0.02649 * x1 + 0.15563 * x2}

#Plot linear Regression
plot3d(d$What.is.your.GPA...If.you.re.a.freshman.put.0.[index], d$How.many.credits.are.you.taking.this.quarter.,d$How.would.you.rate.your.overall.stress.in.life.[index], type="p", col="red", xlab="GPA", ylab="Number of Units", zlab="Stress Level", site=5, lwd=15)
my_surface(f, alpha=.2,back = "lines")

#Results: There is neither an association with GPA and number of units taken when compared to stress levels (Multiple Linear Regression, P > 0.6)


