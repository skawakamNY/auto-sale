library(readr)
library(tidyr)
library(dplyr)
library(lubridate)

Chevrolet_Silverado <- read_csv("data/Chevrolet_Silverado.csv")
Chevrolet_Silverado_Format <- Chevrolet_Silverado |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Chevrolet Silverado', Country='USA', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Ford_F_Series <- read_csv("data/Ford_F_Series.csv")
Ford_F_Series_Format <- Ford_F_Series |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Ford F-Series', Country='USA', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Honda_Civic <- read_csv("data/Honda_Civic.csv")
Honda_Civic_Format <- Honda_Civic |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Honda Civic', Country='Japan', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Hyundai_Tucson <- read_csv("data/Hyundai_Tucson.csv")
Hyundai_Tucson_Format <- Hyundai_Tucson |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Hyundai Tucson', Country='Korea', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Kia_Sportage <- read_csv("data/Kia_Sportage.csv")
Kia_Sportage_Format <- Kia_Sportage |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Kia Sportage', Country='Korea', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Mini_Cooper <- read_csv("data/Mini_Cooper.csv")
Mini_Cooper_Format <- Mini_Cooper |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Mini Cooper', Country='UK', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Mitsubishi_Outlander <- read_csv("data/Mitsubishi_Outlander.csv")
Mitsubishi_Outlander_Format <- Mitsubishi_Outlander |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Mitsubishi Outlander', Country='Japan', Month=match(Month, month.abb), Year=as.integer(Year), ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Nissan_Rogue <- read_csv("data/Nissan_Rogue.csv")
Nissan_Rogue_Format <- Nissan_Rogue |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Nissan Rogue', Country='Japan', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Subaru_Forester <- read_csv("data/Subaru_Forester.csv")
Subaru_Forester_Format <- Subaru_Forester |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Subaru Forester', Country='Japan', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Toyota_RAV4 <- read_csv("data/Toyota_RAV4.csv")
Toyota_RAV4_Format <- Toyota_RAV4 |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Toyota RAV4', Country='Japan', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Volkswagen_Jetta <- read_csv("data/Volkswagen_Jetta.csv")
Volkswagen_Jetta_Format <- Volkswagen_Jetta |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Volkswagen Jetta', Country='Germany', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

Volvo_XC60 <- read_csv("data/Volvo_XC60.csv")
Volvo_XC60_Format <- Volvo_XC60 |>   pivot_longer(
    cols = Jan:Dec,
    names_to = "Month",
    values_to = "Sale"
  ) |> mutate(Model = 'Volvo XC60', Country='Sweden', Month=match(Month, month.abb), Year=as.integer(Year), Date = ceiling_date(as.Date(paste(Year, Month, "01", sep="-")), "month") - days(1)) |> arrange(Model, Country, Month, Year) |>
  group_by(Model, Country, Month) |> mutate(Sale_prev_year = lag(Sale, 1), Ratio_From_Prev_Year = (Sale - Sale_prev_year ) / Sale_prev_year)

All <- rbind(Chevrolet_Silverado_Format, Ford_F_Series_Format, Honda_Civic_Format, Hyundai_Tucson_Format, Kia_Sportage_Format, Mini_Cooper_Format, Mitsubishi_Outlander_Format, Nissan_Rogue_Format, Subaru_Forester_Format, Toyota_RAV4_Format, Volvo_XC60_Format, Volkswagen_Jetta_Format)


