library(readxl)
library(tidyverse)
library(ggplot2)

#2022
wc22 <- read_excel("C:/Users/mrocc/Desktop/Sports Analytics (BUSOBA 4242)/Final Project/Stats.xlsx", 
                    sheet = "2022")

wc22 %>% ggplot(aes(x = Champion, fct_reorder(Team, desc(`Relative Rank`)), fill = Final)) +
  geom_col() +
  labs(title = "2022 World Cup Sim Data", x = "Wins", y = NULL, fill = "Final Appearances") +
  theme_classic() +
  scale_fill_viridis_c()

#2026
wc26 <- read_excel("C:/Users/mrocc/Desktop/Sports Analytics (BUSOBA 4242)/Final Project/Stats.xlsx", 
                   sheet = "2026")

wc26 %>% ggplot(aes(x = Champion, fct_reorder(Team, desc(`Relative Rank`)), fill = Final)) +
  geom_col() +
  labs(title = "2026 World Cup Sim Data", x = "Wins", y = NULL, fill = "Final Appearances") +
  theme_classic() +
  scale_fill_viridis_c()
