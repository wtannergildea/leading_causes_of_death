library(tidyverse)
library(readxl)
library(ggplot2)
library(ggthemes)

NCHS <- read.csv("NCHS.csv") %>% 
  select(-X113.Cause.Name)


# Projected nationwide trends of all 10 (or 5?)

trends <- NCHS %>% 
  select(Year, Cause.Name, Deaths) %>% 
  group_by(Year, Cause.Name) %>% 
  summarize("Deaths" = sum(Deaths)) %>% 
  filter(Cause.Name != "All causes")

p <- ggplot(trends, aes(x = Year, y = Deaths)) +
  geom_point()



# Map with shading according to number 1 killer in past 5 years


