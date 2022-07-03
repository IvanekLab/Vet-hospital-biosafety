library(dplyr)

##read into R "Raw scores" csv file exported from the tab with the same name in the 
#"Hospital Dirtiness scoring - final for GitHub.xlsx" file 
frac<-read.csv("Raw scores.csv")
dim(frac)
####
#### plot groups
#####

#### plotting by room and contamination material

#### type of contamination material
#"shavings", "hay/straw", "feces","fur","other organic","moisture"

##room:
####MH main hallway 
#"MH_S",      "MH_HS",      "MH_F",      "MH_Fur",      "MH_OO",      "MH_M",
####StR student rounds room 
#"StR._S",   "StR_HS",   "StR_F",   "StR_Fur",   "StR_OO",   "StR_M"
####SH short hallway
#"SH._S", "SH_HS", "SH._F",  "SH._Fur", "SH_OO", "SH._M"
####BP bullpen 
#"BP._S", "BP_HS", "BP._F", "BP_Fur", "BP_OO", "BP_M"
####UL unloading 
#"UL._S", "UL_HS", "UL._F", "UL_Fur", "UL_OO", "UL_M"
##other variables but all zero:  ,  "UL_Mcab", "UL_Ocab")
####Tx treatment room 
#"Tx_S", "Tx_HS", "Tx_F", "Tx_Fur", "Tx_OO", "Tx_M"
##other variables but all zero:  ,  "Tx_Mcab", "Tx_Ocab", "Tx_Mcomp", "Tx_Ocomp")
####Close close hallway 
#"Close._S", "Close_HS", "Close._F", "Close._Fur", "Close_OO", "Close_M" 
####Far far hallway 
#"Far._S", "Far_HS", "Far._F", "Far._Fur", "Far_OO", "Far_M" 
####SR small ruminant room 
#"SR._S", "SR_HS", "SR._F", "SR._Fur", "SR_OO", "SR._M"
##other variables but all zero:  ,  "SR._Mcab", "SR._Ocab")

frac1<-data.frame(frac)



####################################################################
###########   summary statistics across multiple materials or rooms
##########################################################################


###far hallway overall dirtiness 
S<-c("Far._S", "Far_HS", "Far._F", "Far._Fur", "Far_OO", "Far_M")
Far<-data.frame(x=unlist (frac1[,S]))
summary(Far)

###small ruminant overall dirtiness 
S<-c("SR._S", "SR_HS", "SR._F", "SR._Fur", "SR_OO", "SR._M")
SR<-data.frame(x=unlist (frac1[,S]))
summary(SR)

###student rounds overall dirtiness 
S<-c("StR._S",   "StR_HS",   "StR_F",   "StR_Fur",   "StR_OO",   "StR_M")
StR<-data.frame(x=unlist (frac1[,S]))
summary(StR)


###MH main hallway
S<-c("MH_S",      "MH_HS",      "MH_F",      "MH_Fur",      "MH_OO",      "MH_M")
mh<-data.frame(x=unlist (frac1[,S]))
summary(mh)


###SH short hallway
S<-c("SH._S", "SH_HS", "SH._F",  "SH._Fur", "SH_OO", "SH._M")
sh<-data.frame(x=unlist (frac1[,S]))
summary(sh)

    
###BP bullpen 
S<-c("BP._S", "BP_HS", "BP._F", "BP_Fur", "BP_OO", "BP_M")
bp<-data.frame(x=unlist (frac1[,S]))
summary(bp)

  
####UL unloading 
S<-c("UL._S", "UL_HS", "UL._F", "UL_Fur", "UL_OO", "UL_M")
ul<-data.frame(x=unlist (frac1[,S]))
summary(ul)


####Tx treatment room 
S<-c("Tx_S", "Tx_HS", "Tx_F", "Tx_Fur", "Tx_OO", "Tx_M")
tx<-data.frame(x=unlist (frac1[,S]))
summary(tx)


####Close close hallway 
S<-c("Close._S", "Close_HS", "Close._F", "Close._Fur", "Close_OO", "Close_M")
ch<-data.frame(x=unlist (frac1[,S]))
summary(ch)






