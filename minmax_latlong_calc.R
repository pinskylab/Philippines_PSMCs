#install.packages("rgbif")
#install.packages("ggmap")
library("rgbif")
library("maptools")
library("ggmap")
#google API key needed, but can't be in public repo. redacting!
#ggmap::register_google(key="REDACTED")
library("spThin")

specieslist=c("Ambassis urotaenia","Ambassis kopsii","Taeniamia biguttata","Taeniamia kagoshimanus","Taeniamia zosterophora","Ostorhinchus chrysopomus","Doboatherina duodecimalis","Hypoatherina temminckii","Salarias fasciatus","Spratelloides gracilis","Herklotsichthys quadrimaculatus","Gerres oyena","Halichoeres miniatus","Stethojulis interrupta","Leiognathus leuciscus","Lethrinus variegatus","Periophthalmus argentilineatus","Plotosus lineatus","Pomacentrus pavo","Siganus spinus","Corythoichthys haematopterus","Chromis viridis","Dascyllus aruanus","Parupeneus barberinus","Pseudanthias squamipinnis","Sphyraena obtusata")
speciesranges=data.frame(matrix(ncol=7,nrow=26))
colnames(speciesranges)=c("Species","MinLat","MaxLat","MinLong","MaxLong","LatRange","LongRange")

specieslist[9]
specieslist[2]


### visualizing on maps ###
# map <- get_map(source = "stamen", maptype = "watercolor")
# bbox <- c(left = -179, bottom = -60, right = 179, top = 80)
# world=ggmap(get_stamenmap(bbox, zoom = 3, maptype="toner"), extent = "device")
 
# spdata=occ_search(scientificName = specieslist[1],limit=5000)
# specieslist[1]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[2],limit=5000)
# specieslist[2]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove points in C. Africa for these two ##
# 
# spdata=occ_search(scientificName = specieslist[3],limit=5000)
# specieslist[3]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[4],limit=5000)
# specieslist[4]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[5],limit=5000)
# specieslist[5]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[6],limit=5000)
# specieslist[6]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[7],limit=5000)
# specieslist[7]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[8],limit=5000)
# specieslist[8]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[9],limit=5000)
# specieslist[9]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove point in E. Atlantic ##
# 
# spdata=occ_search(scientificName = specieslist[10],limit=5000)
# specieslist[10]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove point in E. Atlantic ##
# 
# spdata=occ_search(scientificName = specieslist[11],limit=5000)
# specieslist[11]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove points in C. Africa ##
# 
# spdata=occ_search(scientificName = specieslist[12],limit=5000)
# specieslist[12]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove points in C. Africa ##
# 
# spdata=occ_search(scientificName = specieslist[13],limit=5000)
# specieslist[13]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[14],limit=5000)
# specieslist[14]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[15],limit=5000)
# specieslist[15]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[16],limit=5000)
# specieslist[16]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove points in C. Africa ##
# 
# spdata=occ_search(scientificName = specieslist[17],limit=5000)
# specieslist[17]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[18],limit=5000)
# specieslist[18]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[19],limit=5000)
# specieslist[19]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# spdata=occ_search(scientificName = specieslist[20],limit=5000)
# specieslist[20]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 23),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove points in C. Africa, far E Pacific. must go further than 20!! ##
# 
# spdata=occ_search(scientificName = specieslist[22],limit=5000)
# specieslist[22]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove points in far E Pacific. ##
# 
# spdata=occ_search(scientificName = specieslist[23],limit=5000)
# specieslist[23]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove points in Caribbean ##
# 
# spdata=occ_search(scientificName = specieslist[24],limit=5000)
# specieslist[24]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 20),]
# world + geom_point(data=spdatafilt,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## mediterranean? this no work ##
# 
# spdata=occ_search(scientificName = specieslist[25],limit=5000)
# specieslist[25]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ## remove -95 lon to 20 lon?
# 
# spdata=occ_search(scientificName = specieslist[26],limit=5000)
# specieslist[26]
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
# ### first pass ###
# 
# for (i in 1:length(specieslist)){
#   spdata=occ_search(scientificName = specieslist[i])
#   speciesranges$Species[i]=specieslist[i]
#   speciesranges$MinLat[i]=min(na.omit(spdata$data$decimalLatitude))
#   speciesranges$MaxLat[i]=max(na.omit(spdata$data$decimalLatitude))
#   spdata$LongTrans=ifelse(spdata$data$decimalLongitude<1,360+spdata$data$decimalLongitude,spdata$data$decimalLongitude)
#   speciesranges$MinLong[i]=min(na.omit(spdata$LongTrans))
#   speciesranges$MaxLong[i]=max(na.omit(spdata$LongTrans))
# }
# 
# speciesranges$LatRange=speciesranges$MaxLat-speciesranges$MinLat
# speciesranges$LongRange=speciesranges$MaxLong-speciesranges$MinLong
# 
# write.csv(speciesranges,"ranges.csv")

# ### filter out dubious locs ###
# speciesranges=data.frame(matrix(ncol=7,nrow=26))
# colnames(speciesranges)=c("Species","MinLat","MaxLat","MinLon","MaxLon","LatRange","LonRange")
# 
# for (i in 1:length(specieslist)){
#   spdata=occ_search(scientificName = specieslist[i])
#   spdatafilt=spdata$data[which(spdata$data$decimalLongitude < 0 & spdata$data$decimalLongitude < -95 | spdata$data$decimalLongitude > 0 & spdata$data$decimalLongitude > 23),]
#   speciesranges$Species[i]=specieslist[i]
#   speciesranges$MinLat[i]=min(na.omit(spdatafilt$decimalLatitude))
#   speciesranges$MaxLat[i]=max(na.omit(spdatafilt$decimalLatitude))
#   spdatafilt$LonTrans=ifelse(spdatafilt$decimalLongitude<0,180+(180+spdatafilt$decimalLongitude),spdatafilt$decimalLongitude)
#   speciesranges$MinLon[i]=min(na.omit(spdatafilt$LonTrans))
#   speciesranges$MaxLon[i]=max(na.omit(spdatafilt$LonTrans))
# }
# 
# speciesranges$LatRange=speciesranges$MaxLat-speciesranges$MinLat
# speciesranges$LonRange=speciesranges$MaxLon-speciesranges$MinLon
# 
# plot(speciesranges$LonRange,speciesranges$LatRange)
# 
# latlonlm=lm(LatRange~LonRange,data=speciesranges)
# 
# write.csv(speciesranges,"ranges.csv")

speciesranges = read.csv("ranges.csv",header=T)

### try thinning? nah ###
# 
# spdatafilt$sp=specieslist[21]
# 
# thinned <- thin(loc.data = spdatafilt, lat.col = "decimalLatitude", long.col = "decimalLongitude",
#                 spec.col = "sp",
#                 thin.par = 70,
#                 reps = 20,
#                 out.dir = "thinned",
#                 out.base = specieslist[24],
#                 write.log.file = TRUE,
#                 log.file = "thinning.txt",
#                 max.files = 1)
# 
# Cha_thin=read.csv(file="thinned/Corythoichthys haematopterus_thin1.csv")
# 
# min(Cha_thin$decimalLatitude)
# min(Cha_thin$decimalLongitude)
# 
# max(Cha_thin$decimalLatitude)
# max(Cha_thin$decimalLongitude)
# 
# bbox <- c(left = 0, bottom = -30, right = 179, top = 40)
# world=ggmap(get_stamenmap(bbox, zoom = 3, maptype="toner"), extent = "device")
# 
# world + geom_point(data=spdata$data,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# world + geom_point(data=Cha_thin,aes(x=decimalLongitude,y=decimalLatitude),col="red")
# 
###################

