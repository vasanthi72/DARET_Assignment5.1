States <- rownames(USArrests)
st <- paste(States, collapse ="")
st <- tolower(strsplit(st,"")[[1]])
table(st)
stdf <- data.frame(table(st))
sum(stdf[c(1,5,9,15,20),2])
#Question No.2
vowels <- as.vector(stdf[c(1,5,9,15,20),1])
vowels
vowelfreq <- as.vector(stdf[c(1,5,9,15,20),2])
vowelfreq
vowdist <- cbind(vowels, vowelfreq)
vowdist<- as.table(vowdist)
plot(vowelfreq~factor(vowels), vowdist, las=2, xlab="", main="vowel distribution")
savehistory("E:/kamagyana/Computing/DARET/Submissions/Asst5.1.r")