###wood shavings across all rooms 
S<-c("MH_S",  "StR._S", "SH._S",  "BP._S",  "UL._S",  "Tx_S",   "Close._S",   "Far._S",   "SR._S")
ws<-data.frame(x=unlist (frac1[,S]))
summary(ws)

###hay and straw across all rooms 
S<-c("MH_HS", "StR_HS", "SH_HS",  "BP_HS",  "UL_HS",  "Tx_HS",  "Close_HS",   "Far_HS",   "SR_HS")
h<-data.frame(x=unlist (frac1[,S]))
summary(h)

###moisture across all rooms 
S<-c("MH_M",  "StR_M",  "SH._M",  "BP_M",   "UL_M",   "Tx_M",   "Close_M" ,   "Far_M" ,   "SR._M")
m<-data.frame(x=unlist (frac1[,S]))
summary(m)

###feces across all rooms 
S<-c("MH_F",  "StR_F",  "SH._F",  "BP._F",  "UL._F",  "Tx_F",   "Close._F",   "Far._F",   "SR._F")
f<-data.frame(x=unlist (frac1[,S]))
summary(f)

###fur across all rooms 
S<-c("MH_Fur","StR_Fur","SH._Fur","BP_Fur", "UL_Fur", "Tx_Fur", "Close._Fur", "Far._Fur", "SR._Fur")
fu<-data.frame(x=unlist (frac1[,S]))
summary(fu)

###other organic across all rooms 
S<-c("MH_OO", "StR_OO", "SH_OO",  "BP_OO",  "UL_OO",  "Tx_OO",  "Close_OO",   "Far_OO",   "SR_OO")
oo<-data.frame(x=unlist (frac1[,S]))
summary(oo)





###all organic matter across all rooms 
S<-c("MH_S",  "StR._S", "SH._S",  "BP._S",  "UL._S",  "Tx_S",   "Close._S",   "Far._S",   "SR._S",
     "MH_HS", "StR_HS", "SH_HS",  "BP_HS",  "UL_HS",  "Tx_HS",  "Close_HS",   "Far_HS",   "SR_HS",
     "MH_F",  "StR_F",  "SH._F",  "BP._F",  "UL._F",  "Tx_F",   "Close._F",   "Far._F",   "SR._F",
     "MH_Fur","StR_Fur","SH._Fur","BP_Fur", "UL_Fur", "Tx_Fur", "Close._Fur", "Far._Fur", "SR._Fur",
     "MH_OO", "StR_OO", "SH_OO",  "BP_OO",  "UL_OO",  "Tx_OO",  "Close_OO",   "Far_OO",   "SR_OO")
allo<-data.frame(x=unlist (frac1[,S]))
summary(allo)




##### organic matter without moisture
###far hallway overall organic matter 
S<-c("Far._S", "Far_HS", "Far._F", "Far._Fur", "Far_OO")
Far<-data.frame(x=unlist (frac1[,S]))
summary(Far)

###small ruminant overall organic matter 
S<-c("SR._S", "SR_HS", "SR._F", "SR._Fur", "SR_OO")
SR<-data.frame(x=unlist (frac1[,S]))
summary(SR)

###student rounds overall organic matter 
S<-c("StR._S",   "StR_HS",   "StR_F",   "StR_Fur",   "StR_OO")
StR<-data.frame(x=unlist (frac1[,S]))
summary(StR)


###MH main hallway overall organic matter
S<-c("MH_S",      "MH_HS",      "MH_F",      "MH_Fur",      "MH_OO")
mh<-data.frame(x=unlist (frac1[,S]))
summary(mh)


###SH short hallway overall organic matter
S<-c("SH._S", "SH_HS", "SH._F",  "SH._Fur", "SH_OO")
sh<-data.frame(x=unlist (frac1[,S]))
summary(sh)


###BP bullpen overall organic matter
S<-c("BP._S", "BP_HS", "BP._F", "BP_Fur", "BP_OO")
bp<-data.frame(x=unlist (frac1[,S]))
summary(bp)


####UL unloading overall organic matter
S<-c("UL._S", "UL_HS", "UL._F", "UL_Fur", "UL_OO")
ul<-data.frame(x=unlist (frac1[,S]))
summary(ul)


