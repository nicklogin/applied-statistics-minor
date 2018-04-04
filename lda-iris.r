install.packages("klaR")
library("klaR")

data(iris)
summary(iris)

help(sample)
training_sample <- sample(c(TRUE,FALSE),nrow(iris),replace=T,prob=c(0.4,0.6))

train<-iris[training_sample,]
test<-iris[!training_sample,]

help(lda)
lda.iris<-lda(Species~.,train)
lda.iris