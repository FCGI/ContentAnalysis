library(readxl)
library(dplyr)
library(assertthat)
library(purrr)
library(tidyr)
library(ggthemes)
library(ggplot2)
library(readr)

r_source <- list.files("R", full.names = TRUE)

sourcing <- r_source  %>% map(source) %>% suppressMessages()
