### 1 Population
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,1)
lat <- rep(coo$V6,1)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.25, col = my_col)
box(col="gray")
dev.off()



### 2 Populations
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1,structure_file$V2)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n), rep("pop2",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,2)
lat <- rep(coo$V6,2)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.25, col = my_col)
box(col="gray")
dev.off()



#### 3 Populations
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1,structure_file$V2,structure_file$V3)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,3)
lat <- rep(coo$V6,3)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.25, col = my_col)
box(col="gray")
dev.off()



### 4 Populations
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1,structure_file$V2,structure_file$V3,structure_file$V4)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n),rep("pop4",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,4)
lat <- rep(coo$V6,4)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.25, col = my_col)
box(col="gray")
dev.off()



### 5 Populations
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1,structure_file$V2,structure_file$V3,structure_file$V4,structure_file$V5)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n),rep("pop4",n),rep("pop5",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,5)
lat <- rep(coo$V6,5)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.25, col = my_col)
box(col="gray")
dev.off()



### 6 Populations
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1,structure_file$V2,structure_file$V3,structure_file$V4,structure_file$V5,structure_file$V6)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n),rep("pop4",n),rep("pop5",n),rep("pop6",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,6)
lat <- rep(coo$V6,6)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.25, col = my_col)
box(col="gray")
dev.off()



#### 7 Populations
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1,structure_file$V2,structure_file$V3,structure_file$V4,structure_file$V5,structure_file$V6,structure_file$V7)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n),rep("pop4",n),rep("pop5",n),rep("pop6",n),rep("pop7",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,7)
lat <- rep(coo$V6,7)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.35, col = my_col)
box(col="gray")
dev.off()



### 8 Populations
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1,structure_file$V2,structure_file$V3,structure_file$V4,structure_file$V5,structure_file$V6,structure_file$V7,structure_file$V8)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n),rep("pop4",n),rep("pop5",n),rep("pop6",n),rep("pop7",n),rep("pop8",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,8)
lat <- rep(coo$V6,8)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.35, col = my_col)
box(col="gray")
dev.off()



### 9 Populations
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1,structure_file$V2,structure_file$V3,structure_file$V4,structure_file$V5,structure_file$V6,structure_file$V7,structure_file$V8,structure_file$V9)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n),rep("pop4",n),rep("pop5",n),rep("pop6",n),rep("pop7",n),rep("pop8",n),rep("pop9",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,9)
lat <- rep(coo$V6,9)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.35, col = my_col)
box(col="gray")
dev.off()



### 10 Populations
library(mapplots)
library(rworldmap)
data(countriesLow)
plot(countriesLow)
coo <- read.table("sampling_data.csv", h = F, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)
structure_file <- read.table(file)
structure_output <- cbind(structure_file$V1,structure_file$V2,structure_file$V3,structure_file$V4,structure_file$V5,structure_file$V6,structure_file$V7,structure_file$V8,structure_file$V9,structure_file$V10)
structure_output <- as.numeric(structure_output)
n <- length(structure_file$V1)
pop_file <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n),rep("pop4",n),rep("pop5",n),rep("pop6",n),rep("pop7",n),rep("pop8",n),rep("pop9",n),rep("pop10",n))
pop_file <- as.factor(pop_file)
lon <- rep(coo$V7,10)
lat <- rep(coo$V6,1)
# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, structure_output,pop_file)
pdf("map.pdf")
plot(countriesLow, xlim= c(min(coo$V7-5),max(coo$V7 + 5)), ylim = c(min(coo$V6-5),max(coo$V6+5)))
my_col <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7", "black", "brown")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.35, col = my_col)
box(col="gray")
dev.off()
