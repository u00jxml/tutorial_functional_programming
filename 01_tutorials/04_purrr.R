#
# ------------ Mastering R: Best Practices and Essential Tools ----------- #
#
# This script:
# - Teaches you how to use purrr to iterate over lists
# - Compares for loop vs purrr::map()
# - Use of anonymous functions
# ------------------------------------------------------------------------ #

# 1. Load packages --------------------------------------------------------

pak::pak("ranger")

library(tidyverse)
library(ranger)

# 2. Load data ------------------------------------------------------------

iris_tbl <- as_tibble(iris)

# 3. Simple example -------------------------------------------------------

## Iterate over the list to create the message "This fruit is a <fruit_name>"
objects_list <- list("peach", "pear", "cherry", "strawberry", "blackberry")

## 3.1. Using for loop ---------------------------

## Create an empty list


## 3.2. Using functional programming -------------


# 4. Model by species -----------------------------------------------------

## Create a different linear model for each Iris species

## 4.1. Using for loop ----------------------------

## Unique Species
species_vec <- unique(iris_tbl$Species)

## Create empty list
filtered_lst <- list()

## Iterate to filter each species


## 4.2. Using functional programming --------------

## Create a function


## Create list


## Iterate over the list


## 4.3. In one step ---------------------------------


## 4.4. Using anonymous function --------------------


# 5. Iterating 2 inputs --------------------------------------------------

## 5.1. Simple example ----------------------------

## Sum over the lists
fruits <- list("peach", "pear", "cherry", "strawberry", "blackberry")
colors <- list("orange", "green", "red", "red", "black")

## Iterate to sum


## 5.2. A bigger example --------------------------

## Plot 


## Create a Random Forest model for each parameter


## Extract r.squared


## Add as a new column