#devtools::install_github("james-thorson/FishLife")
#remotes::install_github( 'ropensci/rfishbase@fb-21.06', force=TRUE )
library(FishLife)
# Plot_taxa(Search_species(Genus="Lutjanus",Species="campechanus")$match_taxonomy)
# Plot_taxa(Search_species(Genus="Lutjanus",Species="campechanus")$match_taxonomy,Database = FishLife::FishBase_and_Morphometrics)
params=matrix(c("Winfinity","tmax","tm","Lm","Loo","ln_MASPS","ln_r","G"),ncol=2,byrow=TRUE)
#params = matrix(c("Winfinity", 
#                  "Lm", "tmax", "tm", "Lm", "Temperature", "ln_margsd", "rho", 
#                  "logitbound_h", "ln_r"), ncol = 2, byrow = TRUE)
specieslist[1]

Plot_taxa(Search_species(Genus="Ambassis",Species="urotaenia")$match_taxonomy,params=params)
#Plot_taxa(Search_species(Genus="Ambassis",Species="urotaenia")$match_taxonomy)

spchar=Plot_taxa(Search_species(Genus="Ambassis",Species="urotaenia")$match_taxonomy,params=params)

spchar=Plot_taxa(Search_species(Genus="Taeniamia",Species="biguttata")$match_taxonomy,params=params)

spchar=Plot_taxa(Search_species(Genus="Chromis",Species="viridis")$match_taxonomy,params=params)

specieslist[1]
strsplit(specieslist[1],split=" ")


specieslist=c("Ambassis urotaenia","Ambassis kopsii","Taeniamia biguttata","Taeniamia kagoshimanus","Taeniamia zosterophora","Ostorhinchus chrysopomus","Atherinomorus duodecimalis","Hypoatherina temminckii","Salarias fasciatus","Spratelloides gracilis","Herklotsichthys quadrimaculatus","Gerres oyena","Halichoeres miniatus","Stethojulis interrupta","Equulites leuciscus","Lethrinus variegatus","Periophthalmus argentilineatus","Plotosus lineatus","Pomacentrus pavo","Siganus spinus","Corythoichthys haematopterus","Chromis viridis","Dascyllus aruanus","Parupeneus barberinus","Pseudanthias squamipinnis","Sphyraena obtusata")
species_lifehist=data.frame(matrix(ncol=9,nrow=26))
colnames(species_lifehist)=c("Species","Winfinity","tmax","tm","Lm","Loo","ln_MASPS","ln_r","G")


for (i in 1:length(specieslist)){
  species_lifehist$Species[i]=specieslist[i]
  genus=strsplit(specieslist[i],split=" ")[[1]][1]
  species=strsplit(specieslist[i],split=" ")[[1]][2]
  spchar=Plot_taxa(Search_species(Genus=genus,Species=species)$match_taxonomy,params=params)
  species_lifehist$Winfinity[i]=spchar[1][[1]]$Mean_pred["Winfinity"]
  species_lifehist$tmax[i]=spchar[1][[1]]$Mean_pred["tmax"]
  species_lifehist$tm[i]=spchar[1][[1]]$Mean_pred["tm"]
  species_lifehist$Lm[i]=spchar[1][[1]]$Mean_pred["Lm"]
  species_lifehist$Loo[i]=spchar[1][[1]]$Mean_pred["Loo"]
  species_lifehist$ln_MASPS[i]=spchar[1][[1]]$Mean_pred["ln_MASPS"]
  species_lifehist$ln_r[i]=spchar[1][[1]]$Mean_pred["ln_r"]
  species_lifehist$G[i]=spchar[1][[1]]$Mean_pred["G"]
} 

######################

# get psmc data!!

source('plot_psmc.R')

specieslist=c("Ambassis urotaenia","Ambassis kopsii","Taeniamia biguttata","Taeniamia kagoshimanus","Taeniamia zosterophora","Ostorhinchus chrysopomus","Atherinomorus duodecimalis","Hypoatherina temminckii","Salarias fasciatus","Spratelloides gracilis","Herklotsichthys quadrimaculatus","Gerres oyena","Halichoeres miniatus","Stethojulis interrupta","Equulites leuciscus","Lethrinus variegatus","Periophthalmus argentilineatus","Plotosus lineatus","Pomacentrus pavo","Siganus spinus","Corythoichthys haematopterus","Chromis viridis","Dascyllus aruanus","Parupeneus barberinus","Pseudanthias squamipinnis","Sphyraena obtusata")

species_psmcout=data.frame(matrix(ncol=8,nrow=26))
colnames(species_psmcout)=c("Species","Ne10k","Ne25k","Ne125k","Ne500k","Nemax","Nemin","theta0")

for (i in 1:length(specieslist)){
  species_psmcout$Species[i]=specieslist[i]
  genus=strsplit(specieslist[i],split=" ")[[1]][1]
  gencode=substr(genus,1,1)
  species=strsplit(specieslist[i],split=" ")[[1]][2]
  spcode=substr(species,1,2)
  gentime=species_lifehist$G[match(specieslist[i],species_lifehist$Species)]
  psmc_outfile=paste0("psmc_outfiles/",gencode,spcode,"denovoSSL20kall.psmc")
  psmc_result<-psmc.result(file=psmc_outfile,g=gentime)
  species_psmcout$Ne10k[i]=psmc.Netime(psmc_result,10000)
  species_psmcout$Ne25k[i]=psmc.Netime(psmc_result,25000)
  species_psmcout$Ne125k[i]=psmc.Netime(psmc_result,125000)
  species_psmcout$Ne500k[i]=psmc.Netime(psmc_result,500000)
  species_psmcout$Nemax[i]=max(psmc_result$Ne)
  species_psmcout$Nemin[i]=min(psmc_result$Ne)
  species_psmcout$theta0[i]=psmc.theta0(file=psmc_outfile,g=gentime)
} 

######### habitat + repro mode

species_repromode=read.csv("repromode_simple.csv")

### merge datasets

speciesranges$Species[7]="Atherinomorus duodecimalis"
speciesranges$Species[15]="Equulites leuciscus"

species_data=merge(species_repromode,speciesranges,by="Species")

species_data=merge(species_data,species_lifehist,by="Species")

species_data=merge(species_data,species_psmcout,by="Species")

### dredge

library(MuMIn)

options(na.action = "na.fail")

Ne10k_fullmod <- lm(Ne10k ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data)
Ne10k_dredge <- dredge(Ne10k_fullmod)
Ne10k_bestmod <- lm(Ne10k ~Winfinity, data = species_data)

Ne25k_fullmod <- lm(Ne25k ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data)
Ne25k_dredge <- dredge(Ne25k_fullmod)
Ne25k_bestmod <- lm(Ne25k ~ LonRange, data = species_data)
Ne25k_2ndbestmod <- lm(Ne25k ~ Brooder + ln_MASPS + LonRange + Winfinity, data = species_data)

