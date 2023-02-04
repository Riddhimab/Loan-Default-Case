newset<-read.csv("new_df.csv")

# add new column: loan term
newset$term<-rep(120,167728)

#add the column of credit level for each client
new1<-subset(newset,newset$AMT_INCOME_TOTAL<=112500)
new1$cre_level<-rep(0.08/12,46073)
new2<-subset(newset,newset$AGE<=40&newset$AMT_INCOME_TOTAL>112500)
new2$cre_level<-rep(0.07/12,63239)
new3<-subset(newset,newset$AGE>40&newset$AMT_INCOME_TOTAL>112500)
new3$cre_level<-rep(0.06/12,58416)

library(tidyverse)
#put all data frames into list
df_list <- list(new1, new2, new3)

#merge all data frames in list
newdata<-df_list %>% reduce(full_join)

#monthly loan fomula: E = P x r x ( 1 + r )n / ( ( 1 + r )n - 1 ) 
newdata$monthly_loan<-newdata$AMT_CREDIT_current*newdata$cre_level*((1+newdata$cre_level)**newdata$term)/((1+newdata$cre_level)**newdata$term-1)

#total loan
newdata$total_loan<-newdata$monthly_loan*120

n <- nrow(newdata)
avg_pay_gain <- sum(newdata$total_loan-(newdata$AMT_CREDIT_current))/n
avg_cost  <- sum(-0.7*newdata$AMT_CREDIT_current)/n

write.csv(newdata, "/Users/muzitao/Downloads/newdata1.csv")



