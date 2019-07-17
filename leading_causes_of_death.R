library(tidyverse)
library(readxl)
library(ggplot2)
library(ggthemes)

NCHS <- read.csv("NCHS.csv") %>% 
  select(-X113.Cause.Name)


# Projected nationwide trends of all 10 (or 5?)




# Map with shading according to number 1 killer in past 5 years