ln_MASPS_newx=seq(1,5,by=0.1)
tmax_newx=seq(-0.4,2.5,by=0.1)
Winfinity_newx=seq(1,6.3,by=0.1)
LonRange_newx=seq(25,195,by=5)

Ne25k_MASPS_conf<-predict(Ne25k_bestmod,newdata=data.frame(ln_MASPS=ln_MASPS_newx,tmax=mean(species_data$tmax),Winfinity=mean(species_data$Winfinity),LonRange=mean(species_data$LonRange)),interval="confidence",level=0.95)
Ne25k_tmax_conf<-predict(Ne25k_bestmod,newdata=data.frame(ln_MASPS=mean(species_data$ln_MASPS),tmax=tmax_newx,Winfinity=mean(species_data$Winfinity),LonRange=mean(species_data$LonRange)),interval="confidence",level=0.95)
Ne25k_Winfinity_conf<-predict(Ne25k_bestmod,newdata=data.frame(ln_MASPS=mean(species_data$ln_MASPS),tmax=mean(species_data$tmax),Winfinity=Winfinity_newx,LonRange=mean(species_data$LonRange)),interval="confidence",level=0.95)
Ne25k_LonRange_conf<-predict(Ne25k_bestmod,newdata=data.frame(ln_MASPS=mean(species_data$ln_MASPS),tmax=mean(species_data$tmax),Winfinity=mean(species_data$Winfinity),LonRange=LonRange_newx),interval="confidence",level=0.95)

plot(species_data$ln_MASPS,species_data$Ne25k,pch=19,xlab="ln(MASPS)",ylab=expression('N'[e]*'25k'),cex.lab=1.2,cex.axis=1.2)
abline(Ne500k_fullmod_mode_best)
plot(species_data$ln_r,species_data$Ne500k,pch=19,xlab="ln(r)",ylab=expression('N'[e]*'500k'),cex.lab=1.2,cex.axis=1.2)


Ne100k_fullmod <- lm(Ne100k ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data)
Ne100k_dredge <- dredge(Ne100k_fullmod)

Ne500k_fullmod <- lm(Ne500k ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data)
Ne500k_dredge <- dredge(Ne500k_fullmod)
Ne500k_fullmod_mode <- lm(Ne500k ~Mode+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS+ln_r, data = species_data)
Ne500k_dredgemode <- dredge(Ne500k_fullmod_mode)
Ne500k_bestmod <- lm(Ne500k ~ln_MASPS+LatRange+tmax+Winfinity, data = species_data)




ln_MASPS_newx=seq(1,5,by=0.05)
Ne500k_conf<-predict(Ne500k_fullmod_mode_best,newdata=data.frame(ln_MASPS=ln_MASPS_newx),interval="confidence",level=0.95)
plot(species_data$ln_MASPS,species_data$Ne500k,pch=19,xlab="ln(MASPS)",ylab=expression('N'[e]*'500k'),cex.lab=1.2,cex.axis=1.2)
abline(Ne500k_fullmod_mode_best)
plot(species_data$ln_r,species_data$Ne500k,pch=19,xlab="ln(r)",ylab=expression('N'[e]*'500k'),cex.lab=1.2,cex.axis=1.2)


theta0_fullmod <- lm(theta0 ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS+ln_r, data = species_data)
theta0_dredge <- dredge(theta0_fullmod)
theta0_bestmod <- lm(theta0~ln_MASPS + LatRange + tmax,data=species_data)

## 3D plot
#install.packages("plot3D")
#install XQuartz too! www.xquartz.org
library(plot3D)

grid.lines = 40
x.pred <- seq(min(species_data$ln_MASPS), max(species_data$ln_MASPS), length.out = grid.lines)
y.pred <- seq(min(species_data$tmax), max(species_data$tmax), length.out = grid.lines)
xy <- expand.grid( ln_MASPS = x.pred, tmax = y.pred)
z.pred <- matrix(predict(theta0_bestmod, newdata = xy), 
                 nrow = grid.lines, ncol = grid.lines)

# create the fitted points for droplines to the surface
fitpoints <- predict(theta0_bestmod)

thay=45
fee=10

zlabel=expression(theta[0])

# scatter plot with regression plane
scatter3D(species_data$ln_MASPS, species_data$tmax , species_data$theta0, pch = 18, cex = 1.5, colvar=FALSE, col="red", theta = thay, phi = fee, bty="u",
          col.panel ="azure2", expand =0.5, col.grid = "snow",
          xlab = "ln(MASPS)", ylab = "Longevity", zlab = zlabel,  
          surf = list(x = x.pred, y = y.pred, z = z.pred,  
                      facets = TRUE, col=ramp.col (col = c("yellow","darkorange"), n = 100, alpha=0.7), fit = fitpoints, border="black"))

##### het vs Nes?

species_genomechars=read.csv("GenomeChars.csv")

par(mfrow=c(1,1))

species_data=merge(species_data,species_genomechars,by="Species")

plot(species_data$Genomescope_Het,species_data$theta0)

thetahetlm=lm(theta0~Genomescope_Het,data=na.omit(species_data))

nona_species_data = na.omit(species_data)

het_fullmod <- lm(Genomescope_Het ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = nona_species_data)
het_dredge <- dredge(het_fullmod)
het_best<-lm(Genomescope_Het~ln_MASPS, data=nona_species_data)
het_2ndbest<-lm(Genomescope_Het~Brooder+Winfinity, data=nona_species_data)

plot(nona_species_data$ln_MASPS,nona_species_data$Genomescope_Het,pch=19,xlab="ln(MASPS)",ylab="Heterozygosity",cex.lab=1.2,cex.axis=1.2)

het_fullmod_mode <- lm(Genomescope_Het ~Mode+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = nona_species_data)
het_dredgemode <- dredge(het_fullmod_mode)
het_best<-lm(Genomescope_Het~ln_MASPS, data=nona_species_data)
het_2ndbest<-lm(Genomescope_Het~ln_r, data=nona_species_data)

ln_MASPS_newx=seq(1,5.5,by=0.05)
het_conf<-predict(het_best,newdata=data.frame(ln_MASPS=ln_MASPS_newx),interval="confidence",level=0.95)
plot(nona_species_data$ln_MASPS,nona_species_data$Genomescope_Het,pch=19,xlab="ln(MASPS)",ylab="Heterozygosity",cex.lab=1.2,cex.axis=1.2)
abline(het_best,col="grey")
lines(ln_MASPS_newx,het_conf[,2],col="black",lty=2)
lines(ln_MASPS_newx,het_conf[,3],col="black",lty=2)


plot(nona_species_data$Winfinity,nona_species_data$Genomescope_Het,pch=19,col=species_data$Brooder+3,xlab="Asymptotic weight",ylab="Heterozygosity",cex.lab=1.2,cex.axis=1.2)



######## otherz!

Nemax_fullmod <- lm(Nemax ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data)
Nemax_dredge <- dredge(Nemax_fullmod)
Nemax_fullmod_mode <- lm(Nemax ~Mode+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data)
Nemax_dredgemode <- dredge(Nemax_fullmod_mode)
Nemax_best<-lm(Nemax~Winfinity, data=species_data)

