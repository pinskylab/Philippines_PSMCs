meanNeAnc=31000
stdevNeAnc=17000

x=seq(-20000,120000,length=100)
y=dnorm(x,mean=31000,sd=17000)

plot(x,y)

meanNemax = 300000
stdevNemax= 750000  #?

tAnc = 120000

# avg growth = 10x expansion over 120ky
  
meanrAnc = 0.00002

startNes = rnorm(20,mean=31000,sd=15000)
rAncs = rnorm(20,mean = 0.00002, sd = 0.00001)

tseq_stable=seq(500000,120000,length=77)
tseq_grow=seq(120000,0,length=25)
tseq_grow[25]=120

startNes[1]*((1+rAncs[1])^(120000-tseq_grow))

startNes[2]*((1+rAncs[2])^(120000-tseq_grow))

par(mfrow=c(1,1))

plot(x=NULL,xlim=c(10,500000),ylim=c(10,3500000),log="xy",ylab="Ne",xlab="Years Before Present")

rmods=rnorm(20,mean=-0.1,sd=0.01)

tseq_dec=seq(80,1,length=80)

Nehists=vector()

for (pop in 1:20) {
  Nehists[pop]=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow[25]))
}

Nehists[1]*((1+rmods[1])^(80-tseq_dec))

for (pop in 1:20) {
  lines(y=rep(startNes[pop],length(tseq_stable)),x=tseq_stable)
  lines(x=tseq_grow,y=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow)))
  lines(y=rep(Nehists[pop],2),x=c(120,80))
  lines(x=tseq_dec,y=Nehists[pop]*((1+rmods[pop])^(80-tseq_dec)))
}


############## futz with rmods

startNes = rnorm(20,mean=31000,sd=15000)
rAncs = rnorm(20,mean = 0.00002, sd = 0.00001)

rmods=rnorm(20,mean=-0.1,sd=0.02)

Nehists=vector()

for (pop in 1:20) {
  Nehists[pop]=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow[25]))
}

plot(x=NULL,xlim=c(10,500000),ylim=c(10,10000000),log="xy",ylab="Ne",xlab="YBP")

for (pop in 1:20) {
  lines(y=rep(startNes[pop],length(tseq_stable)),x=tseq_stable)
  lines(x=tseq_grow,y=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow)))
  lines(y=rep(Nehists[pop],2),x=c(120,80))
  lines(x=tseq_dec,y=Nehists[pop]*((1+rmods[pop])^(80-tseq_dec)))
}


############## futz with rmods

startNes = rnorm(20,mean=31000,sd=15000)
rAncs = rnorm(20,mean = 0.00002, sd = 0.00001)

rmods=rnorm(20,mean=0,sd=0.02)

Nehists=vector()

for (pop in 1:20) {
  Nehists[pop]=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow[25]))
}

plot(x=NULL,xlim=c(10,500000),ylim=c(10,10000000),log="xy",ylab="Ne",xlab="Years Before Present")

for (pop in 1:20) {
  lines(y=rep(startNes[pop],length(tseq_stable)),x=tseq_stable)
  lines(x=tseq_grow,y=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow)))
  lines(y=rep(Nehists[pop],2),x=c(120,80))
  lines(x=tseq_dec,y=Nehists[pop]*((1+rmods[pop])^(80-tseq_dec)))
}

mean(runif(20,1000,700000))


#### plot scenarios - neanc constant

startNes = rep(10000,10)
rAncs = rep(0,10)

tseq_stable=seq(500000,120000,length=77)
tseq_grow=seq(120000,0,length=25)
tseq_grow[25]=120

startNes[1]*((1+rAncs[1])^(120000-tseq_grow))

startNes[2]*((1+rAncs[2])^(120000-tseq_grow))

par(mfrow=c(1,1))

plot(x=NULL,xlim=c(10,500000),ylim=c(1,5000000),log="xy",ylab="Ne",xlab="Years Before Present")

