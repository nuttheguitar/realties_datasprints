install.packages('readxl')
install.packages("dplyr")
install.packages("psych")
install.packages("mnormt")


library(readxl)
library(dplyr)
library(psych)

factor1 = subset(ads_sell, select=c(2,3,4,5,6,7))
corrm <- cor(factor1)
eigen(corrm)$values

eigen_values <- mutate(data.frame(eigen(corrm)$values)
            ,cum_sum_eigen=cumsum(eigen.corrm..values)
            ,pct_var=eigen.corrm..values/sum(eigen.corrm..values)
            , cum_pct_var=cum_sum_eigen/sum(eigen.corrm..values))
   
write.csv(eigen_values,"/Users/nuttakanwiriyakrieng/Documents/AIESEC/DataSprints/factor1.csv")

FA <- fa(r=corrm, 3, rotate="varimax", fm="ml")
FA_SORT <- fa.sort(FA)
load = FA_SORT$loadings
write.csv(load, "/Users/nuttakanwiriyakrieng/Documents/AIESEC/DataSprints/factor2.csv")