par(mai=c(0.8,0.8,0.2,0.2))
plot(species_data$LonRange,species_data$Nemax,pch=19,xlab="Longitudinal Range",ylab=expression('N'[e]*'max'),cex.lab=1.2,cex.axis=1.2)
LonRange_newx=seq(0,200,by=1)
Nemax_conf<-predict(Nemax_best,newdata=data.frame(LonRange=LonRange_newx),interval="confidence",level=0.95)
abline(Nemax_best,col="gray")
lines(LonRange_newx,Nemax_conf[,2],col="black",lty=2)
lines(LonRange_newx,Nemax_conf[,3],col="black",lty=2)


Nemin_fullmod <- lm(Nemin ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data)
Nemin_dredge <- dredge(Nemin_fullmod)
Nemin_best<-lm(Nemin~ln_MASPS+Reef, data=species_data)

Nemin_fullmod_mode <- lm(Nemin ~Mode+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data)
Nemin_dredgemode <- dredge(Nemin_fullmod_mode)


plot(species_data$ln_MASPS,species_data$Nemin,col=species_data$Reef+3,pch=19,xlab="ln(MASPS)",ylab=expression('N'[e]*'min'),cex.lab=1.2,cex.axis=1.2)
legend(x=1.5,y=8e04,legend=c("Non-reef","Reef"),pch=c(19,19),col=c(3,4))
reefseq=rep(1,91)
noreefseq=rep(0,91)
Nemin_reef_conf<-predict(Nemin_best,newdata=data.frame(ln_MASPS=ln_MASPS_newx,Reef=reefseq),interval="confidence",level=0.95)
Nemin_noreef_conf<-predict(Nemin_best,newdata=data.frame(ln_MASPS=ln_MASPS_newx,Reef=noreefseq),interval="confidence",level=0.95)
abline(a=3397,b=13335,col="lightblue",lwd=2)
lines(ln_MASPS_newx,Nemin_reef_conf[,2],col="blue",lty=2)
lines(ln_MASPS_newx,Nemin_reef_conf[,3],col="blue",lty=2)
abline(a=-25185,b=13335,col="lightgreen",lwd=2)
lines(ln_MASPS_newx,Nemin_noreef_conf[,2],col="green",lty=2)
lines(ln_MASPS_newx,Nemin_noreef_conf[,3],col="green",lty=2)

species_data$Nerange=species_data$Nemax-species_data$Nemin
Nerange_fullmod <- lm(Nerange ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS+ln_r, data = species_data)
Nerange_dredge <- dredge(Nerange_fullmod)
Nerange_fullmod_mode <- lm(Nerange ~Mode+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS+ln_r, data = species_data)
Nerange_dredgemode <- dredge(Nerange_fullmod_mode)
Nerange_best<-lm(Nerange~Winfinity, data=species_data)

plot(species_data$LonRange,species_data$Nerange)


########## replot PSMCs by brooding


library(tidyverse)
psmc_combined=data.frame(matrix(ncol=6,nrow=0))
names(psmc_combined)=c("YearsAgo","Ne","mu","g","Species","Brooder")

for (i in 1:length(specieslist)){
  species_psmcout$Species[i]=specieslist[i]
  genus=strsplit(specieslist[i],split=" ")[[1]][1]
  gencode=substr(genus,1,1)
  species=strsplit(specieslist[i],split=" ")[[1]][2]
  spcode=substr(species,1,2)
  gentime=species_lifehist$G[match(specieslist[i],species_lifehist$Species)]
  psmc_outfile=paste0("psmc_outfiles/",gencode,spcode,"denovoSSL20kall.psmc")
  psmc_result<-psmc.result(file=psmc_outfile,g=gentime)
  psmc_result$Species=specieslist[i]
  psmc_result$Brooder=species_repromode$Brooder[match(specieslist[i],species_repromode$Species)]
  psmc_combined=rbind(psmc_combined,psmc_result)
}

psmc_combined %>% filter(Brooder==1) %>%  ggplot(aes(x=YearsAgo+1,y=Ne,group=Species,color=Species)) +
  scale_x_log10(breaks = scales::pretty_breaks(),limits=c(10000,500000)) +
  ylim(0,3000000) +
  geom_line() +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))

psmc_combined %>% filter(Brooder==0) %>%  ggplot(aes(x=YearsAgo+1,y=Ne,group=Species,color=Species)) +
  scale_x_log10(breaks = scales::pretty_breaks(),limits=c(10000,500000)) +
  geom_line() +
  ylim(0,3000000) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))

psmc_combined %>%  ggplot(aes(x=YearsAgo+1,y=Ne,group=Species,color=Species)) +
  scale_x_log10(breaks = scales::pretty_breaks(),limits=c(10000,500000)) +
  geom_line() +
  ylim(0,3000000) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))


psmc_combined %>% filter(Species=="Pomacentrus pavo")
psmc_combined %>% filter(Species=="Hypoatherina temminckii")



#############################################
##### reduced dataset / log trans ###########
#############################################

species_data_noPba = species_data[-14,]

