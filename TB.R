#import data
Data<-read_excel("D:/UNISBA/SEMESTER 6/Prak Andat 3/TB.xlsx")
#print data
Data

#matriks korelasi
R<-cor(Data)
R

#uji Bartlett
#install.packages("REdaS")
library(REdaS)
bart_spher(Data)  

#KMO-MSA
#install.packages("psych")
library(psych)
KMO(R) 

#ekstraksi Faktor 
#nilai eigen 
D<-eigen(R)$values
D

#analisis faktor dengan metode principal component tanpa rotasi
library(psych)
pc1<-principal(R,nfactors=5,rotate="none") 
pc1 

#analisis faktor dengan metode principal factor tanpa rotasi
library(psych)
pf<-fa(R,nfactors=5,rotate="none",fm="pa",max.iter=1)
pf
#jadi principal factor dapat menjelaskan 86%

#analisis faktor dengan metode iterated principal factor tanpa rotasi
library(psych)
ipf<-fa(R,nfactors=5,rotate="none")
ipf


#analisis faktor dengan metode principal component dan rotasi varimax
library(psych)
pc2<-principal(R,nfactors=5,rotate="varimax")
pc2

#analisis faktor dengan metode principal component dan rotasi oblimin
library(psych)
pc3<-principal(R,nfactors=5,rotate="oblimin")
pc3

