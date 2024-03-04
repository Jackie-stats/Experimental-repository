#Title: Experimental stuff
Name: Jackie

library(tidyverse)
library(readxl)
library(tidyverse)
library(readxl)
library(tidyverse)
library(writexl)
library(readxl)
read_excel("Maduna_et_al_2021_polar_bear_genotypic_data_and_metadata.xlsx")
read_excel("Maduna_et_al_2021_polar_bear_genotypic_data_and_metadata.xlsx", range = "AT1:AY623")
read_excel("Maduna_et_al_2021_polar_bear_genotypic_data_and_metadata.xlsx", range = "AT1:AY151")
read_excel("Maduna_et_al_2021_polar_bear_genotypic_data_and_metadata.xlsx", range = "AT152:AY261")
read_excel("Maduna_et_al_2021_polar_bear_genotypic_data_and_metadata.xlsx", range = "AT262:AY382")
read_excel("Maduna_et_al_2021_polar_bear_genotypic_data_and_metadata.xlsx", range = "AT383:AY623")
library(ggplot2)
plot_gender_distribution <- function(locations, male_counts, female_counts) {
  data <- data.frame(locations, male_counts, female_counts)
  
  ggplot(data, aes(x = SES)) +
    geom_bar(aes(y = male_counts), stat = "M", fill = "blue", alpha = 0.5) +
    geom_bar(aes(y = female_counts), stat = "F", fill = "pink", alpha = 0.5) +
    labs(x = "SES", y = "Count", title = "Gender Distribution in SES") +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
  