####Tx treatment room overall organic matter
S<-c("Tx_S", "Tx_HS", "Tx_F", "Tx_Fur", "Tx_OO")
tx<-data.frame(x=unlist (frac1[,S]))
summary(tx)


####Close close hallway overall organic matter
S<-c("Close._S", "Close_HS", "Close._F", "Close._Fur", "Close_OO")
ch<-data.frame(x=unlist (frac1[,S]))
summary(ch)






#######################################
### plot dirtiness by material and room (Figure 3)
#############################################

jpeg(file="all rooms-all materials_300dpi.jpeg", units="in", width=7.2, height=10.2, res=300)
par(mfrow=c(9,6),mai = c(0.15, 0.6, 0.3, 0.1))
####MH main hallway 
#"MH_S",      "MH_HS",      "MH_F",      "MH_Fur",      "MH_OO",      "MH_M",
boxplot(frac1[,"MH_S"], col = c("red"), main = "shavings", ylab="main halway", ylim=c(0,3),cex.lab = 1.4, cex.main=1.4)
boxplot(frac1[,"MH_HS"], col = c("red"), main = "hay/straw", ylim=c(0,3), cex.main=1.4)
boxplot(frac1[,"MH_F"], col = c("red"), main = "feces", ylim=c(0,3), cex.main=1.4)
boxplot(frac1[,"MH_Fur"], col = c("red"), main = "fur", ylim=c(0,3), cex.main=1.4)
boxplot(frac1[,"MH_OO"], col = c("red"), main = "organic", ylim=c(0,3), cex.main=1.4)
boxplot(frac1[,"MH_M"], col = c("red"), main = "moisture", ylim=c(0,3), cex.main=1.4)
####StR student rounds room 
#"StR._S",   "StR_HS",   "StR_F",   "StR_Fur",   "StR_OO",   "StR_M"
boxplot(frac1[,"StR._S"], col = c("red"), ylab="student rounds", ylim=c(0,3),cex.lab = 1.4)
boxplot(frac1[,"StR_HS"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"StR_F"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"StR_Fur"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"StR_OO"], col = c("red"),  ylim=c(0,3))
boxplot(frac1[,"StR_M"], col = c("red"), ylim=c(0,3))
####SH short hallway
#"SH._S", "SH_HS", "SH._F",  "SH._Fur", "SH_OO", "SH._M"
boxplot(frac1[,"SH._S"], col = c("red"), ylab="short hallway", ylim=c(0,3),cex.lab = 1.4)
boxplot(frac1[,"SH_HS"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"SH._F"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"SH._Fur"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"SH_OO"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"SH._M"], col = c("red"), ylim=c(0,3))
####BP bullpen 
#"BP._S", "BP_HS", "BP._F", "BP_Fur", "BP_OO", "BP_M"
boxplot(frac1[,"BP._S"], col = c("red"), ylab="bullpen", ylim=c(0,3),cex.lab = 1.4)
boxplot(frac1[,"BP_HS"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"BP._F"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"BP_Fur"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"BP_OO"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"BP_M"], col = c("red"), ylim=c(0,3))

####UL unloading 
#"UL._S", "UL_HS", "UL._F", "UL_Fur", "UL_OO", "UL_M"
##other variables but all zero:  ,  "UL_Mcab", "UL_Ocab")
boxplot(frac1[,"UL._S"], col = c("red"), ylab="unloading", ylim=c(0,3),cex.lab = 1.4)
boxplot(frac1[,"UL_HS"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"UL._F"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"UL_Fur"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"UL_OO"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"UL_M"], col = c("red"), ylim=c(0,3))

####Tx treatment room 
#"Tx_S", "Tx_HS", "Tx_F", "Tx_Fur", "Tx_OO", "Tx_M"
##other variables but all zero:  ,  "Tx_Mcab", "Tx_Ocab", "Tx_Mcomp", "Tx_Ocomp")
boxplot(frac1[,"Tx_S"], col = c("red"), ylab="treatment", ylim=c(0,3),cex.lab = 1.4)
boxplot(frac1[,"Tx_HS"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Tx_F"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Tx_Fur"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Tx_OO"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Tx_M"], col = c("red"), ylim=c(0,3))