Ne10k_fullmod <- lm(Ne10k~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Ne10k_dredge <- dredge(Ne10k_fullmod)
### best model = intercept!!
Ne10k_bestmod<-lm(Ne10k~1,data=species_data_noPba)
qqnorm(resid(Ne10k_bestmod))
qqline(resid(Ne10k_bestmod))
## resid are weird! ##
Ne10k_fullmod_log10 <- lm(log10(Ne10k)~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Ne10k_dredge_log10 <- dredge(Ne10k_fullmod_log10)
### best model = MASPS + tmax!!
Ne10k_bestmod_log10<-lm(log10(Ne10k)~ln_MASPS+tmax,data=species_data_noPba)
qqnorm(resid(Ne10k_bestmod_log10))
qqline(resid(Ne10k_bestmod_log10))
summary(Ne10k_bestmod_log10)

#plot
ln_MASPS_newx=seq(1,5,by=0.1)
tmax_newx=seq(-0.4,2.5,by=0.1)
LonRange_newx=seq(25,195,by=5)

plot(species_data$LonRange,species_data$Nemax,pch=19,xlab="Longitudinal Range",ylab=expression('N'[e]*'max'),cex.lab=1.2,cex.axis=1.2)
LonRange_newx=seq(0,200,by=1)
Nemax_conf<-predict(Nemax_best,newdata=data.frame(LonRange=LonRange_newx),interval="confidence",level=0.95)
abline(Nemax_best,col="gray")
lines(LonRange_newx,Nemax_conf[,2],col="black",lty=2)
lines(LonRange_newx,Nemax_conf[,3],col="black",lty=2)



Ne25k_fullmod <- lm(Ne25k ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Ne25k_dredge <- dredge(Ne25k_fullmod)
### best model = intercept!!
Ne25k_bestmod <- lm(Ne25k~1, data = species_data_noPba)
qqnorm(resid(Ne25k_bestmod))
qqline(resid(Ne25k_bestmod))
## resid are weird! ##
Ne25k_fullmod_log10 <- lm(log10(Ne25k)~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Ne25k_dredge_log10 <- dredge(Ne25k_fullmod_log10)
### best model = MASPS + lonrange (but lon not sig!)!!
Ne25k_bestmod_log10<-lm(log10(Ne25k)~ln_MASPS+LonRange,data=species_data_noPba)
qqnorm(resid(Ne25k_bestmod_log10))
qqline(resid(Ne25k_bestmod_log10))
summary(Ne25k_bestmod_log10)


Ne125k_fullmod <- lm(Ne125k ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Ne125k_dredge <- dredge(Ne125k_fullmod)
### best model = intercept!!
Ne125k_bestmod <- lm(Ne125k~1, data = species_data_noPba)
qqnorm(resid(Ne125k_bestmod))
qqline(resid(Ne125k_bestmod))
## resid are weird! ##
Ne125k_fullmod_log10 <- lm(log10(Ne125k)~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Ne125k_dredge_log10 <- dredge(Ne125k_fullmod_log10)
### best model = MASPS + tmax + lonrange (but lon not sig!)!!
Ne125k_bestmod_log10<-lm(log10(Ne125k)~ln_MASPS+LonRange+tmax,data=species_data_noPba)
qqnorm(resid(Ne125k_bestmod_log10))
qqline(resid(Ne125k_bestmod_log10))
summary(Ne125k_bestmod_log10)


Ne500k_fullmod <- lm(Ne500k ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Ne500k_dredge <- dredge(Ne500k_fullmod)
### best model = latrange + MASPS + tmax (only lat range significant)!!
Ne500k_bestmod <- lm(Ne500k~LatRange+ln_MASPS+tmax, data = species_data_noPba)
qqnorm(resid(Ne500k_bestmod))
qqline(resid(Ne500k_bestmod))
summary(Ne500k_bestmod)
## QQ not so bad? but try log10trans anyway ##
Ne500k_fullmod_log10 <- lm(log10(Ne500k)~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Ne500k_dredge_log10 <- dredge(Ne500k_fullmod_log10)
### best model = latrange + tmax (only lat range significant)!!
Ne500k_bestmod_log10<-lm(log10(Ne500k)~LatRange+tmax,data=species_data_noPba)
qqnorm(resid(Ne500k_bestmod_log10))
qqline(resid(Ne500k_bestmod_log10))
summary(Ne500k_bestmod_log10)


Nemax_fullmod <- lm(Nemax ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Nemax_dredge <- dredge(Nemax_fullmod)
### best model = lonrange!!
Nemax_bestmod <- lm(Nemax~LonRange, data = species_data_noPba)
qqnorm(resid(Nemax_bestmod))
qqline(resid(Nemax_bestmod))
summary(Nemax_bestmod)
## QQ kinda bad? try log10trans ##
Nemax_fullmod_log10 <- lm(log10(Nemax)~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Nemax_dredge_log10 <- dredge(Nemax_fullmod_log10)
### best model = lonrange!!
Nemax_bestmod_log10<-lm(log10(Nemax)~LonRange,data=species_data_noPba)
qqnorm(resid(Nemax_bestmod_log10))
qqline(resid(Nemax_bestmod_log10))
summary(Nemax_bestmod_log10)


Nemin_fullmod <- lm(Nemin ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Nemin_dredge <- dredge(Nemin_fullmod)
### best model = MASPS + Reef!!
Nemin_bestmod <- lm(Nemin~ln_MASPS + Reef, data = species_data_noPba)
qqnorm(resid(Nemin_bestmod))
qqline(resid(Nemin_bestmod))
summary(Nemin_bestmod)
## QQ kinda bad? try log10trans ##
Nemin_fullmod_log10 <- lm(log10(Nemin)~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Nemin_dredge_log10 <- dredge(Nemin_fullmod_log10)
### best model = MASPS + Reef!!
Nemin_bestmod_log10<-lm(log10(Nemin)~ln_MASPS + Reef,data=species_data_noPba)
qqnorm(resid(Nemin_bestmod_log10))
qqline(resid(Nemin_bestmod_log10))
summary(Nemin_bestmod_log10)
## QQ still kinda bad!!##



theta0_fullmod <- lm(theta0 ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
theta0_dredge <- dredge(theta0_fullmod)
### best model = MASPS + lonrange + tmax!!
theta0_bestmod <- lm(theta0~ln_MASPS + LonRange + tmax, data = species_data_noPba)
qqnorm(resid(theta0_bestmod))
qqline(resid(theta0_bestmod))
summary(theta0_bestmod)
## QQ fine but try log10trans ##
theta0_fullmod_log10 <- lm(log10(theta0)~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
theta0_dredge_log10 <- dredge(theta0_fullmod_log10)
### best model = MASPS!!
theta0_bestmod_log10<-lm(log10(theta0)~ln_MASPS,data=species_data_noPba)
qqnorm(resid(Nemax_bestmod_log10))
qqline(resid(Nemax_bestmod_log10))
summary(Nemax_bestmod_log10)




species_data_noPba$Nerange=species_data_noPba$Nemax-species_data_noPba$Nemin
Nerange_fullmod <- lm(Nerange ~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS+ln_r, data = species_data_noPba)
Nerange_dredge <- dredge(Nerange_fullmod)
### best model = LonRange!!
Nerange_bestmod <- lm(Nerange~LonRange, data = species_data_noPba)
qqnorm(resid(Nerange_bestmod))
qqline(resid(Nerange_bestmod))
summary(Nerange_bestmod)
## QQ bad - try log10trans ##
Nerange_fullmod_log10 <- lm(log10(Nerange)~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Nerange_dredge_log10 <- dredge(Nerange_fullmod_log10)
### best model = LonRange!!
Nerange_bestmod_log10<-lm(log10(Nerange)~LonRange,data=species_data_noPba)
qqnorm(resid(Nerange_bestmod_log10))
qqline(resid(Nerange_bestmod_log10))
summary(Nerange_bestmod_log10)


########## replot PSMCs by brooding

library(tidyverse)
psmc_combined=data.frame(matrix(ncol=6,nrow=0))
names(psmc_combined)=c("YearsAgo","Ne","mu","g","Species","Brooder")

specieslist_noPba=specieslist[-24]

for (i in 1:length(specieslist_noPba)){
  species_psmcout$Species[i]=specieslist_noPba[i]
  genus=strsplit(specieslist_noPba[i],split=" ")[[1]][1]
  gencode=substr(genus,1,1)
  species=strsplit(specieslist_noPba[i],split=" ")[[1]][2]
  spcode=substr(species,1,2)
  gentime=species_lifehist$G[match(specieslist_noPba[i],species_lifehist$Species)]
  psmc_outfile=paste0("psmc_outfiles/",gencode,spcode,"denovoSSL20kall.psmc")
  psmc_result<-psmc.result(file=psmc_outfile,g=gentime)
  psmc_result$Species=specieslist_noPba[i]
  psmc_result$Brooder=species_repromode$Brooder[match(specieslist_noPba[i],species_repromode$Species)]
  psmc_combined=rbind(psmc_combined,psmc_result)
}

psmc_combined %>% filter(Brooder==1) %>%  ggplot(aes(x=YearsAgo+1,y=Ne,group=Species,color=Species)) +
  scale_x_log10(breaks = scales::pretty_breaks(),limits=c(10000,500000)) +
  ylim(0,3000000) +
  geom_line() +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))

psmc_combined %>% filter(Brooder==0) %>%  ggplot(aes(x=YearsAgo+1,y=Ne,group=Species,color=Species)) +
  scale_x_log10(breaks = scales::pretty_breaks(),limits=c(10000,500000)) +
  geom_line() +
  ylim(0,3000000) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))


psmc_combined$NeNorm="NA"

for (i in 1:nrow(psmc_combined)){
  psmc_combined$NeNorm[i]=psmc_combined$Ne[i]/(species_data$Nemax[match(psmc_combined$Species,species_data$Species)])[i]
}

psmc_combined %>%  ggplot(aes(x=YearsAgo+1,y=as.numeric(NeNorm),group=Species,color=Species)) +
  scale_x_log10(limits=c(10000,10000000)) +
  ylim(0,1) +
  geom_line(show.legend=FALSE, alpha=0.4) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))

psmc_combined %>%  ggplot(aes(x=YearsAgo+1,y=as.numeric(NeNorm),group=Species,color=Species)) +
  xlim(0,2000000) +
  ylim(0,1) +
  geom_line(show.legend=FALSE, alpha=0.3) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))

maxers=psmc_combined[which(psmc_combined$YearsAgo==0&psmc_combined$NeNorm==1),]$Species

miners=psmc_combined[which(psmc_combined$YearsAgo==0&psmc_combined$NeNorm!=1),]$Species

psmc_combined %>% filter(Species %in% maxers) %>% ggplot(aes(x=YearsAgo+1,y=as.numeric(NeNorm),group=Species,color=Species)) +
  scale_x_log10(limits=c(1000,10000000)) +
  ylim(0,1) +
  geom_line(show.legend=FALSE, alpha=0.4) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))

psmc_combined %>% filter(Species %in% miners) %>% ggplot(aes(x=YearsAgo+1,y=as.numeric(NeNorm),group=Species,color=Species)) +
  scale_x_log10(limits=c(1000,10000000)) +
  ylim(0,1) +
  geom_line(show.legend=FALSE, alpha=0.4) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))


psmc_combined %>% filter(Species %in% maxers) %>% ggplot(aes(x=YearsAgo+1,y=as.numeric(NeNorm),group=Species,color=Species)) +
  scale_x_log10(limits=c(1000,10000000)) +
  ylim(0,1) +
  geom_rect(aes(xmin = 25000, xmax = 125000, ymin = 0, ymax = 1),fill = "gray",alpha=0.5,color="gray") +
  geom_line(alpha=0.4) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))

psmc_combined %>% filter(Species %in% miners) %>% ggplot(aes(x=YearsAgo+1,y=as.numeric(NeNorm),group=Species,color=Species)) +
  scale_x_log10(limits=c(1000,10000000)) +
  ylim(0,1) +
  geom_rect(aes(xmin = 25000, xmax = 125000, ymin = 0, ymax = 1),fill = "gray",alpha=0.5,color="gray") +
  geom_line(alpha=0.4) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))


