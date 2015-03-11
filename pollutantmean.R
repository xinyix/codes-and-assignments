pollutantmean <- function(directory, pollutant, id = 1:332) {
    data = numeric()
for (i in id) {
    
    filepath <- paste(directory, "/", formatC(i, width = 3, flag = "0"), 
          ".csv", sep = "")
    
    newRead = read.csv(filepath)
    
    data = c(data, newRead[[pollutant]])
}
return(mean(data, na.rm = TRUE))
}