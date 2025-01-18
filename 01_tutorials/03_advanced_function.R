#
# ------------ Mastering R: Best Practices and Essential Tools ----------- #
#
# This script:
# - Shows that you can create the functions as complex as you want
# - Shows a small note in tidy eval
# ------------------------------------------------------------------------ #

# 1. Load packages --------------------------------------------------------

## Packages
library(tidyverse)

## Functions
source("R/util.R")

# 2. Load data ------------------------------------------------------------

## Load data
iris_tbl <- as_tibble(iris)

# 3. Analyze data ---------------------------------------------------------

## Calculate mean of numeric variables in Iris dataset, and sort them
iris_tbl |> 
   calc_iris_mean()


# 4. General function -----------------------------------------------------

## https://ggplot2.tidyverse.org/reference/tidyeval.html

## Apply to other datasets
## FUNCION: 
calc_numeric_mean <- function(data, group) {
    data |> 
        summarise(
            across(
                where(is.numeric), \(x) mean(x, na.rm = TRUE)
            ),
            .by = {{ group }}  
        ) |> 
        pivot_longer(
            cols = where(is.numeric),
            names_to = "measure",
            values_to = "mean"
        ) |> 
        arrange(
            desc(mean)
        ) |> 
        group_by(measure) |> 
        arrange(
            desc(mean),
            .by_group = TRUE
        ) |> 
        ungroup()
}

# Aplicarlo a otro conjunto de datos

airquality |> 
    calc_numeric_mean(
        group = Month
    )

calc_numeric_mean(
    data = iris_tbl,
    group = Species
)