psmc_combined %>% filter(Species == "Ambassis urotaenia")
psmc_combined %>% filter(Species == "Corythoichthys haematopterus")

# maxers miners raw Ne

psmc_combined %>% filter(Species %in% maxers) %>% ggplot(aes(x=YearsAgo+1,y=Ne,group=Species,color=Species)) +
  scale_x_log10(limits=c(1000,10000000)) +
  geom_line(show.legend=FALSE, alpha=0.4) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))

psmc_combined %>% filter(Species %in% miners) %>% ggplot(aes(x=YearsAgo+1,y=Ne,group=Species,color=Species)) +
  scale_x_log10(limits=c(1000,10000000)) +
  geom_line(show.legend=FALSE, alpha=0.4) +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))


##############################
##### convert to tslearn #####
##############################

# make a time series: 0 to 1000 kya (by 10k)

ts = seq(0,1000000,by=10000)
ts_matrix = matrix(ncol=length(ts),nrow=length(specieslist_noPba))
rownames(ts_matrix)=specieslist_noPba
colnames(ts_matrix)=ts

spdat=filter(psmc_combined,Species=="Taeniamia biguttata")

spdat$NeNorm[which.min(abs(spdat$YearsAgo-10000))]

spdat=filter(psmc_combined,Species==sp)

sp=1

t=1

for (t in 1:length(ts)){
  for (sp in 1:length(specieslist_noPba)){
    spdat=filter(psmc_combined,Species==specieslist_noPba[sp])
    ts_matrix[specieslist_noPba[sp],as.character(ts[t])]=spdat$NeNorm[which.min(abs(spdat$YearsAgo-ts[t]))]
  }
}

write.table(ts_matrix, file="/Users/nerdbrained/Dropbox/Mac/Desktop/tslearn/ts_matrix.txt", row.names=F, sep=",",quote=F)


################################
### try BMS?? and remove Tka ###
################################

library(BMS)

species_data_noPbaTka=species_data[-c(14,25),]

# for ref #
library(MuMIn)
options(na.action = "na.fail")
Ne10k_fullmod <- lm(Ne10k~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPbaTka)
Ne10k_dredge <- dredge(Ne10k_fullmod)
### best model = intercept!!
Ne10k_bestmod<-lm(Ne10k~1,data=species_data_noPba)
qqnorm(resid(Ne10k_bestmod))
qqline(resid(Ne10k_bestmod))
## resid are weird! ##
Ne10k_fullmod_log10 <- lm(log10(Ne10k)~Brooder+Reef+LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPba)
Ne10k_dredge_log10 <- dredge(Ne10k_fullmod_log10)
### best model = MASPS + tmax!!
Ne10k_bestmod_log10<-lm(log10(Ne10k)~ln_MASPS+tmax,data=species_data_noPba)
qqnorm(resid(Ne10k_bestmod_log10))
qqline(resid(Ne10k_bestmod_log10))
summary(Ne10k_bestmod_log10)

species_data_noPbaTka
species_data_Ne10k=data.frame(log10Ne10k=(log10(species_data_noPbaTka$Ne10k)-mean(log10(species_data_noPbaTka$Ne10k))/sd(log10(species_data_noPbaTka$Ne10k))))
#predictors: LatRange+LonRange+Winfinity+tmax+ln_MASPS+ln_r
species_data_Ne10k$LatRange=(species_data_noPbaTka$LatRange-mean(species_data_noPbaTka$LatRange))/sd(species_data_noPbaTka$LatRange)
species_data_Ne10k$LonRange=(species_data_noPbaTka$LonRange-mean(species_data_noPbaTka$LonRange))/sd(species_data_noPbaTka$LonRange)
species_data_Ne10k$Winfinity=(species_data_noPbaTka$Winfinity-mean(species_data_noPbaTka$Winfinity))/sd(species_data_noPbaTka$Winfinity)
species_data_Ne10k$tmax=(species_data_noPbaTka$tmax-mean(species_data_noPbaTka$tmax))/sd(species_data_noPbaTka$tmax)
species_data_Ne10k$ln_MASPS=(species_data_noPbaTka$ln_MASPS-mean(species_data_noPbaTka$ln_MASPS))/sd(species_data_noPbaTka$ln_MASPS)

logNe10k_bms=bms(X.data=species_data_Ne10k,iter=10000,mprior="uniform")
coef(logNe10k_bms)
image(logNe10k_bms)
plot(logNe10k_bms)

### the e.g ###
data(datafls)

model=bms(datafls,nmodel=200)

#plot all models
image(model,order.by.pip=FALSE)
image(model,order.by.pip=TRUE,cex.axis=.8)

#plot best 7 models, with other colors
image(model[1:7],yprop2pip=TRUE,col=c("black","lightgrey"))

###


