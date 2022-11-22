source("lib.R", keep.source = TRUE)
library(mapplots)
coo <- read.table("sampling_data.csv", h = T, stringsAsFactors = F, row.names = NULL, sep = ",")
my_dir <- getwd()
file <- list.files(path=my_dir, pattern="*meanQ", full.names=TRUE, recursive=FALSE)

a <- read.table(file)

gabri <- cbind(a$V1,a$V2,a$V3,a$V4,a$V5)
gabri <- as.numeric(gabri)
n <- length(a$V1)
gabri_2 <- c(rep("pop1",n), rep("pop2", n), rep("pop3",n), rep("pop4",n), rep("pop5",n))

gabri_2 <- as.factor(gabri_2)

lon <- rep(coo$Long,5)
lat <- rep(coo$Lat,5)

# added extra digit to duplicate coordinates to avoid removal of records
xyz <- make.xyz(lon, lat, gabri,gabri_2)


library(maptools)
data(wrld_simpl)
plot(wrld_simpl, xlim= c(-10,50), ylim = (10,50))



draw.pie(xyz$x, xyz$y, xyz$z, radius = 0.75, col = c("pink","#009E73","#56B4E9","#E69F00", "black"))

box(col="gray")
