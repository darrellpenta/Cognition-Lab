library(dplyr)
library(reshape2)
library(xlsx)
d <- read.csv("data/EXP2.csv")

list.of.lists <- d %>%
  group_by(lists, assoc, nplurnum) %>%
  tally() %>%
  group_by(SUBJECT.1.35..)
View(list.of.lists)


library(reshape2)
data_wide <- dcast(list.of.lists, assoc + nplurnum ~ lists, value.var="n")
colnames(data_wide)[2] <- "n2num"
write.xlsx(data_wide, file = "output/condition_by_list_tally.xlsx")

iris <- tbl_df(iris) 
select(iris, starts_with("Petal"))
select(iris, ends_with("Width"))
select(iris, contains("etal"))
select(iris, matches(".t."))
select(iris, Petal.Length, Petal.Width)
vars <- c("Petal.Length", "Petal.Width")
select(iris, one_of(vars))



d <- tbl_df(d)

       dnam[[1]]="subject"
       dnam[[2]]="trial"
       dnam[[3]]="setsize"
       dnam[[4]]="serial.position"
       dnam[[5]]="trial.type"
       dnam[[6]]="repition"
       dnam[[7]]="answer.ac"
       dnam[[8]]="answer.se"
       dnam[[9]]="answer.rt"
       dnam[[10]]="recall.accuracy"
       dnam[[11]]="recall.rt"
       dnam[[12]]="hand"
       )
as.data.frame(dnam)
