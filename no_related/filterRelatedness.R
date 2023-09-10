library(plinkQC)

my_data <- read.table("plink.genome", h = T)
indiv <- relatednessFilter(my_data,relatednessTh = 0.2)
write.table(indiv$failIDs, file = "to_remove.txt", row.names = FALSE, quote = FALSE, col.names = F, sep = "\t")
