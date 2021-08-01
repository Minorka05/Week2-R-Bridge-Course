
affairs <- read.csv(file="https://github.com/Minorka05/Week2-R-Bridge-Course/blob/main/Affairs.csv", header=TRUE, sep=",")
#Question1
summary(affairs)

naffmean <- mean(affairs$naffairs)
naffmedian <- median(affairs$naffairs)

kidsmean <- mean(affairs$kids)
kidsmedian <- median(affairs$kids)
print(paste0("naffairs mean is ", round(naffmean, 2),", naffairs median is ", round(naffmedian, 2)))
print(paste0("kids mean is ", round(kidsmean, 2),", kids median is ", round(kidsmedian)))

#Question2
parents <- data.frame(subset(affairs, naffairs >= 1 & kids == 1))

#Question3
colnames(parents) <- c("X1", "unchaste", "progenitor", "miserable", "sad", "okay", "good", "great", "atheist", "pagan", "superstitious", "churchgoer", "preacher", "yrs.75", "yrs1.5", "yrs4", "yrs7", "yrs10", "yrs15")

#Question4
summary(parents)

unchmean <- mean(parents$unchaste)
unchmedian <- median(parents$unchaste)

progmean <- mean(parents$progenitor)
progmedian <- median(parents$progenitor)
print(paste0("naffairs mean is ", round(naffmean, 2),", unchaste mean is ", round(unchmean, 2)))

print(paste0("naffairs median is ", round(naffmedian, 2),", unchaste median is ", round(unchmedian, 2)))
print(paste0("kids mean is ", round(kidsmean, 2),", progenitor mean is ", round(progmean)))
print(paste0("kids median is ", round(kidsmedian),", progenitor median is ", round(progmedian)))

#Question5
parents$yrs.75 <- as.character(parents$yrs.75)
parents$yrs.75[parents$yrs.75 == "1"] <- "newlyweds"

#Question6
example <- parents[order(parents$yrs.75),]
tail(example, n=10)