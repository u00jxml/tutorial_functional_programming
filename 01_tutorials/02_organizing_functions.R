#
# ------------ Mastering R: Best Practices and Essential Tools ----------- #
#
# This script:
# - Teaches to organize the functions in a different file
# - Source functions into other scripts
# ------------------------------------------------------------------------ #

# 1. Load packages --------------------------------------------------------

library(tidyverse)

# 2. Load data ------------------------------------------------------------

## Load data
trees_tbl <- as_tibble(trees) |> 
    select(-Volume)

# 3. Calculate volume -----------------------------------------------------

## -> Convert girth from inches to centimeters
## -> Convert height from feet to meters
## -> Calculate volume in m3
