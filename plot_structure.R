library(conStruct)
library(ggplot2)
library(gridExtra)
library(grid)
library(ggrepel)


my_dir <- getwd()

file <- list.files(path=my_dir, pattern="*fast_output*", full.names=TRUE, recursive=FALSE)

m <- read.table(file)

m <- as.matrix(m)
n <- scan("names.txt", character())


pdf("results.pdf")

make.structure.plot(admix.proportions = m, sample.names = n)


file2 <- list.files(path=my_dir, pattern="*.het", full.names=TRUE, recursive=FALSE)

het <- read.table(file2, h = T)

ggplot(het, aes(x=F)) + geom_histogram(bins = 200, color="black", fill="#E69F00") + theme_classic() + ggtitle("Heterozygosity")


file3 <- list.files(path=my_dir, pattern="*eigenvec$", full.names=TRUE, recursive=FALSE)
file4 <- list.files(path=my_dir, pattern="*eigenval", full.names=TRUE, recursive=FALSE)

eigenvec <- read.table(file3)
eigenval <- read.table(file4)

colnames(eigenvec) <- c("ID","PC1","PC2","PC3","PC4","PC5","PC6","PC7", "PC8", "PC9", "PC10")
colnames(eigenval) <- c("eigenval")
pca1 <- ggplot(eigenvec, aes(x=PC1,y=PC2)) + geom_point(color="#E69F00") + theme_classic() + ggtitle("PC1 vs PC2")  +
  geom_text_repel(aes(label = ID),
                  size = 0.3,
                  segment.color = 'grey50', max.overlaps = Inf)

pca2 <- ggplot(eigenvec, aes(x=PC1,y=PC3)) + geom_point(color="#E69F00") + theme_classic() + ggtitle("PC1 vs PC3")+
  geom_text_repel(aes(label = ID),
                  size = 0.3,
                  segment.color = 'grey50', max.overlaps = Inf)
pca3 <- ggplot(eigenvec, aes(x=PC2,y=PC3)) + geom_point(color="#E69F00") + theme_classic() + ggtitle("PC2 vs PC3")+
  geom_text_repel(aes(label = ID),
                  size = 0.3,
                  segment.color = 'grey50', max.overlaps = Inf)

pca4 <-  ggplot(eigenval, aes(y=eigenval, x = c(1:10))) + geom_line() + theme_classic() + scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10)) + xlab("Eigenvalue") + ylim(0,50)


grid.arrange(pca1,pca2,pca3,pca4, ncol=2,top=textGrob("PCA"))



dev.off()
