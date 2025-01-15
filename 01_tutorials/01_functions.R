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

## Crear una funcion
convert_in_to_cm <- function(x) {
    x * 2.54
}
  
## Convert Girth from inches to cm
trees_tbl$Girth_cm <- convert_in_to_cm(trees_tbl$Girth)

## 3.3. Calculate with mutate ------------------

## Convert Girth from inches to cm
trees_tbl |> 
    mutate(
        Girth_cm = trees_tbl$Girth_cm * 2.54
    )

## 3.4. Function with mutate -------------------

## Convert Girth from inches to cm
trees_tbl |> 
    mutate(
        Girth_cm = convert_in_to_cm(trees_tbl$Girth_cm)
    )

# 4. Second function ------------------------------------------------------

## Conversion de la height desde feet a meters

## convertir de pies a metros
convertir_pies_a_metros <- function(x) {
    x * 0.3048
}

## Calculando la altura en metros 
trees_tbl$Hight_metros <- convertir_pies_a_metros(trees_tbl$Height)

# 5. Tercera funcion -------------------------------------------------------

## Calcular la funcion de volumen 
calculo_volumen <- function(diametro, altura){
    pi / 4 * (diametro/100)^2 * altura
}


## Aplicar la funcion
trees_tbl |> 
    mutate(
        volumen_m3 = calculo_volumen(
            diametro = Girth_cm,
            altura   = Hight_metros 
        )
    )