####Close close hallway 
#"Close._S", "Close_HS", "Close._F", "Close._Fur", "Close_OO", "Close_M" 
boxplot(frac1[,"Close._S"], col = c("red"), ylab="close hallway", ylim=c(0,3),cex.lab = 1.4)
boxplot(frac1[,"Close_HS"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Close._F"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Close._Fur"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Close_OO"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Close_M"], col = c("red"), ylim=c(0,3))

####Far far hallway 
#"Far._S", "Far_HS", "Far._F", "Far._Fur", "Far_OO", "Far_M" 
boxplot(frac1[,"Far._S"], col = c("red"), ylab="far hallway", ylim=c(0,3),cex.lab = 1.4)
boxplot(frac1[,"Far_HS"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Far._F"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Far._Fur"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Far_OO"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"Far_M"], col = c("red"), ylim=c(0,3))

####SR small ruminant room 
#"SR._S", "SR_HS", "SR._F", "SR._Fur", "SR_OO", "SR._M"
##other variables but all zero:  ,  "SR._Mcab", "SR._Ocab")
boxplot(frac1[,"SR._S"], col = c("red"), ylab="small ruminant", ylim=c(0,3),cex.lab = 1.4)
boxplot(frac1[,"SR_HS"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"SR._F"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"SR._Fur"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"SR_OO"], col = c("red"), ylim=c(0,3))
boxplot(frac1[,"SR._M"], col = c("red"), ylim=c(0,3))

dev.off()
#####################################

 
##############################################################
##################################################################
# summary statistics for each variable (Table 1)   ######
####################################################################
###################################################################  
orig.cols <- colnames(frac)
orig.cols
V<-orig.cols

B<-matrix(,length(V),7)
rownames(B)<-V
colnames(B)<-c("all-Min", "all-25%","all-50%","all-Mean", "all-75%", "all-Max", "Missing")
for (i in (1:length(V))){ B[i,]<-c(summary(frac[,V[i]])[1:6],sum(is.na(frac[,V[i]]))) }
B
write.csv(B,file="all data summary.csv")




###############################################
####
#### plot groups
#####
#############################################
#### ploting by room


#MH main hallway 
V<-c("MH_S",      "MH_HS",      "MH_F",      "MH_Fur",      "MH_OO",      "MH_M")
L<-c("shavings", "hay/straw", "feces","fur","other organic","moisture")
x11();  par(mfrow=c(1,6))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }



#StR student rounds room 
V<-c("StR._S",   "StR_HS",   "StR_F",   "StR_Fur",   "StR_OO",   "StR_M")
#other variables but all zero:  ,   "StR_Mdoor",   "StR_Odoor", "StR._Mcab",   "StR._Ocabs",   "StR_Mcomp",   "StR_Ocomp")
L<-c("shavings", "hay/straw", "feces","fur","other organic","moisture")
x11();  par(mfrow=c(1,6))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }

#SH short hallway
V<-c("SH._S", "SH_HS", "SH._F",  "SH._Fur", "SH_OO", "SH._M")
L<-c("shavings", "hay/straw", "feces","fur","other organic","moisture")
x11();  par(mfrow=c(1,6))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#BP bullpen 
V<-c("BP._S", "BP_HS", "BP._F", "BP_Fur", "BP_OO", "BP_M")
##other variables but all zero:  , "BP_Mcab", "BP_Ocab")
L<-c("shavings", "hay/straw", "feces","fur","other organic","moisture")
x11();  par(mfrow=c(1,6))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#UL unloading 
V<-c("UL._S", "UL_HS", "UL._F", "UL_Fur", "UL_OO", "UL_M")
##other variables but all zero:  ,  "UL_Mcab", "UL_Ocab")
L<-c("shavings", "hay/straw", "feces","fur","other organic","moisture")
x11();  par(mfrow=c(1,6))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#Tx treatment room 
V<-c("Tx_S", "Tx_HS", "Tx_F", "Tx_Fur", "Tx_OO", "Tx_M")
##other variables but all zero:  ,  "Tx_Mcab", "Tx_Ocab", "Tx_Mcomp", "Tx_Ocomp")
L<-c("shavings", "hay/straw", "feces","fur","other organic","moisture")
x11();  par(mfrow=c(1,6))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#Close close hallway 
V<-c("Close._S", "Close_HS", "Close._F", "Close._Fur", "Close_OO", "Close_M") 
L<-c("shavings", "hay/straw", "feces","fur","other organic","moisture")
x11();  par(mfrow=c(1,6))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#Far far hallway 
V<-c("Far._S", "Far_HS", "Far._F", "Far._Fur", "Far_OO", "Far_M") 
L<-c("shavings", "hay/straw", "feces","fur","other organic","moisture")
x11();  par(mfrow=c(1,6))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#SR small ruminant room 
V<-c("SR._S", "SR_HS", "SR._F", "SR._Fur", "SR_OO", "SR._M")
##other variables but all zero:  ,  "SR._Mcab", "SR._Ocab")
L<-c("shavings", "hay/straw", "feces","fur","other organic","moisture")
x11();  par(mfrow=c(1,6))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }



