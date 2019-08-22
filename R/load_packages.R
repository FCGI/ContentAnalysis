suppressMessages(library(readxl))
suppressMessages(library(dplyr))
suppressMessages(library(assertthat))
suppressMessages(library(purrr))
suppressMessages(library(tidyr))
suppressMessages(library(ggthemes))
suppressMessages(library(ggplot2))
suppressMessages(library(readr))
suppressMessages(library(ggwordcloud))
suppressMessages(library(VennDiagram))

r_source <- list.files("R", full.names = TRUE)

sourcing <- suppressMessages(r_source[!r_source == "R/load_packages.R"]  %>% map(source))
