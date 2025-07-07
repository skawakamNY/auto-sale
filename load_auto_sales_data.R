library(readr)
library(tidyr)
library(dplyr)

Chevrolet_Silverado <- read_csv("data/Chevrolet_Silverado.csv")
Chevrolet_Silverado_Format <- Chevrolet_Silverado |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Chevrolet Silverado', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Ford_F_Series <- read_csv("data/Ford_F_Series.csv")
Ford_F_Series_Format <- Ford_F_Series |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Ford F-Series', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Honda_Civic <- read_csv("data/Honda_Civic.csv")
Honda_Civic_Format <- Honda_Civic |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Honda Civic', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Hyundai_Tucson <- read_csv("data/Hyundai_Tucson.csv")
Hyundai_Tucson_Format <- Hyundai_Tucson |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Hyundai Tucson', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Kia_Sportage <- read_csv("data/Kia_Sportage.csv")
Kia_Sportage_Format <- Kia_Sportage |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Kia Sportage', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Mini_Cooper <- read_csv("data/Mini_Cooper.csv")
Mini_Cooper_Format <- Mini_Cooper |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Mini Cooper', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Mitsubishi_Outlander <- read_csv("data/Mitsubishi_Outlander.csv")
Mitsubishi_Outlander_Format <- Mitsubishi_Outlander |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Mitsubishi Outlander', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Nissan_Rogue <- read_csv("data/Nissan_Rogue.csv")
Nissan_Rogue_Format <- Nissan_Rogue |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Nissan Rogue', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Subaru_Forester <- read_csv("data/Subaru_Forester.csv")
Subaru_Forester_Format <- Subaru_Forester |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Subaru Forester', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Toyota_RAV4 <- read_csv("data/Toyota_RAV4.csv")
Toyota_RAV4_Format <- Toyota_RAV4 |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Toyota RAV4', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Volkswagen_Jetta <- read_csv("data/Volkswagen_Jetta.csv")
Volkswagen_Jetta_Format <- Volkswagen_Jetta |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Volkswagen Jetta', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

Volvo_XC60 <- read_csv("data/Volvo_XC60.csv")
Volvo_XC60_Format <- Volvo_XC60 |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Volvo XC60', Month=match(Month, month.abb), Year=as.integer(Year), Date = as.Date(paste(Year, Month, "01", sep="-")))

All <- rbind(Chevrolet_Silverado_Format, Ford_F_Series_Format, Honda_Civic_Format, Hyundai_Tucson_Format, Kia_Sportage_Format, Mini_Cooper_Format, Mitsubishi_Outlander_Format, Nissan_Rogue_Format, Subaru_Forester_Format, Toyota_RAV4_Format, Volvo_XC60_Format, Volkswagen_Jetta_Format)
