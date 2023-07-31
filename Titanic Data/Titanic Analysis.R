## Impuation of Age based on Class
impute_age <- function(age,class){
  out <- age
  for (i in 1:length(age)) {
    if(is.na(age[i])){
      if(class[i]==1){
        out[i] <- 37
      }else if(class[i] ==2){
        out[i]<-29
      }else{
        out[i]<-24
      }
    }else{
      out[i]<-age[i]
    }
  }
  return(out) 
}

fixed.ages <- impute_age(df.train$Age,df.train$Pclass)