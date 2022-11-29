library(plinkQC)

a <- read.table("plink.genome", h = T)
indiv <- relatednessFilter(a,relatednessTh = 0.125)

write.table(indiv$failIDs, file = "to_remove.txt", row.names = FALSE, quote = FALSE, col.names = F, sep = "\t")
