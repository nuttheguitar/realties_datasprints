install.packages('readxl')
install.packages("dplyr")

library(readxl)
library(dplyr)

factor1 = subset(ads_sell, select=c(2,3,4,5,6,7))
corrm <- cor(factor1)
eigen(corrm)$values

eigen_values <- mutate(data.frame(eigen(corrm)$values)
            ,cum_sum_eigen=cumsum(eigen.corrm..values)
            ,pct_var=eigen.corrm..values/sum(eigen.corrm..values)
            , cum_pct_var=cum_sum_eigen/sum(eigen.corrm..values))