species_data_noPbaTka
species_data_Ne25k=data.frame(log10Ne25k=(log10(species_data_noPbaTka$Ne25k)-mean(log10(species_data_noPbaTka$Ne25k))/sd(log10(species_data_noPbaTka$Ne25k))))
#predictors: LatRange+LonRange+Winfinity+tmax+ln_MASPS+ln_r
species_data_Ne25k$LatRange=(species_data_noPbaTka$LatRange-mean(species_data_noPbaTka$LatRange))/sd(species_data_noPbaTka$LatRange)
species_data_Ne25k$LonRange=(species_data_noPbaTka$LonRange-mean(species_data_noPbaTka$LonRange))/sd(species_data_noPbaTka$LonRange)
species_data_Ne25k$Winfinity=(species_data_noPbaTka$Winfinity-mean(species_data_noPbaTka$Winfinity))/sd(species_data_noPbaTka$Winfinity)
species_data_Ne25k$tmax=(species_data_noPbaTka$tmax-mean(species_data_noPbaTka$tmax))/sd(species_data_noPbaTka$tmax)
species_data_Ne25k$ln_MASPS=(species_data_noPbaTka$ln_MASPS-mean(species_data_noPbaTka$ln_MASPS))/sd(species_data_noPbaTka$ln_MASPS)

logNe25k_bms=bms(X.data=species_data_Ne25k,iter=10000,mprior="uniform")
coef(logNe25k_bms)
image(logNe25k_bms,cex=1.14,cex.lab=1.2,col=c("blueviolet","cadetblue2"))


species_data_noPbaTka
species_data_Ne125k=data.frame(log10Ne125k=(log10(species_data_noPbaTka$Ne125k)-mean(log10(species_data_noPbaTka$Ne125k))/sd(log10(species_data_noPbaTka$Ne125k))))
#predictors: LatRange+LonRange+Winfinity+tmax+ln_MASPS+ln_r
species_data_Ne125k$LatRange=(species_data_noPbaTka$LatRange-mean(species_data_noPbaTka$LatRange))/sd(species_data_noPbaTka$LatRange)
species_data_Ne125k$LonRange=(species_data_noPbaTka$LonRange-mean(species_data_noPbaTka$LonRange))/sd(species_data_noPbaTka$LonRange)
species_data_Ne125k$Winfinity=(species_data_noPbaTka$Winfinity-mean(species_data_noPbaTka$Winfinity))/sd(species_data_noPbaTka$Winfinity)
species_data_Ne125k$tmax=(species_data_noPbaTka$tmax-mean(species_data_noPbaTka$tmax))/sd(species_data_noPbaTka$tmax)
species_data_Ne125k$ln_MASPS=(species_data_noPbaTka$ln_MASPS-mean(species_data_noPbaTka$ln_MASPS))/sd(species_data_noPbaTka$ln_MASPS)

logNe125k_bms=bms(X.data=species_data_Ne125k,iter=10000,mprior="uniform")
coef(logNe125k_bms)
image(logNe125k_bms,cex=1.14,cex.lab=1.2,col=c("blueviolet","cadetblue2"))



species_data_noPbaTka
species_data_theta0=data.frame(theta0=(species_data_noPbaTka$theta0)-mean(species_data_noPbaTka$theta0)/sd(species_data_noPbaTka$theta0))
#predictors: LatRange+LonRange+Winfinity+tmax+ln_MASPS+ln_r
species_data_theta0$LatRange=(species_data_noPbaTka$LatRange-mean(species_data_noPbaTka$LatRange))/sd(species_data_noPbaTka$LatRange)
species_data_theta0$LonRange=(species_data_noPbaTka$LonRange-mean(species_data_noPbaTka$LonRange))/sd(species_data_noPbaTka$LonRange)
species_data_theta0$Winfinity=(species_data_noPbaTka$Winfinity-mean(species_data_noPbaTka$Winfinity))/sd(species_data_noPbaTka$Winfinity)
species_data_theta0$tmax=(species_data_noPbaTka$tmax-mean(species_data_noPbaTka$tmax))/sd(species_data_noPbaTka$tmax)
species_data_theta0$ln_MASPS=(species_data_noPbaTka$ln_MASPS-mean(species_data_noPbaTka$ln_MASPS))/sd(species_data_noPbaTka$ln_MASPS)

theta0_bms=bms(X.data=species_data_theta0,iter=10000,mprior="uniform")
coef(theta0_bms)
image(theta0_bms,cex=1.14,cex.lab=1.2,col=c("blueviolet","cadetblue2"))


########## replot PSMCs by brooding

library(tidyverse)
psmc_combined=data.frame(matrix(ncol=6,nrow=0))
names(psmc_combined)=c("YearsAgo","Ne","mu","g","Species","Brooder")

specieslist_Apos=c("Taeniamia biguttata","Taeniamia kagoshimanus","Taeniamia zosterophora","Ostorhinchus chrysopomus")

for (i in 1:length(specieslist_Apos)){
  species_psmcout$Species[i]=specieslist_Apos[i]
  genus=strsplit(specieslist_Apos[i],split=" ")[[1]][1]
  gencode=substr(genus,1,1)
  species=strsplit(specieslist_Apos[i],split=" ")[[1]][2]
  spcode=substr(species,1,2)
  gentime=species_lifehist$G[match(specieslist_Apos[i],species_lifehist$Species)]
  psmc_outfile=paste0("psmc_outfiles/",gencode,spcode,"denovoSSL20kall.psmc")
  psmc_result<-psmc.result(file=psmc_outfile,g=gentime)
  psmc_result$Species=specieslist_Apos[i]
  psmc_result$Brooder=species_repromode$Brooder[match(specieslist_Apos[i],species_repromode$Species)]
  psmc_combined=rbind(psmc_combined,psmc_result)
}

psmc_combined %>% filter(Brooder==1) %>%  ggplot(aes(x=YearsAgo+1,y=Ne,group=Species,color=Species)) +
  scale_x_log10(breaks = scales::pretty_breaks(),limits=c(10000,500000)) +
  ylim(0,400000) +
  geom_line() +
  theme_bw() +
  xlab("Years Ago") +
  ylab(expression('N'[e])) +
  theme(axis.text.x = element_text(angle = -30),text=element_text(size=14))





######################
### no reef, plotz ###
######################

#############################################
##### reduced dataset / log trans ###########
#############################################

species_data_noPbaTka=species_data[-c(14,25),]

Ne10k_fullmod_log10 <- lm(log10(Ne10k)~LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPbaTka)
Ne10k_dredge_log10 <- dredge(Ne10k_fullmod_log10)
Ne10k_dredge_log10[1]
### best model = MASPS + tmax!!
Ne10k_bestmod_log10<-lm(log10(Ne10k)~ln_MASPS+tmax,data=species_data_noPbaTka)
qqnorm(resid(Ne10k_bestmod_log10))
qqline(resid(Ne10k_bestmod_log10))
summary(Ne10k_bestmod_log10)

## 3D plot
#install.packages("plot3D")
#install XQuartz too! www.xquartz.org
library(plot3D)

grid.lines = 40
x.pred <- seq(min(species_data_noPbaTka$ln_MASPS), max(species_data_noPbaTka$ln_MASPS), length.out = grid.lines)
y.pred <- seq(min(species_data_noPbaTka$tmax), max(species_data_noPbaTka$tmax), length.out = grid.lines)
xy <- expand.grid( ln_MASPS = x.pred, tmax = y.pred)
z.pred <- matrix(predict(Ne10k_bestmod_log10, newdata = xy), 
                 nrow = grid.lines, ncol = grid.lines)

