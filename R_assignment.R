#Q1 
draw = function()return(sample( (1:52), 5 , replace=FALSE))
probtok=function(num){
   count <- 0
   for(n in 1:num){
     count1 <- 0
     count2 <- 0
     a <- draw()
     for(i in a){
       if(i < 5)
         count1 = count1 + 1 
         else if(i<9)
           count2 = count2 + 1
           } 
     if(count1 == 1 && count2==1)
       count = count + 1
       }
   return (count/num)
   }
   probtok(num)

#Q2 
  prob_prod_dice = function(d, n){
  count <- 0
  for(i in 1:n){
    sum <- 1
      for(j in 1:d)
        sum = sum * sample(1:6,1)
      if(sum%%2 != 0)
        count = count + 1
  }
  return(count/n)
}

prob_prod_dice(2,1000)