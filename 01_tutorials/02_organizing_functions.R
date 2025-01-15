#
# ------------ Mastering R: Best Practices and Essential Tools ----------- #
#
# This script:
# - Enseña a organizar las funciones en un archivo diferente
# - Funciones de origen en otros scripts
# ------------------------------------------------------------------------ #

# 1. Load packages --------------------------------------------------------

## Cargar paquetes 
library(tidyverse)

## Cargar funciones 
source("R/util.R")


# 2. Load data ------------------------------------------------------------

## Load data
trees_tbl <- as_tibble(trees) |> 
    select(-Volume)

# 3. Calculate volume -----------------------------------------------------

## -> Convert girth from inches to centimeters
## -> Convert height from feet to meters
## -> Calculate volume in m3

trees_tbl |> 
    mutate(
        Girth_cm = convert_in_to_cm(Girth),
        Height_m = convertir_pies_a_metros(Height),
        Volumen_m3 = calculo_volumen(Girth_cm, Height_m)
    )
    
