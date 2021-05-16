#### Loading Data

# Set data file location here
file_location <- paste0(here())

donations <- fread(paste0(file_location, '/data/all_donations.csv'), header = TRUE)

expenses <- fread(paste0(file_location, '/data/all_expenses.csv'), header = TRUE)

interests <- fread(paste0(file_location, '/data/all_interests.csv'), header = TRUE)

salaries <- fread(paste0(file_location, '/data/all_salary_estimates.csv'), header = TRUE)

gender <- fread(paste0(file_location, '/data/all_gender.csv'), header = TRUE)

test <- salaries %>%
  dplyr::left_join(gender, by = 'name')



