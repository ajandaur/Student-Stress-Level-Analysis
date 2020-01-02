#Compared observed school year vs expected school year

#No more than 20% of categories have expected frequencies less than 5
#No category has a frequency less than or equal to 1

index = which(d$School.Year. != "Grad Student")
chisq.test(table(as.factor(as.character(d$School.Year.[index]))), p = c(.25, .25, .25, .25))

#Results:The number of students in each school year is significantly different from the expected number of students (X-squared = 8.2169, df = 3, p-value = 0.04174).
#Seniors and juniors are overrepresented in our study as compared to sophomores and freshman. 
#This is important to keep in mind as we evaluate our further research analysis. 

