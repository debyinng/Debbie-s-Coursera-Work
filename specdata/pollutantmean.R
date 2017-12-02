data <- read.csv("001.csv",TRUE,",")
head(data)
mean(data[["sulfate"]], na.rm = TRUE)
pollutantmean <- function(directory, pollutant, id = 1:332){
  filelist <- list.file(path = directory, pattern = ".csv", full.names = TRUE)
  values <- numeric()
  
  for(i in id){
    data <- read.csv(filelist[i])
    values <- c(values, data[[pollutant]])
  }
  mean(values, na.rm = TRUE)
}

pollutantmean("/Users/debbieng/Debbie-s-coursera-work/specdata/", "sulfate")