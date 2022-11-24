source("lib.R", keep.source = TRUE)
library(mapplots)
coo <- read.table("sampling_data.csv", h = T, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)

a <- read.table(file)

gabri <- cbind(a$V1,a$V2,a$V3)
gabri <- as.numeric(gabri)
n <- length(a$V1)
gabri_2 <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n))

gabri_2 <- as.factor(gabri_2)

lon <- rep(coo$Long,3)
lat <- rep(coo$Lat,3)

# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, gabri,gabri_2)


library(maptools)
data(wrld_simpl)
plot(wrld_simpl, xlim= c(-10,50), ylim = c(10,50))

COL <- c("#999999", "#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2", "#D55E00", "#CC79A7")
draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.75, col = COL)

box(col="gray")
