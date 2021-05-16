## Loading libraries

# Function to download packages not already downloaded
packages <- c('tidyverse',
              'dplyr',
              'lubridate',
              'RColorBrewer',
              'factoextra',
              'gt',
              'here',
              'data.table',
              'gender')

packages_new <- packages[!(packages %in% installed.packages()[,"Package"])]

if(length(packages_new)){
  install.packages(packages_new)
} 

for (i in packages){
  print(i)
  library(i, character.only = TRUE)
}