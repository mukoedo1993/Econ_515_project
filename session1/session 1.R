# The code is for lab session 1 of Econ 515
rm(list = ls())


# run the code: ctrl+enter
3+4
5*5
6/3

# get the working directory
getwd()
setwd("C:/Users/Yimeng Xie/Desktop")#setwd("C:\\Users\\Yimeng Xie\\Desktop")
#q()



# more calculations
3^2
sqrt(25)
factorial(4)
seq(1,5,1)


# define an object
x = 4# x<-4
x
x*x

this.is.a.code = 3+5






# vector
v=c(2,3,5,7,11,13,17,19,23,101)
v[3]
v[1:3]
v[c(1,5,7,8)]

length(v)
head(v,2)
tail(v,3)




# Character (string) and Boolean Vectors 
v0 = c('Describe','the city','you','live in')
v1 = c('Describe the city')
v2 = c('you live in')
v3 = c('-TOEFL')
paste(v1,v2,v3)



# Boolean vectors
u = c(TRUE,FALSE)
v<10
v[v<10]





# vector arithmetic
v = c(10,20,30,40,50,60)
v+1
2*v


w = 2:7
v*w

v^2

v^c(1,2,3,4,5,6)








# matrix arithmetic
# built on vector
a = matrix(c(1,2,3),nrow=3,ncol=1)
b = matrix(1,3,1)
c = matrix(0,3)
a+b
a.*b
t(a)%*%b
# a./b


m = matrix(c(1,2,3,4,5,6),3,2)
rownames(m)=c('r1','r2','r3')
colnames(m)=c('c1','c2')
dim(m)
length(m)

m[3,2]
m[1,]
m[,2]
m[1:2,2]
m[1:2,1:2]
m[,-1]
m[5]








# run the whole R script
# ctrl+alt+R



# exercises
# generate a 7*8 matrix x such that for 1st column all values are 1, for 2nd column all values are 2,...
# Take out the column with value 5 to generate a new matrix z
# change the value of second column to 1
# generate a 8*7 matrix y such that y[i,j]=x[j,i]
# generate the product of x and y, denote it as w
# find the values in w that is less than 5, and replace them by 5
yaju<-matrix(nrow=7,ncol=8)
for(i in 1:8){
  yaju[,i]=i
}
yaju_sub<-yaju[,c(1,2,3,4,6,7,8)]
yaju_sub1<-yaju
for(j in 1:7){
  yaju_sub1[j,2]=1
}

yaju_inv<-matrix(nrow=8,ncol=7)
for(i in 1:8){
  for(j in 1:7){
    yaju_inv[i,j]<-yaju[j,i]
  }
}

w<-yaju%*%yaju_inv
for(i in 1:7){
  for(j in 1:7){
    if(w[i,j]<5){
      w[i,j]<-5
    }
  }
}