#### ploting people animals and feces

#people
V<-c("MH_Ppl", "StR_Ppl", "SH_Ppl", "BP_Ppl", "UL_Ppl", "Tx_Ppl", "Close_Ppl", "Far_Ppl", "SR_Ppl")
L<-c("main hallway", "student rounds room", "short hallway","bullpen","unloading","treatment room","close hallway", "far hallway","small ruminant room")
x11();  par(mfrow=c(3,3))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,15),cex=2, cex.main=2, cex.axis=2) }


#animals 
V<-c("Cows", "Calves", "Pigs", "Piglets", "Sheepgoats", "Lambkids")
x11();  par(mfrow=c(3,2))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(V[i]), ylim=c(0,7),cex=2, cex.main=2, cex.axis=2) }


#feces
V<-c("Feces_fur", "Feces_feet", "Feces_wall", "Feces_gate", "Feces_wbucket", "Feces_fbucket")
L<-c("fur", "feet", "wall", "gate", "water bucket", "feed bucket")
x11();  par(mfrow=c(3,2))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,4),cex=2, cex.main=2, cex.axis=2) }





###ploting by dirt matter

#shavings
V<-c("MH_S","StR._S","SH._S","BP._S","UL._S","Tx_S","Close._S","Far._S","SR._S")
L<-c("main hallway", "student rounds room", "short hallway","bullpen","unloading","treatment room","close hallway", "far hallway","small ruminant room")
x11();  par(mfrow=c(3,3))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#hay/straw
V<-c("MH_HS","StR_HS","SH_HS","BP_HS","UL_HS","Tx_HS","Close_HS","Far_HS","SR_HS")
L<-c("main hallway", "student rounds room", "short hallway","bullpen","unloading","treatment room","close hallway", "far hallway","small ruminant room")
x11();  par(mfrow=c(3,3))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#feces
V<-c("MH_F","StR_F","SH._F","BP._F","UL._F","Tx_F","Close._F","Far._F","SR._F")
L<-c("main hallway", "student rounds room", "short hallway","bullpen","unloading","treatment room","close hallway", "far hallway","small ruminant room")
x11();  par(mfrow=c(3,3))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }



#fur
V<-c("MH_Fur","StR_Fur","SH._Fur","BP_Fur","UL_Fur","Tx_Fur","Close._Fur","Far._Fur","SR._Fur")
L<-c("main hallway", "student rounds room", "short hallway","bullpen","unloading","treatment room","close hallway", "far hallway","small ruminant room")
x11();  par(mfrow=c(3,3))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#other organic 
V<-c("MH_OO","StR_OO","SH_OO","BP_OO","UL_OO","Tx_OO","Close_OO","Far_OO","SR_OO")
L<-c("main hallway", "student rounds room", "short hallway","bullpen","unloading","treatment room","close hallway", "far hallway","small ruminant room")
x11();  par(mfrow=c(3,3))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }


#moisture 
V<-c("MH_M","StR_M","SH._M","BP_M","UL_M","Tx_M","Close_M","Far_M","SR._M")
L<-c("main hallway", "student rounds room", "short hallway","bullpen","unloading","treatment room","close hallway", "far hallway","small ruminant room")
x11();  par(mfrow=c(3,3))
for (i in (1:length(V))){  boxplot(frac[,V[i]], col = c("red"), main = paste(L[i]), ylim=c(0,3),cex=2, cex.main=2, cex.axis=2) }