rmods=rnorm(10,mean=-0.05,sd=0.002)

tseq_dec=seq(80,1,length=80)

Nehists=vector()

for (pop in 1:10) {
  Nehists[pop]=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow[25]))
}

Nehists[1]*((1+rmods[1])^(80-tseq_dec))

for (pop in 1:10) {
  lines(y=rep(startNes[pop],length(tseq_stable)),x=tseq_stable)
  lines(x=tseq_grow,y=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow)))
  lines(y=rep(Nehists[pop],2),x=c(120,80))
  lines(x=tseq_dec,y=Nehists[pop]*((1+rmods[pop])^(80-tseq_dec)))
}


#### plot scenarios - neanc variable

startNes = runif(10,1000,70000)
rAncs = rnorm(10,mean = 0.00002, sd = 0.00001)

tseq_stable=seq(500000,120000,length=77)
tseq_grow=seq(120000,0,length=25)
tseq_grow[25]=120

startNes[1]*((1+rAncs[1])^(120000-tseq_grow))

startNes[2]*((1+rAncs[2])^(120000-tseq_grow))

par(mfrow=c(1,1))

plot(x=NULL,xlim=c(10,500000),ylim=c(1,100000000),log="xy",ylab="Ne",xlab="Years Before Present")

rmods=rnorm(10,mean=0,sd=0.002)

tseq_dec=seq(80,1,length=80)

Nehists=vector()

for (pop in 1:10) {
  Nehists[pop]=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow[25]))
}

Nehists[1]*((1+rmods[1])^(80-tseq_dec))

for (pop in 1:10) {
  lines(y=rep(startNes[pop],length(tseq_stable)),x=tseq_stable)
  lines(x=tseq_grow,y=startNes[pop]*((1+rAncs[pop])^(120000-tseq_grow)))
  lines(y=rep(Nehists[pop],2),x=c(120,80))
  lines(x=tseq_dec,y=Nehists[pop]*((1+rmods[pop])^(80-tseq_dec)))
}



##### scenario of recent decline

startNes = runif(10,40000,2000000)
rAncs = rnorm(10,mean = -0.0002, sd = 0.0001)

tseq_stable=seq(500000,10000,length=99)
tseq_shrink=seq(10000,0,length=21)
tseq_shrink[21]=120

startNes[1]*((1+rAncs[1])^(10000-tseq_grow))

startNes[2]*((1+rAncs[2])^(10000-tseq_grow))

par(mfrow=c(1,1))

plot(x=NULL,xlim=c(10,500000),ylim=c(1,100000000),log="xy",ylab="Ne",xlab="Years Before Present")

rmods=rnorm(10,mean=-0.05,sd=0.002)

tseq_dec=seq(80,1,length=80)

Nehists=vector()

## Gmi: 1000 -> 10 over 4ky
log(10/1000)/4000
## Tzo: 200 -> 8 over 10ky
log(8/200)/10000
## Tbi: 2000 -> 10 over 20ky
log(10/2000)/20000
## Lle: 1500 -> 20 over 20ky
log(20/1500)/20000

#Nt = Noert
#Nt/No = e^rt
#ln(Nt/No)=rt
#r=ln(Nt/No)/t

#log(0.01)


for (pop in 1:10) {
  Nehists[pop]=startNes[pop]*((1+rAncs[pop])^(10000-tseq_shrink[21]))
}

Nehists[1]*((1+rmods[1])^(80-tseq_dec))

for (pop in 1:10) {
  lines(y=rep(startNes[pop],length(tseq_stable)),x=tseq_stable)
  lines(x=tseq_shrink,y=startNes[pop]*((1+rAncs[pop])^(10000-tseq_shrink)))
  lines(y=rep(Nehists[pop],2),x=c(120,80))
  lines(x=tseq_dec,y=Nehists[pop]*((1+rmods[pop])^(80-tseq_dec)))
}
