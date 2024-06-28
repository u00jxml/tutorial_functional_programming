#
# ------------ Mastering R: Best Practices and Essential Tools ----------- #
#
# This script:
# - Introduces functions
# - Teaches to create basic R functions
# ------------------------------------------------------------------------ #

# 1. Load packages --------------------------------------------------------

library(tidyverse)

# 2. Load data ------------------------------------------------------------

## Load data
trees_tbl <- as_tibble(trees) |> 
    select(-Volume)

# 3. First function -------------------------------------------------------

## -> Convert girth from inches to centimeters

## 3.1. Calculate normally ---------------------

## Convert Girth from inches to cm
trees_tbl$Girth_cm <- trees_tbl$Girth * 2.54

## 3.2. Calculate with a function --------------

## Create function


## Convert Girth from inches to cm


## 3.3. Calculate with mutate ------------------

## Convert Girth from inches to cm


## 3.4. Function with mutate -------------------

## Convert Girth from inches to cm


# 4. Second function ------------------------------------------------------

## -> Convert height from feet to meters

## Convert feet to meters


## Calculate height in meters


# 5. Third function -------------------------------------------------------

## Calculate volume function


## Apply function