# create the fitted points for droplines to the surface
fitpoints <- predict(Ne10k_bestmod_log10)

thay=55
fee=7

#zlabel=expression(l)

# scatter plot with regression plane
scatter3D(species_data_noPbaTka$ln_MASPS, species_data_noPbaTka$tmax , log10(species_data_noPbaTka$Ne10k), pch = 18, cex = 1.5, colvar=FALSE, col="red", theta = thay, phi = fee, bty="u",
          col.panel ="azure2", expand =0.5, col.grid = "snow",
          xlab = "ln(MASPS)", ylab = "Longevity", zlab = "log10(Ne10kya)",  
          surf = list(x = x.pred, y = y.pred, z = z.pred,  
                      facets = TRUE, col=ramp.col (col = c("yellow","darkorange"), n = 100, alpha=0.7), fit = fitpoints, border="black"))



Ne25k_fullmod_log10 <- lm(log10(Ne25k)~LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPbaTka)
Ne25k_dredge_log10 <- dredge(Ne25k_fullmod_log10)
Ne25k_dredge_log10[1]
### best model = MASPS!
Ne25k_bestmod_log10<-lm(log10(Ne25k)~ln_MASPS,data=species_data_noPbaTka)
qqnorm(resid(Ne25k_bestmod_log10))
qqline(resid(Ne25k_bestmod_log10))
summary(Ne25k_bestmod_log10)

# #plot
ln_MASPS_newx=seq(1,5,length.out=100)
# tmax_newx=seq(-0.4,2.5,length.out=100)
# LonRange_newx=seq(25,195,length.out=100)
# LatRange_newx=seq(24,76,length.out=100)
plot(species_data_noPbaTka$ln_MASPS,log10(species_data_noPbaTka$Ne25k),pch=19,xlab="ln(MASPS)",ylab=expression("log10(Ne25kya)"),cex.lab=1.2,cex.axis=1.2)
Ne25k_MASPS_conf<-predict(Ne25k_bestmod_log10,newdata=data.frame(ln_MASPS=ln_MASPS_newx),interval="confidence",level=0.95)
abline(Ne25k_bestmod_log10,col="gray")
lines(ln_MASPS_newx,Ne25k_MASPS_conf[,2],col="black",lty=2)
lines(ln_MASPS_newx,Ne25k_MASPS_conf[,3],col="black",lty=2)


Ne125k_fullmod_log10 <- lm(log10(Ne125k)~LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPbaTka)
Ne125k_dredge_log10 <- dredge(Ne125k_fullmod_log10)
Ne125k_dredge_log10[1]
### best model = MASPS + tmax!
Ne125k_bestmod_log10<-lm(log10(Ne125k)~ln_MASPS+tmax,data=species_data_noPbaTka)
qqnorm(resid(Ne125k_bestmod_log10))
qqline(resid(Ne125k_bestmod_log10))
summary(Ne125k_bestmod_log10)

## 3D plot
#install.packages("plot3D")
#install XQuartz too! www.xquartz.org
library(plot3D)

grid.lines = 40
x.pred <- seq(min(species_data_noPbaTka$ln_MASPS), max(species_data_noPbaTka$ln_MASPS), length.out = grid.lines)
y.pred <- seq(min(species_data_noPbaTka$tmax), max(species_data_noPbaTka$tmax), length.out = grid.lines)
xy <- expand.grid( ln_MASPS = x.pred, tmax = y.pred)
z.pred <- matrix(predict(Ne125k_bestmod_log10, newdata = xy), 
                 nrow = grid.lines, ncol = grid.lines)

# create the fitted points for droplines to the surface
fitpoints <- predict(Ne125k_bestmod_log10)

thay=65
fee=10

#zlabel=expression(l)

# scatter plot with regression plane
scatter3D(species_data_noPbaTka$ln_MASPS, species_data_noPbaTka$tmax , log10(species_data_noPbaTka$Ne125k), pch = 18, cex = 1.5, colvar=FALSE, col="red", theta = thay, phi = fee, bty="u",
          col.panel ="azure2", expand =0.5, col.grid = "snow",
          xlab = "ln(MASPS)", ylab = "Longevity", zlab = "log10(Ne125kya)",  
          surf = list(x = x.pred, y = y.pred, z = z.pred,  
                      facets = TRUE, col=ramp.col (col = c("yellow","darkorange"), n = 100, alpha=0.7), fit = fitpoints, border="black"))


Ne500k_fullmod_log10 <- lm(log10(Ne500k)~LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPbaTka)
Ne500k_dredge_log10 <- dredge(Ne500k_fullmod_log10)
Ne500k_dredge_log10[1]
### best model = lat + tmax + Winf!
Ne500k_bestmod_log10<-lm(log10(Ne500k)~LatRange+tmax+Winfinity,data=species_data_noPbaTka)
qqnorm(resid(Ne500k_bestmod_log10))
qqline(resid(Ne500k_bestmod_log10))
summary(Ne500k_bestmod_log10)


theta0_fullmod <- lm(theta0~LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPbaTka)
theta0_dredge <- dredge(theta0_fullmod)
### best model = MASPS + tmax + LonRange!
theta0_bestmod<-lm(theta0~LonRange+tmax+ln_MASPS,data=species_data_noPbaTka)
qqnorm(resid(theta0_bestmod))
qqline(resid(theta0_bestmod))
summary(theta0_bestmod)


Nemin_fullmod_log10 <- lm(log10(Nemin)~LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPbaTka)
Nemin_dredge_log10 <- dredge(Nemin_fullmod_log10)
### best model = lnMASPS + tmax!
Nemin_bestmod_log10<-lm(log10(Nemin)~ln_MASPS+tmax,data=species_data_noPbaTka)
qqnorm(resid(Nemin_bestmod_log10))
qqline(resid(Nemin_bestmod_log10))
summary(Nemin_bestmod_log10)

Nemax_fullmod_log10 <- lm(log10(Nemax)~LatRange+LonRange+Winfinity+tmax+ln_MASPS, data = species_data_noPbaTka)
Nemax_dredge_log10 <- dredge(Nemax_fullmod_log10)
### best model = lonrange!
Nemax_bestmod_log10<-lm(log10(Nemax)~LonRange,data=species_data_noPbaTka)
qqnorm(resid(Nemax_bestmod_log10))
qqline(resid(Nemax_bestmod_log10))
summary(Nemax_bestmod_log10)

# #plot
# ln_MASPS_newx=seq(1,5,length.out=100)
# tmax_newx=seq(-0.4,2.5,length.out=100)
LonRange_newx=seq(25,195,length.out=100)
# LatRange_newx=seq(24,76,length.out=100)
plot(species_data_noPbaTka$LonRange,log10(species_data_noPbaTka$Nemax),pch=19,xlab="LonRange",ylab=expression("log10(Nemax)"),cex.lab=1.2,cex.axis=1.2)
LonRange_conf<-predict(Nemax_bestmod_log10,newdata=data.frame(LonRange=LonRange_newx),interval="confidence",level=0.95)
abline(Nemax_bestmod_log10,col="gray")
lines(LonRange_newx,LonRange_conf[,2],col="black",lty=2)
lines(LonRange_newx,LonRange_conf[,3],col="black",lty=2)
