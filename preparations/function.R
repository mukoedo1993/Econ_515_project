#function

#Part  1: conditional statements and loops

#ifelse

ifelse(4>5,"Yes","No")

a<-4
b<-4
if(a<b){
  paste(b/a,"b divides a")
}

if(a>b){
  paste("b/a",b/a)
}else{
  paste("a/b",a/b)
}
  
if(a>b){
  paste("b/a",b/a)
}else if(a==b){
  "djd"
}else{
  paste("a/b",a/b)
}

i<-10
#WHILE...
while(i!=1){
  print("this is true")
  i<-i-1
}
x<-1
y<-10
while(x<y){
  print("x<y")
  x<-x+1
}

#FOR.....
result<-c()
for(i in 1:5){
  result[i]<-i^2

if(i%%2==0){#qu3 yu2
  print("i is even")
}else{
  print("i is odd")
}
}

#APPLY.....
mylist<-list()
for(i in 1:1000){
norm<-list(rnorm(10,0,1))
mylist<-c(mylist,norm)
}
#If the data is large enough, the apply can work much faster.
#Another reason is that : It is much concise to code. A single line
#much safer
listMeans<-list()
for(i in 1:length(mylist)){
  listMeans[i]<-mean(mylist[[i]])
}
head(listMeans,3)


listMeans2<-lapply(mylist,mean)
#first parameter: the object you want to iterate
#second parameter: the name of function you want to apply for each element of that list:
#We could see that we could get identical result as we got in



#SAPPLY...
listMeans2<-sapply(mylist,mean)
#It tried to return in a simplified  vector instead of


#some built-in functions we have already used in R
normalDist<-rnorm(1000,0,1)
mean(normalDist)
hist(normalDist)
hist(normalDist,breaks=50)
#a single number giving the number of cells for the histogram,

#HELLO FUNCTION...
sayHello<-function(){
  "Hello"
}
sayHello()


satHello1<-function(name){
  paste("Hello",name)
}
satHello1(13)
greet<-satHello1("Hunanese")

#function with optional arguments
expo<-function(x,power=2){
  hist(x,power)
}
expo(normalDist)
expo(normalDist,3)


#unnamed arguments

expo1<-function(x,power=2,...){
  hist(x,power,...)
}
expo1(normalDist,power=3,breaks=50)


#logical assignments
expo2<-function(x,exp=2,hist=FALSE,...){
  if(hist==TRUE){
    hist(x^exp,...)
    x^exp#return the value as well
  }else{
    x^exp#...
  }
    
}
expo2(normalDist)
expo2(normalDist,hist=FALSE)

#example
popDouble<-function(start,end){
  doubling<--1
  while(end>start){
    doubling<-doubling+1
    start<-start*2
  }
  doubling+(end/start)
}
popDouble(10000,20000)
popDouble(10000,30000)
